.include "macros.inc"
.file "iplNwc24Manager.cpp"

# 0x81089620..0x81089720 | size: 0x100
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81089620 | size: 0x100
# ipl::nwc24::Manager::smArg
.obj smArg__Q33ipl5nwc247Manager, global
	.skip 0x100
.endobj smArg__Q33ipl5nwc247Manager

# 0x8134197C..0x81344188 | size: 0x280C
.text
.balign 4

# .text:0x0 | 0x8134197C | size: 0xC4
# ipl::nwc24::Manager::Manager(EGG::Heap*)
.fn __ct__Q33ipl5nwc247ManagerFPQ23EGG4Heap, global
/* 8134197C 0000FD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341980 0000FD80  7C 08 02 A6 */	mflr r0
/* 81341984 0000FD84  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341988 0000FD88  38 00 00 00 */	li r0, 0x0
/* 8134198C 0000FD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341990 0000FD90  7C 9F 23 78 */	mr r31, r4
/* 81341994 0000FD94  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341998 0000FD98  7C 7E 1B 78 */	mr r30, r3
/* 8134199C 0000FD9C  98 03 0A 30 */	stb r0, 0xa30(r3)
/* 813419A0 0000FDA0  98 03 0A 31 */	stb r0, 0xa31(r3)
/* 813419A4 0000FDA4  98 03 0A 32 */	stb r0, 0xa32(r3)
/* 813419A8 0000FDA8  98 03 0A 33 */	stb r0, 0xa33(r3)
/* 813419AC 0000FDAC  38 63 0A 00 */	addi r3, r3, 0xa00
/* 813419B0 0000FDB0  48 1F 02 21 */	bl fn_81531BD0
/* 813419B4 0000FDB4  38 7E 0A 18 */	addi r3, r30, 0xa18
/* 813419B8 0000FDB8  48 1F 02 19 */	bl fn_81531BD0
/* 813419BC 0000FDBC  7F E4 FB 78 */	mr r4, r31
/* 813419C0 0000FDC0  38 60 40 00 */	li r3, 0x4000
/* 813419C4 0000FDC4  38 A0 00 20 */	li r5, 0x20
/* 813419C8 0000FDC8  48 2B 67 0D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813419CC 0000FDCC  90 7E 09 FC */	stw r3, 0x9fc(r30)
/* 813419D0 0000FDD0  3C 60 81 09 */	lis r3, smArg__Q33ipl5nwc247Manager@ha
/* 813419D4 0000FDD4  38 63 96 20 */	addi r3, r3, smArg__Q33ipl5nwc247Manager@l
/* 813419D8 0000FDD8  38 80 00 00 */	li r4, 0x0
/* 813419DC 0000FDDC  38 A0 01 00 */	li r5, 0x100
/* 813419E0 0000FDE0  4B FE E9 55 */	bl memset
/* 813419E4 0000FDE4  38 60 00 01 */	li r3, 0x1
/* 813419E8 0000FDE8  48 17 02 29 */	bl fn_814B1C10
/* 813419EC 0000FDEC  7C 64 1B 78 */	mr r4, r3
/* 813419F0 0000FDF0  7F C3 F3 78 */	mr r3, r30
/* 813419F4 0000FDF4  38 A0 05 43 */	li r5, 0x543
/* 813419F8 0000FDF8  48 00 26 59 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813419FC 0000FDFC  38 7E 04 18 */	addi r3, r30, 0x418
/* 81341A00 0000FE00  38 80 00 00 */	li r4, 0x0
/* 81341A04 0000FE04  38 A0 04 00 */	li r5, 0x400
/* 81341A08 0000FE08  4B FE E9 2D */	bl memset
/* 81341A0C 0000FE0C  38 7E 08 18 */	addi r3, r30, 0x818
/* 81341A10 0000FE10  38 80 00 00 */	li r4, 0x0
/* 81341A14 0000FE14  38 A0 01 E0 */	li r5, 0x1e0
/* 81341A18 0000FE18  4B FE E9 1D */	bl memset
/* 81341A1C 0000FE1C  7F C3 F3 78 */	mr r3, r30
/* 81341A20 0000FE20  48 00 07 F9 */	bl setDlTableFirst__Q33ipl5nwc247ManagerFv
/* 81341A24 0000FE24  7F C3 F3 78 */	mr r3, r30
/* 81341A28 0000FE28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341A2C 0000FE2C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341A30 0000FE30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341A34 0000FE34  7C 08 03 A6 */	mtlr r0
/* 81341A38 0000FE38  38 21 00 10 */	addi r1, r1, 0x10
/* 81341A3C 0000FE3C  4E 80 00 20 */	blr
.endfn __ct__Q33ipl5nwc247ManagerFPQ23EGG4Heap

# .text:0xC4 | 0x81341A40 | size: 0x74
# ipl::nwc24::Manager::open()
.fn open__Q33ipl5nwc247ManagerFv, global
/* 81341A40 0000FE40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341A44 0000FE44  7C 08 02 A6 */	mflr r0
/* 81341A48 0000FE48  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341A4C 0000FE4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341A50 0000FE50  3B E0 00 00 */	li r31, 0x0
/* 81341A54 0000FE54  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341A58 0000FE58  7C 7E 1B 78 */	mr r30, r3
/* 81341A5C 0000FE5C  38 63 0A 00 */	addi r3, r3, 0xa00
/* 81341A60 0000FE60  48 1F 03 B9 */	bl fn_81531E18
/* 81341A64 0000FE64  2C 03 00 00 */	cmpwi r3, 0x0
/* 81341A68 0000FE68  41 82 00 30 */	beq .L_81341A98
/* 81341A6C 0000FE6C  80 7E 09 FC */	lwz r3, 0x9fc(r30)
/* 81341A70 0000FE70  48 15 E5 C5 */	bl fn_814A0034
/* 81341A74 0000FE74  7C 64 1B 78 */	mr r4, r3
/* 81341A78 0000FE78  7F C3 F3 78 */	mr r3, r30
/* 81341A7C 0000FE7C  38 A0 00 D8 */	li r5, 0xd8
/* 81341A80 0000FE80  48 00 25 D1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341A84 0000FE84  2C 03 00 00 */	cmpwi r3, 0x0
/* 81341A88 0000FE88  7C 7F 1B 78 */	mr r31, r3
/* 81341A8C 0000FE8C  40 82 00 0C */	bne .L_81341A98
/* 81341A90 0000FE90  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81341A94 0000FE94  48 1F 02 51 */	bl fn_81531CE4
.L_81341A98:
/* 81341A98 0000FE98  7F E3 FB 78 */	mr r3, r31
/* 81341A9C 0000FE9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341AA0 0000FEA0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341AA4 0000FEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341AA8 0000FEA8  7C 08 03 A6 */	mtlr r0
/* 81341AAC 0000FEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 81341AB0 0000FEB0  4E 80 00 20 */	blr
.endfn open__Q33ipl5nwc247ManagerFv

# .text:0x138 | 0x81341AB4 | size: 0x54
# ipl::nwc24::Manager::close()
.fn close__Q33ipl5nwc247ManagerFv, global
/* 81341AB4 0000FEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341AB8 0000FEB8  7C 08 02 A6 */	mflr r0
/* 81341ABC 0000FEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341AC0 0000FEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341AC4 0000FEC4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341AC8 0000FEC8  7C 7E 1B 78 */	mr r30, r3
/* 81341ACC 0000FECC  48 15 E7 C1 */	bl fn_814A028C
/* 81341AD0 0000FED0  7C 64 1B 78 */	mr r4, r3
/* 81341AD4 0000FED4  7F C3 F3 78 */	mr r3, r30
/* 81341AD8 0000FED8  38 A0 00 E9 */	li r5, 0xe9
/* 81341ADC 0000FEDC  48 00 25 75 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341AE0 0000FEE0  7C 7F 1B 78 */	mr r31, r3
/* 81341AE4 0000FEE4  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81341AE8 0000FEE8  48 1F 01 FD */	bl fn_81531CE4
/* 81341AEC 0000FEEC  7F E3 FB 78 */	mr r3, r31
/* 81341AF0 0000FEF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341AF4 0000FEF4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341AF8 0000FEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341AFC 0000FEFC  7C 08 03 A6 */	mtlr r0
/* 81341B00 0000FF00  38 21 00 10 */	addi r1, r1, 0x10
/* 81341B04 0000FF04  4E 80 00 20 */	blr
.endfn close__Q33ipl5nwc247ManagerFv

# .text:0x18C | 0x81341B08 | size: 0x44
# ipl::nwc24::Manager::initMsgObj(NWC24MsgObj*, NWC24MsgType)
.fn initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType, global
/* 81341B08 0000FF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B0C 0000FF0C  7C 08 02 A6 */	mflr r0
/* 81341B10 0000FF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B14 0000FF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B18 0000FF18  7C 7F 1B 78 */	mr r31, r3
/* 81341B1C 0000FF1C  7C 83 23 78 */	mr r3, r4
/* 81341B20 0000FF20  7C A4 2B 78 */	mr r4, r5
/* 81341B24 0000FF24  48 15 F3 81 */	bl fn_814A0EA4
/* 81341B28 0000FF28  7C 64 1B 78 */	mr r4, r3
/* 81341B2C 0000FF2C  7F E3 FB 78 */	mr r3, r31
/* 81341B30 0000FF30  38 A0 00 FB */	li r5, 0xfb
/* 81341B34 0000FF34  48 00 25 1D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341B38 0000FF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341B3C 0000FF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341B40 0000FF40  7C 08 03 A6 */	mtlr r0
/* 81341B44 0000FF44  38 21 00 10 */	addi r1, r1, 0x10
/* 81341B48 0000FF48  4E 80 00 20 */	blr
.endfn initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType

# .text:0x1D0 | 0x81341B4C | size: 0x40
# ipl::nwc24::Manager::setMsgToId(NWC24MsgObj*, unsigned long long)
.fn setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx, global
/* 81341B4C 0000FF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B50 0000FF50  7C 08 02 A6 */	mflr r0
/* 81341B54 0000FF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B58 0000FF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B5C 0000FF5C  7C 7F 1B 78 */	mr r31, r3
/* 81341B60 0000FF60  7C 83 23 78 */	mr r3, r4
/* 81341B64 0000FF64  48 15 F5 31 */	bl fn_814A1094
/* 81341B68 0000FF68  7C 64 1B 78 */	mr r4, r3
/* 81341B6C 0000FF6C  7F E3 FB 78 */	mr r3, r31
/* 81341B70 0000FF70  38 A0 01 07 */	li r5, 0x107
/* 81341B74 0000FF74  48 00 24 DD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341B78 0000FF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341B7C 0000FF7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341B80 0000FF80  7C 08 03 A6 */	mtlr r0
/* 81341B84 0000FF84  38 21 00 10 */	addi r1, r1, 0x10
/* 81341B88 0000FF88  4E 80 00 20 */	blr
.endfn setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx

# .text:0x210 | 0x81341B8C | size: 0x48
# ipl::nwc24::Manager::setMsgToAddr(NWC24MsgObj*, const char*, unsigned long)
.fn setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl, global
/* 81341B8C 0000FF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B90 0000FF90  7C 08 02 A6 */	mflr r0
/* 81341B94 0000FF94  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B98 0000FF98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B9C 0000FF9C  7C 7F 1B 78 */	mr r31, r3
/* 81341BA0 0000FFA0  7C 83 23 78 */	mr r3, r4
/* 81341BA4 0000FFA4  7C A4 2B 78 */	mr r4, r5
/* 81341BA8 0000FFA8  7C C5 33 78 */	mr r5, r6
/* 81341BAC 0000FFAC  48 15 F5 4D */	bl fn_814A10F8
/* 81341BB0 0000FFB0  7C 64 1B 78 */	mr r4, r3
/* 81341BB4 0000FFB4  7F E3 FB 78 */	mr r3, r31
/* 81341BB8 0000FFB8  38 A0 01 13 */	li r5, 0x113
/* 81341BBC 0000FFBC  48 00 24 95 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341BC0 0000FFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341BC4 0000FFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341BC8 0000FFC8  7C 08 03 A6 */	mtlr r0
/* 81341BCC 0000FFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 81341BD0 0000FFD0  4E 80 00 20 */	blr
.endfn setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl

# .text:0x258 | 0x81341BD4 | size: 0x50
# ipl::nwc24::Manager::setMsgText(NWC24MsgObj*, const char*, unsigned long, NWC24Charset, NWC24Encoding)
.fn setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding, global
/* 81341BD4 0000FFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341BD8 0000FFD8  7C 08 02 A6 */	mflr r0
/* 81341BDC 0000FFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341BE0 0000FFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341BE4 0000FFE4  7C 7F 1B 78 */	mr r31, r3
/* 81341BE8 0000FFE8  7C 83 23 78 */	mr r3, r4
/* 81341BEC 0000FFEC  7C A4 2B 78 */	mr r4, r5
/* 81341BF0 0000FFF0  7C C5 33 78 */	mr r5, r6
/* 81341BF4 0000FFF4  7C E6 3B 78 */	mr r6, r7
/* 81341BF8 0000FFF8  7D 07 43 78 */	mr r7, r8
/* 81341BFC 0000FFFC  48 15 F6 39 */	bl fn_814A1234
/* 81341C00 00010000  7C 64 1B 78 */	mr r4, r3
/* 81341C04 00010004  7F E3 FB 78 */	mr r3, r31
/* 81341C08 00010008  38 A0 01 27 */	li r5, 0x127
/* 81341C0C 0001000C  48 00 24 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341C10 00010010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341C14 00010014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341C18 00010018  7C 08 03 A6 */	mtlr r0
/* 81341C1C 0001001C  38 21 00 10 */	addi r1, r1, 0x10
/* 81341C20 00010020  4E 80 00 20 */	blr
.endfn setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding

# .text:0x2A8 | 0x81341C24 | size: 0x68
# ipl::nwc24::Manager::setMsgSubjectAndTextPublic(NWC24MsgObj*, const unsigned short*, unsigned long, const unsigned short*, unsigned long, unsigned char*, unsigned long)
.fn setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl, global
/* 81341C24 00010024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81341C28 00010028  7C 08 02 A6 */	mflr r0
/* 81341C2C 0001002C  3D 60 00 01 */	lis r11, 0x1
/* 81341C30 00010030  90 01 00 24 */	stw r0, 0x24(r1)
/* 81341C34 00010034  38 0B FF FF */	subi r0, r11, 0x1
/* 81341C38 00010038  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81341C3C 0001003C  7C 7F 1B 78 */	mr r31, r3
/* 81341C40 00010040  7C 83 23 78 */	mr r3, r4
/* 81341C44 00010044  7C A4 2B 78 */	mr r4, r5
/* 81341C48 00010048  91 41 00 08 */	stw r10, 0x8(r1)
/* 81341C4C 0001004C  7C C5 33 78 */	mr r5, r6
/* 81341C50 00010050  7C E6 3B 78 */	mr r6, r7
/* 81341C54 00010054  7D 07 43 78 */	mr r7, r8
/* 81341C58 00010058  7D 2A 4B 78 */	mr r10, r9
/* 81341C5C 0001005C  54 09 04 3E */	clrlwi r9, r0, 16
/* 81341C60 00010060  39 00 00 01 */	li r8, 0x1
/* 81341C64 00010064  48 16 80 6D */	bl fn_814A9CD0
/* 81341C68 00010068  7C 64 1B 78 */	mr r4, r3
/* 81341C6C 0001006C  7F E3 FB 78 */	mr r3, r31
/* 81341C70 00010070  38 A0 01 A2 */	li r5, 0x1a2
/* 81341C74 00010074  48 00 23 DD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341C78 00010078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81341C7C 0001007C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81341C80 00010080  7C 08 03 A6 */	mtlr r0
/* 81341C84 00010084  38 21 00 20 */	addi r1, r1, 0x20
/* 81341C88 00010088  4E 80 00 20 */	blr
.endfn setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl

# .text:0x310 | 0x81341C8C | size: 0x44
# ipl::nwc24::Manager::setMsgMBNoReply(NWC24MsgObj*, int)
.fn setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji, global
/* 81341C8C 0001008C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341C90 00010090  7C 08 02 A6 */	mflr r0
/* 81341C94 00010094  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341C98 00010098  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341C9C 0001009C  7C 7F 1B 78 */	mr r31, r3
/* 81341CA0 000100A0  7C 83 23 78 */	mr r3, r4
/* 81341CA4 000100A4  7C A4 2B 78 */	mr r4, r5
/* 81341CA8 000100A8  48 15 F9 35 */	bl fn_814A15DC
/* 81341CAC 000100AC  7C 64 1B 78 */	mr r4, r3
/* 81341CB0 000100B0  7F E3 FB 78 */	mr r3, r31
/* 81341CB4 000100B4  38 A0 01 B0 */	li r5, 0x1b0
/* 81341CB8 000100B8  48 00 23 99 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341CBC 000100BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341CC0 000100C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341CC4 000100C4  7C 08 03 A6 */	mtlr r0
/* 81341CC8 000100C8  38 21 00 10 */	addi r1, r1, 0x10
/* 81341CCC 000100CC  4E 80 00 20 */	blr
.endfn setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji

# .text:0x354 | 0x81341CD0 | size: 0x4C
# ipl::nwc24::Manager::setMsgMBRegDate(NWC24MsgObj*, unsigned short, unsigned char, unsigned char)
.fn setMsgMBRegDate__Q33ipl5nwc247ManagerFP11NWC24MsgObjUsUcUc, global
/* 81341CD0 000100D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341CD4 000100D4  7C 08 02 A6 */	mflr r0
/* 81341CD8 000100D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341CDC 000100DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341CE0 000100E0  7C 7F 1B 78 */	mr r31, r3
/* 81341CE4 000100E4  7C 83 23 78 */	mr r3, r4
/* 81341CE8 000100E8  7C A4 2B 78 */	mr r4, r5
/* 81341CEC 000100EC  7C C5 33 78 */	mr r5, r6
/* 81341CF0 000100F0  7C E6 3B 78 */	mr r6, r7
/* 81341CF4 000100F4  48 15 F9 41 */	bl fn_814A1634
/* 81341CF8 000100F8  7C 64 1B 78 */	mr r4, r3
/* 81341CFC 000100FC  7F E3 FB 78 */	mr r3, r31
/* 81341D00 00010100  38 A0 01 BD */	li r5, 0x1bd
/* 81341D04 00010104  48 00 23 4D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D08 00010108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D0C 0001010C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D10 00010110  7C 08 03 A6 */	mtlr r0
/* 81341D14 00010114  38 21 00 10 */	addi r1, r1, 0x10
/* 81341D18 00010118  4E 80 00 20 */	blr
.endfn setMsgMBRegDate__Q33ipl5nwc247ManagerFP11NWC24MsgObjUsUcUc

# .text:0x3A0 | 0x81341D1C | size: 0x44
# ipl::nwc24::Manager::setMsgAppId(NWC24MsgObj*, unsigned long)
.fn setMsgAppId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUl, global
/* 81341D1C 0001011C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341D20 00010120  7C 08 02 A6 */	mflr r0
/* 81341D24 00010124  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341D28 00010128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341D2C 0001012C  7C 7F 1B 78 */	mr r31, r3
/* 81341D30 00010130  7C 83 23 78 */	mr r3, r4
/* 81341D34 00010134  7C A4 2B 78 */	mr r4, r5
/* 81341D38 00010138  48 15 F9 D1 */	bl fn_814A1708
/* 81341D3C 0001013C  7C 64 1B 78 */	mr r4, r3
/* 81341D40 00010140  7F E3 FB 78 */	mr r3, r31
/* 81341D44 00010144  38 A0 01 C9 */	li r5, 0x1c9
/* 81341D48 00010148  48 00 23 09 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D4C 0001014C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D50 00010150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D54 00010154  7C 08 03 A6 */	mtlr r0
/* 81341D58 00010158  38 21 00 10 */	addi r1, r1, 0x10
/* 81341D5C 0001015C  4E 80 00 20 */	blr
.endfn setMsgAppId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUl

# .text:0x3E4 | 0x81341D60 | size: 0x40
# ipl::nwc24::Manager::commitMsg(NWC24MsgObj*)
.fn commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj, global
/* 81341D60 00010160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341D64 00010164  7C 08 02 A6 */	mflr r0
/* 81341D68 00010168  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341D6C 0001016C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341D70 00010170  7C 7F 1B 78 */	mr r31, r3
/* 81341D74 00010174  7C 83 23 78 */	mr r3, r4
/* 81341D78 00010178  48 16 47 51 */	bl fn_814A64C8
/* 81341D7C 0001017C  7C 64 1B 78 */	mr r4, r3
/* 81341D80 00010180  7F E3 FB 78 */	mr r3, r31
/* 81341D84 00010184  38 A0 01 E0 */	li r5, 0x1e0
/* 81341D88 00010188  48 00 22 C9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D8C 0001018C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D90 00010190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D94 00010194  7C 08 03 A6 */	mtlr r0
/* 81341D98 00010198  38 21 00 10 */	addi r1, r1, 0x10
/* 81341D9C 0001019C  4E 80 00 20 */	blr
.endfn commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj

# .text:0x424 | 0x81341DA0 | size: 0x40
# ipl::nwc24::Manager::getMyUserId(unsigned long long*)
.fn getMyUserId__Q33ipl5nwc247ManagerFPUx, global
/* 81341DA0 000101A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341DA4 000101A4  7C 08 02 A6 */	mflr r0
/* 81341DA8 000101A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341DAC 000101AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341DB0 000101B0  7C 7F 1B 78 */	mr r31, r3
/* 81341DB4 000101B4  7C 83 23 78 */	mr r3, r4
/* 81341DB8 000101B8  48 15 D5 79 */	bl fn_8149F330
/* 81341DBC 000101BC  7C 64 1B 78 */	mr r4, r3
/* 81341DC0 000101C0  7F E3 FB 78 */	mr r3, r31
/* 81341DC4 000101C4  38 A0 03 89 */	li r5, 0x389
/* 81341DC8 000101C8  48 00 22 89 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341DCC 000101CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341DD0 000101D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341DD4 000101D4  7C 08 03 A6 */	mtlr r0
/* 81341DD8 000101D8  38 21 00 10 */	addi r1, r1, 0x10
/* 81341DDC 000101DC  4E 80 00 20 */	blr
.endfn getMyUserId__Q33ipl5nwc247ManagerFPUx

# .text:0x464 | 0x81341DE0 | size: 0x60
# ipl::nwc24::Manager::isFriendInfoThere(unsigned long)
.fn isFriendInfoThere__Q33ipl5nwc247ManagerFUl, global
/* 81341DE0 000101E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341DE4 000101E4  7C 08 02 A6 */	mflr r0
/* 81341DE8 000101E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341DEC 000101EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341DF0 000101F0  7C 7F 1B 78 */	mr r31, r3
/* 81341DF4 000101F4  7C 83 23 78 */	mr r3, r4
/* 81341DF8 000101F8  48 16 B8 19 */	bl fn_814AD610
/* 81341DFC 000101FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81341E00 00010200  7C 64 1B 78 */	mr r4, r3
/* 81341E04 00010204  40 82 00 0C */	bne .L_81341E10
/* 81341E08 00010208  38 60 00 00 */	li r3, 0x0
/* 81341E0C 0001020C  48 00 00 20 */	b .L_81341E2C
.L_81341E10:
/* 81341E10 00010210  2C 03 00 01 */	cmpwi r3, 0x1
/* 81341E14 00010214  40 82 00 0C */	bne .L_81341E20
/* 81341E18 00010218  38 60 00 01 */	li r3, 0x1
/* 81341E1C 0001021C  48 00 00 10 */	b .L_81341E2C
.L_81341E20:
/* 81341E20 00010220  7F E3 FB 78 */	mr r3, r31
/* 81341E24 00010224  38 A0 03 98 */	li r5, 0x398
/* 81341E28 00010228  48 00 22 29 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
.L_81341E2C:
/* 81341E2C 0001022C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341E30 00010230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341E34 00010234  7C 08 03 A6 */	mtlr r0
/* 81341E38 00010238  38 21 00 10 */	addi r1, r1, 0x10
/* 81341E3C 0001023C  4E 80 00 20 */	blr
.endfn isFriendInfoThere__Q33ipl5nwc247ManagerFUl

# .text:0x4C4 | 0x81341E40 | size: 0x44
# ipl::nwc24::Manager::searchFriendInfo(const NWC24FriendAddr*, unsigned long*)
.fn searchFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendAddrPUl, global
/* 81341E40 00010240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341E44 00010244  7C 08 02 A6 */	mflr r0
/* 81341E48 00010248  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341E4C 0001024C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341E50 00010250  7C 7F 1B 78 */	mr r31, r3
/* 81341E54 00010254  7C 83 23 78 */	mr r3, r4
/* 81341E58 00010258  7C A4 2B 78 */	mr r4, r5
/* 81341E5C 0001025C  48 16 B4 ED */	bl fn_814AD348
/* 81341E60 00010260  7C 64 1B 78 */	mr r4, r3
/* 81341E64 00010264  7F E3 FB 78 */	mr r3, r31
/* 81341E68 00010268  38 A0 03 A4 */	li r5, 0x3a4
/* 81341E6C 0001026C  48 00 21 E5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341E70 00010270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341E74 00010274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341E78 00010278  7C 08 03 A6 */	mtlr r0
/* 81341E7C 0001027C  38 21 00 10 */	addi r1, r1, 0x10
/* 81341E80 00010280  4E 80 00 20 */	blr
.endfn searchFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendAddrPUl

# .text:0x508 | 0x81341E84 | size: 0x48
# ipl::nwc24::Manager::searchFriendInfo(unsigned long long, unsigned long*)
.fn searchFriendInfo__Q33ipl5nwc247ManagerFUxPUl, global
/* 81341E84 00010284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341E88 00010288  7C 08 02 A6 */	mflr r0
/* 81341E8C 0001028C  7C C4 33 78 */	mr r4, r6
/* 81341E90 00010290  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341E94 00010294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341E98 00010298  7C 7F 1B 78 */	mr r31, r3
/* 81341E9C 0001029C  7C A3 2B 78 */	mr r3, r5
/* 81341EA0 000102A0  7C E5 3B 78 */	mr r5, r7
/* 81341EA4 000102A4  48 16 B3 E5 */	bl fn_814AD288
/* 81341EA8 000102A8  7C 64 1B 78 */	mr r4, r3
/* 81341EAC 000102AC  7F E3 FB 78 */	mr r3, r31
/* 81341EB0 000102B0  38 A0 03 B0 */	li r5, 0x3b0
/* 81341EB4 000102B4  48 00 21 9D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341EB8 000102B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341EBC 000102BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341EC0 000102C0  7C 08 03 A6 */	mtlr r0
/* 81341EC4 000102C4  38 21 00 10 */	addi r1, r1, 0x10
/* 81341EC8 000102C8  4E 80 00 20 */	blr
.endfn searchFriendInfo__Q33ipl5nwc247ManagerFUxPUl

# .text:0x550 | 0x81341ECC | size: 0x44
# ipl::nwc24::Manager::readFriendInfo(NWC24FriendInfo*, unsigned long)
.fn readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl, global
/* 81341ECC 000102CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341ED0 000102D0  7C 08 02 A6 */	mflr r0
/* 81341ED4 000102D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341ED8 000102D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341EDC 000102DC  7C 7F 1B 78 */	mr r31, r3
/* 81341EE0 000102E0  7C 83 23 78 */	mr r3, r4
/* 81341EE4 000102E4  7C A4 2B 78 */	mr r4, r5
/* 81341EE8 000102E8  48 16 A7 C1 */	bl fn_814AC6A8
/* 81341EEC 000102EC  7C 64 1B 78 */	mr r4, r3
/* 81341EF0 000102F0  7F E3 FB 78 */	mr r3, r31
/* 81341EF4 000102F4  38 A0 03 BD */	li r5, 0x3bd
/* 81341EF8 000102F8  48 00 21 59 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341EFC 000102FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F00 00010300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F04 00010304  7C 08 03 A6 */	mtlr r0
/* 81341F08 00010308  38 21 00 10 */	addi r1, r1, 0x10
/* 81341F0C 0001030C  4E 80 00 20 */	blr
.endfn readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl

# .text:0x594 | 0x81341F10 | size: 0x44
# ipl::nwc24::Manager::writeFriendInfo(const NWC24FriendInfo*, unsigned long)
.fn writeFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl, global
/* 81341F10 00010310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F14 00010314  7C 08 02 A6 */	mflr r0
/* 81341F18 00010318  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341F1C 0001031C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341F20 00010320  7C 7F 1B 78 */	mr r31, r3
/* 81341F24 00010324  7C 83 23 78 */	mr r3, r4
/* 81341F28 00010328  7C A4 2B 78 */	mr r4, r5
/* 81341F2C 0001032C  48 16 A8 21 */	bl fn_814AC74C
/* 81341F30 00010330  7C 64 1B 78 */	mr r4, r3
/* 81341F34 00010334  7F E3 FB 78 */	mr r3, r31
/* 81341F38 00010338  38 A0 03 D0 */	li r5, 0x3d0
/* 81341F3C 0001033C  48 00 21 15 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341F40 00010340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F44 00010344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F48 00010348  7C 08 03 A6 */	mtlr r0
/* 81341F4C 0001034C  38 21 00 10 */	addi r1, r1, 0x10
/* 81341F50 00010350  4E 80 00 20 */	blr
.endfn writeFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl

# .text:0x5D8 | 0x81341F54 | size: 0x44
# ipl::nwc24::Manager::updateFriendInfo(const NWC24FriendInfo*, unsigned long)
.fn updateFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl, global
/* 81341F54 00010354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F58 00010358  7C 08 02 A6 */	mflr r0
/* 81341F5C 0001035C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341F60 00010360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341F64 00010364  7C 7F 1B 78 */	mr r31, r3
/* 81341F68 00010368  7C 83 23 78 */	mr r3, r4
/* 81341F6C 0001036C  7C A4 2B 78 */	mr r4, r5
/* 81341F70 00010370  48 16 AC 35 */	bl fn_814ACBA4
/* 81341F74 00010374  7C 64 1B 78 */	mr r4, r3
/* 81341F78 00010378  7F E3 FB 78 */	mr r3, r31
/* 81341F7C 0001037C  38 A0 03 DC */	li r5, 0x3dc
/* 81341F80 00010380  48 00 20 D1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341F84 00010384  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F88 00010388  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F8C 0001038C  7C 08 03 A6 */	mtlr r0
/* 81341F90 00010390  38 21 00 10 */	addi r1, r1, 0x10
/* 81341F94 00010394  4E 80 00 20 */	blr
.endfn updateFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl

# .text:0x61C | 0x81341F98 | size: 0x40
# ipl::nwc24::Manager::deleteFriendInfo(unsigned long)
.fn deleteFriendInfo__Q33ipl5nwc247ManagerFUl, global
/* 81341F98 00010398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F9C 0001039C  7C 08 02 A6 */	mflr r0
/* 81341FA0 000103A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341FA4 000103A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341FA8 000103A8  7C 7F 1B 78 */	mr r31, r3
/* 81341FAC 000103AC  7C 83 23 78 */	mr r3, r4
/* 81341FB0 000103B0  48 16 AE 59 */	bl fn_814ACE08
/* 81341FB4 000103B4  7C 64 1B 78 */	mr r4, r3
/* 81341FB8 000103B8  7F E3 FB 78 */	mr r3, r31
/* 81341FBC 000103BC  38 A0 03 E7 */	li r5, 0x3e7
/* 81341FC0 000103C0  48 00 20 91 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341FC4 000103C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341FC8 000103C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341FCC 000103CC  7C 08 03 A6 */	mtlr r0
/* 81341FD0 000103D0  38 21 00 10 */	addi r1, r1, 0x10
/* 81341FD4 000103D4  4E 80 00 20 */	blr
.endfn deleteFriendInfo__Q33ipl5nwc247ManagerFUl

# .text:0x65C | 0x81341FD8 | size: 0x44
# ipl::nwc24::Manager::swapFriendInfo(unsigned long, unsigned long)
.fn swapFriendInfo__Q33ipl5nwc247ManagerFUlUl, global
/* 81341FD8 000103D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341FDC 000103DC  7C 08 02 A6 */	mflr r0
/* 81341FE0 000103E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81341FE4 000103E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341FE8 000103E8  7C 7F 1B 78 */	mr r31, r3
/* 81341FEC 000103EC  7C 83 23 78 */	mr r3, r4
/* 81341FF0 000103F0  7C A4 2B 78 */	mr r4, r5
/* 81341FF4 000103F4  48 16 AF B9 */	bl fn_814ACFAC
/* 81341FF8 000103F8  7C 64 1B 78 */	mr r4, r3
/* 81341FFC 000103FC  7F E3 FB 78 */	mr r3, r31
/* 81342000 00010400  38 A0 03 F3 */	li r5, 0x3f3
/* 81342004 00010404  48 00 20 4D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342008 00010408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134200C 0001040C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342010 00010410  7C 08 03 A6 */	mtlr r0
/* 81342014 00010414  38 21 00 10 */	addi r1, r1, 0x10
/* 81342018 00010418  4E 80 00 20 */	blr
.endfn swapFriendInfo__Q33ipl5nwc247ManagerFUlUl

# .text:0x6A0 | 0x8134201C | size: 0x40
# ipl::nwc24::Manager::getNumRegFriendInfos(unsigned long*)
.fn getNumRegFriendInfos__Q33ipl5nwc247ManagerFPUl, global
/* 8134201C 0001041C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342020 00010420  7C 08 02 A6 */	mflr r0
/* 81342024 00010424  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342028 00010428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134202C 0001042C  7C 7F 1B 78 */	mr r31, r3
/* 81342030 00010430  7C 83 23 78 */	mr r3, r4
/* 81342034 00010434  48 16 B5 71 */	bl fn_814AD5A4
/* 81342038 00010438  7C 64 1B 78 */	mr r4, r3
/* 8134203C 0001043C  7F E3 FB 78 */	mr r3, r31
/* 81342040 00010440  38 A0 03 FF */	li r5, 0x3ff
/* 81342044 00010444  48 00 20 0D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342048 00010448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134204C 0001044C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342050 00010450  7C 08 03 A6 */	mtlr r0
/* 81342054 00010454  38 21 00 10 */	addi r1, r1, 0x10
/* 81342058 00010458  4E 80 00 20 */	blr
.endfn getNumRegFriendInfos__Q33ipl5nwc247ManagerFPUl

# .text:0x6E0 | 0x8134205C | size: 0x40
# ipl::nwc24::Manager::getNumFriendInfos(unsigned long*)
.fn getNumFriendInfos__Q33ipl5nwc247ManagerFPUl, global
/* 8134205C 0001045C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342060 00010460  7C 08 02 A6 */	mflr r0
/* 81342064 00010464  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342068 00010468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134206C 0001046C  7C 7F 1B 78 */	mr r31, r3
/* 81342070 00010470  7C 83 23 78 */	mr r3, r4
/* 81342074 00010474  48 16 B4 C5 */	bl fn_814AD538
/* 81342078 00010478  7C 64 1B 78 */	mr r4, r3
/* 8134207C 0001047C  7F E3 FB 78 */	mr r3, r31
/* 81342080 00010480  38 A0 04 0B */	li r5, 0x40b
/* 81342084 00010484  48 00 1F CD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342088 00010488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134208C 0001048C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342090 00010490  7C 08 03 A6 */	mtlr r0
/* 81342094 00010494  38 21 00 10 */	addi r1, r1, 0x10
/* 81342098 00010498  4E 80 00 20 */	blr
.endfn getNumFriendInfos__Q33ipl5nwc247ManagerFPUl

# .text:0x720 | 0x8134209C | size: 0x70
# ipl::nwc24::Manager::checkUserId(unsigned long long)
.fn checkUserId__Q33ipl5nwc247ManagerFUx, global
/* 8134209C 0001049C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813420A0 000104A0  7C 08 02 A6 */	mflr r0
/* 813420A4 000104A4  7C C4 33 78 */	mr r4, r6
/* 813420A8 000104A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 813420AC 000104AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813420B0 000104B0  7C 7F 1B 78 */	mr r31, r3
/* 813420B4 000104B4  7C A3 2B 78 */	mr r3, r5
/* 813420B8 000104B8  48 16 BE F5 */	bl fn_814ADFAC
/* 813420BC 000104BC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813420C0 000104C0  7C 64 1B 78 */	mr r4, r3
/* 813420C4 000104C4  41 82 00 14 */	beq .L_813420D8
/* 813420C8 000104C8  40 80 00 20 */	bge .L_813420E8
/* 813420CC 000104CC  2C 03 FF DB */	cmpwi r3, -0x25
/* 813420D0 000104D0  41 82 00 10 */	beq .L_813420E0
/* 813420D4 000104D4  48 00 00 14 */	b .L_813420E8
.L_813420D8:
/* 813420D8 000104D8  38 60 00 01 */	li r3, 0x1
/* 813420DC 000104DC  48 00 00 1C */	b .L_813420F8
.L_813420E0:
/* 813420E0 000104E0  38 60 00 00 */	li r3, 0x0
/* 813420E4 000104E4  48 00 00 14 */	b .L_813420F8
.L_813420E8:
/* 813420E8 000104E8  7F E3 FB 78 */	mr r3, r31
/* 813420EC 000104EC  38 A0 04 1B */	li r5, 0x41b
/* 813420F0 000104F0  48 00 1F 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813420F4 000104F4  38 60 00 00 */	li r3, 0x0
.L_813420F8:
/* 813420F8 000104F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813420FC 000104FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342100 00010500  7C 08 03 A6 */	mtlr r0
/* 81342104 00010504  38 21 00 10 */	addi r1, r1, 0x10
/* 81342108 00010508  4E 80 00 20 */	blr
.endfn checkUserId__Q33ipl5nwc247ManagerFUx

# .text:0x790 | 0x8134210C | size: 0x44
# ipl::nwc24::Manager::getDlTask(NWC24DlTask*, unsigned short)
.fn getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs, global
/* 8134210C 0001050C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342110 00010510  7C 08 02 A6 */	mflr r0
/* 81342114 00010514  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342118 00010518  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134211C 0001051C  7C 7F 1B 78 */	mr r31, r3
/* 81342120 00010520  7C 83 23 78 */	mr r3, r4
/* 81342124 00010524  7C A4 2B 78 */	mr r4, r5
/* 81342128 00010528  48 16 DE 35 */	bl fn_814AFF5C
/* 8134212C 0001052C  7C 64 1B 78 */	mr r4, r3
/* 81342130 00010530  7F E3 FB 78 */	mr r3, r31
/* 81342134 00010534  38 A0 04 28 */	li r5, 0x428
/* 81342138 00010538  48 00 1F 19 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134213C 0001053C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342140 00010540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342144 00010544  7C 08 03 A6 */	mtlr r0
/* 81342148 00010548  38 21 00 10 */	addi r1, r1, 0x10
/* 8134214C 0001054C  4E 80 00 20 */	blr
.endfn getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs

# .text:0x7D4 | 0x81342150 | size: 0x44
# ipl::nwc24::Manager::getDlAppId(const NWC24DlTask*, unsigned long*)
.fn getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl, global
/* 81342150 00010550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342154 00010554  7C 08 02 A6 */	mflr r0
/* 81342158 00010558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8134215C 0001055C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342160 00010560  7C 7F 1B 78 */	mr r31, r3
/* 81342164 00010564  7C 83 23 78 */	mr r3, r4
/* 81342168 00010568  7C A4 2B 78 */	mr r4, r5
/* 8134216C 0001056C  48 16 D1 A1 */	bl fn_814AF30C
/* 81342170 00010570  7C 64 1B 78 */	mr r4, r3
/* 81342174 00010574  7F E3 FB 78 */	mr r3, r31
/* 81342178 00010578  38 A0 04 40 */	li r5, 0x440
/* 8134217C 0001057C  48 00 1E D5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342180 00010580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342184 00010584  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342188 00010588  7C 08 03 A6 */	mtlr r0
/* 8134218C 0001058C  38 21 00 10 */	addi r1, r1, 0x10
/* 81342190 00010590  4E 80 00 20 */	blr
.endfn getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl

# .text:0x818 | 0x81342194 | size: 0x44
# ipl::nwc24::Manager::getDlOptOutFlags(NWC24DlTask*, unsigned char*)
.fn getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc, global
/* 81342194 00010594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342198 00010598  7C 08 02 A6 */	mflr r0
/* 8134219C 0001059C  90 01 00 14 */	stw r0, 0x14(r1)
/* 813421A0 000105A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813421A4 000105A4  7C 7F 1B 78 */	mr r31, r3
/* 813421A8 000105A8  7C 83 23 78 */	mr r3, r4
/* 813421AC 000105AC  7C A4 2B 78 */	mr r4, r5
/* 813421B0 000105B0  48 16 EE 35 */	bl fn_814B0FE4
/* 813421B4 000105B4  7C 64 1B 78 */	mr r4, r3
/* 813421B8 000105B8  7F E3 FB 78 */	mr r3, r31
/* 813421BC 000105BC  38 A0 04 4C */	li r5, 0x44c
/* 813421C0 000105C0  48 00 1E 91 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813421C4 000105C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813421C8 000105C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813421CC 000105CC  7C 08 03 A6 */	mtlr r0
/* 813421D0 000105D0  38 21 00 10 */	addi r1, r1, 0x10
/* 813421D4 000105D4  4E 80 00 20 */	blr
.endfn getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc

# .text:0x85C | 0x813421D8 | size: 0x40
# ipl::nwc24::Manager::deleteDlTask(NWC24DlTask*)
.fn deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask, global
/* 813421D8 000105D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813421DC 000105DC  7C 08 02 A6 */	mflr r0
/* 813421E0 000105E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813421E4 000105E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813421E8 000105E8  7C 7F 1B 78 */	mr r31, r3
/* 813421EC 000105EC  7C 83 23 78 */	mr r3, r4
/* 813421F0 000105F0  48 16 D9 8D */	bl fn_814AFB7C
/* 813421F4 000105F4  7C 64 1B 78 */	mr r4, r3
/* 813421F8 000105F8  7F E3 FB 78 */	mr r3, r31
/* 813421FC 000105FC  38 A0 04 D4 */	li r5, 0x4d4
/* 81342200 00010600  48 00 1E 51 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342204 00010604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342208 00010608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134220C 0001060C  7C 08 03 A6 */	mtlr r0
/* 81342210 00010610  38 21 00 10 */	addi r1, r1, 0x10
/* 81342214 00010614  4E 80 00 20 */	blr
.endfn deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask

# .text:0x89C | 0x81342218 | size: 0x6C
# ipl::nwc24::Manager::setDlTableFirst()
.fn setDlTableFirst__Q33ipl5nwc247ManagerFv, global
/* 81342218 00010618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134221C 0001061C  7C 08 02 A6 */	mflr r0
/* 81342220 00010620  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342224 00010624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342228 00010628  3B E0 00 00 */	li r31, 0x0
/* 8134222C 0001062C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81342230 00010630  7C 7E 1B 78 */	mr r30, r3
/* 81342234 00010634  4B FF F8 0D */	bl open__Q33ipl5nwc247ManagerFv
/* 81342238 00010638  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134223C 0001063C  41 82 00 2C */	beq .L_81342268
/* 81342240 00010640  7F C3 F3 78 */	mr r3, r30
/* 81342244 00010644  48 00 00 41 */	bl setDlTable__Q33ipl5nwc247ManagerFv
/* 81342248 00010648  48 15 E0 45 */	bl fn_814A028C
/* 8134224C 0001064C  7C 64 1B 78 */	mr r4, r3
/* 81342250 00010650  7F C3 F3 78 */	mr r3, r30
/* 81342254 00010654  38 A0 00 E9 */	li r5, 0xe9
/* 81342258 00010658  48 00 1D F9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134225C 0001065C  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81342260 00010660  48 1E FA 85 */	bl fn_81531CE4
/* 81342264 00010664  3B E0 00 01 */	li r31, 0x1
.L_81342268:
/* 81342268 00010668  7F E3 FB 78 */	mr r3, r31
/* 8134226C 0001066C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342270 00010670  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342274 00010674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342278 00010678  7C 08 03 A6 */	mtlr r0
/* 8134227C 0001067C  38 21 00 10 */	addi r1, r1, 0x10
/* 81342280 00010680  4E 80 00 20 */	blr
.endfn setDlTableFirst__Q33ipl5nwc247ManagerFv

# .text:0x908 | 0x81342284 | size: 0xF0
# ipl::nwc24::Manager::setDlTable()
.fn setDlTable__Q33ipl5nwc247ManagerFv, global
/* 81342284 00010684  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 81342288 00010688  7C 08 02 A6 */	mflr r0
/* 8134228C 0001068C  90 01 02 34 */	stw r0, 0x234(r1)
/* 81342290 00010690  39 61 02 30 */	addi r11, r1, 0x230
/* 81342294 00010694  48 2B 72 2D */	bl _savegpr_27
/* 81342298 00010698  3B A0 00 00 */	li r29, 0x0
/* 8134229C 0001069C  3B C3 0A 18 */	addi r30, r3, 0xa18
/* 813422A0 000106A0  B3 A1 00 08 */	sth r29, 0x8(r1)
/* 813422A4 000106A4  7C 7B 1B 78 */	mr r27, r3
/* 813422A8 000106A8  7F C3 F3 78 */	mr r3, r30
/* 813422AC 000106AC  3B 80 00 00 */	li r28, 0x0
/* 813422B0 000106B0  3B E0 00 00 */	li r31, 0x0
/* 813422B4 000106B4  48 1E F9 55 */	bl fn_81531C08
/* 813422B8 000106B8  38 7B 08 18 */	addi r3, r27, 0x818
/* 813422BC 000106BC  38 80 00 00 */	li r4, 0x0
/* 813422C0 000106C0  38 A0 01 E0 */	li r5, 0x1e0
/* 813422C4 000106C4  4B FE E0 71 */	bl memset
/* 813422C8 000106C8  38 61 00 08 */	addi r3, r1, 0x8
/* 813422CC 000106CC  38 80 00 01 */	li r4, 0x1
/* 813422D0 000106D0  48 16 D1 39 */	bl fn_814AF408
/* 813422D4 000106D4  48 00 00 78 */	b .L_8134234C
.L_813422D8:
/* 813422D8 000106D8  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 813422DC 000106DC  38 61 00 10 */	addi r3, r1, 0x10
/* 813422E0 000106E0  48 16 DC 7D */	bl fn_814AFF5C
/* 813422E4 000106E4  7C 64 1B 78 */	mr r4, r3
/* 813422E8 000106E8  7F 63 DB 78 */	mr r3, r27
/* 813422EC 000106EC  38 A0 04 28 */	li r5, 0x428
/* 813422F0 000106F0  48 00 1D 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813422F4 000106F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813422F8 000106F8  41 82 00 48 */	beq .L_81342340
/* 813422FC 000106FC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 81342300 00010700  38 61 00 10 */	addi r3, r1, 0x10
/* 81342304 00010704  38 81 00 0C */	addi r4, r1, 0xc
/* 81342308 00010708  48 16 D0 05 */	bl fn_814AF30C
/* 8134230C 0001070C  7C 64 1B 78 */	mr r4, r3
/* 81342310 00010710  7F 63 DB 78 */	mr r3, r27
/* 81342314 00010714  38 A0 04 40 */	li r5, 0x440
/* 81342318 00010718  48 00 1D 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134231C 0001071C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 81342320 00010720  2C 00 00 00 */	cmpwi r0, 0x0
/* 81342324 00010724  41 82 00 1C */	beq .L_81342340
/* 81342328 00010728  2C 1C 00 78 */	cmpwi r28, 0x78
/* 8134232C 0001072C  40 80 00 14 */	bge .L_81342340
/* 81342330 00010730  7C 7B FA 14 */	add r3, r27, r31
/* 81342334 00010734  3B FF 00 04 */	addi r31, r31, 0x4
/* 81342338 00010738  90 03 08 18 */	stw r0, 0x818(r3)
/* 8134233C 0001073C  3B 9C 00 01 */	addi r28, r28, 0x1
.L_81342340:
/* 81342340 00010740  38 61 00 08 */	addi r3, r1, 0x8
/* 81342344 00010744  38 80 00 00 */	li r4, 0x0
/* 81342348 00010748  48 16 D0 C1 */	bl fn_814AF408
.L_8134234C:
/* 8134234C 0001074C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342350 00010750  40 80 FF 88 */	bge .L_813422D8
/* 81342354 00010754  7F C3 F3 78 */	mr r3, r30
/* 81342358 00010758  48 1E F9 8D */	bl fn_81531CE4
/* 8134235C 0001075C  39 61 02 30 */	addi r11, r1, 0x230
/* 81342360 00010760  48 2B 71 AD */	bl _restgpr_27
/* 81342364 00010764  80 01 02 34 */	lwz r0, 0x234(r1)
/* 81342368 00010768  7C 08 03 A6 */	mtlr r0
/* 8134236C 0001076C  38 21 02 30 */	addi r1, r1, 0x230
/* 81342370 00010770  4E 80 00 20 */	blr
.endfn setDlTable__Q33ipl5nwc247ManagerFv

# .text:0x9F8 | 0x81342374 | size: 0x34
# ipl::nwc24::Manager::isAppDlEnable(unsigned long) const
.fn isAppDlEnable__Q33ipl5nwc247ManagerCFUl, global
/* 81342374 00010774  38 00 00 78 */	li r0, 0x78
/* 81342378 00010778  38 A0 00 00 */	li r5, 0x0
/* 8134237C 0001077C  7C 09 03 A6 */	mtctr r0
.L_81342380:
/* 81342380 00010780  7C C3 2A 14 */	add r6, r3, r5
/* 81342384 00010784  80 06 08 18 */	lwz r0, 0x818(r6)
/* 81342388 00010788  7C 04 00 40 */	cmplw r4, r0
/* 8134238C 0001078C  40 82 00 0C */	bne .L_81342398
/* 81342390 00010790  38 60 00 01 */	li r3, 0x1
/* 81342394 00010794  4E 80 00 20 */	blr
.L_81342398:
/* 81342398 00010798  38 A5 00 04 */	addi r5, r5, 0x4
/* 8134239C 0001079C  42 00 FF E4 */	bdnz .L_81342380
/* 813423A0 000107A0  38 60 00 00 */	li r3, 0x0
/* 813423A4 000107A4  4E 80 00 20 */	blr
.endfn isAppDlEnable__Q33ipl5nwc247ManagerCFUl

# .text:0xA2C | 0x813423A8 | size: 0x40
# ipl::nwc24::Manager::doDailyTasks()
.fn doDailyTasks__Q33ipl5nwc247ManagerFv, global
/* 813423A8 000107A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813423AC 000107AC  7C 08 02 A6 */	mflr r0
/* 813423B0 000107B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813423B4 000107B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813423B8 000107B8  7C 7F 1B 78 */	mr r31, r3
/* 813423BC 000107BC  80 63 09 FC */	lwz r3, 0x9fc(r3)
/* 813423C0 000107C0  48 16 FA 39 */	bl fn_814B1DF8
/* 813423C4 000107C4  7C 64 1B 78 */	mr r4, r3
/* 813423C8 000107C8  7F E3 FB 78 */	mr r3, r31
/* 813423CC 000107CC  38 A0 05 23 */	li r5, 0x523
/* 813423D0 000107D0  48 00 1C 81 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813423D4 000107D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813423D8 000107D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813423DC 000107DC  7C 08 03 A6 */	mtlr r0
/* 813423E0 000107E0  38 21 00 10 */	addi r1, r1, 0x10
/* 813423E4 000107E4  4E 80 00 20 */	blr
.endfn doDailyTasks__Q33ipl5nwc247ManagerFv

# .text:0xA6C | 0x813423E8 | size: 0x3C
# ipl::nwc24::Manager::manageDlTaskListForMenu()
.fn manageDlTaskListForMenu__Q33ipl5nwc247ManagerFv, global
/* 813423E8 000107E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813423EC 000107EC  7C 08 02 A6 */	mflr r0
/* 813423F0 000107F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813423F4 000107F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813423F8 000107F8  7C 7F 1B 78 */	mr r31, r3
/* 813423FC 000107FC  48 16 DF 91 */	bl fn_814B038C
/* 81342400 00010800  7C 64 1B 78 */	mr r4, r3
/* 81342404 00010804  7F E3 FB 78 */	mr r3, r31
/* 81342408 00010808  38 A0 05 2D */	li r5, 0x52d
/* 8134240C 0001080C  48 00 1C 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342410 00010810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342414 00010814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342418 00010818  7C 08 03 A6 */	mtlr r0
/* 8134241C 0001081C  38 21 00 10 */	addi r1, r1, 0x10
/* 81342420 00010820  4E 80 00 20 */	blr
.endfn manageDlTaskListForMenu__Q33ipl5nwc247ManagerFv

# .text:0xAA8 | 0x81342424 | size: 0x44
# ipl::nwc24::Manager::setLedPattern(NWC24MsgObj*)
.fn setLedPattern__Q33ipl5nwc247ManagerFP11NWC24MsgObj, global
/* 81342424 00010824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342428 00010828  7C 08 02 A6 */	mflr r0
/* 8134242C 0001082C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342430 00010830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342434 00010834  7C 7F 1B 78 */	mr r31, r3
/* 81342438 00010838  7C 83 23 78 */	mr r3, r4
/* 8134243C 0001083C  38 80 40 01 */	li r4, 0x4001
/* 81342440 00010840  48 15 F3 45 */	bl fn_814A1784
/* 81342444 00010844  7C 64 1B 78 */	mr r4, r3
/* 81342448 00010848  7F E3 FB 78 */	mr r3, r31
/* 8134244C 0001084C  38 A0 05 38 */	li r5, 0x538
/* 81342450 00010850  48 00 1C 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342454 00010854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342458 00010858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134245C 0001085C  7C 08 03 A6 */	mtlr r0
/* 81342460 00010860  38 21 00 10 */	addi r1, r1, 0x10
/* 81342464 00010864  4E 80 00 20 */	blr
.endfn setLedPattern__Q33ipl5nwc247ManagerFP11NWC24MsgObj

# .text:0xAEC | 0x81342468 | size: 0x40
# ipl::nwc24::Manager::enableLedNotification(int)
.fn enableLedNotification__Q33ipl5nwc247ManagerFi, global
/* 81342468 00010868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134246C 0001086C  7C 08 02 A6 */	mflr r0
/* 81342470 00010870  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342474 00010874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342478 00010878  7C 7F 1B 78 */	mr r31, r3
/* 8134247C 0001087C  7C 83 23 78 */	mr r3, r4
/* 81342480 00010880  48 16 F7 91 */	bl fn_814B1C10
/* 81342484 00010884  7C 64 1B 78 */	mr r4, r3
/* 81342488 00010888  7F E3 FB 78 */	mr r3, r31
/* 8134248C 0001088C  38 A0 05 43 */	li r5, 0x543
/* 81342490 00010890  48 00 1B C1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342494 00010894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342498 00010898  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134249C 0001089C  7C 08 03 A6 */	mtlr r0
/* 813424A0 000108A0  38 21 00 10 */	addi r1, r1, 0x10
/* 813424A4 000108A4  4E 80 00 20 */	blr
.endfn enableLedNotification__Q33ipl5nwc247ManagerFi

# .text:0xB2C | 0x813424A8 | size: 0x44
# ipl::nwc24::Manager::checkCHJumpObj(const NWC24CHJumpObj*, unsigned long)
.fn checkCHJumpObj__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjUl, global
/* 813424A8 000108A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813424AC 000108AC  7C 08 02 A6 */	mflr r0
/* 813424B0 000108B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 813424B4 000108B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813424B8 000108B8  7C 7F 1B 78 */	mr r31, r3
/* 813424BC 000108BC  7C 83 23 78 */	mr r3, r4
/* 813424C0 000108C0  7C A4 2B 78 */	mr r4, r5
/* 813424C4 000108C4  48 16 F5 C5 */	bl fn_814B1A88
/* 813424C8 000108C8  7C 64 1B 78 */	mr r4, r3
/* 813424CC 000108CC  7F E3 FB 78 */	mr r3, r31
/* 813424D0 000108D0  38 A0 05 4F */	li r5, 0x54f
/* 813424D4 000108D4  48 00 1B 7D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813424D8 000108D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813424DC 000108DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813424E0 000108E0  7C 08 03 A6 */	mtlr r0
/* 813424E4 000108E4  38 21 00 10 */	addi r1, r1, 0x10
/* 813424E8 000108E8  4E 80 00 20 */	blr
.endfn checkCHJumpObj__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjUl

# .text:0xB70 | 0x813424EC | size: 0x44
# ipl::nwc24::Manager::getCHJumpTitleId(const NWC24CHJumpObj*, unsigned long long*)
.fn getCHJumpTitleId__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUx, global
/* 813424EC 000108EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813424F0 000108F0  7C 08 02 A6 */	mflr r0
/* 813424F4 000108F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 813424F8 000108F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813424FC 000108FC  7C 7F 1B 78 */	mr r31, r3
/* 81342500 00010900  7C 83 23 78 */	mr r3, r4
/* 81342504 00010904  7C A4 2B 78 */	mr r4, r5
/* 81342508 00010908  48 16 F6 21 */	bl fn_814B1B28
/* 8134250C 0001090C  7C 64 1B 78 */	mr r4, r3
/* 81342510 00010910  7F E3 FB 78 */	mr r3, r31
/* 81342514 00010914  38 A0 05 69 */	li r5, 0x569
/* 81342518 00010918  48 00 1B 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134251C 0001091C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342520 00010920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342524 00010924  7C 08 03 A6 */	mtlr r0
/* 81342528 00010928  38 21 00 10 */	addi r1, r1, 0x10
/* 8134252C 0001092C  4E 80 00 20 */	blr
.endfn getCHJumpTitleId__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUx

# .text:0xBB4 | 0x81342530 | size: 0x48
# ipl::nwc24::Manager::getCHJumpBlockSize(const NWC24CHJumpObj*, unsigned long*, unsigned long)
.fn getCHJumpBlockSize__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUlUl, global
/* 81342530 00010930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342534 00010934  7C 08 02 A6 */	mflr r0
/* 81342538 00010938  90 01 00 14 */	stw r0, 0x14(r1)
/* 8134253C 0001093C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342540 00010940  7C 7F 1B 78 */	mr r31, r3
/* 81342544 00010944  7C 83 23 78 */	mr r3, r4
/* 81342548 00010948  7C A4 2B 78 */	mr r4, r5
/* 8134254C 0001094C  7C C5 33 78 */	mr r5, r6
/* 81342550 00010950  48 16 F5 F1 */	bl fn_814B1B40
/* 81342554 00010954  7C 64 1B 78 */	mr r4, r3
/* 81342558 00010958  7F E3 FB 78 */	mr r3, r31
/* 8134255C 0001095C  38 A0 05 76 */	li r5, 0x576
/* 81342560 00010960  48 00 1A F1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342564 00010964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342568 00010968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134256C 0001096C  7C 08 03 A6 */	mtlr r0
/* 81342570 00010970  38 21 00 10 */	addi r1, r1, 0x10
/* 81342574 00010974  4E 80 00 20 */	blr
.endfn getCHJumpBlockSize__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUlUl

# .text:0xBFC | 0x81342578 | size: 0x4C
# ipl::nwc24::Manager::getCHJumpBlockData(const NWC24CHJumpObj*, char*, unsigned long, unsigned long)
.fn getCHJumpBlockData__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPcUlUl, global
/* 81342578 00010978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134257C 0001097C  7C 08 02 A6 */	mflr r0
/* 81342580 00010980  90 01 00 14 */	stw r0, 0x14(r1)
/* 81342584 00010984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342588 00010988  7C 7F 1B 78 */	mr r31, r3
/* 8134258C 0001098C  7C 83 23 78 */	mr r3, r4
/* 81342590 00010990  7C A4 2B 78 */	mr r4, r5
/* 81342594 00010994  7C C5 33 78 */	mr r5, r6
/* 81342598 00010998  7C E6 3B 78 */	mr r6, r7
/* 8134259C 0001099C  48 16 F5 D5 */	bl fn_814B1B70
/* 813425A0 000109A0  7C 64 1B 78 */	mr r4, r3
/* 813425A4 000109A4  7F E3 FB 78 */	mr r3, r31
/* 813425A8 000109A8  38 A0 05 84 */	li r5, 0x584
/* 813425AC 000109AC  48 00 1A A5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813425B0 000109B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 813425B4 000109B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813425B8 000109B8  7C 08 03 A6 */	mtlr r0
/* 813425BC 000109BC  38 21 00 10 */	addi r1, r1, 0x10
/* 813425C0 000109C0  4E 80 00 20 */	blr
.endfn getCHJumpBlockData__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPcUlUl

# .text:0xC48 | 0x813425C4 | size: 0x5C
# ipl::nwc24::Manager::saveMailNow()
.fn saveMailNow__Q33ipl5nwc247ManagerFv, global
/* 813425C4 000109C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813425C8 000109C8  7C 08 02 A6 */	mflr r0
/* 813425CC 000109CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 813425D0 000109D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 813425D4 000109D4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 813425D8 000109D8  7C 7E 1B 78 */	mr r30, r3
/* 813425DC 000109DC  38 63 0A 00 */	addi r3, r3, 0xa00
/* 813425E0 000109E0  48 1E F6 29 */	bl fn_81531C08
/* 813425E4 000109E4  48 16 90 A9 */	bl fn_814AB68C
/* 813425E8 000109E8  7C 64 1B 78 */	mr r4, r3
/* 813425EC 000109EC  7F C3 F3 78 */	mr r3, r30
/* 813425F0 000109F0  38 A0 05 91 */	li r5, 0x591
/* 813425F4 000109F4  48 00 1A 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813425F8 000109F8  7C 7F 1B 78 */	mr r31, r3
/* 813425FC 000109FC  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81342600 00010A00  48 1E F6 E5 */	bl fn_81531CE4
/* 81342604 00010A04  7F E3 FB 78 */	mr r3, r31
/* 81342608 00010A08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134260C 00010A0C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342610 00010A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342614 00010A14  7C 08 03 A6 */	mtlr r0
/* 81342618 00010A18  38 21 00 10 */	addi r1, r1, 0x10
/* 8134261C 00010A1C  4E 80 00 20 */	blr
.endfn saveMailNow__Q33ipl5nwc247ManagerFv

# .text:0xCA4 | 0x81342620 | size: 0x50
# ipl::nwc24::Manager::check(unsigned long)
.fn check__Q33ipl5nwc247ManagerFUl, global
/* 81342620 00010A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342624 00010A24  7C 08 02 A6 */	mflr r0
/* 81342628 00010A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8134262C 00010A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342630 00010A30  93 C1 00 08 */	stw r30, 0x8(r1)
/* 81342634 00010A34  7C 7E 1B 78 */	mr r30, r3
/* 81342638 00010A38  7C 83 23 78 */	mr r3, r4
/* 8134263C 00010A3C  48 15 DE 35 */	bl fn_814A0470
/* 81342640 00010A40  7C 7F 1B 78 */	mr r31, r3
/* 81342644 00010A44  7F C3 F3 78 */	mr r3, r30
/* 81342648 00010A48  7F E4 FB 78 */	mr r4, r31
/* 8134264C 00010A4C  38 A0 05 A1 */	li r5, 0x5a1
/* 81342650 00010A50  48 00 1A 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342654 00010A54  7F E3 FB 78 */	mr r3, r31
/* 81342658 00010A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134265C 00010A5C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342660 00010A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342664 00010A64  7C 08 03 A6 */	mtlr r0
/* 81342668 00010A68  38 21 00 10 */	addi r1, r1, 0x10
/* 8134266C 00010A6C  4E 80 00 20 */	blr
.endfn check__Q33ipl5nwc247ManagerFUl

# .text:0xCF4 | 0x81342670 | size: 0xFB4
# ipl::nwc24::Manager::receive()
.fn receive__Q33ipl5nwc247ManagerFv, global
/* 81342670 00010A70  54 2B 06 FE */	clrlwi r11, r1, 27
/* 81342674 00010A74  7C 2C 0B 78 */	mr r12, r1
/* 81342678 00010A78  21 6B F8 A0 */	subfic r11, r11, -0x760
/* 8134267C 00010A7C  7C 21 59 6E */	stwux r1, r1, r11
/* 81342680 00010A80  7C 08 02 A6 */	mflr r0
/* 81342684 00010A84  90 0C 00 04 */	stw r0, 0x4(r12)
/* 81342688 00010A88  DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8134268C 00010A8C  F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 81342690 00010A90  39 6C FF F0 */	subi r11, r12, 0x10
/* 81342694 00010A94  48 2B 6D F9 */	bl _savegpr_14
/* 81342698 00010A98  3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8134269C 00010A9C  3F 20 81 63 */	lis r25, lbl_81635218@ha
/* 813426A0 00010AA0  3B 44 90 08 */	addi r26, r4, smArg__Q23ipl6System@l
/* 813426A4 00010AA4  7C 6F 1B 78 */	mr r15, r3
/* 813426A8 00010AA8  83 1A 00 38 */	lwz r24, 0x38(r26)
/* 813426AC 00010AAC  3B 39 52 18 */	addi r25, r25, lbl_81635218@l
/* 813426B0 00010AB0  38 80 00 04 */	li r4, 0x4
/* 813426B4 00010AB4  81 98 00 00 */	lwz r12, 0x0(r24)
/* 813426B8 00010AB8  7F 03 C3 78 */	mr r3, r24
/* 813426BC 00010ABC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813426C0 00010AC0  7D 89 03 A6 */	mtctr r12
/* 813426C4 00010AC4  4E 80 04 21 */	bctrl
/* 813426C8 00010AC8  7C 64 1B 78 */	mr r4, r3
/* 813426CC 00010ACC  38 79 00 00 */	addi r3, r25, 0x0
/* 813426D0 00010AD0  4C C6 31 82 */	crclr cr1eq
/* 813426D4 00010AD4  48 1E BF CD */	bl OSReport
/* 813426D8 00010AD8  3D C0 81 09 */	lis r14, smArg__Q33ipl5nwc247Manager@ha
/* 813426DC 00010ADC  38 80 01 00 */	li r4, 0x100
/* 813426E0 00010AE0  38 6E 96 20 */	addi r3, r14, smArg__Q33ipl5nwc247Manager@l
/* 813426E4 00010AE4  48 16 88 15 */	bl fn_814AAEF8
/* 813426E8 00010AE8  39 CE 96 20 */	addi r14, r14, smArg__Q33ipl5nwc247Manager@l
/* 813426EC 00010AEC  38 79 00 1D */	addi r3, r25, 0x1d
/* 813426F0 00010AF0  80 8E 00 04 */	lwz r4, 0x4(r14)
/* 813426F4 00010AF4  4C C6 31 82 */	crclr cr1eq
/* 813426F8 00010AF8  48 1E BF A9 */	bl OSReport
/* 813426FC 00010AFC  80 8E 00 08 */	lwz r4, 0x8(r14)
/* 81342700 00010B00  38 79 00 2C */	addi r3, r25, 0x2c
/* 81342704 00010B04  4C C6 31 82 */	crclr cr1eq
/* 81342708 00010B08  48 1E BF 99 */	bl OSReport
/* 8134270C 00010B0C  80 8E 00 0C */	lwz r4, 0xc(r14)
/* 81342710 00010B10  38 79 00 3E */	addi r3, r25, 0x3e
/* 81342714 00010B14  4C C6 31 82 */	crclr cr1eq
/* 81342718 00010B18  48 1E BF 89 */	bl OSReport
/* 8134271C 00010B1C  80 8E 00 10 */	lwz r4, 0x10(r14)
/* 81342720 00010B20  38 79 00 4F */	addi r3, r25, 0x4f
/* 81342724 00010B24  4C C6 31 82 */	crclr cr1eq
/* 81342728 00010B28  48 1E BF 79 */	bl OSReport
/* 8134272C 00010B2C  80 8E 00 14 */	lwz r4, 0x14(r14)
/* 81342730 00010B30  38 79 00 60 */	addi r3, r25, 0x60
/* 81342734 00010B34  4C C6 31 82 */	crclr cr1eq
/* 81342738 00010B38  48 1E BF 69 */	bl OSReport
/* 8134273C 00010B3C  80 8E 00 18 */	lwz r4, 0x18(r14)
/* 81342740 00010B40  38 79 00 6C */	addi r3, r25, 0x6c
/* 81342744 00010B44  4C C6 31 82 */	crclr cr1eq
/* 81342748 00010B48  48 1E BF 59 */	bl OSReport
/* 8134274C 00010B4C  80 8E 00 1C */	lwz r4, 0x1c(r14)
/* 81342750 00010B50  38 79 00 7D */	addi r3, r25, 0x7d
/* 81342754 00010B54  4C C6 31 82 */	crclr cr1eq
/* 81342758 00010B58  48 1E BF 49 */	bl OSReport
/* 8134275C 00010B5C  80 8E 00 20 */	lwz r4, 0x20(r14)
/* 81342760 00010B60  38 79 00 8E */	addi r3, r25, 0x8e
/* 81342764 00010B64  4C C6 31 82 */	crclr cr1eq
/* 81342768 00010B68  48 1E BF 39 */	bl OSReport
/* 8134276C 00010B6C  80 8E 00 24 */	lwz r4, 0x24(r14)
/* 81342770 00010B70  38 79 00 9F */	addi r3, r25, 0x9f
/* 81342774 00010B74  4C C6 31 82 */	crclr cr1eq
/* 81342778 00010B78  48 1E BF 29 */	bl OSReport
/* 8134277C 00010B7C  80 8E 00 28 */	lwz r4, 0x28(r14)
/* 81342780 00010B80  38 79 00 B2 */	addi r3, r25, 0xb2
/* 81342784 00010B84  4C C6 31 82 */	crclr cr1eq
/* 81342788 00010B88  48 1E BF 19 */	bl OSReport
/* 8134278C 00010B8C  80 8E 00 2C */	lwz r4, 0x2c(r14)
/* 81342790 00010B90  38 79 00 C5 */	addi r3, r25, 0xc5
/* 81342794 00010B94  4C C6 31 82 */	crclr cr1eq
/* 81342798 00010B98  48 1E BF 09 */	bl OSReport
/* 8134279C 00010B9C  80 8E 00 30 */	lwz r4, 0x30(r14)
/* 813427A0 00010BA0  38 79 00 DA */	addi r3, r25, 0xda
/* 813427A4 00010BA4  4C C6 31 82 */	crclr cr1eq
/* 813427A8 00010BA8  48 1E BE F9 */	bl OSReport
/* 813427AC 00010BAC  80 8E 00 34 */	lwz r4, 0x34(r14)
/* 813427B0 00010BB0  38 79 00 EC */	addi r3, r25, 0xec
/* 813427B4 00010BB4  4C C6 31 82 */	crclr cr1eq
/* 813427B8 00010BB8  48 1E BE E9 */	bl OSReport
/* 813427BC 00010BBC  80 8E 00 38 */	lwz r4, 0x38(r14)
/* 813427C0 00010BC0  38 79 00 FE */	addi r3, r25, 0xfe
/* 813427C4 00010BC4  4C C6 31 82 */	crclr cr1eq
/* 813427C8 00010BC8  48 1E BE D9 */	bl OSReport
/* 813427CC 00010BCC  80 8E 00 3C */	lwz r4, 0x3c(r14)
/* 813427D0 00010BD0  38 79 01 10 */	addi r3, r25, 0x110
/* 813427D4 00010BD4  4C C6 31 82 */	crclr cr1eq
/* 813427D8 00010BD8  48 1E BE C9 */	bl OSReport
/* 813427DC 00010BDC  80 8E 00 40 */	lwz r4, 0x40(r14)
/* 813427E0 00010BE0  38 79 01 26 */	addi r3, r25, 0x126
/* 813427E4 00010BE4  4C C6 31 82 */	crclr cr1eq
/* 813427E8 00010BE8  48 1E BE B9 */	bl OSReport
/* 813427EC 00010BEC  7D E3 7B 78 */	mr r3, r15
/* 813427F0 00010BF0  4B FF F2 51 */	bl open__Q33ipl5nwc247ManagerFv
/* 813427F4 00010BF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813427F8 00010BF8  41 82 0E 04 */	beq .L_813435FC
/* 813427FC 00010BFC  3B 60 00 01 */	li r27, 0x1
/* 81342800 00010C00  38 61 00 A8 */	addi r3, r1, 0xa8
/* 81342804 00010C04  9B 6F 0A 31 */	stb r27, 0xa31(r15)
/* 81342808 00010C08  48 15 CB 29 */	bl fn_8149F330
/* 8134280C 00010C0C  7C 64 1B 78 */	mr r4, r3
/* 81342810 00010C10  7D E3 7B 78 */	mr r3, r15
/* 81342814 00010C14  38 A0 03 89 */	li r5, 0x389
/* 81342818 00010C18  48 00 18 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134281C 00010C1C  3B 80 00 00 */	li r28, 0x0
/* 81342820 00010C20  38 81 00 88 */	addi r4, r1, 0x88
/* 81342824 00010C24  93 81 00 88 */	stw r28, 0x88(r1)
/* 81342828 00010C28  38 60 00 01 */	li r3, 0x1
/* 8134282C 00010C2C  48 15 F2 95 */	bl fn_814A1AC0
/* 81342830 00010C30  7C 64 1B 78 */	mr r4, r3
/* 81342834 00010C34  7D E3 7B 78 */	mr r3, r15
/* 81342838 00010C38  38 A0 01 EC */	li r5, 0x1ec
/* 8134283C 00010C3C  48 00 18 15 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342840 00010C40  38 8F 00 18 */	addi r4, r15, 0x18
/* 81342844 00010C44  38 60 00 01 */	li r3, 0x1
/* 81342848 00010C48  38 A0 01 00 */	li r5, 0x100
/* 8134284C 00010C4C  48 15 F6 61 */	bl fn_814A1EAC
/* 81342850 00010C50  7C 64 1B 78 */	mr r4, r3
/* 81342854 00010C54  7D E3 7B 78 */	mr r3, r15
/* 81342858 00010C58  38 A0 01 F9 */	li r5, 0x1f9
/* 8134285C 00010C5C  48 00 17 F5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342860 00010C60  38 6F 04 18 */	addi r3, r15, 0x418
/* 81342864 00010C64  38 80 00 00 */	li r4, 0x0
/* 81342868 00010C68  38 A0 04 00 */	li r5, 0x400
/* 8134286C 00010C6C  4B FE DA C9 */	bl memset
/* 81342870 00010C70  3B A1 00 94 */	addi r29, r1, 0x94
/* 81342874 00010C74  3A E0 00 00 */	li r23, 0x0
/* 81342878 00010C78  39 C0 00 00 */	li r14, 0x0
/* 8134287C 00010C7C  3A A0 00 00 */	li r21, 0x0
/* 81342880 00010C80  3B E0 00 00 */	li r31, 0x0
/* 81342884 00010C84  48 00 0D 38 */	b .L_813435BC
.L_81342888:
/* 81342888 00010C88  3A 80 00 00 */	li r20, 0x0
/* 8134288C 00010C8C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 81342890 00010C90  92 8F 00 04 */	stw r20, 0x4(r15)
/* 81342894 00010C94  38 80 00 00 */	li r4, 0x0
/* 81342898 00010C98  38 A0 00 18 */	li r5, 0x18
/* 8134289C 00010C9C  92 8F 00 00 */	stw r20, 0x0(r15)
/* 813428A0 00010CA0  92 8F 00 0C */	stw r20, 0xc(r15)
/* 813428A4 00010CA4  92 8F 00 08 */	stw r20, 0x8(r15)
/* 813428A8 00010CA8  4B FE DA 8D */	bl memset
/* 813428AC 00010CAC  7C 8F FA 14 */	add r4, r15, r31
/* 813428B0 00010CB0  38 61 03 50 */	addi r3, r1, 0x350
/* 813428B4 00010CB4  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 813428B8 00010CB8  38 80 00 01 */	li r4, 0x1
/* 813428BC 00010CBC  48 15 F2 89 */	bl fn_814A1B44
/* 813428C0 00010CC0  7C 64 1B 78 */	mr r4, r3
/* 813428C4 00010CC4  7D E3 7B 78 */	mr r3, r15
/* 813428C8 00010CC8  38 A0 02 06 */	li r5, 0x206
/* 813428CC 00010CCC  48 00 17 85 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813428D0 00010CD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813428D4 00010CD4  41 82 0C E0 */	beq .L_813435B4
/* 813428D8 00010CD8  38 61 03 50 */	addi r3, r1, 0x350
/* 813428DC 00010CDC  38 81 00 84 */	addi r4, r1, 0x84
/* 813428E0 00010CE0  48 15 EF 71 */	bl fn_814A1850
/* 813428E4 00010CE4  7C 64 1B 78 */	mr r4, r3
/* 813428E8 00010CE8  7D E3 7B 78 */	mr r3, r15
/* 813428EC 00010CEC  38 A0 02 12 */	li r5, 0x212
/* 813428F0 00010CF0  48 00 17 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813428F4 00010CF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 813428F8 00010CF8  41 82 0C BC */	beq .L_813435B4
/* 813428FC 00010CFC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 81342900 00010D00  2C 00 00 02 */	cmpwi r0, 0x2
/* 81342904 00010D04  41 82 00 14 */	beq .L_81342918
/* 81342908 00010D08  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134290C 00010D0C  41 82 00 0C */	beq .L_81342918
/* 81342910 00010D10  2C 00 00 04 */	cmpwi r0, 0x4
/* 81342914 00010D14  40 82 0C 50 */	bne .L_81343564
.L_81342918:
/* 81342918 00010D18  38 61 02 50 */	addi r3, r1, 0x250
/* 8134291C 00010D1C  38 80 00 00 */	li r4, 0x0
/* 81342920 00010D20  38 A0 01 00 */	li r5, 0x100
/* 81342924 00010D24  4B FE DA 11 */	bl memset
/* 81342928 00010D28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134292C 00010D2C  2C 00 00 04 */	cmpwi r0, 0x4
/* 81342930 00010D30  40 82 00 C0 */	bne .L_813429F0
/* 81342934 00010D34  93 81 00 80 */	stw r28, 0x80(r1)
/* 81342938 00010D38  38 61 03 50 */	addi r3, r1, 0x350
/* 8134293C 00010D3C  38 81 02 50 */	addi r4, r1, 0x250
/* 81342940 00010D40  38 A0 01 00 */	li r5, 0x100
/* 81342944 00010D44  48 16 64 91 */	bl fn_814A8DD4
/* 81342948 00010D48  7C 64 1B 78 */	mr r4, r3
/* 8134294C 00010D4C  7D E3 7B 78 */	mr r3, r15
/* 81342950 00010D50  38 A0 03 33 */	li r5, 0x333
/* 81342954 00010D54  48 00 17 F1 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342958 00010D58  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134295C 00010D5C  40 82 00 3C */	bne .L_81342998
/* 81342960 00010D60  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342964 00010D64  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342968 00010D68  41 81 00 0C */	bgt .L_81342974
/* 8134296C 00010D6C  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342970 00010D70  40 80 0B 68 */	bge .L_813434D8
.L_81342974:
/* 81342974 00010D74  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342978 00010D78  2C 00 FF DA */	cmpwi r0, -0x26
/* 8134297C 00010D7C  41 82 0B 5C */	beq .L_813434D8
/* 81342980 00010D80  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342984 00010D84  41 82 0B 54 */	beq .L_813434D8
/* 81342988 00010D88  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 8134298C 00010D8C  41 82 0B 4C */	beq .L_813434D8
/* 81342990 00010D90  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342994 00010D94  41 82 0B 44 */	beq .L_813434D8
.L_81342998:
/* 81342998 00010D98  38 61 02 50 */	addi r3, r1, 0x250
/* 8134299C 00010D9C  38 81 00 80 */	addi r4, r1, 0x80
/* 813429A0 00010DA0  3A 60 00 02 */	li r19, 0x2
/* 813429A4 00010DA4  48 16 A9 A5 */	bl fn_814AD348
/* 813429A8 00010DA8  7C 64 1B 78 */	mr r4, r3
/* 813429AC 00010DAC  7D E3 7B 78 */	mr r3, r15
/* 813429B0 00010DB0  38 A0 03 A4 */	li r5, 0x3a4
/* 813429B4 00010DB4  48 00 16 9D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813429B8 00010DB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813429BC 00010DBC  41 82 00 D4 */	beq .L_81342A90
/* 813429C0 00010DC0  80 81 00 80 */	lwz r4, 0x80(r1)
/* 813429C4 00010DC4  38 61 05 A0 */	addi r3, r1, 0x5a0
/* 813429C8 00010DC8  48 16 9C E1 */	bl fn_814AC6A8
/* 813429CC 00010DCC  7C 64 1B 78 */	mr r4, r3
/* 813429D0 00010DD0  7D E3 7B 78 */	mr r3, r15
/* 813429D4 00010DD4  38 A0 03 BD */	li r5, 0x3bd
/* 813429D8 00010DD8  48 00 16 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813429DC 00010DDC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 813429E0 00010DE0  38 81 05 A8 */	addi r4, r1, 0x5a8
/* 813429E4 00010DE4  38 A0 00 0C */	li r5, 0xc
/* 813429E8 00010DE8  48 2C 5C FD */	bl fn_816086E4
/* 813429EC 00010DEC  48 00 00 A4 */	b .L_81342A90
.L_813429F0:
/* 813429F0 00010DF0  93 81 00 7C */	stw r28, 0x7c(r1)
/* 813429F4 00010DF4  38 61 03 50 */	addi r3, r1, 0x350
/* 813429F8 00010DF8  38 81 02 50 */	addi r4, r1, 0x250
/* 813429FC 00010DFC  48 15 F0 21 */	bl fn_814A1A1C
/* 81342A00 00010E00  7C 64 1B 78 */	mr r4, r3
/* 81342A04 00010E04  7D E3 7B 78 */	mr r3, r15
/* 81342A08 00010E08  38 A0 02 4E */	li r5, 0x24e
/* 81342A0C 00010E0C  48 00 16 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A10 00010E10  80 81 02 50 */	lwz r4, 0x250(r1)
/* 81342A14 00010E14  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 81342A18 00010E18  80 A1 02 54 */	lwz r5, 0x254(r1)
/* 81342A1C 00010E1C  80 61 00 AC */	lwz r3, 0xac(r1)
/* 81342A20 00010E20  7C 80 02 78 */	xor r0, r4, r0
/* 81342A24 00010E24  7C A3 1A 78 */	xor r3, r5, r3
/* 81342A28 00010E28  7C 60 03 79 */	or. r0, r3, r0
/* 81342A2C 00010E2C  40 82 00 0C */	bne .L_81342A38
/* 81342A30 00010E30  3A 60 00 00 */	li r19, 0x0
/* 81342A34 00010E34  48 00 00 08 */	b .L_81342A3C
.L_81342A38:
/* 81342A38 00010E38  3A 60 00 01 */	li r19, 0x1
.L_81342A3C:
/* 81342A3C 00010E3C  80 61 02 50 */	lwz r3, 0x250(r1)
/* 81342A40 00010E40  38 A1 00 7C */	addi r5, r1, 0x7c
/* 81342A44 00010E44  80 81 02 54 */	lwz r4, 0x254(r1)
/* 81342A48 00010E48  48 16 A8 41 */	bl fn_814AD288
/* 81342A4C 00010E4C  7C 64 1B 78 */	mr r4, r3
/* 81342A50 00010E50  7D E3 7B 78 */	mr r3, r15
/* 81342A54 00010E54  38 A0 03 B0 */	li r5, 0x3b0
/* 81342A58 00010E58  48 00 15 F9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A5C 00010E5C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342A60 00010E60  41 82 00 30 */	beq .L_81342A90
/* 81342A64 00010E64  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 81342A68 00010E68  38 61 04 60 */	addi r3, r1, 0x460
/* 81342A6C 00010E6C  48 16 9C 3D */	bl fn_814AC6A8
/* 81342A70 00010E70  7C 64 1B 78 */	mr r4, r3
/* 81342A74 00010E74  7D E3 7B 78 */	mr r3, r15
/* 81342A78 00010E78  38 A0 03 BD */	li r5, 0x3bd
/* 81342A7C 00010E7C  48 00 15 D5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A80 00010E80  38 61 00 B0 */	addi r3, r1, 0xb0
/* 81342A84 00010E84  38 81 04 68 */	addi r4, r1, 0x468
/* 81342A88 00010E88  38 A0 00 0C */	li r5, 0xc
/* 81342A8C 00010E8C  48 2C 5C 59 */	bl fn_816086E4
.L_81342A90:
/* 81342A90 00010E90  38 61 03 50 */	addi r3, r1, 0x350
/* 81342A94 00010E94  38 81 00 78 */	addi r4, r1, 0x78
/* 81342A98 00010E98  48 15 EF 65 */	bl fn_814A19FC
/* 81342A9C 00010E9C  7C 64 1B 78 */	mr r4, r3
/* 81342AA0 00010EA0  7D E3 7B 78 */	mr r3, r15
/* 81342AA4 00010EA4  38 A0 02 1E */	li r5, 0x21e
/* 81342AA8 00010EA8  48 00 15 A9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342AAC 00010EAC  38 61 03 50 */	addi r3, r1, 0x350
/* 81342AB0 00010EB0  38 81 00 46 */	addi r4, r1, 0x46
/* 81342AB4 00010EB4  48 15 EF 59 */	bl fn_814A1A0C
/* 81342AB8 00010EB8  7C 64 1B 78 */	mr r4, r3
/* 81342ABC 00010EBC  7D E3 7B 78 */	mr r3, r15
/* 81342AC0 00010EC0  38 A0 02 2A */	li r5, 0x22a
/* 81342AC4 00010EC4  48 00 15 8D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342AC8 00010EC8  80 81 00 78 */	lwz r4, 0x78(r1)
/* 81342ACC 00010ECC  38 79 01 31 */	addi r3, r25, 0x131
/* 81342AD0 00010ED0  A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 81342AD4 00010ED4  4C C6 31 82 */	crclr cr1eq
/* 81342AD8 00010ED8  48 1E BB C9 */	bl OSReport
/* 81342ADC 00010EDC  80 81 00 78 */	lwz r4, 0x78(r1)
/* 81342AE0 00010EE0  7D E3 7B 78 */	mr r3, r15
/* 81342AE4 00010EE4  A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 81342AE8 00010EE8  48 00 14 91 */	bl is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs
/* 81342AEC 00010EEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342AF0 00010EF0  41 82 09 E8 */	beq .L_813434D8
/* 81342AF4 00010EF4  93 81 00 74 */	stw r28, 0x74(r1)
/* 81342AF8 00010EF8  38 61 03 50 */	addi r3, r1, 0x350
/* 81342AFC 00010EFC  38 81 00 74 */	addi r4, r1, 0x74
/* 81342B00 00010F00  48 16 60 C1 */	bl fn_814A8BC0
/* 81342B04 00010F04  7C 64 1B 78 */	mr r4, r3
/* 81342B08 00010F08  7D E3 7B 78 */	mr r3, r15
/* 81342B0C 00010F0C  38 A0 03 65 */	li r5, 0x365
/* 81342B10 00010F10  48 00 16 35 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342B14 00010F14  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B18 00010F18  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342B1C 00010F1C  41 81 00 0C */	bgt .L_81342B28
/* 81342B20 00010F20  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342B24 00010F24  40 80 09 B4 */	bge .L_813434D8
.L_81342B28:
/* 81342B28 00010F28  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B2C 00010F2C  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342B30 00010F30  41 82 09 A8 */	beq .L_813434D8
/* 81342B34 00010F34  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342B38 00010F38  41 82 09 A0 */	beq .L_813434D8
/* 81342B3C 00010F3C  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342B40 00010F40  41 82 09 98 */	beq .L_813434D8
/* 81342B44 00010F44  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342B48 00010F48  41 82 09 90 */	beq .L_813434D8
/* 81342B4C 00010F4C  80 C1 00 74 */	lwz r6, 0x74(r1)
/* 81342B50 00010F50  38 81 00 70 */	addi r4, r1, 0x70
/* 81342B54 00010F54  93 81 00 70 */	stw r28, 0x70(r1)
/* 81342B58 00010F58  38 A1 00 48 */	addi r5, r1, 0x48
/* 81342B5C 00010F5C  30 06 FF FF */	subic r0, r6, 0x1
/* 81342B60 00010F60  7C 00 31 10 */	subfe r0, r0, r6
/* 81342B64 00010F64  93 81 00 48 */	stw r28, 0x48(r1)
/* 81342B68 00010F68  7C 66 00 38 */	and r6, r3, r0
/* 81342B6C 00010F6C  38 61 03 50 */	addi r3, r1, 0x350
/* 81342B70 00010F70  30 06 FF FF */	subic r0, r6, 0x1
/* 81342B74 00010F74  7E 00 31 10 */	subfe r16, r0, r6
/* 81342B78 00010F78  48 16 61 29 */	bl fn_814A8CA0
/* 81342B7C 00010F7C  7C 64 1B 78 */	mr r4, r3
/* 81342B80 00010F80  7D E3 7B 78 */	mr r3, r15
/* 81342B84 00010F84  38 A0 03 72 */	li r5, 0x372
/* 81342B88 00010F88  48 00 15 BD */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342B8C 00010F8C  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B90 00010F90  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342B94 00010F94  41 81 00 0C */	bgt .L_81342BA0
/* 81342B98 00010F98  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342B9C 00010F9C  40 80 09 3C */	bge .L_813434D8
.L_81342BA0:
/* 81342BA0 00010FA0  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342BA4 00010FA4  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342BA8 00010FA8  41 82 09 30 */	beq .L_813434D8
/* 81342BAC 00010FAC  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342BB0 00010FB0  41 82 09 28 */	beq .L_813434D8
/* 81342BB4 00010FB4  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342BB8 00010FB8  41 82 09 20 */	beq .L_813434D8
/* 81342BBC 00010FBC  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342BC0 00010FC0  41 82 09 18 */	beq .L_813434D8
/* 81342BC4 00010FC4  80 81 00 70 */	lwz r4, 0x70(r1)
/* 81342BC8 00010FC8  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81342BCC 00010FCC  30 04 FF FF */	subic r0, r4, 0x1
/* 81342BD0 00010FD0  7C 00 21 10 */	subfe r0, r0, r4
/* 81342BD4 00010FD4  3C 85 B7 BF */	subis r4, r5, 0x4841
/* 81342BD8 00010FD8  7C 63 00 38 */	and r3, r3, r0
/* 81342BDC 00010FDC  30 03 FF FF */	subic r0, r3, 0x1
/* 81342BE0 00010FE0  28 04 43 41 */	cmplwi r4, 0x4341
/* 81342BE4 00010FE4  7C 00 19 10 */	subfe r0, r0, r3
/* 81342BE8 00010FE8  90 01 06 E8 */	stw r0, 0x6e8(r1)
/* 81342BEC 00010FEC  40 82 00 5C */	bne .L_81342C48
/* 81342BF0 00010FF0  38 61 02 02 */	addi r3, r1, 0x202
/* 81342BF4 00010FF4  38 81 03 50 */	addi r4, r1, 0x350
/* 81342BF8 00010FF8  48 1A 67 61 */	bl RFLiNWC24Msg2CharData
/* 81342BFC 00010FFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342C00 00011000  41 82 00 24 */	beq .L_81342C24
/* 81342C04 00011004  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342C08 00011008  38 81 02 02 */	addi r4, r1, 0x202
/* 81342C0C 0001100C  4B FF C0 B5 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81342C10 00011010  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342C14 00011014  41 82 00 10 */	beq .L_81342C24
/* 81342C18 00011018  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342C1C 0001101C  38 81 03 50 */	addi r4, r1, 0x350
/* 81342C20 00011020  4B FF C1 01 */	bl addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj
.L_81342C24:
/* 81342C24 00011024  7C 8F FA 14 */	add r4, r15, r31
/* 81342C28 00011028  38 60 00 01 */	li r3, 0x1
/* 81342C2C 0001102C  80 84 00 18 */	lwz r4, 0x18(r4)
/* 81342C30 00011030  48 15 F4 E1 */	bl fn_814A2110
/* 81342C34 00011034  7C 64 1B 78 */	mr r4, r3
/* 81342C38 00011038  7D E3 7B 78 */	mr r3, r15
/* 81342C3C 0001103C  38 A0 03 7E */	li r5, 0x37e
/* 81342C40 00011040  48 00 14 11 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342C44 00011044  48 00 09 70 */	b .L_813435B4
.L_81342C48:
/* 81342C48 00011048  28 04 45 41 */	cmplwi r4, 0x4541
/* 81342C4C 0001104C  41 82 00 0C */	beq .L_81342C58
/* 81342C50 00011050  28 05 00 02 */	cmplwi r5, 0x2
/* 81342C54 00011054  40 82 00 44 */	bne .L_81342C98
.L_81342C58:
/* 81342C58 00011058  2C 10 00 00 */	cmpwi r16, 0x0
/* 81342C5C 0001105C  41 82 00 0C */	beq .L_81342C68
/* 81342C60 00011060  3A C0 00 03 */	li r22, 0x3
/* 81342C64 00011064  48 00 00 48 */	b .L_81342CAC
.L_81342C68:
/* 81342C68 00011068  80 81 02 50 */	lwz r4, 0x250(r1)
/* 81342C6C 0001106C  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 81342C70 00011070  80 A1 02 54 */	lwz r5, 0x254(r1)
/* 81342C74 00011074  80 61 00 AC */	lwz r3, 0xac(r1)
/* 81342C78 00011078  7C 80 02 78 */	xor r0, r4, r0
/* 81342C7C 0001107C  7C A3 1A 78 */	xor r3, r5, r3
/* 81342C80 00011080  7C 60 03 79 */	or. r0, r3, r0
/* 81342C84 00011084  40 82 00 0C */	bne .L_81342C90
/* 81342C88 00011088  3A C0 00 00 */	li r22, 0x0
/* 81342C8C 0001108C  48 00 00 20 */	b .L_81342CAC
.L_81342C90:
/* 81342C90 00011090  3A C0 00 01 */	li r22, 0x1
/* 81342C94 00011094  48 00 00 18 */	b .L_81342CAC
.L_81342C98:
/* 81342C98 00011098  2C 10 00 00 */	cmpwi r16, 0x0
/* 81342C9C 0001109C  41 82 00 0C */	beq .L_81342CA8
/* 81342CA0 000110A0  3A C0 00 03 */	li r22, 0x3
/* 81342CA4 000110A4  48 00 00 08 */	b .L_81342CAC
.L_81342CA8:
/* 81342CA8 000110A8  3A C0 00 01 */	li r22, 0x1
.L_81342CAC:
/* 81342CAC 000110AC  93 81 00 6C */	stw r28, 0x6c(r1)
/* 81342CB0 000110B0  38 61 03 50 */	addi r3, r1, 0x350
/* 81342CB4 000110B4  38 81 00 6C */	addi r4, r1, 0x6c
/* 81342CB8 000110B8  48 16 5C 89 */	bl fn_814A8940
/* 81342CBC 000110BC  7C 64 1B 78 */	mr r4, r3
/* 81342CC0 000110C0  7D E3 7B 78 */	mr r3, r15
/* 81342CC4 000110C4  38 A0 03 3F */	li r5, 0x33f
/* 81342CC8 000110C8  48 00 14 7D */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342CCC 000110CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342CD0 000110D0  40 82 00 3C */	bne .L_81342D0C
/* 81342CD4 000110D4  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342CD8 000110D8  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342CDC 000110DC  41 81 00 0C */	bgt .L_81342CE8
/* 81342CE0 000110E0  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342CE4 000110E4  40 80 07 F4 */	bge .L_813434D8
.L_81342CE8:
/* 81342CE8 000110E8  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342CEC 000110EC  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342CF0 000110F0  41 82 07 E8 */	beq .L_813434D8
/* 81342CF4 000110F4  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342CF8 000110F8  41 82 07 E0 */	beq .L_813434D8
/* 81342CFC 000110FC  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342D00 00011100  41 82 07 D8 */	beq .L_813434D8
/* 81342D04 00011104  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342D08 00011108  41 82 07 D0 */	beq .L_813434D8
.L_81342D0C:
/* 81342D0C 0001110C  9B 81 00 42 */	stb r28, 0x42(r1)
/* 81342D10 00011110  38 61 03 50 */	addi r3, r1, 0x350
/* 81342D14 00011114  38 81 00 42 */	addi r4, r1, 0x42
/* 81342D18 00011118  48 16 5D C1 */	bl fn_814A8AD8
/* 81342D1C 0001111C  7C 64 1B 78 */	mr r4, r3
/* 81342D20 00011120  7D E3 7B 78 */	mr r3, r15
/* 81342D24 00011124  38 A0 03 4B */	li r5, 0x34b
/* 81342D28 00011128  48 00 14 1D */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342D2C 0001112C  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342D30 00011130  2C 00 00 00 */	cmpwi r0, 0x0
/* 81342D34 00011134  40 82 00 98 */	bne .L_81342DCC
/* 81342D38 00011138  38 61 03 50 */	addi r3, r1, 0x350
/* 81342D3C 0001113C  38 81 01 40 */	addi r4, r1, 0x140
/* 81342D40 00011140  48 15 ED 09 */	bl fn_814A1A48
/* 81342D44 00011144  7C 64 1B 78 */	mr r4, r3
/* 81342D48 00011148  7D E3 7B 78 */	mr r3, r15
/* 81342D4C 0001114C  38 A0 02 80 */	li r5, 0x280
/* 81342D50 00011150  48 00 13 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342D54 00011154  38 61 01 18 */	addi r3, r1, 0x118
/* 81342D58 00011158  48 15 07 51 */	bl NETGetUniversalCalendar
/* 81342D5C 0001115C  38 61 01 18 */	addi r3, r1, 0x118
/* 81342D60 00011160  48 1F 33 CD */	bl OSCalendarTimeToTicks
/* 81342D64 00011164  7C 71 1B 78 */	mr r17, r3
/* 81342D68 00011168  7C 90 23 78 */	mr r16, r4
/* 81342D6C 0001116C  38 61 01 40 */	addi r3, r1, 0x140
/* 81342D70 00011170  48 1F 33 BD */	bl OSCalendarTimeToTicks
/* 81342D74 00011174  88 C1 00 42 */	lbz r6, 0x42(r1)
/* 81342D78 00011178  3C A0 80 00 */	lis r5, 0x8000
/* 81342D7C 0001117C  80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 81342D80 00011180  6E 20 80 00 */	xoris r0, r17, 0x8000
/* 81342D84 00011184  1D 06 0E 10 */	mulli r8, r6, 0xe10
/* 81342D88 00011188  54 A9 F0 BE */	srwi r9, r5, 2
/* 81342D8C 0001118C  7C C9 40 16 */	mulhwu r6, r9, r8
/* 81342D90 00011190  7D 05 FE 70 */	srawi r5, r8, 31
/* 81342D94 00011194  7C FC 41 D6 */	mullw r7, r28, r8
/* 81342D98 00011198  7C E6 3A 14 */	add r7, r6, r7
/* 81342D9C 0001119C  7C C9 29 D6 */	mullw r6, r9, r5
/* 81342DA0 000111A0  7D 09 41 D6 */	mullw r8, r9, r8
/* 81342DA4 000111A4  7C E7 32 14 */	add r7, r7, r6
/* 81342DA8 000111A8  7C A4 40 14 */	addc r5, r4, r8
/* 81342DAC 000111AC  7C 63 39 14 */	adde r3, r3, r7
/* 81342DB0 000111B0  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 81342DB4 000111B4  7C 65 80 10 */	subfc r3, r5, r16
/* 81342DB8 000111B8  7C 84 01 10 */	subfe r4, r4, r0
/* 81342DBC 000111BC  7C 80 01 10 */	subfe r4, r0, r0
/* 81342DC0 000111C0  7C 84 00 D1 */	neg. r4, r4
/* 81342DC4 000111C4  40 82 07 F0 */	bne .L_813435B4
/* 81342DC8 000111C8  48 00 00 38 */	b .L_81342E00
.L_81342DCC:
/* 81342DCC 000111CC  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342DD0 000111D0  41 81 00 0C */	bgt .L_81342DDC
/* 81342DD4 000111D4  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342DD8 000111D8  40 80 07 00 */	bge .L_813434D8
.L_81342DDC:
/* 81342DDC 000111DC  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342DE0 000111E0  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342DE4 000111E4  41 82 06 F4 */	beq .L_813434D8
/* 81342DE8 000111E8  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342DEC 000111EC  41 82 06 EC */	beq .L_813434D8
/* 81342DF0 000111F0  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342DF4 000111F4  41 82 06 E4 */	beq .L_813434D8
/* 81342DF8 000111F8  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342DFC 000111FC  41 82 06 DC */	beq .L_813434D8
.L_81342E00:
/* 81342E00 00011200  3A 40 00 00 */	li r18, 0x0
/* 81342E04 00011204  38 61 03 50 */	addi r3, r1, 0x350
/* 81342E08 00011208  B2 41 00 44 */	sth r18, 0x44(r1)
/* 81342E0C 0001120C  38 81 00 44 */	addi r4, r1, 0x44
/* 81342E10 00011210  38 A1 00 41 */	addi r5, r1, 0x41
/* 81342E14 00011214  38 C1 00 40 */	addi r6, r1, 0x40
/* 81342E18 00011218  9A 41 00 41 */	stb r18, 0x41(r1)
/* 81342E1C 0001121C  9A 41 00 40 */	stb r18, 0x40(r1)
/* 81342E20 00011220  48 16 5B B1 */	bl fn_814A89D0
/* 81342E24 00011224  7C 64 1B 78 */	mr r4, r3
/* 81342E28 00011228  7D E3 7B 78 */	mr r3, r15
/* 81342E2C 0001122C  38 A0 03 59 */	li r5, 0x359
/* 81342E30 00011230  48 00 13 15 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342E34 00011234  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342E38 00011238  2C 00 00 00 */	cmpwi r0, 0x0
/* 81342E3C 0001123C  40 82 00 34 */	bne .L_81342E70
/* 81342E40 00011240  3A 40 00 01 */	li r18, 0x1
/* 81342E44 00011244  48 1F 2E 3D */	bl OSGetTime
/* 81342E48 00011248  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 81342E4C 0001124C  48 1F 31 19 */	bl OSTicksToCalendarTime
/* 81342E50 00011250  88 61 00 41 */	lbz r3, 0x41(r1)
/* 81342E54 00011254  A0 81 00 44 */	lhz r4, 0x44(r1)
/* 81342E58 00011258  88 01 00 40 */	lbz r0, 0x40(r1)
/* 81342E5C 0001125C  38 63 FF FF */	subi r3, r3, 0x1
/* 81342E60 00011260  90 81 01 04 */	stw r4, 0x104(r1)
/* 81342E64 00011264  90 61 01 00 */	stw r3, 0x100(r1)
/* 81342E68 00011268  90 01 00 FC */	stw r0, 0xfc(r1)
/* 81342E6C 0001126C  48 00 00 38 */	b .L_81342EA4
.L_81342E70:
/* 81342E70 00011270  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342E74 00011274  41 81 00 0C */	bgt .L_81342E80
/* 81342E78 00011278  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342E7C 0001127C  40 80 06 5C */	bge .L_813434D8
.L_81342E80:
/* 81342E80 00011280  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342E84 00011284  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342E88 00011288  41 82 06 50 */	beq .L_813434D8
/* 81342E8C 0001128C  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342E90 00011290  41 82 06 48 */	beq .L_813434D8
/* 81342E94 00011294  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342E98 00011298  41 82 06 40 */	beq .L_813434D8
/* 81342E9C 0001129C  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342EA0 000112A0  41 82 06 38 */	beq .L_813434D8
.L_81342EA4:
/* 81342EA4 000112A4  38 61 01 B2 */	addi r3, r1, 0x1b2
/* 81342EA8 000112A8  38 80 00 00 */	li r4, 0x0
/* 81342EAC 000112AC  38 A0 00 50 */	li r5, 0x50
/* 81342EB0 000112B0  4B FE D4 85 */	bl memset
/* 81342EB4 000112B4  38 61 03 50 */	addi r3, r1, 0x350
/* 81342EB8 000112B8  38 81 01 B2 */	addi r4, r1, 0x1b2
/* 81342EBC 000112BC  38 A0 00 28 */	li r5, 0x28
/* 81342EC0 000112C0  48 16 59 C9 */	bl fn_814A8888
/* 81342EC4 000112C4  7C 64 1B 78 */	mr r4, r3
/* 81342EC8 000112C8  7D E3 7B 78 */	mr r3, r15
/* 81342ECC 000112CC  38 A0 02 9B */	li r5, 0x29b
/* 81342ED0 000112D0  48 00 12 75 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342ED4 000112D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342ED8 000112D8  40 82 00 3C */	bne .L_81342F14
/* 81342EDC 000112DC  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342EE0 000112E0  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342EE4 000112E4  41 81 00 0C */	bgt .L_81342EF0
/* 81342EE8 000112E8  2C 00 FF EB */	cmpwi r0, -0x15
/* 81342EEC 000112EC  40 80 05 EC */	bge .L_813434D8
.L_81342EF0:
/* 81342EF0 000112F0  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342EF4 000112F4  2C 00 FF DA */	cmpwi r0, -0x26
/* 81342EF8 000112F8  41 82 05 E0 */	beq .L_813434D8
/* 81342EFC 000112FC  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342F00 00011300  41 82 05 D8 */	beq .L_813434D8
/* 81342F04 00011304  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342F08 00011308  41 82 05 D0 */	beq .L_813434D8
/* 81342F0C 0001130C  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342F10 00011310  41 82 05 C8 */	beq .L_813434D8
.L_81342F14:
/* 81342F14 00011314  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342F18 00011318  2C 00 00 00 */	cmpwi r0, 0x0
/* 81342F1C 0001131C  41 82 00 08 */	beq .L_81342F24
/* 81342F20 00011320  B3 81 01 B2 */	sth r28, 0x1b2(r1)
.L_81342F24:
/* 81342F24 00011324  80 A1 00 84 */	lwz r5, 0x84(r1)
/* 81342F28 00011328  7D E3 7B 78 */	mr r3, r15
/* 81342F2C 0001132C  93 81 00 68 */	stw r28, 0x68(r1)
/* 81342F30 00011330  7F 04 C3 78 */	mr r4, r24
/* 81342F34 00011334  38 05 FF FC */	subi r0, r5, 0x4
/* 81342F38 00011338  38 A1 03 50 */	addi r5, r1, 0x350
/* 81342F3C 0001133C  7C 00 00 34 */	cntlzw r0, r0
/* 81342F40 00011340  38 E1 00 68 */	addi r7, r1, 0x68
/* 81342F44 00011344  54 06 D9 7E */	srwi r6, r0, 5
/* 81342F48 00011348  48 00 0C 3D */	bl make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl
/* 81342F4C 0001134C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 81342F50 00011350  7C 74 1B 78 */	mr r20, r3
/* 81342F54 00011354  2C 00 00 00 */	cmpwi r0, 0x0
/* 81342F58 00011358  40 82 05 80 */	bne .L_813434D8
/* 81342F5C 0001135C  38 00 00 00 */	li r0, 0x0
/* 81342F60 00011360  38 61 01 68 */	addi r3, r1, 0x168
/* 81342F64 00011364  98 01 06 E1 */	stb r0, 0x6e1(r1)
/* 81342F68 00011368  38 81 03 50 */	addi r4, r1, 0x350
/* 81342F6C 0001136C  48 1A 63 ED */	bl RFLiNWC24Msg2CharData
/* 81342F70 00011370  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342F74 00011374  41 82 00 2C */	beq .L_81342FA0
/* 81342F78 00011378  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342F7C 0001137C  38 81 01 68 */	addi r4, r1, 0x168
/* 81342F80 00011380  4B FF BD 41 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81342F84 00011384  2C 03 00 00 */	cmpwi r3, 0x0
/* 81342F88 00011388  41 82 00 18 */	beq .L_81342FA0
/* 81342F8C 0001138C  80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342F90 00011390  38 81 03 50 */	addi r4, r1, 0x350
/* 81342F94 00011394  4B FF BD 8D */	bl addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj
/* 81342F98 00011398  38 00 00 01 */	li r0, 0x1
/* 81342F9C 0001139C  98 01 06 E1 */	stb r0, 0x6e1(r1)
.L_81342FA0:
/* 81342FA0 000113A0  38 00 00 00 */	li r0, 0x0
/* 81342FA4 000113A4  93 81 00 64 */	stw r28, 0x64(r1)
/* 81342FA8 000113A8  82 2D 80 04 */	lwz r17, RBRFileType_Txt@sda21(r0)
/* 81342FAC 000113AC  38 61 03 50 */	addi r3, r1, 0x350
/* 81342FB0 000113B0  93 81 00 9C */	stw r28, 0x9c(r1)
/* 81342FB4 000113B4  38 81 00 64 */	addi r4, r1, 0x64
/* 81342FB8 000113B8  98 01 06 E0 */	stb r0, 0x6e0(r1)
/* 81342FBC 000113BC  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 81342FC0 000113C0  93 81 00 94 */	stw r28, 0x94(r1)
/* 81342FC4 000113C4  93 81 00 98 */	stw r28, 0x98(r1)
/* 81342FC8 000113C8  48 15 E9 69 */	bl fn_814A1930
/* 81342FCC 000113CC  7C 64 1B 78 */	mr r4, r3
/* 81342FD0 000113D0  7D E3 7B 78 */	mr r3, r15
/* 81342FD4 000113D4  38 A0 02 5A */	li r5, 0x25a
/* 81342FD8 000113D8  48 00 10 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342FDC 000113DC  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342FE0 000113E0  2C 00 FF F2 */	cmpwi r0, -0xe
/* 81342FE4 000113E4  41 82 04 F0 */	beq .L_813434D4
/* 81342FE8 000113E8  3C 60 00 03 */	lis r3, 0x3
/* 81342FEC 000113EC  3A 00 00 00 */	li r16, 0x0
/* 81342FF0 000113F0  38 03 00 01 */	addi r0, r3, 0x1
/* 81342FF4 000113F4  3B C0 00 00 */	li r30, 0x0
/* 81342FF8 000113F8  90 01 06 EC */	stw r0, 0x6ec(r1)
/* 81342FFC 000113FC  48 00 03 28 */	b .L_81343324
.L_81343000:
/* 81343000 00011400  7C AF F2 14 */	add r5, r15, r30
/* 81343004 00011404  7E 04 83 78 */	mr r4, r16
/* 81343008 00011408  38 61 03 50 */	addi r3, r1, 0x350
/* 8134300C 0001140C  38 A5 00 08 */	addi r5, r5, 0x8
/* 81343010 00011410  48 15 E9 3D */	bl fn_814A194C
/* 81343014 00011414  7C 64 1B 78 */	mr r4, r3
/* 81343018 00011418  7D E3 7B 78 */	mr r3, r15
/* 8134301C 0001141C  38 A0 02 67 */	li r5, 0x267
/* 81343020 00011420  48 00 10 31 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343024 00011424  7C 6F F2 14 */	add r3, r15, r30
/* 81343028 00011428  7F 04 C3 78 */	mr r4, r24
/* 8134302C 0001142C  80 63 00 08 */	lwz r3, 0x8(r3)
/* 81343030 00011430  38 A0 00 20 */	li r5, 0x20
/* 81343034 00011434  48 2B 50 A1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343038 00011438  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134303C 0001143C  7C 6F F1 2E */	stwx r3, r15, r30
/* 81343040 00011440  40 82 00 10 */	bne .L_81343050
/* 81343044 00011444  7C 6F F2 14 */	add r3, r15, r30
/* 81343048 00011448  93 83 00 08 */	stw r28, 0x8(r3)
/* 8134304C 0001144C  48 00 02 E4 */	b .L_81343330
.L_81343050:
/* 81343050 00011450  7C 8F F2 14 */	add r4, r15, r30
/* 81343054 00011454  7C 65 1B 78 */	mr r5, r3
/* 81343058 00011458  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 8134305C 0001145C  7E 04 83 78 */	mr r4, r16
/* 81343060 00011460  38 61 03 50 */	addi r3, r1, 0x350
/* 81343064 00011464  48 16 64 05 */	bl fn_814A9468
/* 81343068 00011468  7C 64 1B 78 */	mr r4, r3
/* 8134306C 0001146C  7D E3 7B 78 */	mr r3, r15
/* 81343070 00011470  38 A0 03 26 */	li r5, 0x326
/* 81343074 00011474  48 00 10 D1 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343078 00011478  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134307C 0001147C  40 82 00 3C */	bne .L_813430B8
/* 81343080 00011480  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81343084 00011484  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343088 00011488  41 81 00 0C */	bgt .L_81343094
/* 8134308C 0001148C  2C 00 FF EB */	cmpwi r0, -0x15
/* 81343090 00011490  40 80 04 48 */	bge .L_813434D8
.L_81343094:
/* 81343094 00011494  80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81343098 00011498  2C 00 FF DA */	cmpwi r0, -0x26
/* 8134309C 0001149C  41 82 04 3C */	beq .L_813434D8
/* 813430A0 000114A0  2C 00 FF D7 */	cmpwi r0, -0x29
/* 813430A4 000114A4  41 82 04 34 */	beq .L_813434D8
/* 813430A8 000114A8  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 813430AC 000114AC  41 82 04 2C */	beq .L_813434D8
/* 813430B0 000114B0  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 813430B4 000114B4  41 82 04 24 */	beq .L_813434D8
.L_813430B8:
/* 813430B8 000114B8  38 A1 00 9C */	addi r5, r1, 0x9c
/* 813430BC 000114BC  7E 04 83 78 */	mr r4, r16
/* 813430C0 000114C0  38 61 03 50 */	addi r3, r1, 0x350
/* 813430C4 000114C4  7C A5 F2 14 */	add r5, r5, r30
/* 813430C8 000114C8  48 15 E8 B9 */	bl fn_814A1980
/* 813430CC 000114CC  7C 64 1B 78 */	mr r4, r3
/* 813430D0 000114D0  7D E3 7B 78 */	mr r3, r15
/* 813430D4 000114D4  38 A0 02 74 */	li r5, 0x274
/* 813430D8 000114D8  48 00 0F 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813430DC 000114DC  38 61 00 9C */	addi r3, r1, 0x9c
/* 813430E0 000114E0  80 01 06 EC */	lwz r0, 0x6ec(r1)
/* 813430E4 000114E4  7C 83 F0 2E */	lwzx r4, r3, r30
/* 813430E8 000114E8  7C 04 00 00 */	cmpw r4, r0
/* 813430EC 000114EC  41 82 01 78 */	beq .L_81343264
/* 813430F0 000114F0  40 80 00 28 */	bge .L_81343118
/* 813430F4 000114F4  3C 60 00 02 */	lis r3, 0x2
/* 813430F8 000114F8  38 03 00 01 */	addi r0, r3, 0x1
/* 813430FC 000114FC  7C 04 00 00 */	cmpw r4, r0
/* 81343100 00011500  41 82 01 14 */	beq .L_81343214
/* 81343104 00011504  40 80 01 FC */	bge .L_81343300
/* 81343108 00011508  3C 00 00 02 */	lis r0, 0x2
/* 8134310C 0001150C  7C 04 00 00 */	cmpw r4, r0
/* 81343110 00011510  40 80 00 1C */	bge .L_8134312C
/* 81343114 00011514  48 00 01 EC */	b .L_81343300
.L_81343118:
/* 81343118 00011518  3C 60 00 03 */	lis r3, 0x3
/* 8134311C 0001151C  38 03 00 03 */	addi r0, r3, 0x3
/* 81343120 00011520  7C 04 00 00 */	cmpw r4, r0
/* 81343124 00011524  40 80 01 DC */	bge .L_81343300
/* 81343128 00011528  48 00 01 8C */	b .L_813432B4
.L_8134312C:
/* 8134312C 0001152C  80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 81343130 00011530  7E 23 8B 78 */	mr r3, r17
/* 81343134 00011534  48 2B F3 4D */	bl strcmp
/* 81343138 00011538  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134313C 0001153C  40 82 00 C0 */	bne .L_813431FC
/* 81343140 00011540  7D E3 7B 78 */	mr r3, r15
/* 81343144 00011544  7F 04 C3 78 */	mr r4, r24
/* 81343148 00011548  7E 05 83 78 */	mr r5, r16
/* 8134314C 0001154C  48 00 09 05 */	bl encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl
/* 81343150 00011550  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343154 00011554  41 82 00 10 */	beq .L_81343164
/* 81343158 00011558  7F 7D F1 2E */	stwx r27, r29, r30
/* 8134315C 0001155C  82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 81343160 00011560  48 00 01 BC */	b .L_8134331C
.L_81343164:
/* 81343164 00011564  7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343168 00011568  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134316C 0001156C  41 82 00 0C */	beq .L_81343178
/* 81343170 00011570  48 2B 4F 75 */	bl __dl__FPv
/* 81343174 00011574  7F 8F F1 2E */	stwx r28, r15, r30
.L_81343178:
/* 81343178 00011578  7C CF F2 14 */	add r6, r15, r30
/* 8134317C 0001157C  7F 04 C3 78 */	mr r4, r24
/* 81343180 00011580  93 86 00 08 */	stw r28, 0x8(r6)
/* 81343184 00011584  38 A0 00 20 */	li r5, 0x20
/* 81343188 00011588  80 1A 01 80 */	lwz r0, 0x180(r26)
/* 8134318C 0001158C  7C 03 03 78 */	mr r3, r0
/* 81343190 00011590  90 01 06 E4 */	stw r0, 0x6e4(r1)
/* 81343194 00011594  80 63 00 98 */	lwz r3, 0x98(r3)
/* 81343198 00011598  90 66 00 08 */	stw r3, 0x8(r6)
/* 8134319C 0001159C  48 2B 4F 39 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813431A0 000115A0  7C 6F F1 2E */	stwx r3, r15, r30
/* 813431A4 000115A4  7C AF F2 14 */	add r5, r15, r30
/* 813431A8 000115A8  80 81 06 E4 */	lwz r4, 0x6e4(r1)
/* 813431AC 000115AC  80 A5 00 08 */	lwz r5, 0x8(r5)
/* 813431B0 000115B0  80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 813431B4 000115B4  4B FE D0 7D */	bl memcpy
/* 813431B8 000115B8  7D E3 7B 78 */	mr r3, r15
/* 813431BC 000115BC  7F 04 C3 78 */	mr r4, r24
/* 813431C0 000115C0  7E 05 83 78 */	mr r5, r16
/* 813431C4 000115C4  48 00 08 8D */	bl encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl
/* 813431C8 000115C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813431CC 000115CC  41 82 00 10 */	beq .L_813431DC
/* 813431D0 000115D0  7F 7D F1 2E */	stwx r27, r29, r30
/* 813431D4 000115D4  82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 813431D8 000115D8  48 00 01 44 */	b .L_8134331C
.L_813431DC:
/* 813431DC 000115DC  7C 6F F0 2E */	lwzx r3, r15, r30
/* 813431E0 000115E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813431E4 000115E4  41 82 00 0C */	beq .L_813431F0
/* 813431E8 000115E8  48 2B 4E FD */	bl __dl__FPv
/* 813431EC 000115EC  7F 8F F1 2E */	stwx r28, r15, r30
.L_813431F0:
/* 813431F0 000115F0  7C 6F F2 14 */	add r3, r15, r30
/* 813431F4 000115F4  93 83 00 08 */	stw r28, 0x8(r3)
/* 813431F8 000115F8  48 00 01 24 */	b .L_8134331C
.L_813431FC:
/* 813431FC 000115FC  7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343200 00011600  48 2B 4E ED */	bl __dla__FPv
/* 81343204 00011604  7F 8F F1 2E */	stwx r28, r15, r30
/* 81343208 00011608  7C 6F F2 14 */	add r3, r15, r30
/* 8134320C 0001160C  93 83 00 08 */	stw r28, 0x8(r3)
/* 81343210 00011610  48 00 01 0C */	b .L_8134331C
.L_81343214:
/* 81343214 00011614  80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 81343218 00011618  7E 23 8B 78 */	mr r3, r17
/* 8134321C 0001161C  48 2B F2 65 */	bl strcmp
/* 81343220 00011620  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343224 00011624  40 82 00 28 */	bne .L_8134324C
/* 81343228 00011628  3C 60 00 01 */	lis r3, 0x1
/* 8134322C 0001162C  7C 8F F2 14 */	add r4, r15, r30
/* 81343230 00011630  38 03 54 00 */	addi r0, r3, 0x5400
/* 81343234 00011634  80 64 00 08 */	lwz r3, 0x8(r4)
/* 81343238 00011638  7C 03 00 40 */	cmplw r3, r0
/* 8134323C 0001163C  40 80 00 10 */	bge .L_8134324C
/* 81343240 00011640  7F 7D F1 2E */	stwx r27, r29, r30
/* 81343244 00011644  82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 81343248 00011648  48 00 00 D4 */	b .L_8134331C
.L_8134324C:
/* 8134324C 0001164C  7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343250 00011650  48 2B 4E 9D */	bl __dla__FPv
/* 81343254 00011654  7F 8F F1 2E */	stwx r28, r15, r30
/* 81343258 00011658  7C 6F F2 14 */	add r3, r15, r30
/* 8134325C 0001165C  93 83 00 08 */	stw r28, 0x8(r3)
/* 81343260 00011660  48 00 00 BC */	b .L_8134331C
.L_81343264:
/* 81343264 00011664  88 01 06 E0 */	lbz r0, 0x6e0(r1)
/* 81343268 00011668  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134326C 0001166C  40 82 00 30 */	bne .L_8134329C
/* 81343270 00011670  3C 60 00 02 */	lis r3, 0x2
/* 81343274 00011674  7C 8F F2 14 */	add r4, r15, r30
/* 81343278 00011678  38 03 E0 00 */	subi r0, r3, 0x2000
/* 8134327C 0001167C  80 64 00 08 */	lwz r3, 0x8(r4)
/* 81343280 00011680  7C 03 00 40 */	cmplw r3, r0
/* 81343284 00011684  40 80 00 18 */	bge .L_8134329C
/* 81343288 00011688  38 00 00 02 */	li r0, 0x2
/* 8134328C 0001168C  7C 1D F1 2E */	stwx r0, r29, r30
/* 81343290 00011690  38 00 00 01 */	li r0, 0x1
/* 81343294 00011694  98 01 06 E0 */	stb r0, 0x6e0(r1)
/* 81343298 00011698  48 00 00 84 */	b .L_8134331C
.L_8134329C:
/* 8134329C 0001169C  7C 6F F0 2E */	lwzx r3, r15, r30
/* 813432A0 000116A0  48 2B 4E 4D */	bl __dla__FPv
/* 813432A4 000116A4  7F 8F F1 2E */	stwx r28, r15, r30
/* 813432A8 000116A8  7C 6F F2 14 */	add r3, r15, r30
/* 813432AC 000116AC  93 83 00 08 */	stw r28, 0x8(r3)
/* 813432B0 000116B0  48 00 00 6C */	b .L_8134331C
.L_813432B4:
/* 813432B4 000116B4  80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 813432B8 000116B8  7E 23 8B 78 */	mr r3, r17
/* 813432BC 000116BC  48 2B F1 C5 */	bl strcmp
/* 813432C0 000116C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 813432C4 000116C4  40 82 00 24 */	bne .L_813432E8
/* 813432C8 000116C8  7C 6F F2 14 */	add r3, r15, r30
/* 813432CC 000116CC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 813432D0 000116D0  28 00 28 00 */	cmplwi r0, 0x2800
/* 813432D4 000116D4  40 80 00 14 */	bge .L_813432E8
/* 813432D8 000116D8  38 00 00 04 */	li r0, 0x4
/* 813432DC 000116DC  82 2D 80 14 */	lwz r17, RBRFileType_Dat@sda21(r0)
/* 813432E0 000116E0  7C 1D F1 2E */	stwx r0, r29, r30
/* 813432E4 000116E4  48 00 00 38 */	b .L_8134331C
.L_813432E8:
/* 813432E8 000116E8  7C 6F F0 2E */	lwzx r3, r15, r30
/* 813432EC 000116EC  48 2B 4E 01 */	bl __dla__FPv
/* 813432F0 000116F0  7F 8F F1 2E */	stwx r28, r15, r30
/* 813432F4 000116F4  7C 6F F2 14 */	add r3, r15, r30
/* 813432F8 000116F8  93 83 00 08 */	stw r28, 0x8(r3)
/* 813432FC 000116FC  48 00 00 20 */	b .L_8134331C
.L_81343300:
/* 81343300 00011700  7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343304 00011704  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343308 00011708  41 82 00 0C */	beq .L_81343314
/* 8134330C 0001170C  48 2B 4D D9 */	bl __dl__FPv
/* 81343310 00011710  7F 8F F1 2E */	stwx r28, r15, r30
.L_81343314:
/* 81343314 00011714  7C 6F F2 14 */	add r3, r15, r30
/* 81343318 00011718  93 83 00 08 */	stw r28, 0x8(r3)
.L_8134331C:
/* 8134331C 0001171C  3A 10 00 01 */	addi r16, r16, 0x1
/* 81343320 00011720  3B DE 00 04 */	addi r30, r30, 0x4
.L_81343324:
/* 81343324 00011724  80 01 00 64 */	lwz r0, 0x64(r1)
/* 81343328 00011728  7C 10 00 40 */	cmplw r16, r0
/* 8134332C 0001172C  41 80 FC D4 */	blt .L_81343000
.L_81343330:
/* 81343330 00011730  38 61 00 60 */	addi r3, r1, 0x60
/* 81343334 00011734  38 81 00 5C */	addi r4, r1, 0x5c
/* 81343338 00011738  38 A1 00 58 */	addi r5, r1, 0x58
/* 8134333C 0001173C  38 C1 00 54 */	addi r6, r1, 0x54
/* 81343340 00011740  4B FE F8 A1 */	bl RBRGetPosRect
/* 81343344 00011744  4B FF 26 99 */	bl getRndm__Q23ipl6SystemFv
/* 81343348 00011748  48 00 02 DD */	bl get_f01__Q33ipl4math6RandomFv
/* 8134334C 0001174C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 81343350 00011750  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 81343354 00011754  EC 00 10 28 */	fsubs f0, f0, f2
/* 81343358 00011758  EC 00 00 72 */	fmuls f0, f0, f1
/* 8134335C 0001175C  EF E2 00 2A */	fadds f31, f2, f0
/* 81343360 00011760  4B FF 26 7D */	bl getRndm__Q23ipl6SystemFv
/* 81343364 00011764  48 00 02 C1 */	bl get_f01__Q33ipl4math6RandomFv
/* 81343368 00011768  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8134336C 0001176C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 81343370 00011770  D3 E1 00 90 */	stfs f31, 0x90(r1)
/* 81343374 00011774  EC 00 10 28 */	fsubs f0, f0, f2
/* 81343378 00011778  EC 00 00 72 */	fmuls f0, f0, f1
/* 8134337C 0001177C  EC 02 00 2A */	fadds f0, f2, f0
/* 81343380 00011780  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 81343384 00011784  48 1E D5 01 */	bl OSDisableInterrupts
/* 81343388 00011788  38 00 00 05 */	li r0, 0x5
/* 8134338C 0001178C  38 C1 00 C4 */	addi r6, r1, 0xc4
/* 81343390 00011790  38 BA 00 38 */	addi r5, r26, 0x38
/* 81343394 00011794  7C 09 03 A6 */	mtctr r0
.L_81343398:
/* 81343398 00011798  80 85 00 04 */	lwz r4, 0x4(r5)
/* 8134339C 0001179C  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813433A0 000117A0  90 86 00 04 */	stw r4, 0x4(r6)
/* 813433A4 000117A4  94 06 00 08 */	stwu r0, 0x8(r6)
/* 813433A8 000117A8  42 00 FF F0 */	bdnz .L_81343398
/* 813433AC 000117AC  48 1E D5 01 */	bl OSRestoreInterrupts
/* 813433B0 000117B0  80 01 06 E8 */	lwz r0, 0x6e8(r1)
/* 813433B4 000117B4  93 81 00 50 */	stw r28, 0x50(r1)
/* 813433B8 000117B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 813433BC 000117BC  9A C1 00 53 */	stb r22, 0x53(r1)
/* 813433C0 000117C0  41 82 00 10 */	beq .L_813433D0
/* 813433C4 000117C4  88 01 00 50 */	lbz r0, 0x50(r1)
/* 813433C8 000117C8  60 00 00 01 */	ori r0, r0, 0x1
/* 813433CC 000117CC  98 01 00 50 */	stb r0, 0x50(r1)
.L_813433D0:
/* 813433D0 000117D0  88 01 06 E1 */	lbz r0, 0x6e1(r1)
/* 813433D4 000117D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 813433D8 000117D8  41 82 00 0C */	beq .L_813433E4
/* 813433DC 000117DC  38 01 01 68 */	addi r0, r1, 0x168
/* 813433E0 000117E0  48 00 00 08 */	b .L_813433E8
.L_813433E4:
/* 813433E4 000117E4  38 00 00 00 */	li r0, 0x0
.L_813433E8:
/* 813433E8 000117E8  A0 61 01 B2 */	lhz r3, 0x1b2(r1)
/* 813433EC 000117EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813433F0 000117F0  41 82 00 0C */	beq .L_813433FC
/* 813433F4 000117F4  39 61 01 B2 */	addi r11, r1, 0x1b2
/* 813433F8 000117F8  48 00 00 08 */	b .L_81343400
.L_813433FC:
/* 813433FC 000117FC  39 61 00 B0 */	addi r11, r1, 0xb0
.L_81343400:
/* 81343400 00011800  A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81343404 00011804  38 80 00 01 */	li r4, 0x1
/* 81343408 00011808  28 03 00 01 */	cmplwi r3, 0x1
/* 8134340C 0001180C  41 82 00 10 */	beq .L_8134341C
/* 81343410 00011810  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343414 00011814  41 82 00 08 */	beq .L_8134341C
/* 81343418 00011818  38 80 00 00 */	li r4, 0x0
.L_8134341C:
/* 8134341C 0001181C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81343420 00011820  41 82 00 0C */	beq .L_8134342C
/* 81343424 00011824  39 00 00 00 */	li r8, 0x0
/* 81343428 00011828  48 00 00 08 */	b .L_81343430
.L_8134342C:
/* 8134342C 0001182C  39 01 00 46 */	addi r8, r1, 0x46
.L_81343430:
/* 81343430 00011830  A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81343434 00011834  38 80 00 01 */	li r4, 0x1
/* 81343438 00011838  28 03 00 01 */	cmplwi r3, 0x1
/* 8134343C 0001183C  41 82 00 10 */	beq .L_8134344C
/* 81343440 00011840  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343444 00011844  41 82 00 08 */	beq .L_8134344C
/* 81343448 00011848  38 80 00 00 */	li r4, 0x0
.L_8134344C:
/* 8134344C 0001184C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81343450 00011850  41 82 00 0C */	beq .L_8134345C
/* 81343454 00011854  38 E0 00 00 */	li r7, 0x0
/* 81343458 00011858  48 00 00 08 */	b .L_81343460
.L_8134345C:
/* 8134345C 0001185C  38 E1 00 78 */	addi r7, r1, 0x78
.L_81343460:
/* 81343460 00011860  2C 12 00 00 */	cmpwi r18, 0x0
/* 81343464 00011864  41 82 00 0C */	beq .L_81343470
/* 81343468 00011868  38 C1 00 F0 */	addi r6, r1, 0xf0
/* 8134346C 0001186C  48 00 00 08 */	b .L_81343474
.L_81343470:
/* 81343470 00011870  38 C1 00 C8 */	addi r6, r1, 0xc8
.L_81343474:
/* 81343474 00011874  88 7A 02 BC */	lbz r3, 0x2bc(r26)
/* 81343478 00011878  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134347C 0001187C  41 82 00 0C */	beq .L_81343488
/* 81343480 00011880  38 60 00 00 */	li r3, 0x0
/* 81343484 00011884  48 00 00 08 */	b .L_8134348C
.L_81343488:
/* 81343488 00011888  80 7A 00 7C */	lwz r3, 0x7c(r26)
.L_8134348C:
/* 8134348C 0001188C  38 81 02 50 */	addi r4, r1, 0x250
/* 81343490 00011890  39 8F 00 08 */	addi r12, r15, 0x8
/* 81343494 00011894  90 81 00 08 */	stw r4, 0x8(r1)
/* 81343498 00011898  7E 25 8B 78 */	mr r5, r17
/* 8134349C 0001189C  81 41 00 50 */	lwz r10, 0x50(r1)
/* 813434A0 000118A0  38 99 01 4C */	addi r4, r25, 0x14c
/* 813434A4 000118A4  92 61 00 0C */	stw r19, 0xc(r1)
/* 813434A8 000118A8  39 21 00 8C */	addi r9, r1, 0x8c
/* 813434AC 000118AC  82 01 00 6C */	lwz r16, 0x6c(r1)
/* 813434B0 000118B0  56 10 04 3E */	clrlwi r16, r16, 16
/* 813434B4 000118B4  92 01 00 10 */	stw r16, 0x10(r1)
/* 813434B8 000118B8  91 61 00 14 */	stw r11, 0x14(r1)
/* 813434BC 000118BC  92 81 00 18 */	stw r20, 0x18(r1)
/* 813434C0 000118C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 813434C4 000118C4  91 E1 00 20 */	stw r15, 0x20(r1)
/* 813434C8 000118C8  91 81 00 24 */	stw r12, 0x24(r1)
/* 813434CC 000118CC  93 A1 00 28 */	stw r29, 0x28(r1)
/* 813434D0 000118D0  4B FF BC 9D */	bl createNewRecord__Q33ipl3cdb7ManagerFPCcPCcPC14OSCalendarTimePUlPUsRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType
.L_813434D4:
/* 813434D4 000118D4  9B 6F 0A 30 */	stb r27, 0xa30(r15)
.L_813434D8:
/* 813434D8 000118D8  2C 14 00 00 */	cmpwi r20, 0x0
/* 813434DC 000118DC  41 82 00 0C */	beq .L_813434E8
/* 813434E0 000118E0  7E 83 A3 78 */	mr r3, r20
/* 813434E4 000118E4  48 2B 4C 09 */	bl __dla__FPv
.L_813434E8:
/* 813434E8 000118E8  80 6F 00 00 */	lwz r3, 0x0(r15)
/* 813434EC 000118EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813434F0 000118F0  41 82 00 0C */	beq .L_813434FC
/* 813434F4 000118F4  48 2B 4B F9 */	bl __dla__FPv
/* 813434F8 000118F8  93 8F 00 00 */	stw r28, 0x0(r15)
.L_813434FC:
/* 813434FC 000118FC  80 6F 00 04 */	lwz r3, 0x4(r15)
/* 81343500 00011900  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343504 00011904  41 82 00 0C */	beq .L_81343510
/* 81343508 00011908  48 2B 4B E5 */	bl __dla__FPv
/* 8134350C 0001190C  93 8F 00 04 */	stw r28, 0x4(r15)
.L_81343510:
/* 81343510 00011910  7C 8F FA 14 */	add r4, r15, r31
/* 81343514 00011914  38 60 00 01 */	li r3, 0x1
/* 81343518 00011918  80 84 00 18 */	lwz r4, 0x18(r4)
/* 8134351C 0001191C  48 15 EB F5 */	bl fn_814A2110
/* 81343520 00011920  7C 64 1B 78 */	mr r4, r3
/* 81343524 00011924  7D E3 7B 78 */	mr r3, r15
/* 81343528 00011928  38 A0 03 7E */	li r5, 0x37e
/* 8134352C 0001192C  48 00 0B 25 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343530 00011930  88 1A 02 BC */	lbz r0, 0x2bc(r26)
/* 81343534 00011934  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343538 00011938  41 82 00 0C */	beq .L_81343544
/* 8134353C 0001193C  38 60 00 00 */	li r3, 0x0
/* 81343540 00011940  48 00 00 08 */	b .L_81343548
.L_81343544:
/* 81343544 00011944  80 7A 00 7C */	lwz r3, 0x7c(r26)
.L_81343548:
/* 81343548 00011948  4B FF C5 1D */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 8134354C 0001194C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343550 00011950  40 82 00 78 */	bne .L_813435C8
/* 81343554 00011954  88 0F 0A 32 */	lbz r0, 0xa32(r15)
/* 81343558 00011958  2C 00 00 00 */	cmpwi r0, 0x0
/* 8134355C 0001195C  40 82 00 6C */	bne .L_813435C8
/* 81343560 00011960  48 00 00 54 */	b .L_813435B4
.L_81343564:
/* 81343564 00011964  2C 00 00 01 */	cmpwi r0, 0x1
/* 81343568 00011968  41 82 00 0C */	beq .L_81343574
/* 8134356C 0001196C  2C 00 00 03 */	cmpwi r0, 0x3
/* 81343570 00011970  40 82 00 44 */	bne .L_813435B4
.L_81343574:
/* 81343574 00011974  38 61 03 50 */	addi r3, r1, 0x350
/* 81343578 00011978  38 81 00 4C */	addi r4, r1, 0x4c
/* 8134357C 0001197C  48 15 E4 FD */	bl fn_814A1A78
/* 81343580 00011980  7C 64 1B 78 */	mr r4, r3
/* 81343584 00011984  7D E3 7B 78 */	mr r3, r15
/* 81343588 00011988  38 A0 02 8C */	li r5, 0x28c
/* 8134358C 0001198C  48 00 0A C5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343590 00011990  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343594 00011994  41 82 00 20 */	beq .L_813435B4
/* 81343598 00011998  2C 17 01 00 */	cmpwi r23, 0x100
/* 8134359C 0001199C  40 80 00 18 */	bge .L_813435B4
/* 813435A0 000119A0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 813435A4 000119A4  7C 6F 72 14 */	add r3, r15, r14
/* 813435A8 000119A8  3A F7 00 01 */	addi r23, r23, 0x1
/* 813435AC 000119AC  39 CE 00 04 */	addi r14, r14, 0x4
/* 813435B0 000119B0  90 03 04 18 */	stw r0, 0x418(r3)
.L_813435B4:
/* 813435B4 000119B4  3A B5 00 01 */	addi r21, r21, 0x1
/* 813435B8 000119B8  3B FF 00 04 */	addi r31, r31, 0x4
.L_813435BC:
/* 813435BC 000119BC  80 01 00 88 */	lwz r0, 0x88(r1)
/* 813435C0 000119C0  7C 15 00 40 */	cmplw r21, r0
/* 813435C4 000119C4  41 80 F2 C4 */	blt .L_81342888
.L_813435C8:
/* 813435C8 000119C8  7D E3 7B 78 */	mr r3, r15
/* 813435CC 000119CC  4B FF EC B9 */	bl setDlTable__Q33ipl5nwc247ManagerFv
/* 813435D0 000119D0  48 15 CC BD */	bl fn_814A028C
/* 813435D4 000119D4  7C 64 1B 78 */	mr r4, r3
/* 813435D8 000119D8  7D E3 7B 78 */	mr r3, r15
/* 813435DC 000119DC  38 A0 00 E9 */	li r5, 0xe9
/* 813435E0 000119E0  48 00 0A 71 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813435E4 000119E4  38 6F 0A 00 */	addi r3, r15, 0xa00
/* 813435E8 000119E8  48 1E E6 FD */	bl fn_81531CE4
/* 813435EC 000119EC  38 60 00 01 */	li r3, 0x1
/* 813435F0 000119F0  38 00 00 00 */	li r0, 0x0
/* 813435F4 000119F4  98 6F 0A 33 */	stb r3, 0xa33(r15)
/* 813435F8 000119F8  98 0F 0A 31 */	stb r0, 0xa31(r15)
.L_813435FC:
/* 813435FC 000119FC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 81343600 00011A00  38 00 FF F8 */	li r0, -0x8
/* 81343604 00011A04  13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 81343608 00011A08  39 6A FF F0 */	subi r11, r10, 0x10
/* 8134360C 00011A0C  CB EA FF F0 */	lfd f31, -0x10(r10)
/* 81343610 00011A10  48 2B 5E C9 */	bl _restgpr_14
/* 81343614 00011A14  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81343618 00011A18  7C 08 03 A6 */	mtlr r0
/* 8134361C 00011A1C  7D 41 53 78 */	mr r1, r10
/* 81343620 00011A20  4E 80 00 20 */	blr
.endfn receive__Q33ipl5nwc247ManagerFv

# .text:0x1CA8 | 0x81343624 | size: 0x48
# ipl::math::Random::get_f01()
.fn get_f01__Q33ipl4math6RandomFv, global
/* 81343624 00011A24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81343628 00011A28  3C 80 00 19 */	lis r4, 0x19
/* 8134362C 00011A2C  3C 00 43 30 */	lis r0, 0x4330
/* 81343630 00011A30  C8 42 80 D0 */	lfd f2, lbl_816944D0@sda21(r0)
/* 81343634 00011A34  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81343638 00011A38  38 84 66 0D */	addi r4, r4, 0x660d
/* 8134363C 00011A3C  90 01 00 08 */	stw r0, 0x8(r1)
/* 81343640 00011A40  7C 85 21 D6 */	mullw r4, r5, r4
/* 81343644 00011A44  C0 02 80 C8 */	lfs f0, lbl_816944C8@sda21(r0)
/* 81343648 00011A48  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8134364C 00011A4C  38 04 F3 5F */	subi r0, r4, 0xca1
/* 81343650 00011A50  90 01 00 0C */	stw r0, 0xc(r1)
/* 81343654 00011A54  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81343658 00011A58  90 03 00 00 */	stw r0, 0x0(r3)
/* 8134365C 00011A5C  EC 21 10 28 */	fsubs f1, f1, f2
/* 81343660 00011A60  EC 21 00 24 */	fdivs f1, f1, f0
/* 81343664 00011A64  38 21 00 10 */	addi r1, r1, 0x10
/* 81343668 00011A68  4E 80 00 20 */	blr
.endfn get_f01__Q33ipl4math6RandomFv

# .text:0x1CF0 | 0x8134366C | size: 0x188
# ipl::nwc24::Manager::addDlTask()
.fn addDlTask__Q33ipl5nwc247ManagerFv, global
/* 8134366C 00011A6C  94 21 EF 70 */	stwu r1, -0x1090(r1)
/* 81343670 00011A70  7C 08 02 A6 */	mflr r0
/* 81343674 00011A74  90 01 10 94 */	stw r0, 0x1094(r1)
/* 81343678 00011A78  39 61 10 90 */	addi r11, r1, 0x1090
/* 8134367C 00011A7C  48 2B 5E 39 */	bl _savegpr_24
/* 81343680 00011A80  7C 7E 1B 78 */	mr r30, r3
/* 81343684 00011A84  38 61 00 5C */	addi r3, r1, 0x5c
/* 81343688 00011A88  48 22 6F 5D */	bl fn_8156A5E4
/* 8134368C 00011A8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343690 00011A90  41 82 01 4C */	beq .L_813437DC
/* 81343694 00011A94  3B 80 00 00 */	li r28, 0x0
/* 81343698 00011A98  3B 20 00 0A */	li r25, 0xa
/* 8134369C 00011A9C  7F 1C C9 D6 */	mullw r24, r28, r25
/* 813436A0 00011AA0  3F 60 80 00 */	lis r27, 0x8000
/* 813436A4 00011AA4  3B 40 03 E8 */	li r26, 0x3e8
/* 813436A8 00011AA8  48 00 00 2C */	b .L_813436D4
.L_813436AC:
/* 813436AC 00011AAC  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 813436B0 00011AB0  54 00 F0 BE */	srwi r0, r0, 2
/* 813436B4 00011AB4  7C 60 D3 96 */	divwu r3, r0, r26
/* 813436B8 00011AB8  7C 03 C8 16 */	mulhwu r0, r3, r25
/* 813436BC 00011ABC  1C 83 00 0A */	mulli r4, r3, 0xa
/* 813436C0 00011AC0  7C 60 C2 14 */	add r3, r0, r24
/* 813436C4 00011AC4  48 1F 25 09 */	bl OSSleepTicks
/* 813436C8 00011AC8  3B 9C 00 01 */	addi r28, r28, 0x1
/* 813436CC 00011ACC  2C 1C 03 E8 */	cmpwi r28, 0x3e8
/* 813436D0 00011AD0  41 81 01 0C */	bgt .L_813437DC
.L_813436D4:
/* 813436D4 00011AD4  7F C3 F3 78 */	mr r3, r30
/* 813436D8 00011AD8  4B FF E3 69 */	bl open__Q33ipl5nwc247ManagerFv
/* 813436DC 00011ADC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813436E0 00011AE0  41 82 FF CC */	beq .L_813436AC
/* 813436E4 00011AE4  38 61 00 1C */	addi r3, r1, 0x1c
/* 813436E8 00011AE8  38 80 00 00 */	li r4, 0x0
/* 813436EC 00011AEC  38 A0 00 40 */	li r5, 0x40
/* 813436F0 00011AF0  4B FE CC 45 */	bl memset
/* 813436F4 00011AF4  A3 02 80 D8 */	lhz r24, lbl_816944D8@sda21(r0)
/* 813436F8 00011AF8  3B 41 00 14 */	addi r26, r1, 0x14
/* 813436FC 00011AFC  A1 82 80 DA */	lhz r12, lbl_816944DA@sda21(r0)
/* 81343700 00011B00  3B 61 00 0C */	addi r27, r1, 0xc
/* 81343704 00011B04  A1 62 80 DC */	lhz r11, lbl_816944DC@sda21(r0)
/* 81343708 00011B08  3B 81 00 08 */	addi r28, r1, 0x8
/* 8134370C 00011B0C  A1 42 80 DE */	lhz r10, lbl_816944DE@sda21(r0)
/* 81343710 00011B10  3B E0 00 00 */	li r31, 0x0
/* 81343714 00011B14  A1 22 80 E0 */	lhz r9, lbl_816944E0@sda21(r0)
/* 81343718 00011B18  3B A0 00 00 */	li r29, 0x0
/* 8134371C 00011B1C  A1 02 80 E2 */	lhz r8, lbl_816944E2@sda21(r0)
/* 81343720 00011B20  3F 20 81 63 */	lis r25, lbl_81635376@ha
/* 81343724 00011B24  A0 E2 80 E4 */	lhz r7, lbl_816944E4@sda21(r0)
/* 81343728 00011B28  A0 C2 80 E6 */	lhz r6, lbl_816944E6@sda21(r0)
/* 8134372C 00011B2C  88 A2 80 E8 */	lbz r5, lbl_816944E8@sda21(r0)
/* 81343730 00011B30  88 82 80 E9 */	lbz r4, lbl_816944E9@sda21(r0)
/* 81343734 00011B34  88 62 80 EA */	lbz r3, lbl_816944EA@sda21(r0)
/* 81343738 00011B38  88 02 80 EB */	lbz r0, lbl_816944EB@sda21(r0)
/* 8134373C 00011B3C  B3 01 00 14 */	sth r24, 0x14(r1)
/* 81343740 00011B40  B1 81 00 16 */	sth r12, 0x16(r1)
/* 81343744 00011B44  B1 61 00 18 */	sth r11, 0x18(r1)
/* 81343748 00011B48  B1 41 00 1A */	sth r10, 0x1a(r1)
/* 8134374C 00011B4C  B1 21 00 0C */	sth r9, 0xc(r1)
/* 81343750 00011B50  B1 01 00 0E */	sth r8, 0xe(r1)
/* 81343754 00011B54  B0 E1 00 10 */	sth r7, 0x10(r1)
/* 81343758 00011B58  B0 C1 00 12 */	sth r6, 0x12(r1)
/* 8134375C 00011B5C  98 A1 00 08 */	stb r5, 0x8(r1)
/* 81343760 00011B60  98 81 00 09 */	stb r4, 0x9(r1)
/* 81343764 00011B64  98 61 00 0A */	stb r3, 0xa(r1)
/* 81343768 00011B68  98 01 00 0B */	stb r0, 0xb(r1)
.L_8134376C:
/* 8134376C 00011B6C  4B FF 22 81 */	bl getLanguage__Q23ipl6SystemFv
/* 81343770 00011B70  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 81343774 00011B74  7C 67 1B 78 */	mr r7, r3
/* 81343778 00011B78  38 61 00 1C */	addi r3, r1, 0x1c
/* 8134377C 00011B7C  38 B9 53 76 */	addi r5, r25, lbl_81635376@l
/* 81343780 00011B80  54 06 46 3E */	srwi r6, r0, 24
/* 81343784 00011B84  39 1F 00 01 */	addi r8, r31, 0x1
/* 81343788 00011B88  38 80 00 40 */	li r4, 0x40
/* 8134378C 00011B8C  4C C6 31 82 */	crclr cr1eq
/* 81343790 00011B90  48 2B D2 19 */	bl snprintf
/* 81343794 00011B94  7C 9A EA 2E */	lhzx r4, r26, r29
/* 81343798 00011B98  7F C3 F3 78 */	mr r3, r30
/* 8134379C 00011B9C  7C DB EA 2E */	lhzx r6, r27, r29
/* 813437A0 00011BA0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 813437A4 00011BA4  88 FC 00 00 */	lbz r7, 0x0(r28)
/* 813437A8 00011BA8  48 00 00 4D */	bl add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc
/* 813437AC 00011BAC  3B FF 00 01 */	addi r31, r31, 0x1
/* 813437B0 00011BB0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 813437B4 00011BB4  2C 1F 00 04 */	cmpwi r31, 0x4
/* 813437B8 00011BB8  3B BD 00 02 */	addi r29, r29, 0x2
/* 813437BC 00011BBC  41 80 FF B0 */	blt .L_8134376C
/* 813437C0 00011BC0  48 15 CA CD */	bl fn_814A028C
/* 813437C4 00011BC4  7C 64 1B 78 */	mr r4, r3
/* 813437C8 00011BC8  7F C3 F3 78 */	mr r3, r30
/* 813437CC 00011BCC  38 A0 00 E9 */	li r5, 0xe9
/* 813437D0 00011BD0  48 00 08 81 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813437D4 00011BD4  38 7E 0A 00 */	addi r3, r30, 0xa00
/* 813437D8 00011BD8  48 1E E5 0D */	bl fn_81531CE4
.L_813437DC:
/* 813437DC 00011BDC  39 61 10 90 */	addi r11, r1, 0x1090
/* 813437E0 00011BE0  48 2B 5D 21 */	bl _restgpr_24
/* 813437E4 00011BE4  80 01 10 94 */	lwz r0, 0x1094(r1)
/* 813437E8 00011BE8  7C 08 03 A6 */	mtlr r0
/* 813437EC 00011BEC  38 21 10 90 */	addi r1, r1, 0x1090
/* 813437F0 00011BF0  4E 80 00 20 */	blr
.endfn addDlTask__Q33ipl5nwc247ManagerFv

# .text:0x1E78 | 0x813437F4 | size: 0x168
# ipl::nwc24::Manager::add_dl_task(unsigned short, const char*, unsigned short, unsigned char)
.fn add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc, global
/* 813437F4 00011BF4  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 813437F8 00011BF8  7C 08 02 A6 */	mflr r0
/* 813437FC 00011BFC  90 01 02 24 */	stw r0, 0x224(r1)
/* 81343800 00011C00  39 61 02 20 */	addi r11, r1, 0x220
/* 81343804 00011C04  48 2B 5C B9 */	bl _savegpr_26
/* 81343808 00011C08  7C 7A 1B 78 */	mr r26, r3
/* 8134380C 00011C0C  7C 9B 23 78 */	mr r27, r4
/* 81343810 00011C10  7C BC 2B 78 */	mr r28, r5
/* 81343814 00011C14  7C DD 33 78 */	mr r29, r6
/* 81343818 00011C18  7C FE 3B 78 */	mr r30, r7
/* 8134381C 00011C1C  38 61 00 08 */	addi r3, r1, 0x8
/* 81343820 00011C20  3B E0 00 00 */	li r31, 0x0
/* 81343824 00011C24  48 16 C7 39 */	bl fn_814AFF5C
/* 81343828 00011C28  7C 64 1B 78 */	mr r4, r3
/* 8134382C 00011C2C  7F 43 D3 78 */	mr r3, r26
/* 81343830 00011C30  38 A0 04 28 */	li r5, 0x428
/* 81343834 00011C34  48 00 08 1D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343838 00011C38  2C 03 00 00 */	cmpwi r3, 0x0
/* 8134383C 00011C3C  40 82 00 70 */	bne .L_813438AC
/* 81343840 00011C40  80 1A 09 F8 */	lwz r0, 0x9f8(r26)
/* 81343844 00011C44  2C 00 FF F3 */	cmpwi r0, -0xd
/* 81343848 00011C48  40 82 00 FC */	bne .L_81343944
/* 8134384C 00011C4C  38 61 00 08 */	addi r3, r1, 0x8
/* 81343850 00011C50  3B E0 00 01 */	li r31, 0x1
/* 81343854 00011C54  38 80 00 02 */	li r4, 0x2
/* 81343858 00011C58  48 16 B1 61 */	bl fn_814AE9B8
/* 8134385C 00011C5C  7C 64 1B 78 */	mr r4, r3
/* 81343860 00011C60  7F 43 D3 78 */	mr r3, r26
/* 81343864 00011C64  38 A0 04 58 */	li r5, 0x458
/* 81343868 00011C68  48 00 07 E9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134386C 00011C6C  7F 64 DB 78 */	mr r4, r27
/* 81343870 00011C70  38 61 00 08 */	addi r3, r1, 0x8
/* 81343874 00011C74  48 16 B3 85 */	bl fn_814AEBF8
/* 81343878 00011C78  7C 64 1B 78 */	mr r4, r3
/* 8134387C 00011C7C  7F 43 D3 78 */	mr r3, r26
/* 81343880 00011C80  38 A0 04 64 */	li r5, 0x464
/* 81343884 00011C84  48 00 07 CD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343888 00011C88  38 61 00 08 */	addi r3, r1, 0x8
/* 8134388C 00011C8C  38 80 00 00 */	li r4, 0x0
/* 81343890 00011C90  48 16 B9 11 */	bl fn_814AF1A0
/* 81343894 00011C94  7C 64 1B 78 */	mr r4, r3
/* 81343898 00011C98  7F 43 D3 78 */	mr r3, r26
/* 8134389C 00011C9C  38 A0 04 A7 */	li r5, 0x4a7
/* 813438A0 00011CA0  48 00 07 B1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438A4 00011CA4  48 00 00 08 */	b .L_813438AC
/* 813438A8 00011CA8  48 00 00 9C */	b .L_81343944
.L_813438AC:
/* 813438AC 00011CAC  7F C4 F3 78 */	mr r4, r30
/* 813438B0 00011CB0  38 61 00 08 */	addi r3, r1, 0x8
/* 813438B4 00011CB4  48 16 B3 E5 */	bl fn_814AEC98
/* 813438B8 00011CB8  7C 64 1B 78 */	mr r4, r3
/* 813438BC 00011CBC  7F 43 D3 78 */	mr r3, r26
/* 813438C0 00011CC0  38 A0 04 7C */	li r5, 0x47c
/* 813438C4 00011CC4  48 00 07 8D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438C8 00011CC8  7F A4 EB 78 */	mr r4, r29
/* 813438CC 00011CCC  38 61 00 08 */	addi r3, r1, 0x8
/* 813438D0 00011CD0  48 16 B4 D1 */	bl fn_814AEDA0
/* 813438D4 00011CD4  7C 64 1B 78 */	mr r4, r3
/* 813438D8 00011CD8  7F 43 D3 78 */	mr r3, r26
/* 813438DC 00011CDC  38 A0 04 88 */	li r5, 0x488
/* 813438E0 00011CE0  48 00 07 71 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438E4 00011CE4  7F 84 E3 78 */	mr r4, r28
/* 813438E8 00011CE8  38 61 00 08 */	addi r3, r1, 0x8
/* 813438EC 00011CEC  48 16 B7 01 */	bl fn_814AEFEC
/* 813438F0 00011CF0  7C 64 1B 78 */	mr r4, r3
/* 813438F4 00011CF4  7F 43 D3 78 */	mr r3, r26
/* 813438F8 00011CF8  38 A0 04 70 */	li r5, 0x470
/* 813438FC 00011CFC  48 00 07 55 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343900 00011D00  2C 1F 00 00 */	cmpwi r31, 0x0
/* 81343904 00011D04  41 82 00 20 */	beq .L_81343924
/* 81343908 00011D08  38 61 00 08 */	addi r3, r1, 0x8
/* 8134390C 00011D0C  48 16 C4 15 */	bl fn_814AFD20
/* 81343910 00011D10  7C 64 1B 78 */	mr r4, r3
/* 81343914 00011D14  7F 43 D3 78 */	mr r3, r26
/* 81343918 00011D18  38 A0 04 BE */	li r5, 0x4be
/* 8134391C 00011D1C  48 00 07 35 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343920 00011D20  48 00 00 1C */	b .L_8134393C
.L_81343924:
/* 81343924 00011D24  38 61 00 08 */	addi r3, r1, 0x8
/* 81343928 00011D28  48 16 BE 61 */	bl fn_814AF788
/* 8134392C 00011D2C  7C 64 1B 78 */	mr r4, r3
/* 81343930 00011D30  7F 43 D3 78 */	mr r3, r26
/* 81343934 00011D34  38 A0 04 C9 */	li r5, 0x4c9
/* 81343938 00011D38  48 00 07 19 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
.L_8134393C:
/* 8134393C 00011D3C  38 61 00 08 */	addi r3, r1, 0x8
/* 81343940 00011D40  48 16 BA 59 */	bl fn_814AF398
.L_81343944:
/* 81343944 00011D44  39 61 02 20 */	addi r11, r1, 0x220
/* 81343948 00011D48  48 2B 5B C1 */	bl _restgpr_26
/* 8134394C 00011D4C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 81343950 00011D50  7C 08 03 A6 */	mtlr r0
/* 81343954 00011D54  38 21 02 20 */	addi r1, r1, 0x220
/* 81343958 00011D58  4E 80 00 20 */	blr
.endfn add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc

# .text:0x1FE0 | 0x8134395C | size: 0x74
# ipl::nwc24::Manager::getNewTitleTbl(unsigned long*) const
.fn getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl, global
/* 8134395C 00011D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81343960 00011D60  7C 08 02 A6 */	mflr r0
/* 81343964 00011D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 81343968 00011D68  39 61 00 20 */	addi r11, r1, 0x20
/* 8134396C 00011D6C  48 2B 5B 5D */	bl _savegpr_29
/* 81343970 00011D70  88 03 0A 33 */	lbz r0, 0xa33(r3)
/* 81343974 00011D74  7C 7D 1B 78 */	mr r29, r3
/* 81343978 00011D78  7C 9E 23 78 */	mr r30, r4
/* 8134397C 00011D7C  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343980 00011D80  40 82 00 0C */	bne .L_8134398C
/* 81343984 00011D84  38 60 00 00 */	li r3, 0x0
/* 81343988 00011D88  48 00 00 30 */	b .L_813439B8
.L_8134398C:
/* 8134398C 00011D8C  2C 04 00 00 */	cmpwi r4, 0x0
/* 81343990 00011D90  41 82 00 24 */	beq .L_813439B4
/* 81343994 00011D94  48 1E CE F1 */	bl OSDisableInterrupts
/* 81343998 00011D98  7C 7F 1B 78 */	mr r31, r3
/* 8134399C 00011D9C  7F C3 F3 78 */	mr r3, r30
/* 813439A0 00011DA0  38 9D 04 18 */	addi r4, r29, 0x418
/* 813439A4 00011DA4  38 A0 04 00 */	li r5, 0x400
/* 813439A8 00011DA8  4B FE C8 89 */	bl memcpy
/* 813439AC 00011DAC  7F E3 FB 78 */	mr r3, r31
/* 813439B0 00011DB0  48 1E CE FD */	bl OSRestoreInterrupts
.L_813439B4:
/* 813439B4 00011DB4  38 60 00 01 */	li r3, 0x1
.L_813439B8:
/* 813439B8 00011DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 813439BC 00011DBC  48 2B 5B 59 */	bl _restgpr_29
/* 813439C0 00011DC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 813439C4 00011DC4  7C 08 03 A6 */	mtlr r0
/* 813439C8 00011DC8  38 21 00 20 */	addi r1, r1, 0x20
/* 813439CC 00011DCC  4E 80 00 20 */	blr
.endfn getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl

# .text:0x2054 | 0x813439D0 | size: 0x80
# ipl::nwc24::Manager::isNewMessageThere(unsigned long) const
.fn isNewMessageThere__Q33ipl5nwc247ManagerCFUl, global
/* 813439D0 00011DD0  94 21 FB F0 */	stwu r1, -0x410(r1)
/* 813439D4 00011DD4  7C 08 02 A6 */	mflr r0
/* 813439D8 00011DD8  90 01 04 14 */	stw r0, 0x414(r1)
/* 813439DC 00011DDC  93 E1 04 0C */	stw r31, 0x40c(r1)
/* 813439E0 00011DE0  7C 9F 23 78 */	mr r31, r4
/* 813439E4 00011DE4  38 81 00 08 */	addi r4, r1, 0x8
/* 813439E8 00011DE8  4B FF FF 75 */	bl getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl
/* 813439EC 00011DEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 813439F0 00011DF0  40 82 00 0C */	bne .L_813439FC
/* 813439F4 00011DF4  38 60 00 00 */	li r3, 0x0
/* 813439F8 00011DF8  48 00 00 44 */	b .L_81343A3C
.L_813439FC:
/* 813439FC 00011DFC  38 81 00 08 */	addi r4, r1, 0x8
/* 81343A00 00011E00  38 A0 00 00 */	li r5, 0x0
/* 81343A04 00011E04  38 60 00 00 */	li r3, 0x0
/* 81343A08 00011E08  48 00 00 1C */	b .L_81343A24
.L_81343A0C:
/* 81343A0C 00011E0C  7C 1F 00 40 */	cmplw r31, r0
/* 81343A10 00011E10  40 82 00 0C */	bne .L_81343A1C
/* 81343A14 00011E14  38 60 00 01 */	li r3, 0x1
/* 81343A18 00011E18  48 00 00 24 */	b .L_81343A3C
.L_81343A1C:
/* 81343A1C 00011E1C  38 A5 00 01 */	addi r5, r5, 0x1
/* 81343A20 00011E20  38 63 00 04 */	addi r3, r3, 0x4
.L_81343A24:
/* 81343A24 00011E24  2C 05 01 00 */	cmpwi r5, 0x100
/* 81343A28 00011E28  40 80 00 10 */	bge .L_81343A38
/* 81343A2C 00011E2C  7C 04 18 2E */	lwzx r0, r4, r3
/* 81343A30 00011E30  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343A34 00011E34  40 82 FF D8 */	bne .L_81343A0C
.L_81343A38:
/* 81343A38 00011E38  38 60 00 00 */	li r3, 0x0
.L_81343A3C:
/* 81343A3C 00011E3C  80 01 04 14 */	lwz r0, 0x414(r1)
/* 81343A40 00011E40  83 E1 04 0C */	lwz r31, 0x40c(r1)
/* 81343A44 00011E44  7C 08 03 A6 */	mtlr r0
/* 81343A48 00011E48  38 21 04 10 */	addi r1, r1, 0x410
/* 81343A4C 00011E4C  4E 80 00 20 */	blr
.endfn isNewMessageThere__Q33ipl5nwc247ManagerCFUl

# .text:0x20D4 | 0x81343A50 | size: 0x134
# ipl::nwc24::Manager::encode_odh(EGG::Heap*, unsigned long)
.fn encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl, global
/* 81343A50 00011E50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81343A54 00011E54  7C 08 02 A6 */	mflr r0
/* 81343A58 00011E58  90 01 00 34 */	stw r0, 0x34(r1)
/* 81343A5C 00011E5C  39 61 00 30 */	addi r11, r1, 0x30
/* 81343A60 00011E60  48 2B 5A 59 */	bl _savegpr_25
/* 81343A64 00011E64  3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81343A68 00011E68  54 BC 10 3A */	slwi r28, r5, 2
/* 81343A6C 00011E6C  38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81343A70 00011E70  3B 60 00 00 */	li r27, 0x0
/* 81343A74 00011E74  83 A6 00 BC */	lwz r29, 0xbc(r6)
/* 81343A78 00011E78  7F C3 E2 14 */	add r30, r3, r28
/* 81343A7C 00011E7C  7C 79 1B 78 */	mr r25, r3
/* 81343A80 00011E80  7C 9A 23 78 */	mr r26, r4
/* 81343A84 00011E84  93 63 00 10 */	stw r27, 0x10(r3)
/* 81343A88 00011E88  93 63 00 14 */	stw r27, 0x14(r3)
/* 81343A8C 00011E8C  7F A3 EB 78 */	mr r3, r29
/* 81343A90 00011E90  80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81343A94 00011E94  80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81343A98 00011E98  48 02 13 FD */	bl decodeJpg__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl
/* 81343A9C 00011E9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AA0 00011EA0  41 82 00 B8 */	beq .L_81343B58
/* 81343AA4 00011EA4  7F A3 EB 78 */	mr r3, r29
/* 81343AA8 00011EA8  48 02 18 B5 */	bl waitCaptured__Q33ipl7utility11JpegDecoderFv
/* 81343AAC 00011EAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AB0 00011EB0  41 82 00 94 */	beq .L_81343B44
/* 81343AB4 00011EB4  7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343AB8 00011EB8  48 2B 46 35 */	bl __dla__FPv
/* 81343ABC 00011EBC  3B E0 00 00 */	li r31, 0x0
/* 81343AC0 00011EC0  3C 60 00 01 */	lis r3, 0x1
/* 81343AC4 00011EC4  7F F9 E1 2E */	stwx r31, r25, r28
/* 81343AC8 00011EC8  38 63 40 00 */	addi r3, r3, 0x4000
/* 81343ACC 00011ECC  7F 44 D3 78 */	mr r4, r26
/* 81343AD0 00011ED0  38 A0 00 20 */	li r5, 0x20
/* 81343AD4 00011ED4  90 79 00 14 */	stw r3, 0x14(r25)
/* 81343AD8 00011ED8  48 2B 45 FD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343ADC 00011EDC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AE0 00011EE0  90 79 00 10 */	stw r3, 0x10(r25)
/* 81343AE4 00011EE4  7C 65 1B 78 */	mr r5, r3
/* 81343AE8 00011EE8  41 82 00 50 */	beq .L_81343B38
/* 81343AEC 00011EEC  80 D9 00 14 */	lwz r6, 0x14(r25)
/* 81343AF0 00011EF0  7F A3 EB 78 */	mr r3, r29
/* 81343AF4 00011EF4  7F 44 D3 78 */	mr r4, r26
/* 81343AF8 00011EF8  48 02 15 7D */	bl encodeOdh__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl
/* 81343AFC 00011EFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343B00 00011F00  90 79 00 14 */	stw r3, 0x14(r25)
/* 81343B04 00011F04  7C 64 1B 78 */	mr r4, r3
/* 81343B08 00011F08  41 82 00 24 */	beq .L_81343B2C
/* 81343B0C 00011F0C  80 79 00 10 */	lwz r3, 0x10(r25)
/* 81343B10 00011F10  48 1E 9E 55 */	bl DCStoreRange
/* 81343B14 00011F14  80 19 00 10 */	lwz r0, 0x10(r25)
/* 81343B18 00011F18  3B 60 00 01 */	li r27, 0x1
/* 81343B1C 00011F1C  90 1E 00 00 */	stw r0, 0x0(r30)
/* 81343B20 00011F20  80 19 00 14 */	lwz r0, 0x14(r25)
/* 81343B24 00011F24  90 1E 00 08 */	stw r0, 0x8(r30)
/* 81343B28 00011F28  48 00 00 10 */	b .L_81343B38
.L_81343B2C:
/* 81343B2C 00011F2C  80 79 00 10 */	lwz r3, 0x10(r25)
/* 81343B30 00011F30  48 2B 45 BD */	bl __dla__FPv
/* 81343B34 00011F34  93 F9 00 10 */	stw r31, 0x10(r25)
.L_81343B38:
/* 81343B38 00011F38  7F A3 EB 78 */	mr r3, r29
/* 81343B3C 00011F3C  48 02 18 61 */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81343B40 00011F40  48 00 00 28 */	b .L_81343B68
.L_81343B44:
/* 81343B44 00011F44  7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343B48 00011F48  48 2B 45 A5 */	bl __dla__FPv
/* 81343B4C 00011F4C  38 00 00 00 */	li r0, 0x0
/* 81343B50 00011F50  7C 19 E1 2E */	stwx r0, r25, r28
/* 81343B54 00011F54  48 00 00 14 */	b .L_81343B68
.L_81343B58:
/* 81343B58 00011F58  7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343B5C 00011F5C  48 2B 45 91 */	bl __dla__FPv
/* 81343B60 00011F60  38 00 00 00 */	li r0, 0x0
/* 81343B64 00011F64  7C 19 E1 2E */	stwx r0, r25, r28
.L_81343B68:
/* 81343B68 00011F68  39 61 00 30 */	addi r11, r1, 0x30
/* 81343B6C 00011F6C  7F 63 DB 78 */	mr r3, r27
/* 81343B70 00011F70  48 2B 59 95 */	bl _restgpr_25
/* 81343B74 00011F74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 81343B78 00011F78  7C 08 03 A6 */	mtlr r0
/* 81343B7C 00011F7C  38 21 00 30 */	addi r1, r1, 0x30
/* 81343B80 00011F80  4E 80 00 20 */	blr
.endfn encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl

# .text:0x2208 | 0x81343B84 | size: 0x3F4
# ipl::nwc24::Manager::make_text(EGG::Heap*, const NWC24MsgObj*, bool, unsigned long*)
.fn make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl, global
/* 81343B84 00011F84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81343B88 00011F88  7C 08 02 A6 */	mflr r0
/* 81343B8C 00011F8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 81343B90 00011F90  39 61 00 50 */	addi r11, r1, 0x50
/* 81343B94 00011F94  48 2B 59 19 */	bl _savegpr_22
/* 81343B98 00011F98  3B E0 00 00 */	li r31, 0x0
/* 81343B9C 00011F9C  2C 06 00 00 */	cmpwi r6, 0x0
/* 81343BA0 00011FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81343BA4 00011FA4  7C 76 1B 78 */	mr r22, r3
/* 81343BA8 00011FA8  7C 97 23 78 */	mr r23, r4
/* 81343BAC 00011FAC  7C B8 2B 78 */	mr r24, r5
/* 81343BB0 00011FB0  93 E1 00 18 */	stw r31, 0x18(r1)
/* 81343BB4 00011FB4  7C D9 33 78 */	mr r25, r6
/* 81343BB8 00011FB8  7C FA 3B 78 */	mr r26, r7
/* 81343BBC 00011FBC  3B C0 00 00 */	li r30, 0x0
/* 81343BC0 00011FC0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 81343BC4 00011FC4  3B A0 00 00 */	li r29, 0x0
/* 81343BC8 00011FC8  3B 80 00 00 */	li r28, 0x0
/* 81343BCC 00011FCC  3B 60 00 00 */	li r27, 0x0
/* 81343BD0 00011FD0  93 E1 00 10 */	stw r31, 0x10(r1)
/* 81343BD4 00011FD4  93 E7 00 00 */	stw r31, 0x0(r7)
/* 81343BD8 00011FD8  41 82 01 04 */	beq .L_81343CDC
/* 81343BDC 00011FDC  7F 03 C3 78 */	mr r3, r24
/* 81343BE0 00011FE0  38 81 00 1C */	addi r4, r1, 0x1c
/* 81343BE4 00011FE4  48 15 DC E5 */	bl fn_814A18C8
/* 81343BE8 00011FE8  7C 64 1B 78 */	mr r4, r3
/* 81343BEC 00011FEC  7E C3 B3 78 */	mr r3, r22
/* 81343BF0 00011FF0  38 A0 02 42 */	li r5, 0x242
/* 81343BF4 00011FF4  48 00 04 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343BF8 00011FF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81343BFC 00011FFC  28 00 00 01 */	cmplwi r0, 0x1
/* 81343C00 00012000  40 81 00 DC */	ble .L_81343CDC
/* 81343C04 00012004  38 00 01 00 */	li r0, 0x100
/* 81343C08 00012008  7E E4 BB 78 */	mr r4, r23
/* 81343C0C 0001200C  90 01 00 18 */	stw r0, 0x18(r1)
/* 81343C10 00012010  38 60 02 02 */	li r3, 0x202
/* 81343C14 00012014  38 A0 FF FC */	li r5, -0x4
/* 81343C18 00012018  48 2B 44 BD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343C1C 0001201C  7C 7E 1B 78 */	mr r30, r3
/* 81343C20 00012020  7E E4 BB 78 */	mr r4, r23
/* 81343C24 00012024  38 60 06 04 */	li r3, 0x604
/* 81343C28 00012028  38 A0 FF FC */	li r5, -0x4
/* 81343C2C 0001202C  48 2B 44 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343C30 00012030  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81343C34 00012034  7C 7D 1B 78 */	mr r29, r3
/* 81343C38 00012038  41 82 00 A4 */	beq .L_81343CDC
/* 81343C3C 0001203C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343C40 00012040  41 82 00 9C */	beq .L_81343CDC
/* 81343C44 00012044  7F C3 F3 78 */	mr r3, r30
/* 81343C48 00012048  38 80 00 00 */	li r4, 0x0
/* 81343C4C 0001204C  38 A0 02 02 */	li r5, 0x202
/* 81343C50 00012050  4B FE C6 E5 */	bl memset
/* 81343C54 00012054  7F A3 EB 78 */	mr r3, r29
/* 81343C58 00012058  38 80 00 00 */	li r4, 0x0
/* 81343C5C 0001205C  38 A0 06 04 */	li r5, 0x604
/* 81343C60 00012060  4B FE C6 D5 */	bl memset
/* 81343C64 00012064  3C 80 00 01 */	lis r4, 0x1
/* 81343C68 00012068  7F 03 C3 78 */	mr r3, r24
/* 81343C6C 0001206C  38 04 FF FF */	subi r0, r4, 0x1
/* 81343C70 00012070  7F A8 EB 78 */	mr r8, r29
/* 81343C74 00012074  7F C4 F3 78 */	mr r4, r30
/* 81343C78 00012078  38 A1 00 18 */	addi r5, r1, 0x18
/* 81343C7C 0001207C  54 07 04 3E */	clrlwi r7, r0, 16
/* 81343C80 00012080  38 C0 00 01 */	li r6, 0x1
/* 81343C84 00012084  39 20 06 00 */	li r9, 0x600
/* 81343C88 00012088  48 16 5B C9 */	bl fn_814A9850
/* 81343C8C 0001208C  7C 64 1B 78 */	mr r4, r3
/* 81343C90 00012090  7E C3 B3 78 */	mr r3, r22
/* 81343C94 00012094  38 A0 03 15 */	li r5, 0x315
/* 81343C98 00012098  48 00 04 AD */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343C9C 0001209C  80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343CA0 000120A0  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343CA4 000120A4  41 81 00 0C */	bgt .L_81343CB0
/* 81343CA8 000120A8  2C 00 FF EB */	cmpwi r0, -0x15
/* 81343CAC 000120AC  40 80 00 24 */	bge .L_81343CD0
.L_81343CB0:
/* 81343CB0 000120B0  2C 00 FF DA */	cmpwi r0, -0x26
/* 81343CB4 000120B4  41 82 00 1C */	beq .L_81343CD0
/* 81343CB8 000120B8  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343CBC 000120BC  41 82 00 14 */	beq .L_81343CD0
/* 81343CC0 000120C0  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343CC4 000120C4  41 82 00 0C */	beq .L_81343CD0
/* 81343CC8 000120C8  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343CCC 000120CC  40 82 00 10 */	bne .L_81343CDC
.L_81343CD0:
/* 81343CD0 000120D0  38 00 00 01 */	li r0, 0x1
/* 81343CD4 000120D4  90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343CD8 000120D8  48 00 02 44 */	b .L_81343F1C
.L_81343CDC:
/* 81343CDC 000120DC  7F 03 C3 78 */	mr r3, r24
/* 81343CE0 000120E0  38 81 00 14 */	addi r4, r1, 0x14
/* 81343CE4 000120E4  48 15 DC 0D */	bl fn_814A18F0
/* 81343CE8 000120E8  7C 64 1B 78 */	mr r4, r3
/* 81343CEC 000120EC  7E C3 B3 78 */	mr r3, r22
/* 81343CF0 000120F0  38 A0 02 36 */	li r5, 0x236
/* 81343CF4 000120F4  48 00 03 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343CF8 000120F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81343CFC 000120FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343D00 00012100  41 82 01 50 */	beq .L_81343E50
/* 81343D04 00012104  38 00 0B B8 */	li r0, 0xbb8
/* 81343D08 00012108  7E E4 BB 78 */	mr r4, r23
/* 81343D0C 0001210C  90 01 00 10 */	stw r0, 0x10(r1)
/* 81343D10 00012110  38 60 17 72 */	li r3, 0x1772
/* 81343D14 00012114  38 A0 FF FC */	li r5, -0x4
/* 81343D18 00012118  48 2B 43 BD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343D1C 0001211C  7C 7C 1B 78 */	mr r28, r3
/* 81343D20 00012120  7E E4 BB 78 */	mr r4, r23
/* 81343D24 00012124  38 60 2E E4 */	li r3, 0x2ee4
/* 81343D28 00012128  38 A0 FF FC */	li r5, -0x4
/* 81343D2C 0001212C  48 2B 43 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343D30 00012130  2C 1C 00 00 */	cmpwi r28, 0x0
/* 81343D34 00012134  7C 7B 1B 78 */	mr r27, r3
/* 81343D38 00012138  41 82 01 18 */	beq .L_81343E50
/* 81343D3C 0001213C  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343D40 00012140  41 82 01 10 */	beq .L_81343E50
/* 81343D44 00012144  7F 83 E3 78 */	mr r3, r28
/* 81343D48 00012148  38 80 00 00 */	li r4, 0x0
/* 81343D4C 0001214C  38 A0 17 72 */	li r5, 0x1772
/* 81343D50 00012150  4B FE C5 E5 */	bl memset
/* 81343D54 00012154  7F 63 DB 78 */	mr r3, r27
/* 81343D58 00012158  38 80 00 00 */	li r4, 0x0
/* 81343D5C 0001215C  38 A0 2E E4 */	li r5, 0x2ee4
/* 81343D60 00012160  4B FE C5 D5 */	bl memset
/* 81343D64 00012164  2C 19 00 00 */	cmpwi r25, 0x0
/* 81343D68 00012168  41 82 00 7C */	beq .L_81343DE4
/* 81343D6C 0001216C  3C 80 00 01 */	lis r4, 0x1
/* 81343D70 00012170  7F 03 C3 78 */	mr r3, r24
/* 81343D74 00012174  38 04 FF FF */	subi r0, r4, 0x1
/* 81343D78 00012178  7F 68 DB 78 */	mr r8, r27
/* 81343D7C 0001217C  7F 84 E3 78 */	mr r4, r28
/* 81343D80 00012180  38 A1 00 10 */	addi r5, r1, 0x10
/* 81343D84 00012184  54 07 04 3E */	clrlwi r7, r0, 16
/* 81343D88 00012188  38 C0 00 01 */	li r6, 0x1
/* 81343D8C 0001218C  39 20 2E E0 */	li r9, 0x2ee0
/* 81343D90 00012190  48 16 5C 61 */	bl fn_814A99F0
/* 81343D94 00012194  7C 64 1B 78 */	mr r4, r3
/* 81343D98 00012198  7E C3 B3 78 */	mr r3, r22
/* 81343D9C 0001219C  38 A0 02 DA */	li r5, 0x2da
/* 81343DA0 000121A0  48 00 03 A5 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343DA4 000121A4  80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343DA8 000121A8  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343DAC 000121AC  41 81 00 0C */	bgt .L_81343DB8
/* 81343DB0 000121B0  2C 00 FF EB */	cmpwi r0, -0x15
/* 81343DB4 000121B4  40 80 00 24 */	bge .L_81343DD8
.L_81343DB8:
/* 81343DB8 000121B8  2C 00 FF DA */	cmpwi r0, -0x26
/* 81343DBC 000121BC  41 82 00 1C */	beq .L_81343DD8
/* 81343DC0 000121C0  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343DC4 000121C4  41 82 00 14 */	beq .L_81343DD8
/* 81343DC8 000121C8  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343DCC 000121CC  41 82 00 0C */	beq .L_81343DD8
/* 81343DD0 000121D0  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343DD4 000121D4  40 82 00 7C */	bne .L_81343E50
.L_81343DD8:
/* 81343DD8 000121D8  38 00 00 01 */	li r0, 0x1
/* 81343DDC 000121DC  90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343DE0 000121E0  48 00 01 3C */	b .L_81343F1C
.L_81343DE4:
/* 81343DE4 000121E4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343DE8 000121E8  7F 03 C3 78 */	mr r3, r24
/* 81343DEC 000121EC  7F 84 E3 78 */	mr r4, r28
/* 81343DF0 000121F0  38 C1 00 0C */	addi r6, r1, 0xc
/* 81343DF4 000121F4  54 05 08 3C */	slwi r5, r0, 1
/* 81343DF8 000121F8  38 E1 00 08 */	addi r7, r1, 0x8
/* 81343DFC 000121FC  48 16 52 91 */	bl fn_814A908C
/* 81343E00 00012200  7C 64 1B 78 */	mr r4, r3
/* 81343E04 00012204  7E C3 B3 78 */	mr r3, r22
/* 81343E08 00012208  38 A0 02 B3 */	li r5, 0x2b3
/* 81343E0C 0001220C  48 00 03 39 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343E10 00012210  80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343E14 00012214  2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343E18 00012218  41 81 00 0C */	bgt .L_81343E24
/* 81343E1C 0001221C  2C 00 FF EB */	cmpwi r0, -0x15
/* 81343E20 00012220  40 80 00 24 */	bge .L_81343E44
.L_81343E24:
/* 81343E24 00012224  2C 00 FF DA */	cmpwi r0, -0x26
/* 81343E28 00012228  41 82 00 1C */	beq .L_81343E44
/* 81343E2C 0001222C  2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343E30 00012230  41 82 00 14 */	beq .L_81343E44
/* 81343E34 00012234  2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343E38 00012238  41 82 00 0C */	beq .L_81343E44
/* 81343E3C 0001223C  2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343E40 00012240  40 82 00 10 */	bne .L_81343E50
.L_81343E44:
/* 81343E44 00012244  38 00 00 01 */	li r0, 0x1
/* 81343E48 00012248  90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343E4C 0001224C  48 00 00 D0 */	b .L_81343F1C
.L_81343E50:
/* 81343E50 00012250  80 61 00 18 */	lwz r3, 0x18(r1)
/* 81343E54 00012254  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343E58 00012258  40 82 00 10 */	bne .L_81343E68
/* 81343E5C 0001225C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343E60 00012260  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343E64 00012264  41 82 00 B8 */	beq .L_81343F1C
.L_81343E68:
/* 81343E68 00012268  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343E6C 0001226C  7E E4 BB 78 */	mr r4, r23
/* 81343E70 00012270  38 A0 00 04 */	li r5, 0x4
/* 81343E74 00012274  7C 63 02 14 */	add r3, r3, r0
/* 81343E78 00012278  3A C3 00 04 */	addi r22, r3, 0x4
/* 81343E7C 0001227C  56 C3 08 3C */	slwi r3, r22, 1
/* 81343E80 00012280  48 2B 42 55 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343E84 00012284  2C 03 00 00 */	cmpwi r3, 0x0
/* 81343E88 00012288  7C 7F 1B 78 */	mr r31, r3
/* 81343E8C 0001228C  41 82 00 90 */	beq .L_81343F1C
/* 81343E90 00012290  56 C5 08 3C */	slwi r5, r22, 1
/* 81343E94 00012294  38 80 00 00 */	li r4, 0x0
/* 81343E98 00012298  4B FE C4 9D */	bl memset
/* 81343E9C 0001229C  2C 19 00 00 */	cmpwi r25, 0x0
/* 81343EA0 000122A0  41 82 00 4C */	beq .L_81343EEC
/* 81343EA4 000122A4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 81343EA8 000122A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343EAC 000122AC  41 82 00 40 */	beq .L_81343EEC
/* 81343EB0 000122B0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81343EB4 000122B4  28 00 00 01 */	cmplwi r0, 0x1
/* 81343EB8 000122B8  40 81 00 34 */	ble .L_81343EEC
/* 81343EBC 000122BC  7F E3 FB 78 */	mr r3, r31
/* 81343EC0 000122C0  48 2C 47 ED */	bl fn_816086AC
/* 81343EC4 000122C4  7C A3 B0 50 */	subf r5, r3, r22
/* 81343EC8 000122C8  7F E3 FB 78 */	mr r3, r31
/* 81343ECC 000122CC  7F C4 F3 78 */	mr r4, r30
/* 81343ED0 000122D0  48 2C 48 85 */	bl fn_81608754
/* 81343ED4 000122D4  7F E3 FB 78 */	mr r3, r31
/* 81343ED8 000122D8  48 2C 47 D5 */	bl fn_816086AC
/* 81343EDC 000122DC  7C A3 B0 50 */	subf r5, r3, r22
/* 81343EE0 000122E0  7F E3 FB 78 */	mr r3, r31
/* 81343EE4 000122E4  38 8D 80 B0 */	li r4, lbl_816960F0@sda21
/* 81343EE8 000122E8  48 2C 48 6D */	bl fn_81608754
.L_81343EEC:
/* 81343EEC 000122EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343EF0 000122F0  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343EF4 000122F4  41 82 00 28 */	beq .L_81343F1C
/* 81343EF8 000122F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81343EFC 000122FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 81343F00 00012300  41 82 00 1C */	beq .L_81343F1C
/* 81343F04 00012304  7F E3 FB 78 */	mr r3, r31
/* 81343F08 00012308  48 2C 47 A5 */	bl fn_816086AC
/* 81343F0C 0001230C  7C A3 B0 50 */	subf r5, r3, r22
/* 81343F10 00012310  7F E3 FB 78 */	mr r3, r31
/* 81343F14 00012314  7F 84 E3 78 */	mr r4, r28
/* 81343F18 00012318  48 2C 48 3D */	bl fn_81608754
.L_81343F1C:
/* 81343F1C 0001231C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 81343F20 00012320  41 82 00 0C */	beq .L_81343F2C
/* 81343F24 00012324  7F C3 F3 78 */	mr r3, r30
/* 81343F28 00012328  48 2B 41 C5 */	bl __dla__FPv
.L_81343F2C:
/* 81343F2C 0001232C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 81343F30 00012330  41 82 00 0C */	beq .L_81343F3C
/* 81343F34 00012334  7F A3 EB 78 */	mr r3, r29
/* 81343F38 00012338  48 2B 41 B5 */	bl __dla__FPv
.L_81343F3C:
/* 81343F3C 0001233C  2C 1C 00 00 */	cmpwi r28, 0x0
/* 81343F40 00012340  41 82 00 0C */	beq .L_81343F4C
/* 81343F44 00012344  7F 83 E3 78 */	mr r3, r28
/* 81343F48 00012348  48 2B 41 A5 */	bl __dla__FPv
.L_81343F4C:
/* 81343F4C 0001234C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 81343F50 00012350  41 82 00 0C */	beq .L_81343F5C
/* 81343F54 00012354  7F 63 DB 78 */	mr r3, r27
/* 81343F58 00012358  48 2B 41 95 */	bl __dla__FPv
.L_81343F5C:
/* 81343F5C 0001235C  39 61 00 50 */	addi r11, r1, 0x50
/* 81343F60 00012360  7F E3 FB 78 */	mr r3, r31
/* 81343F64 00012364  48 2B 55 95 */	bl _restgpr_22
/* 81343F68 00012368  80 01 00 54 */	lwz r0, 0x54(r1)
/* 81343F6C 0001236C  7C 08 03 A6 */	mtlr r0
/* 81343F70 00012370  38 21 00 50 */	addi r1, r1, 0x50
/* 81343F74 00012374  4E 80 00 20 */	blr
.endfn make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl

# .text:0x25FC | 0x81343F78 | size: 0xB4
# ipl::nwc24::Manager::is_valid_app_id(unsigned long, unsigned short) const
.fn is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs, global
/* 81343F78 00012378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81343F7C 0001237C  7C 08 02 A6 */	mflr r0
/* 81343F80 00012380  90 01 00 24 */	stw r0, 0x24(r1)
/* 81343F84 00012384  54 A0 04 3E */	clrlwi r0, r5, 16
/* 81343F88 00012388  28 00 00 01 */	cmplwi r0, 0x1
/* 81343F8C 0001238C  90 81 00 08 */	stw r4, 0x8(r1)
/* 81343F90 00012390  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 81343F94 00012394  41 81 00 0C */	bgt .L_81343FA0
/* 81343F98 00012398  38 60 00 01 */	li r3, 0x1
/* 81343F9C 0001239C  48 00 00 80 */	b .L_8134401C
.L_81343FA0:
/* 81343FA0 000123A0  38 61 00 0E */	addi r3, r1, 0xe
/* 81343FA4 000123A4  38 80 00 00 */	li r4, 0x0
/* 81343FA8 000123A8  38 A0 00 06 */	li r5, 0x6
/* 81343FAC 000123AC  4B FE C3 89 */	bl memset
/* 81343FB0 000123B0  38 61 00 0E */	addi r3, r1, 0xe
/* 81343FB4 000123B4  38 81 00 08 */	addi r4, r1, 0x8
/* 81343FB8 000123B8  38 A0 00 04 */	li r5, 0x4
/* 81343FBC 000123BC  48 2B E4 09 */	bl strncpy
/* 81343FC0 000123C0  38 61 00 0E */	addi r3, r1, 0xe
/* 81343FC4 000123C4  38 81 00 0C */	addi r4, r1, 0xc
/* 81343FC8 000123C8  38 A0 00 02 */	li r5, 0x2
/* 81343FCC 000123CC  48 2B E4 69 */	bl strncat
/* 81343FD0 000123D0  38 00 00 06 */	li r0, 0x6
/* 81343FD4 000123D4  38 61 00 0E */	addi r3, r1, 0xe
/* 81343FD8 000123D8  7C 09 03 A6 */	mtctr r0
.L_81343FDC:
/* 81343FDC 000123DC  88 83 00 00 */	lbz r4, 0x0(r3)
/* 81343FE0 000123E0  7C 80 07 74 */	extsb r0, r4
/* 81343FE4 000123E4  2C 00 00 41 */	cmpwi r0, 0x41
/* 81343FE8 000123E8  41 80 00 0C */	blt .L_81343FF4
/* 81343FEC 000123EC  2C 00 00 5A */	cmpwi r0, 0x5a
/* 81343FF0 000123F0  40 81 00 20 */	ble .L_81344010
.L_81343FF4:
/* 81343FF4 000123F4  7C 80 07 74 */	extsb r0, r4
/* 81343FF8 000123F8  2C 00 00 30 */	cmpwi r0, 0x30
/* 81343FFC 000123FC  41 80 00 0C */	blt .L_81344008
/* 81344000 00012400  2C 00 00 39 */	cmpwi r0, 0x39
/* 81344004 00012404  40 81 00 0C */	ble .L_81344010
.L_81344008:
/* 81344008 00012408  38 60 00 00 */	li r3, 0x0
/* 8134400C 0001240C  48 00 00 10 */	b .L_8134401C
.L_81344010:
/* 81344010 00012410  38 63 00 01 */	addi r3, r3, 0x1
/* 81344014 00012414  42 00 FF C8 */	bdnz .L_81343FDC
/* 81344018 00012418  38 60 00 01 */	li r3, 0x1
.L_8134401C:
/* 8134401C 0001241C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344020 00012420  7C 08 03 A6 */	mtlr r0
/* 81344024 00012424  38 21 00 20 */	addi r1, r1, 0x20
/* 81344028 00012428  4E 80 00 20 */	blr
.endfn is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs

# .text:0x26B0 | 0x8134402C | size: 0x24
# ipl::nwc24::Manager::getErrCode()
.fn getErrCode__Q33ipl5nwc247ManagerFv, global
/* 8134402C 0001242C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81344030 00012430  7C 08 02 A6 */	mflr r0
/* 81344034 00012434  90 01 00 14 */	stw r0, 0x14(r1)
/* 81344038 00012438  48 15 C6 15 */	bl fn_814A064C
/* 8134403C 0001243C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81344040 00012440  7C 63 00 D0 */	neg r3, r3
/* 81344044 00012444  7C 08 03 A6 */	mtlr r0
/* 81344048 00012448  38 21 00 10 */	addi r1, r1, 0x10
/* 8134404C 0001244C  4E 80 00 20 */	blr
.endfn getErrCode__Q33ipl5nwc247ManagerFv

# .text:0x26D4 | 0x81344050 | size: 0xF4
# ipl::nwc24::Manager::error_handling(NWC24Err, int)
.fn error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, global
/* 81344050 00012450  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81344054 00012454  7C 08 02 A6 */	mflr r0
/* 81344058 00012458  90 01 00 24 */	stw r0, 0x24(r1)
/* 8134405C 0001245C  39 61 00 20 */	addi r11, r1, 0x20
/* 81344060 00012460  48 2B 54 65 */	bl _savegpr_28
/* 81344064 00012464  38 04 00 26 */	addi r0, r4, 0x26
/* 81344068 00012468  90 83 09 F8 */	stw r4, 0x9f8(r3)
/* 8134406C 0001246C  28 00 00 26 */	cmplwi r0, 0x26
/* 81344070 00012470  7C 7F 1B 78 */	mr r31, r3
/* 81344074 00012474  7C 9C 23 78 */	mr r28, r4
/* 81344078 00012478  7C BD 2B 78 */	mr r29, r5
/* 8134407C 0001247C  3B C0 00 00 */	li r30, 0x0
/* 81344080 00012480  41 81 00 A8 */	bgt .L_81344128
/* 81344084 00012484  3C 60 81 63 */	lis r3, jumptable_816353BC@ha
/* 81344088 00012488  54 00 10 3A */	slwi r0, r0, 2
/* 8134408C 0001248C  38 63 53 BC */	addi r3, r3, jumptable_816353BC@l
/* 81344090 00012490  7C 63 00 2E */	lwzx r3, r3, r0
/* 81344094 00012494  7C 69 03 A6 */	mtctr r3
/* 81344098 00012498  4E 80 04 20 */	bctr
.L_8134409C:
/* 8134409C 0001249C  3B C0 00 01 */	li r30, 0x1
/* 813440A0 000124A0  48 00 00 88 */	b .L_81344128
.L_813440A4:
/* 813440A4 000124A4  48 15 C1 7D */	bl fn_814A0220
/* 813440A8 000124A8  80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 813440AC 000124AC  38 80 00 00 */	li r4, 0x0
/* 813440B0 000124B0  38 A0 00 01 */	li r5, 0x1
/* 813440B4 000124B4  38 C0 00 00 */	li r6, 0x0
/* 813440B8 000124B8  38 E0 00 00 */	li r7, 0x0
/* 813440BC 000124BC  48 15 C6 49 */	bl fn_814A0704
/* 813440C0 000124C0  3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813440C4 000124C4  3C C0 81 63 */	lis r6, lbl_816353A6@ha
/* 813440C8 000124C8  3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813440CC 000124CC  7F 85 E3 78 */	mr r5, r28
/* 813440D0 000124D0  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813440D4 000124D4  7F A7 EB 78 */	mr r7, r29
/* 813440D8 000124D8  38 C6 53 A6 */	addi r6, r6, lbl_816353A6@l
/* 813440DC 000124DC  38 8D 80 B6 */	li r4, lbl_816960F6@sda21
/* 813440E0 000124E0  48 01 26 19 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813440E4 000124E4  80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813440E8 000124E8  38 80 00 01 */	li r4, 0x1
/* 813440EC 000124EC  38 A0 00 02 */	li r5, 0x2
/* 813440F0 000124F0  38 C0 00 00 */	li r6, 0x0
/* 813440F4 000124F4  38 E0 00 00 */	li r7, 0x0
/* 813440F8 000124F8  39 00 FF FF */	li r8, -0x1
/* 813440FC 000124FC  48 01 24 19 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 81344100 00012500  48 00 00 28 */	b .L_81344128
.L_81344104:
/* 81344104 00012504  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81344108 00012508  38 80 00 01 */	li r4, 0x1
/* 8134410C 0001250C  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81344110 00012510  38 A0 00 01 */	li r5, 0x1
/* 81344114 00012514  80 63 00 98 */	lwz r3, 0x98(r3)
/* 81344118 00012518  38 C0 00 00 */	li r6, 0x0
/* 8134411C 0001251C  38 E0 00 00 */	li r7, 0x0
/* 81344120 00012520  39 00 FF FF */	li r8, -0x1
/* 81344124 00012524  48 01 23 F1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81344128:
/* 81344128 00012528  39 61 00 20 */	addi r11, r1, 0x20
/* 8134412C 0001252C  7F C3 F3 78 */	mr r3, r30
/* 81344130 00012530  48 2B 53 E1 */	bl _restgpr_28
/* 81344134 00012534  80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344138 00012538  7C 08 03 A6 */	mtlr r0
/* 8134413C 0001253C  38 21 00 20 */	addi r1, r1, 0x20
/* 81344140 00012540  4E 80 00 20 */	blr
.endfn error_handling__Q33ipl5nwc247ManagerF8NWC24Erri

# .text:0x27C8 | 0x81344144 | size: 0x44
# ipl::nwc24::Manager::error_handling_ignore_file(NWC24Err, int)
.fn error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri, global
/* 81344144 00012544  2C 04 FF F0 */	cmpwi r4, -0x10
/* 81344148 00012548  90 83 09 F8 */	stw r4, 0x9f8(r3)
/* 8134414C 0001254C  41 81 00 0C */	bgt .L_81344158
/* 81344150 00012550  2C 04 FF EB */	cmpwi r4, -0x15
/* 81344154 00012554  40 80 00 24 */	bge .L_81344178
.L_81344158:
/* 81344158 00012558  2C 04 FF DA */	cmpwi r4, -0x26
/* 8134415C 0001255C  41 82 00 1C */	beq .L_81344178
/* 81344160 00012560  2C 04 FF D7 */	cmpwi r4, -0x29
/* 81344164 00012564  41 82 00 14 */	beq .L_81344178
/* 81344168 00012568  2C 04 FF D5 */	cmpwi r4, -0x2b
/* 8134416C 0001256C  41 82 00 0C */	beq .L_81344178
/* 81344170 00012570  2C 04 FF D2 */	cmpwi r4, -0x2e
/* 81344174 00012574  40 82 00 0C */	bne .L_81344180
.L_81344178:
/* 81344178 00012578  38 60 00 00 */	li r3, 0x0
/* 8134417C 0001257C  4E 80 00 20 */	blr
.L_81344180:
/* 81344180 00012580  4B FF FE D0 */	b error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81344184 00012584  4E 80 00 20 */	blr
.endfn error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri

# 0x81635218..0x81635458 | size: 0x240
.data
.balign 8

# .data:0x0 | 0x81635218 | size: 0x15E
.obj lbl_81635218, global
	.4byte 0x6D61696C
	.4byte 0x20776F72
	.4byte 0x6B206865
	.4byte 0x61702072
	.4byte 0x65737420
	.4byte 0x73697A65
	.4byte 0x2025780A
	.4byte 0x00706572
	.4byte 0x6D697373
	.4byte 0x696F6E20
	.4byte 0x25640A00
	.4byte 0x6C617374
	.4byte 0x20746173
	.4byte 0x6B206572
	.4byte 0x72202564
	.4byte 0x0A006E65
	.4byte 0x77206D73
	.4byte 0x6720666C
	.4byte 0x61672025
	.4byte 0x640A0063
	.4byte 0x75722074
	.4byte 0x61736B20
	.4byte 0x65727220
	.4byte 0x25640A00
	.4byte 0x65727220
	.4byte 0x6E756D20
	.4byte 0x25640A00
	.4byte 0x73656E64
	.4byte 0x206D7367
	.4byte 0x206E756D
	.4byte 0x2025640A
	.4byte 0x00726563
	.4byte 0x76206D73
	.4byte 0x67206E75
	.4byte 0x6D202564
	.4byte 0x0A007361
	.4byte 0x7665206D
	.4byte 0x7367206E
	.4byte 0x756D2025
	.4byte 0x640A0072
	.4byte 0x65667573
	.4byte 0x65206D73
	.4byte 0x67206E75
	.4byte 0x6D202564
	.4byte 0x0A006669
	.4byte 0x6C746572
	.4byte 0x206D7367
	.4byte 0x206E756D
	.4byte 0x2025640A
	.4byte 0x00636F6E
	.4byte 0x6669726D
	.4byte 0x20746173
	.4byte 0x6B206E75
	.4byte 0x6D202564
	.4byte 0x0A007265
	.4byte 0x63762074
	.4byte 0x61736B20
	.4byte 0x6E756D20
	.4byte 0x25640A00
	.4byte 0x73617665
	.4byte 0x20746173
	.4byte 0x6B206E75
	.4byte 0x6D202564
	.4byte 0x0A007365
	.4byte 0x6E642074
	.4byte 0x61736B20
	.4byte 0x6E756D20
	.4byte 0x25640A00
	.4byte 0x646F776E
	.4byte 0x6C6F6164
	.4byte 0x20746173
	.4byte 0x6B206E75
	.4byte 0x6D202564
	.4byte 0x0A006672
	.4byte 0x69656E64
	.4byte 0x2025640A
	.4byte 0x006D7367
	.4byte 0x20617070
	.4byte 0x5F696420
	.4byte 0x25782067
	.4byte 0x726F7570
	.4byte 0x5F696420
	.4byte 0x25780A00
	.4byte 0x7269706C
	.4byte 0x5F626F61
	.4byte 0x72645F72
	.4byte 0x65636F72
	.2byte 0x6400
.endobj lbl_81635218

# .data:0x15E | 0x81635376 | size: 0x30
.obj lbl_81635376, global
	.string "http://cfh.wapp.wii.com/announce/%03d/%d/%d.bin"
.endobj lbl_81635376

# .data:0x18E | 0x816353A6 | size: 0x16
.obj lbl_816353A6, global
	.4byte 0x69706C4E
	.4byte 0x77633234
	.4byte 0x4D616E61
	.4byte 0x6765722E
	.4byte 0x63707000
	.2byte 0x0000
.endobj lbl_816353A6

# .data:0x1A4 | 0x816353BC | size: 0x9C
.obj jumptable_816353BC, local
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344104
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_81344128
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_813440A4
	.rel error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, .L_8134409C
.endobj jumptable_816353BC

# 0x816944C8..0x816944F0 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x816944C8 | size: 0x4
.obj lbl_816944C8, global
	.float 4294967300
.endobj lbl_816944C8

# .sdata2:0x4 | 0x816944CC | size: 0x4
.obj gap_09_816944CC_sdata2, global
.hidden gap_09_816944CC_sdata2
	.4byte 0x00000000
.endobj gap_09_816944CC_sdata2

# .sdata2:0x8 | 0x816944D0 | size: 0x8
.obj lbl_816944D0, global
	.double 4503599627370496
.endobj lbl_816944D0

# .sdata2:0x10 | 0x816944D8 | size: 0x2
.obj lbl_816944D8, global
	.2byte 0x0000
.endobj lbl_816944D8

# .sdata2:0x12 | 0x816944DA | size: 0x2
.obj lbl_816944DA, global
	.2byte 0x0001
.endobj lbl_816944DA

# .sdata2:0x14 | 0x816944DC | size: 0x2
.obj lbl_816944DC, global
	.2byte 0x0005
.endobj lbl_816944DC

# .sdata2:0x16 | 0x816944DE | size: 0x2
.obj lbl_816944DE, global
	.2byte 0x0006
.endobj lbl_816944DE

# .sdata2:0x18 | 0x816944E0 | size: 0x2
.obj lbl_816944E0, global
	.2byte 0x00F0
.endobj lbl_816944E0

# .sdata2:0x1A | 0x816944E2 | size: 0x2
.obj lbl_816944E2, global
	.2byte 0x00F0
.endobj lbl_816944E2

# .sdata2:0x1C | 0x816944E4 | size: 0x2
.obj lbl_816944E4, global
	.2byte 0x00F0
.endobj lbl_816944E4

# .sdata2:0x1E | 0x816944E6 | size: 0x2
.obj lbl_816944E6, global
	.2byte 0x00F0
.endobj lbl_816944E6

# .sdata2:0x20 | 0x816944E8 | size: 0x1
.obj lbl_816944E8, global
	.byte 0x80
.endobj lbl_816944E8

# .sdata2:0x21 | 0x816944E9 | size: 0x1
.obj lbl_816944E9, global
	.byte 0xA0
.endobj lbl_816944E9

# .sdata2:0x22 | 0x816944EA | size: 0x1
.obj lbl_816944EA, global
	.byte 0xC8
.endobj lbl_816944EA

# .sdata2:0x23 | 0x816944EB | size: 0x5
.obj lbl_816944EB, global
	.byte 0xF0, 0x00, 0x00, 0x00, 0x00
.endobj lbl_816944EB

# 0x816960F0..0x81696100 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x816960F0 | size: 0x6
.obj lbl_816960F0, global
	.string16 "\n\n"
.endobj lbl_816960F0

# .sdata:0x6 | 0x816960F6 | size: 0xA
.obj lbl_816960F6, global
	.4byte 0x4E574332
	.4byte 0x34000000
	.2byte 0x0000
.endobj lbl_816960F6
