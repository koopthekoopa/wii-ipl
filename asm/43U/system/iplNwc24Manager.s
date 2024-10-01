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
/* 8134197C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341980 | 7C 08 02 A6 */	mflr r0
/* 81341984 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341988 | 38 00 00 00 */	li r0, 0x0
/* 8134198C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341990 | 7C 9F 23 78 */	mr r31, r4
/* 81341994 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341998 | 7C 7E 1B 78 */	mr r30, r3
/* 8134199C | 98 03 0A 30 */	stb r0, 0xa30(r3)
/* 813419A0 | 98 03 0A 31 */	stb r0, 0xa31(r3)
/* 813419A4 | 98 03 0A 32 */	stb r0, 0xa32(r3)
/* 813419A8 | 98 03 0A 33 */	stb r0, 0xa33(r3)
/* 813419AC | 38 63 0A 00 */	addi r3, r3, 0xa00
/* 813419B0 | 48 1F 02 21 */	bl fn_81531BD0
/* 813419B4 | 38 7E 0A 18 */	addi r3, r30, 0xa18
/* 813419B8 | 48 1F 02 19 */	bl fn_81531BD0
/* 813419BC | 7F E4 FB 78 */	mr r4, r31
/* 813419C0 | 38 60 40 00 */	li r3, 0x4000
/* 813419C4 | 38 A0 00 20 */	li r5, 0x20
/* 813419C8 | 48 2B 67 0D */	bl __nwa__FUlPQ23EGG4Heapi
/* 813419CC | 90 7E 09 FC */	stw r3, 0x9fc(r30)
/* 813419D0 | 3C 60 81 09 */	lis r3, smArg__Q33ipl5nwc247Manager@ha
/* 813419D4 | 38 63 96 20 */	addi r3, r3, smArg__Q33ipl5nwc247Manager@l
/* 813419D8 | 38 80 00 00 */	li r4, 0x0
/* 813419DC | 38 A0 01 00 */	li r5, 0x100
/* 813419E0 | 4B FE E9 55 */	bl memset
/* 813419E4 | 38 60 00 01 */	li r3, 0x1
/* 813419E8 | 48 17 02 29 */	bl NWC24EnableLedNotification
/* 813419EC | 7C 64 1B 78 */	mr r4, r3
/* 813419F0 | 7F C3 F3 78 */	mr r3, r30
/* 813419F4 | 38 A0 05 43 */	li r5, 0x543
/* 813419F8 | 48 00 26 59 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813419FC | 38 7E 04 18 */	addi r3, r30, 0x418
/* 81341A00 | 38 80 00 00 */	li r4, 0x0
/* 81341A04 | 38 A0 04 00 */	li r5, 0x400
/* 81341A08 | 4B FE E9 2D */	bl memset
/* 81341A0C | 38 7E 08 18 */	addi r3, r30, 0x818
/* 81341A10 | 38 80 00 00 */	li r4, 0x0
/* 81341A14 | 38 A0 01 E0 */	li r5, 0x1e0
/* 81341A18 | 4B FE E9 1D */	bl memset
/* 81341A1C | 7F C3 F3 78 */	mr r3, r30
/* 81341A20 | 48 00 07 F9 */	bl setDlTableFirst__Q33ipl5nwc247ManagerFv
/* 81341A24 | 7F C3 F3 78 */	mr r3, r30
/* 81341A28 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341A2C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341A30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341A34 | 7C 08 03 A6 */	mtlr r0
/* 81341A38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341A3C | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl5nwc247ManagerFPQ23EGG4Heap

# .text:0xC4 | 0x81341A40 | size: 0x74
# ipl::nwc24::Manager::open()
.fn open__Q33ipl5nwc247ManagerFv, global
/* 81341A40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341A44 | 7C 08 02 A6 */	mflr r0
/* 81341A48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341A4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341A50 | 3B E0 00 00 */	li r31, 0x0
/* 81341A54 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341A58 | 7C 7E 1B 78 */	mr r30, r3
/* 81341A5C | 38 63 0A 00 */	addi r3, r3, 0xa00
/* 81341A60 | 48 1F 03 B9 */	bl fn_81531E18
/* 81341A64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81341A68 | 41 82 00 30 */	beq .L_81341A98
/* 81341A6C | 80 7E 09 FC */	lwz r3, 0x9fc(r30)
/* 81341A70 | 48 15 E5 C5 */	bl NWC24OpenMsgLib
/* 81341A74 | 7C 64 1B 78 */	mr r4, r3
/* 81341A78 | 7F C3 F3 78 */	mr r3, r30
/* 81341A7C | 38 A0 00 D8 */	li r5, 0xd8
/* 81341A80 | 48 00 25 D1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81341A88 | 7C 7F 1B 78 */	mr r31, r3
/* 81341A8C | 40 82 00 0C */	bne .L_81341A98
/* 81341A90 | 38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81341A94 | 48 1F 02 51 */	bl fn_81531CE4
.L_81341A98:
/* 81341A98 | 7F E3 FB 78 */	mr r3, r31
/* 81341A9C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341AA0 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341AA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341AA8 | 7C 08 03 A6 */	mtlr r0
/* 81341AAC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341AB0 | 4E 80 00 20 */	blr
.endfn open__Q33ipl5nwc247ManagerFv

# .text:0x138 | 0x81341AB4 | size: 0x54
# ipl::nwc24::Manager::close()
.fn close__Q33ipl5nwc247ManagerFv, global
/* 81341AB4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341AB8 | 7C 08 02 A6 */	mflr r0
/* 81341ABC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341AC0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341AC4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81341AC8 | 7C 7E 1B 78 */	mr r30, r3
/* 81341ACC | 48 15 E7 C1 */	bl NWC24CloseMsgLib
/* 81341AD0 | 7C 64 1B 78 */	mr r4, r3
/* 81341AD4 | 7F C3 F3 78 */	mr r3, r30
/* 81341AD8 | 38 A0 00 E9 */	li r5, 0xe9
/* 81341ADC | 48 00 25 75 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341AE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81341AE4 | 38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81341AE8 | 48 1F 01 FD */	bl fn_81531CE4
/* 81341AEC | 7F E3 FB 78 */	mr r3, r31
/* 81341AF0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341AF4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81341AF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341AFC | 7C 08 03 A6 */	mtlr r0
/* 81341B00 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341B04 | 4E 80 00 20 */	blr
.endfn close__Q33ipl5nwc247ManagerFv

# .text:0x18C | 0x81341B08 | size: 0x44
# ipl::nwc24::Manager::initMsgObj(NWC24MsgObj*, NWC24MsgType)
.fn initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType, global
/* 81341B08 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B0C | 7C 08 02 A6 */	mflr r0
/* 81341B10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B14 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B18 | 7C 7F 1B 78 */	mr r31, r3
/* 81341B1C | 7C 83 23 78 */	mr r3, r4
/* 81341B20 | 7C A4 2B 78 */	mr r4, r5
/* 81341B24 | 48 15 F3 81 */	bl NWC24InitMsgObj
/* 81341B28 | 7C 64 1B 78 */	mr r4, r3
/* 81341B2C | 7F E3 FB 78 */	mr r3, r31
/* 81341B30 | 38 A0 00 FB */	li r5, 0xfb
/* 81341B34 | 48 00 25 1D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341B38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341B3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341B40 | 7C 08 03 A6 */	mtlr r0
/* 81341B44 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341B48 | 4E 80 00 20 */	blr
.endfn initMsgObj__Q33ipl5nwc247ManagerFP11NWC24MsgObj12NWC24MsgType

# .text:0x1D0 | 0x81341B4C | size: 0x40
# ipl::nwc24::Manager::setMsgToId(NWC24MsgObj*, unsigned long long)
.fn setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx, global
/* 81341B4C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B50 | 7C 08 02 A6 */	mflr r0
/* 81341B54 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B58 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B5C | 7C 7F 1B 78 */	mr r31, r3
/* 81341B60 | 7C 83 23 78 */	mr r3, r4
/* 81341B64 | 48 15 F5 31 */	bl NWC24SetMsgToId
/* 81341B68 | 7C 64 1B 78 */	mr r4, r3
/* 81341B6C | 7F E3 FB 78 */	mr r3, r31
/* 81341B70 | 38 A0 01 07 */	li r5, 0x107
/* 81341B74 | 48 00 24 DD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341B78 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341B7C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341B80 | 7C 08 03 A6 */	mtlr r0
/* 81341B84 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341B88 | 4E 80 00 20 */	blr
.endfn setMsgToId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUx

# .text:0x210 | 0x81341B8C | size: 0x48
# ipl::nwc24::Manager::setMsgToAddr(NWC24MsgObj*, const char*, unsigned long)
.fn setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl, global
/* 81341B8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341B90 | 7C 08 02 A6 */	mflr r0
/* 81341B94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341B98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341B9C | 7C 7F 1B 78 */	mr r31, r3
/* 81341BA0 | 7C 83 23 78 */	mr r3, r4
/* 81341BA4 | 7C A4 2B 78 */	mr r4, r5
/* 81341BA8 | 7C C5 33 78 */	mr r5, r6
/* 81341BAC | 48 15 F5 4D */	bl NWC24SetMsgToAddr
/* 81341BB0 | 7C 64 1B 78 */	mr r4, r3
/* 81341BB4 | 7F E3 FB 78 */	mr r3, r31
/* 81341BB8 | 38 A0 01 13 */	li r5, 0x113
/* 81341BBC | 48 00 24 95 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341BC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341BC4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341BC8 | 7C 08 03 A6 */	mtlr r0
/* 81341BCC | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341BD0 | 4E 80 00 20 */	blr
.endfn setMsgToAddr__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl

# .text:0x258 | 0x81341BD4 | size: 0x50
# ipl::nwc24::Manager::setMsgText(NWC24MsgObj*, const char*, unsigned long, NWC24Charset, NWC24Encoding)
.fn setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding, global
/* 81341BD4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341BD8 | 7C 08 02 A6 */	mflr r0
/* 81341BDC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341BE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341BE4 | 7C 7F 1B 78 */	mr r31, r3
/* 81341BE8 | 7C 83 23 78 */	mr r3, r4
/* 81341BEC | 7C A4 2B 78 */	mr r4, r5
/* 81341BF0 | 7C C5 33 78 */	mr r5, r6
/* 81341BF4 | 7C E6 3B 78 */	mr r6, r7
/* 81341BF8 | 7D 07 43 78 */	mr r7, r8
/* 81341BFC | 48 15 F6 39 */	bl NWC24SetMsgText
/* 81341C00 | 7C 64 1B 78 */	mr r4, r3
/* 81341C04 | 7F E3 FB 78 */	mr r3, r31
/* 81341C08 | 38 A0 01 27 */	li r5, 0x127
/* 81341C0C | 48 00 24 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341C10 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341C14 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341C18 | 7C 08 03 A6 */	mtlr r0
/* 81341C1C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341C20 | 4E 80 00 20 */	blr
.endfn setMsgText__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCcUl12NWC24Charset13NWC24Encoding

# .text:0x2A8 | 0x81341C24 | size: 0x68
# ipl::nwc24::Manager::setMsgSubjectAndTextPublic(NWC24MsgObj*, const unsigned short*, unsigned long, const unsigned short*, unsigned long, unsigned char*, unsigned long)
.fn setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl, global
/* 81341C24 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81341C28 | 7C 08 02 A6 */	mflr r0
/* 81341C2C | 3D 60 00 01 */	lis r11, 0x1
/* 81341C30 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81341C34 | 38 0B FF FF */	subi r0, r11, 0x1
/* 81341C38 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81341C3C | 7C 7F 1B 78 */	mr r31, r3
/* 81341C40 | 7C 83 23 78 */	mr r3, r4
/* 81341C44 | 7C A4 2B 78 */	mr r4, r5
/* 81341C48 | 91 41 00 08 */	stw r10, 0x8(r1)
/* 81341C4C | 7C C5 33 78 */	mr r5, r6
/* 81341C50 | 7C E6 3B 78 */	mr r6, r7
/* 81341C54 | 7D 07 43 78 */	mr r7, r8
/* 81341C58 | 7D 2A 4B 78 */	mr r10, r9
/* 81341C5C | 54 09 04 3E */	clrlwi r9, r0, 16
/* 81341C60 | 39 00 00 01 */	li r8, 0x1
/* 81341C64 | 48 16 80 6D */	bl NWC24SetMsgSubjectAndTextPublic
/* 81341C68 | 7C 64 1B 78 */	mr r4, r3
/* 81341C6C | 7F E3 FB 78 */	mr r3, r31
/* 81341C70 | 38 A0 01 A2 */	li r5, 0x1a2
/* 81341C74 | 48 00 23 DD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341C78 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81341C7C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 81341C80 | 7C 08 03 A6 */	mtlr r0
/* 81341C84 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81341C88 | 4E 80 00 20 */	blr
.endfn setMsgSubjectAndTextPublic__Q33ipl5nwc247ManagerFP11NWC24MsgObjPCUsUlPCUsUlPUcUl

# .text:0x310 | 0x81341C8C | size: 0x44
# ipl::nwc24::Manager::setMsgMBNoReply(NWC24MsgObj*, int)
.fn setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji, global
/* 81341C8C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341C90 | 7C 08 02 A6 */	mflr r0
/* 81341C94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341C98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341C9C | 7C 7F 1B 78 */	mr r31, r3
/* 81341CA0 | 7C 83 23 78 */	mr r3, r4
/* 81341CA4 | 7C A4 2B 78 */	mr r4, r5
/* 81341CA8 | 48 15 F9 35 */	bl NWC24SetMsgMBNoReply
/* 81341CAC | 7C 64 1B 78 */	mr r4, r3
/* 81341CB0 | 7F E3 FB 78 */	mr r3, r31
/* 81341CB4 | 38 A0 01 B0 */	li r5, 0x1b0
/* 81341CB8 | 48 00 23 99 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341CBC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341CC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341CC4 | 7C 08 03 A6 */	mtlr r0
/* 81341CC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341CCC | 4E 80 00 20 */	blr
.endfn setMsgMBNoReply__Q33ipl5nwc247ManagerFP11NWC24MsgObji

# .text:0x354 | 0x81341CD0 | size: 0x4C
# ipl::nwc24::Manager::setMsgMBRegDate(NWC24MsgObj*, unsigned short, unsigned char, unsigned char)
.fn setMsgMBRegDate__Q33ipl5nwc247ManagerFP11NWC24MsgObjUsUcUc, global
/* 81341CD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341CD4 | 7C 08 02 A6 */	mflr r0
/* 81341CD8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341CDC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341CE0 | 7C 7F 1B 78 */	mr r31, r3
/* 81341CE4 | 7C 83 23 78 */	mr r3, r4
/* 81341CE8 | 7C A4 2B 78 */	mr r4, r5
/* 81341CEC | 7C C5 33 78 */	mr r5, r6
/* 81341CF0 | 7C E6 3B 78 */	mr r6, r7
/* 81341CF4 | 48 15 F9 41 */	bl NWC24SetMsgMBRegDate
/* 81341CF8 | 7C 64 1B 78 */	mr r4, r3
/* 81341CFC | 7F E3 FB 78 */	mr r3, r31
/* 81341D00 | 38 A0 01 BD */	li r5, 0x1bd
/* 81341D04 | 48 00 23 4D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D0C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D10 | 7C 08 03 A6 */	mtlr r0
/* 81341D14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341D18 | 4E 80 00 20 */	blr
.endfn setMsgMBRegDate__Q33ipl5nwc247ManagerFP11NWC24MsgObjUsUcUc

# .text:0x3A0 | 0x81341D1C | size: 0x44
# ipl::nwc24::Manager::setMsgAppId(NWC24MsgObj*, unsigned long)
.fn setMsgAppId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUl, global
/* 81341D1C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341D20 | 7C 08 02 A6 */	mflr r0
/* 81341D24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341D28 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341D2C | 7C 7F 1B 78 */	mr r31, r3
/* 81341D30 | 7C 83 23 78 */	mr r3, r4
/* 81341D34 | 7C A4 2B 78 */	mr r4, r5
/* 81341D38 | 48 15 F9 D1 */	bl NWC24SetMsgAppId
/* 81341D3C | 7C 64 1B 78 */	mr r4, r3
/* 81341D40 | 7F E3 FB 78 */	mr r3, r31
/* 81341D44 | 38 A0 01 C9 */	li r5, 0x1c9
/* 81341D48 | 48 00 23 09 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D4C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D54 | 7C 08 03 A6 */	mtlr r0
/* 81341D58 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341D5C | 4E 80 00 20 */	blr
.endfn setMsgAppId__Q33ipl5nwc247ManagerFP11NWC24MsgObjUl

# .text:0x3E4 | 0x81341D60 | size: 0x40
# ipl::nwc24::Manager::commitMsg(NWC24MsgObj*)
.fn commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj, global
/* 81341D60 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341D64 | 7C 08 02 A6 */	mflr r0
/* 81341D68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341D6C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341D70 | 7C 7F 1B 78 */	mr r31, r3
/* 81341D74 | 7C 83 23 78 */	mr r3, r4
/* 81341D78 | 48 16 47 51 */	bl NWC24CommitMsg
/* 81341D7C | 7C 64 1B 78 */	mr r4, r3
/* 81341D80 | 7F E3 FB 78 */	mr r3, r31
/* 81341D84 | 38 A0 01 E0 */	li r5, 0x1e0
/* 81341D88 | 48 00 22 C9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341D8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341D90 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341D94 | 7C 08 03 A6 */	mtlr r0
/* 81341D98 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341D9C | 4E 80 00 20 */	blr
.endfn commitMsg__Q33ipl5nwc247ManagerFP11NWC24MsgObj

# .text:0x424 | 0x81341DA0 | size: 0x40
# ipl::nwc24::Manager::getMyUserId(unsigned long long*)
.fn getMyUserId__Q33ipl5nwc247ManagerFPUx, global
/* 81341DA0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341DA4 | 7C 08 02 A6 */	mflr r0
/* 81341DA8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341DAC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341DB0 | 7C 7F 1B 78 */	mr r31, r3
/* 81341DB4 | 7C 83 23 78 */	mr r3, r4
/* 81341DB8 | 48 15 D5 79 */	bl NWC24GetMyUserId
/* 81341DBC | 7C 64 1B 78 */	mr r4, r3
/* 81341DC0 | 7F E3 FB 78 */	mr r3, r31
/* 81341DC4 | 38 A0 03 89 */	li r5, 0x389
/* 81341DC8 | 48 00 22 89 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341DCC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341DD0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341DD4 | 7C 08 03 A6 */	mtlr r0
/* 81341DD8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341DDC | 4E 80 00 20 */	blr
.endfn getMyUserId__Q33ipl5nwc247ManagerFPUx

# .text:0x464 | 0x81341DE0 | size: 0x60
# ipl::nwc24::Manager::isFriendInfoThere(unsigned long)
.fn isFriendInfoThere__Q33ipl5nwc247ManagerFUl, global
/* 81341DE0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341DE4 | 7C 08 02 A6 */	mflr r0
/* 81341DE8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341DEC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341DF0 | 7C 7F 1B 78 */	mr r31, r3
/* 81341DF4 | 7C 83 23 78 */	mr r3, r4
/* 81341DF8 | 48 16 B8 19 */	bl NWC24IsFriendInfoThere
/* 81341DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81341E00 | 7C 64 1B 78 */	mr r4, r3
/* 81341E04 | 40 82 00 0C */	bne .L_81341E10
/* 81341E08 | 38 60 00 00 */	li r3, 0x0
/* 81341E0C | 48 00 00 20 */	b .L_81341E2C
.L_81341E10:
/* 81341E10 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 81341E14 | 40 82 00 0C */	bne .L_81341E20
/* 81341E18 | 38 60 00 01 */	li r3, 0x1
/* 81341E1C | 48 00 00 10 */	b .L_81341E2C
.L_81341E20:
/* 81341E20 | 7F E3 FB 78 */	mr r3, r31
/* 81341E24 | 38 A0 03 98 */	li r5, 0x398
/* 81341E28 | 48 00 22 29 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
.L_81341E2C:
/* 81341E2C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341E30 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341E34 | 7C 08 03 A6 */	mtlr r0
/* 81341E38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341E3C | 4E 80 00 20 */	blr
.endfn isFriendInfoThere__Q33ipl5nwc247ManagerFUl

# .text:0x4C4 | 0x81341E40 | size: 0x44
# ipl::nwc24::Manager::searchFriendInfo(const NWC24FriendAddr*, unsigned long*)
.fn searchFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendAddrPUl, global
/* 81341E40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341E44 | 7C 08 02 A6 */	mflr r0
/* 81341E48 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341E4C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341E50 | 7C 7F 1B 78 */	mr r31, r3
/* 81341E54 | 7C 83 23 78 */	mr r3, r4
/* 81341E58 | 7C A4 2B 78 */	mr r4, r5
/* 81341E5C | 48 16 B4 ED */	bl NWC24SearchFriendInfoByAddr
/* 81341E60 | 7C 64 1B 78 */	mr r4, r3
/* 81341E64 | 7F E3 FB 78 */	mr r3, r31
/* 81341E68 | 38 A0 03 A4 */	li r5, 0x3a4
/* 81341E6C | 48 00 21 E5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341E70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341E74 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341E78 | 7C 08 03 A6 */	mtlr r0
/* 81341E7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341E80 | 4E 80 00 20 */	blr
.endfn searchFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendAddrPUl

# .text:0x508 | 0x81341E84 | size: 0x48
# ipl::nwc24::Manager::searchFriendInfo(unsigned long long, unsigned long*)
.fn searchFriendInfo__Q33ipl5nwc247ManagerFUxPUl, global
/* 81341E84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341E88 | 7C 08 02 A6 */	mflr r0
/* 81341E8C | 7C C4 33 78 */	mr r4, r6
/* 81341E90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341E94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341E98 | 7C 7F 1B 78 */	mr r31, r3
/* 81341E9C | 7C A3 2B 78 */	mr r3, r5
/* 81341EA0 | 7C E5 3B 78 */	mr r5, r7
/* 81341EA4 | 48 16 B3 E5 */	bl NWC24SearchFriendInfoById
/* 81341EA8 | 7C 64 1B 78 */	mr r4, r3
/* 81341EAC | 7F E3 FB 78 */	mr r3, r31
/* 81341EB0 | 38 A0 03 B0 */	li r5, 0x3b0
/* 81341EB4 | 48 00 21 9D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341EB8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341EBC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341EC0 | 7C 08 03 A6 */	mtlr r0
/* 81341EC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341EC8 | 4E 80 00 20 */	blr
.endfn searchFriendInfo__Q33ipl5nwc247ManagerFUxPUl

# .text:0x550 | 0x81341ECC | size: 0x44
# ipl::nwc24::Manager::readFriendInfo(NWC24FriendInfo*, unsigned long)
.fn readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl, global
/* 81341ECC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341ED0 | 7C 08 02 A6 */	mflr r0
/* 81341ED4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341ED8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341EDC | 7C 7F 1B 78 */	mr r31, r3
/* 81341EE0 | 7C 83 23 78 */	mr r3, r4
/* 81341EE4 | 7C A4 2B 78 */	mr r4, r5
/* 81341EE8 | 48 16 A7 C1 */	bl NWC24ReadFriendInfo
/* 81341EEC | 7C 64 1B 78 */	mr r4, r3
/* 81341EF0 | 7F E3 FB 78 */	mr r3, r31
/* 81341EF4 | 38 A0 03 BD */	li r5, 0x3bd
/* 81341EF8 | 48 00 21 59 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341EFC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F00 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F04 | 7C 08 03 A6 */	mtlr r0
/* 81341F08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341F0C | 4E 80 00 20 */	blr
.endfn readFriendInfo__Q33ipl5nwc247ManagerFP15NWC24FriendInfoUl

# .text:0x594 | 0x81341F10 | size: 0x44
# ipl::nwc24::Manager::writeFriendInfo(const NWC24FriendInfo*, unsigned long)
.fn writeFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl, global
/* 81341F10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F14 | 7C 08 02 A6 */	mflr r0
/* 81341F18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341F1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341F20 | 7C 7F 1B 78 */	mr r31, r3
/* 81341F24 | 7C 83 23 78 */	mr r3, r4
/* 81341F28 | 7C A4 2B 78 */	mr r4, r5
/* 81341F2C | 48 16 A8 21 */	bl NWC24WriteFriendInfo
/* 81341F30 | 7C 64 1B 78 */	mr r4, r3
/* 81341F34 | 7F E3 FB 78 */	mr r3, r31
/* 81341F38 | 38 A0 03 D0 */	li r5, 0x3d0
/* 81341F3C | 48 00 21 15 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341F40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F48 | 7C 08 03 A6 */	mtlr r0
/* 81341F4C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341F50 | 4E 80 00 20 */	blr
.endfn writeFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl

# .text:0x5D8 | 0x81341F54 | size: 0x44
# ipl::nwc24::Manager::updateFriendInfo(const NWC24FriendInfo*, unsigned long)
.fn updateFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl, global
/* 81341F54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F58 | 7C 08 02 A6 */	mflr r0
/* 81341F5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341F60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341F64 | 7C 7F 1B 78 */	mr r31, r3
/* 81341F68 | 7C 83 23 78 */	mr r3, r4
/* 81341F6C | 7C A4 2B 78 */	mr r4, r5
/* 81341F70 | 48 16 AC 35 */	bl NWC24UpdateFriendInfo
/* 81341F74 | 7C 64 1B 78 */	mr r4, r3
/* 81341F78 | 7F E3 FB 78 */	mr r3, r31
/* 81341F7C | 38 A0 03 DC */	li r5, 0x3dc
/* 81341F80 | 48 00 20 D1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341F84 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341F88 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341F8C | 7C 08 03 A6 */	mtlr r0
/* 81341F90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341F94 | 4E 80 00 20 */	blr
.endfn updateFriendInfo__Q33ipl5nwc247ManagerFPC15NWC24FriendInfoUl

# .text:0x61C | 0x81341F98 | size: 0x40
# ipl::nwc24::Manager::deleteFriendInfo(unsigned long)
.fn deleteFriendInfo__Q33ipl5nwc247ManagerFUl, global
/* 81341F98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341F9C | 7C 08 02 A6 */	mflr r0
/* 81341FA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341FA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341FA8 | 7C 7F 1B 78 */	mr r31, r3
/* 81341FAC | 7C 83 23 78 */	mr r3, r4
/* 81341FB0 | 48 16 AE 59 */	bl NWC24DeleteFriendInfo
/* 81341FB4 | 7C 64 1B 78 */	mr r4, r3
/* 81341FB8 | 7F E3 FB 78 */	mr r3, r31
/* 81341FBC | 38 A0 03 E7 */	li r5, 0x3e7
/* 81341FC0 | 48 00 20 91 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81341FC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81341FC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81341FCC | 7C 08 03 A6 */	mtlr r0
/* 81341FD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81341FD4 | 4E 80 00 20 */	blr
.endfn deleteFriendInfo__Q33ipl5nwc247ManagerFUl

# .text:0x65C | 0x81341FD8 | size: 0x44
# ipl::nwc24::Manager::swapFriendInfo(unsigned long, unsigned long)
.fn swapFriendInfo__Q33ipl5nwc247ManagerFUlUl, global
/* 81341FD8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81341FDC | 7C 08 02 A6 */	mflr r0
/* 81341FE0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81341FE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81341FE8 | 7C 7F 1B 78 */	mr r31, r3
/* 81341FEC | 7C 83 23 78 */	mr r3, r4
/* 81341FF0 | 7C A4 2B 78 */	mr r4, r5
/* 81341FF4 | 48 16 AF B9 */	bl NWC24SwapFriendInfos
/* 81341FF8 | 7C 64 1B 78 */	mr r4, r3
/* 81341FFC | 7F E3 FB 78 */	mr r3, r31
/* 81342000 | 38 A0 03 F3 */	li r5, 0x3f3
/* 81342004 | 48 00 20 4D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134200C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342010 | 7C 08 03 A6 */	mtlr r0
/* 81342014 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342018 | 4E 80 00 20 */	blr
.endfn swapFriendInfo__Q33ipl5nwc247ManagerFUlUl

# .text:0x6A0 | 0x8134201C | size: 0x40
# ipl::nwc24::Manager::getNumRegFriendInfos(unsigned long*)
.fn getNumRegFriendInfos__Q33ipl5nwc247ManagerFPUl, global
/* 8134201C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342020 | 7C 08 02 A6 */	mflr r0
/* 81342024 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342028 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134202C | 7C 7F 1B 78 */	mr r31, r3
/* 81342030 | 7C 83 23 78 */	mr r3, r4
/* 81342034 | 48 16 B5 71 */	bl NWC24GetNumRegFriendInfos
/* 81342038 | 7C 64 1B 78 */	mr r4, r3
/* 8134203C | 7F E3 FB 78 */	mr r3, r31
/* 81342040 | 38 A0 03 FF */	li r5, 0x3ff
/* 81342044 | 48 00 20 0D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342048 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134204C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342050 | 7C 08 03 A6 */	mtlr r0
/* 81342054 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342058 | 4E 80 00 20 */	blr
.endfn getNumRegFriendInfos__Q33ipl5nwc247ManagerFPUl

# .text:0x6E0 | 0x8134205C | size: 0x40
# ipl::nwc24::Manager::getNumFriendInfos(unsigned long*)
.fn getNumFriendInfos__Q33ipl5nwc247ManagerFPUl, global
/* 8134205C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342060 | 7C 08 02 A6 */	mflr r0
/* 81342064 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342068 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134206C | 7C 7F 1B 78 */	mr r31, r3
/* 81342070 | 7C 83 23 78 */	mr r3, r4
/* 81342074 | 48 16 B4 C5 */	bl NWC24GetNumFriendInfos
/* 81342078 | 7C 64 1B 78 */	mr r4, r3
/* 8134207C | 7F E3 FB 78 */	mr r3, r31
/* 81342080 | 38 A0 04 0B */	li r5, 0x40b
/* 81342084 | 48 00 1F CD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342088 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8134208C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342090 | 7C 08 03 A6 */	mtlr r0
/* 81342094 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342098 | 4E 80 00 20 */	blr
.endfn getNumFriendInfos__Q33ipl5nwc247ManagerFPUl

# .text:0x720 | 0x8134209C | size: 0x70
# ipl::nwc24::Manager::checkUserId(unsigned long long)
.fn checkUserId__Q33ipl5nwc247ManagerFUx, global
/* 8134209C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813420A0 | 7C 08 02 A6 */	mflr r0
/* 813420A4 | 7C C4 33 78 */	mr r4, r6
/* 813420A8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813420AC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813420B0 | 7C 7F 1B 78 */	mr r31, r3
/* 813420B4 | 7C A3 2B 78 */	mr r3, r5
/* 813420B8 | 48 16 BE F5 */	bl NWC24CheckUserId
/* 813420BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813420C0 | 7C 64 1B 78 */	mr r4, r3
/* 813420C4 | 41 82 00 14 */	beq .L_813420D8
/* 813420C8 | 40 80 00 20 */	bge .L_813420E8
/* 813420CC | 2C 03 FF DB */	cmpwi r3, -0x25
/* 813420D0 | 41 82 00 10 */	beq .L_813420E0
/* 813420D4 | 48 00 00 14 */	b .L_813420E8
.L_813420D8:
/* 813420D8 | 38 60 00 01 */	li r3, 0x1
/* 813420DC | 48 00 00 1C */	b .L_813420F8
.L_813420E0:
/* 813420E0 | 38 60 00 00 */	li r3, 0x0
/* 813420E4 | 48 00 00 14 */	b .L_813420F8
.L_813420E8:
/* 813420E8 | 7F E3 FB 78 */	mr r3, r31
/* 813420EC | 38 A0 04 1B */	li r5, 0x41b
/* 813420F0 | 48 00 1F 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813420F4 | 38 60 00 00 */	li r3, 0x0
.L_813420F8:
/* 813420F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813420FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342100 | 7C 08 03 A6 */	mtlr r0
/* 81342104 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342108 | 4E 80 00 20 */	blr
.endfn checkUserId__Q33ipl5nwc247ManagerFUx

# .text:0x790 | 0x8134210C | size: 0x44
# ipl::nwc24::Manager::getDlTask(NWC24DlTask*, unsigned short)
.fn getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs, global
/* 8134210C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342110 | 7C 08 02 A6 */	mflr r0
/* 81342114 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342118 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8134211C | 7C 7F 1B 78 */	mr r31, r3
/* 81342120 | 7C 83 23 78 */	mr r3, r4
/* 81342124 | 7C A4 2B 78 */	mr r4, r5
/* 81342128 | 48 16 DE 35 */	bl NWC24GetDlTask
/* 8134212C | 7C 64 1B 78 */	mr r4, r3
/* 81342130 | 7F E3 FB 78 */	mr r3, r31
/* 81342134 | 38 A0 04 28 */	li r5, 0x428
/* 81342138 | 48 00 1F 19 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134213C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342140 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342144 | 7C 08 03 A6 */	mtlr r0
/* 81342148 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134214C | 4E 80 00 20 */	blr
.endfn getDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTaskUs

# .text:0x7D4 | 0x81342150 | size: 0x44
# ipl::nwc24::Manager::getDlAppId(const NWC24DlTask*, unsigned long*)
.fn getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl, global
/* 81342150 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342154 | 7C 08 02 A6 */	mflr r0
/* 81342158 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134215C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342160 | 7C 7F 1B 78 */	mr r31, r3
/* 81342164 | 7C 83 23 78 */	mr r3, r4
/* 81342168 | 7C A4 2B 78 */	mr r4, r5
/* 8134216C | 48 16 D1 A1 */	bl NWC24GetDlAppId
/* 81342170 | 7C 64 1B 78 */	mr r4, r3
/* 81342174 | 7F E3 FB 78 */	mr r3, r31
/* 81342178 | 38 A0 04 40 */	li r5, 0x440
/* 8134217C | 48 00 1E D5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342180 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342184 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342188 | 7C 08 03 A6 */	mtlr r0
/* 8134218C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342190 | 4E 80 00 20 */	blr
.endfn getDlAppId__Q33ipl5nwc247ManagerFPC11NWC24DlTaskPUl

# .text:0x818 | 0x81342194 | size: 0x44
# ipl::nwc24::Manager::getDlOptOutFlags(NWC24DlTask*, unsigned char*)
.fn getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc, global
/* 81342194 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342198 | 7C 08 02 A6 */	mflr r0
/* 8134219C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813421A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813421A4 | 7C 7F 1B 78 */	mr r31, r3
/* 813421A8 | 7C 83 23 78 */	mr r3, r4
/* 813421AC | 7C A4 2B 78 */	mr r4, r5
/* 813421B0 | 48 16 EE 35 */	bl NWC24GetDlOptOutFlags
/* 813421B4 | 7C 64 1B 78 */	mr r4, r3
/* 813421B8 | 7F E3 FB 78 */	mr r3, r31
/* 813421BC | 38 A0 04 4C */	li r5, 0x44c
/* 813421C0 | 48 00 1E 91 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813421C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813421C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813421CC | 7C 08 03 A6 */	mtlr r0
/* 813421D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813421D4 | 4E 80 00 20 */	blr
.endfn getDlOptOutFlags__Q33ipl5nwc247ManagerFP11NWC24DlTaskPUc

# .text:0x85C | 0x813421D8 | size: 0x40
# ipl::nwc24::Manager::deleteDlTask(NWC24DlTask*)
.fn deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask, global
/* 813421D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813421DC | 7C 08 02 A6 */	mflr r0
/* 813421E0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813421E4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813421E8 | 7C 7F 1B 78 */	mr r31, r3
/* 813421EC | 7C 83 23 78 */	mr r3, r4
/* 813421F0 | 48 16 D9 8D */	bl NWC24DeleteDlTask
/* 813421F4 | 7C 64 1B 78 */	mr r4, r3
/* 813421F8 | 7F E3 FB 78 */	mr r3, r31
/* 813421FC | 38 A0 04 D4 */	li r5, 0x4d4
/* 81342200 | 48 00 1E 51 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342204 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342208 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134220C | 7C 08 03 A6 */	mtlr r0
/* 81342210 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342214 | 4E 80 00 20 */	blr
.endfn deleteDlTask__Q33ipl5nwc247ManagerFP11NWC24DlTask

# .text:0x89C | 0x81342218 | size: 0x6C
# ipl::nwc24::Manager::setDlTableFirst()
.fn setDlTableFirst__Q33ipl5nwc247ManagerFv, global
/* 81342218 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134221C | 7C 08 02 A6 */	mflr r0
/* 81342220 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342224 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342228 | 3B E0 00 00 */	li r31, 0x0
/* 8134222C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81342230 | 7C 7E 1B 78 */	mr r30, r3
/* 81342234 | 4B FF F8 0D */	bl open__Q33ipl5nwc247ManagerFv
/* 81342238 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134223C | 41 82 00 2C */	beq .L_81342268
/* 81342240 | 7F C3 F3 78 */	mr r3, r30
/* 81342244 | 48 00 00 41 */	bl setDlTable__Q33ipl5nwc247ManagerFv
/* 81342248 | 48 15 E0 45 */	bl NWC24CloseMsgLib
/* 8134224C | 7C 64 1B 78 */	mr r4, r3
/* 81342250 | 7F C3 F3 78 */	mr r3, r30
/* 81342254 | 38 A0 00 E9 */	li r5, 0xe9
/* 81342258 | 48 00 1D F9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134225C | 38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81342260 | 48 1E FA 85 */	bl fn_81531CE4
/* 81342264 | 3B E0 00 01 */	li r31, 0x1
.L_81342268:
/* 81342268 | 7F E3 FB 78 */	mr r3, r31
/* 8134226C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342270 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342274 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342278 | 7C 08 03 A6 */	mtlr r0
/* 8134227C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342280 | 4E 80 00 20 */	blr
.endfn setDlTableFirst__Q33ipl5nwc247ManagerFv

# .text:0x908 | 0x81342284 | size: 0xF0
# ipl::nwc24::Manager::setDlTable()
.fn setDlTable__Q33ipl5nwc247ManagerFv, global
/* 81342284 | 94 21 FD D0 */	stwu r1, -0x230(r1)
/* 81342288 | 7C 08 02 A6 */	mflr r0
/* 8134228C | 90 01 02 34 */	stw r0, 0x234(r1)
/* 81342290 | 39 61 02 30 */	addi r11, r1, 0x230
/* 81342294 | 48 2B 72 2D */	bl _savegpr_27
/* 81342298 | 3B A0 00 00 */	li r29, 0x0
/* 8134229C | 3B C3 0A 18 */	addi r30, r3, 0xa18
/* 813422A0 | B3 A1 00 08 */	sth r29, 0x8(r1)
/* 813422A4 | 7C 7B 1B 78 */	mr r27, r3
/* 813422A8 | 7F C3 F3 78 */	mr r3, r30
/* 813422AC | 3B 80 00 00 */	li r28, 0x0
/* 813422B0 | 3B E0 00 00 */	li r31, 0x0
/* 813422B4 | 48 1E F9 55 */	bl fn_81531C08
/* 813422B8 | 38 7B 08 18 */	addi r3, r27, 0x818
/* 813422BC | 38 80 00 00 */	li r4, 0x0
/* 813422C0 | 38 A0 01 E0 */	li r5, 0x1e0
/* 813422C4 | 4B FE E0 71 */	bl memset
/* 813422C8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813422CC | 38 80 00 01 */	li r4, 0x1
/* 813422D0 | 48 16 D1 39 */	bl NWC24IterateDlTask
/* 813422D4 | 48 00 00 78 */	b .L_8134234C
.L_813422D8:
/* 813422D8 | A0 81 00 08 */	lhz r4, 0x8(r1)
/* 813422DC | 38 61 00 10 */	addi r3, r1, 0x10
/* 813422E0 | 48 16 DC 7D */	bl NWC24GetDlTask
/* 813422E4 | 7C 64 1B 78 */	mr r4, r3
/* 813422E8 | 7F 63 DB 78 */	mr r3, r27
/* 813422EC | 38 A0 04 28 */	li r5, 0x428
/* 813422F0 | 48 00 1D 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813422F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813422F8 | 41 82 00 48 */	beq .L_81342340
/* 813422FC | 93 A1 00 0C */	stw r29, 0xc(r1)
/* 81342300 | 38 61 00 10 */	addi r3, r1, 0x10
/* 81342304 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81342308 | 48 16 D0 05 */	bl NWC24GetDlAppId
/* 8134230C | 7C 64 1B 78 */	mr r4, r3
/* 81342310 | 7F 63 DB 78 */	mr r3, r27
/* 81342314 | 38 A0 04 40 */	li r5, 0x440
/* 81342318 | 48 00 1D 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134231C | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 81342320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81342324 | 41 82 00 1C */	beq .L_81342340
/* 81342328 | 2C 1C 00 78 */	cmpwi r28, 0x78
/* 8134232C | 40 80 00 14 */	bge .L_81342340
/* 81342330 | 7C 7B FA 14 */	add r3, r27, r31
/* 81342334 | 3B FF 00 04 */	addi r31, r31, 0x4
/* 81342338 | 90 03 08 18 */	stw r0, 0x818(r3)
/* 8134233C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_81342340:
/* 81342340 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81342344 | 38 80 00 00 */	li r4, 0x0
/* 81342348 | 48 16 D0 C1 */	bl NWC24IterateDlTask
.L_8134234C:
/* 8134234C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342350 | 40 80 FF 88 */	bge .L_813422D8
/* 81342354 | 7F C3 F3 78 */	mr r3, r30
/* 81342358 | 48 1E F9 8D */	bl fn_81531CE4
/* 8134235C | 39 61 02 30 */	addi r11, r1, 0x230
/* 81342360 | 48 2B 71 AD */	bl _restgpr_27
/* 81342364 | 80 01 02 34 */	lwz r0, 0x234(r1)
/* 81342368 | 7C 08 03 A6 */	mtlr r0
/* 8134236C | 38 21 02 30 */	addi r1, r1, 0x230
/* 81342370 | 4E 80 00 20 */	blr
.endfn setDlTable__Q33ipl5nwc247ManagerFv

# .text:0x9F8 | 0x81342374 | size: 0x34
# ipl::nwc24::Manager::isAppDlEnable(unsigned long) const
.fn isAppDlEnable__Q33ipl5nwc247ManagerCFUl, global
/* 81342374 | 38 00 00 78 */	li r0, 0x78
/* 81342378 | 38 A0 00 00 */	li r5, 0x0
/* 8134237C | 7C 09 03 A6 */	mtctr r0
.L_81342380:
/* 81342380 | 7C C3 2A 14 */	add r6, r3, r5
/* 81342384 | 80 06 08 18 */	lwz r0, 0x818(r6)
/* 81342388 | 7C 04 00 40 */	cmplw r4, r0
/* 8134238C | 40 82 00 0C */	bne .L_81342398
/* 81342390 | 38 60 00 01 */	li r3, 0x1
/* 81342394 | 4E 80 00 20 */	blr
.L_81342398:
/* 81342398 | 38 A5 00 04 */	addi r5, r5, 0x4
/* 8134239C | 42 00 FF E4 */	bdnz .L_81342380
/* 813423A0 | 38 60 00 00 */	li r3, 0x0
/* 813423A4 | 4E 80 00 20 */	blr
.endfn isAppDlEnable__Q33ipl5nwc247ManagerCFUl

# .text:0xA2C | 0x813423A8 | size: 0x40
# ipl::nwc24::Manager::doDailyTasks()
.fn doDailyTasks__Q33ipl5nwc247ManagerFv, global
/* 813423A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813423AC | 7C 08 02 A6 */	mflr r0
/* 813423B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813423B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813423B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813423BC | 80 63 09 FC */	lwz r3, 0x9fc(r3)
/* 813423C0 | 48 16 FA 39 */	bl NWC24DoDailyTasks
/* 813423C4 | 7C 64 1B 78 */	mr r4, r3
/* 813423C8 | 7F E3 FB 78 */	mr r3, r31
/* 813423CC | 38 A0 05 23 */	li r5, 0x523
/* 813423D0 | 48 00 1C 81 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813423D4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813423D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813423DC | 7C 08 03 A6 */	mtlr r0
/* 813423E0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813423E4 | 4E 80 00 20 */	blr
.endfn doDailyTasks__Q33ipl5nwc247ManagerFv

# .text:0xA6C | 0x813423E8 | size: 0x3C
# ipl::nwc24::Manager::manageDlTaskListForMenu()
.fn manageDlTaskListForMenu__Q33ipl5nwc247ManagerFv, global
/* 813423E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813423EC | 7C 08 02 A6 */	mflr r0
/* 813423F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813423F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813423F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813423FC | 48 16 DF 91 */	bl NWC24ManageDlTaskListForMenu
/* 81342400 | 7C 64 1B 78 */	mr r4, r3
/* 81342404 | 7F E3 FB 78 */	mr r3, r31
/* 81342408 | 38 A0 05 2D */	li r5, 0x52d
/* 8134240C | 48 00 1C 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342410 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342414 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342418 | 7C 08 03 A6 */	mtlr r0
/* 8134241C | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342420 | 4E 80 00 20 */	blr
.endfn manageDlTaskListForMenu__Q33ipl5nwc247ManagerFv

# .text:0xAA8 | 0x81342424 | size: 0x44
# ipl::nwc24::Manager::setLedPattern(NWC24MsgObj*)
.fn setLedPattern__Q33ipl5nwc247ManagerFP11NWC24MsgObj, global
/* 81342424 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342428 | 7C 08 02 A6 */	mflr r0
/* 8134242C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342430 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342434 | 7C 7F 1B 78 */	mr r31, r3
/* 81342438 | 7C 83 23 78 */	mr r3, r4
/* 8134243C | 38 80 40 01 */	li r4, 0x4001
/* 81342440 | 48 15 F3 45 */	bl NWC24SetMsgLedPattern
/* 81342444 | 7C 64 1B 78 */	mr r4, r3
/* 81342448 | 7F E3 FB 78 */	mr r3, r31
/* 8134244C | 38 A0 05 38 */	li r5, 0x538
/* 81342450 | 48 00 1C 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342454 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342458 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134245C | 7C 08 03 A6 */	mtlr r0
/* 81342460 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342464 | 4E 80 00 20 */	blr
.endfn setLedPattern__Q33ipl5nwc247ManagerFP11NWC24MsgObj

# .text:0xAEC | 0x81342468 | size: 0x40
# ipl::nwc24::Manager::enableLedNotification(int)
.fn enableLedNotification__Q33ipl5nwc247ManagerFi, global
/* 81342468 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134246C | 7C 08 02 A6 */	mflr r0
/* 81342470 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342474 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342478 | 7C 7F 1B 78 */	mr r31, r3
/* 8134247C | 7C 83 23 78 */	mr r3, r4
/* 81342480 | 48 16 F7 91 */	bl NWC24EnableLedNotification
/* 81342484 | 7C 64 1B 78 */	mr r4, r3
/* 81342488 | 7F E3 FB 78 */	mr r3, r31
/* 8134248C | 38 A0 05 43 */	li r5, 0x543
/* 81342490 | 48 00 1B C1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342494 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342498 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134249C | 7C 08 03 A6 */	mtlr r0
/* 813424A0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813424A4 | 4E 80 00 20 */	blr
.endfn enableLedNotification__Q33ipl5nwc247ManagerFi

# .text:0xB2C | 0x813424A8 | size: 0x44
# ipl::nwc24::Manager::checkCHJumpObj(const NWC24CHJumpObj*, unsigned long)
.fn checkCHJumpObj__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjUl, global
/* 813424A8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813424AC | 7C 08 02 A6 */	mflr r0
/* 813424B0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813424B4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813424B8 | 7C 7F 1B 78 */	mr r31, r3
/* 813424BC | 7C 83 23 78 */	mr r3, r4
/* 813424C0 | 7C A4 2B 78 */	mr r4, r5
/* 813424C4 | 48 16 F5 C5 */	bl NWC24CheckCHJumpObj
/* 813424C8 | 7C 64 1B 78 */	mr r4, r3
/* 813424CC | 7F E3 FB 78 */	mr r3, r31
/* 813424D0 | 38 A0 05 4F */	li r5, 0x54f
/* 813424D4 | 48 00 1B 7D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813424D8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813424DC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813424E0 | 7C 08 03 A6 */	mtlr r0
/* 813424E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813424E8 | 4E 80 00 20 */	blr
.endfn checkCHJumpObj__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjUl

# .text:0xB70 | 0x813424EC | size: 0x44
# ipl::nwc24::Manager::getCHJumpTitleId(const NWC24CHJumpObj*, unsigned long long*)
.fn getCHJumpTitleId__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUx, global
/* 813424EC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813424F0 | 7C 08 02 A6 */	mflr r0
/* 813424F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813424F8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813424FC | 7C 7F 1B 78 */	mr r31, r3
/* 81342500 | 7C 83 23 78 */	mr r3, r4
/* 81342504 | 7C A4 2B 78 */	mr r4, r5
/* 81342508 | 48 16 F6 21 */	bl NWC24GetCHJumpTitleId
/* 8134250C | 7C 64 1B 78 */	mr r4, r3
/* 81342510 | 7F E3 FB 78 */	mr r3, r31
/* 81342514 | 38 A0 05 69 */	li r5, 0x569
/* 81342518 | 48 00 1B 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134251C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342520 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 81342524 | 7C 08 03 A6 */	mtlr r0
/* 81342528 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134252C | 4E 80 00 20 */	blr
.endfn getCHJumpTitleId__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUx

# .text:0xBB4 | 0x81342530 | size: 0x48
# ipl::nwc24::Manager::getCHJumpBlockSize(const NWC24CHJumpObj*, unsigned long*, unsigned long)
.fn getCHJumpBlockSize__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUlUl, global
/* 81342530 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342534 | 7C 08 02 A6 */	mflr r0
/* 81342538 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134253C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342540 | 7C 7F 1B 78 */	mr r31, r3
/* 81342544 | 7C 83 23 78 */	mr r3, r4
/* 81342548 | 7C A4 2B 78 */	mr r4, r5
/* 8134254C | 7C C5 33 78 */	mr r5, r6
/* 81342550 | 48 16 F5 F1 */	bl NWC24GetCHJumpBlockSize
/* 81342554 | 7C 64 1B 78 */	mr r4, r3
/* 81342558 | 7F E3 FB 78 */	mr r3, r31
/* 8134255C | 38 A0 05 76 */	li r5, 0x576
/* 81342560 | 48 00 1A F1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342564 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342568 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134256C | 7C 08 03 A6 */	mtlr r0
/* 81342570 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81342574 | 4E 80 00 20 */	blr
.endfn getCHJumpBlockSize__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPUlUl

# .text:0xBFC | 0x81342578 | size: 0x4C
# ipl::nwc24::Manager::getCHJumpBlockData(const NWC24CHJumpObj*, char*, unsigned long, unsigned long)
.fn getCHJumpBlockData__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPcUlUl, global
/* 81342578 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8134257C | 7C 08 02 A6 */	mflr r0
/* 81342580 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81342584 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342588 | 7C 7F 1B 78 */	mr r31, r3
/* 8134258C | 7C 83 23 78 */	mr r3, r4
/* 81342590 | 7C A4 2B 78 */	mr r4, r5
/* 81342594 | 7C C5 33 78 */	mr r5, r6
/* 81342598 | 7C E6 3B 78 */	mr r6, r7
/* 8134259C | 48 16 F5 D5 */	bl NWC24GetCHJumpBlockData
/* 813425A0 | 7C 64 1B 78 */	mr r4, r3
/* 813425A4 | 7F E3 FB 78 */	mr r3, r31
/* 813425A8 | 38 A0 05 84 */	li r5, 0x584
/* 813425AC | 48 00 1A A5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813425B0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813425B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813425B8 | 7C 08 03 A6 */	mtlr r0
/* 813425BC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813425C0 | 4E 80 00 20 */	blr
.endfn getCHJumpBlockData__Q33ipl5nwc247ManagerFPC14NWC24CHJumpObjPcUlUl

# .text:0xC48 | 0x813425C4 | size: 0x5C
# ipl::nwc24::Manager::saveMailNow()
.fn saveMailNow__Q33ipl5nwc247ManagerFv, global
/* 813425C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813425C8 | 7C 08 02 A6 */	mflr r0
/* 813425CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813425D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813425D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813425D8 | 7C 7E 1B 78 */	mr r30, r3
/* 813425DC | 38 63 0A 00 */	addi r3, r3, 0xa00
/* 813425E0 | 48 1E F6 29 */	bl fn_81531C08
/* 813425E4 | 48 16 90 A9 */	bl NWC24iSaveMailNow
/* 813425E8 | 7C 64 1B 78 */	mr r4, r3
/* 813425EC | 7F C3 F3 78 */	mr r3, r30
/* 813425F0 | 38 A0 05 91 */	li r5, 0x591
/* 813425F4 | 48 00 1A 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813425F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813425FC | 38 7E 0A 00 */	addi r3, r30, 0xa00
/* 81342600 | 48 1E F6 E5 */	bl fn_81531CE4
/* 81342604 | 7F E3 FB 78 */	mr r3, r31
/* 81342608 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134260C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342610 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342614 | 7C 08 03 A6 */	mtlr r0
/* 81342618 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134261C | 4E 80 00 20 */	blr
.endfn saveMailNow__Q33ipl5nwc247ManagerFv

# .text:0xCA4 | 0x81342620 | size: 0x50
# ipl::nwc24::Manager::check(unsigned long)
.fn check__Q33ipl5nwc247ManagerFUl, global
/* 81342620 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81342624 | 7C 08 02 A6 */	mflr r0
/* 81342628 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8134262C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 81342630 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 81342634 | 7C 7E 1B 78 */	mr r30, r3
/* 81342638 | 7C 83 23 78 */	mr r3, r4
/* 8134263C | 48 15 DE 35 */	bl NWC24Check
/* 81342640 | 7C 7F 1B 78 */	mr r31, r3
/* 81342644 | 7F C3 F3 78 */	mr r3, r30
/* 81342648 | 7F E4 FB 78 */	mr r4, r31
/* 8134264C | 38 A0 05 A1 */	li r5, 0x5a1
/* 81342650 | 48 00 1A 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342654 | 7F E3 FB 78 */	mr r3, r31
/* 81342658 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8134265C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 81342660 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81342664 | 7C 08 03 A6 */	mtlr r0
/* 81342668 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134266C | 4E 80 00 20 */	blr
.endfn check__Q33ipl5nwc247ManagerFUl

# .text:0xCF4 | 0x81342670 | size: 0xFB4
# ipl::nwc24::Manager::receive()
.fn receive__Q33ipl5nwc247ManagerFv, global
/* 81342670 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 81342674 | 7C 2C 0B 78 */	mr r12, r1
/* 81342678 | 21 6B F8 A0 */	subfic r11, r11, -0x760
/* 8134267C | 7C 21 59 6E */	stwux r1, r1, r11
/* 81342680 | 7C 08 02 A6 */	mflr r0
/* 81342684 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 81342688 | DB EC FF F0 */	stfd f31, -0x10(r12)
/* 8134268C | F3 EC 0F F8 */	psq_st f31, -0x8(r12), 0, qr0
/* 81342690 | 39 6C FF F0 */	subi r11, r12, 0x10
/* 81342694 | 48 2B 6D F9 */	bl _savegpr_14
/* 81342698 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8134269C | 3F 20 81 63 */	lis r25, lbl_81635218@ha
/* 813426A0 | 3B 44 90 08 */	addi r26, r4, smArg__Q23ipl6System@l
/* 813426A4 | 7C 6F 1B 78 */	mr r15, r3
/* 813426A8 | 83 1A 00 38 */	lwz r24, 0x38(r26)
/* 813426AC | 3B 39 52 18 */	addi r25, r25, lbl_81635218@l
/* 813426B0 | 38 80 00 04 */	li r4, 0x4
/* 813426B4 | 81 98 00 00 */	lwz r12, 0x0(r24)
/* 813426B8 | 7F 03 C3 78 */	mr r3, r24
/* 813426BC | 81 8C 00 24 */	lwz r12, 0x24(r12)
/* 813426C0 | 7D 89 03 A6 */	mtctr r12
/* 813426C4 | 4E 80 04 21 */	bctrl
/* 813426C8 | 7C 64 1B 78 */	mr r4, r3
/* 813426CC | 38 79 00 00 */	addi r3, r25, 0x0
/* 813426D0 | 4C C6 31 82 */	crclr cr1eq
/* 813426D4 | 48 1E BF CD */	bl OSReport
/* 813426D8 | 3D C0 81 09 */	lis r14, smArg__Q33ipl5nwc247Manager@ha
/* 813426DC | 38 80 01 00 */	li r4, 0x100
/* 813426E0 | 38 6E 96 20 */	addi r3, r14, smArg__Q33ipl5nwc247Manager@l
/* 813426E4 | 48 16 88 15 */	bl NWC24iGetSchedulerStat
/* 813426E8 | 39 CE 96 20 */	addi r14, r14, smArg__Q33ipl5nwc247Manager@l
/* 813426EC | 38 79 00 1D */	addi r3, r25, 0x1d
/* 813426F0 | 80 8E 00 04 */	lwz r4, 0x4(r14)
/* 813426F4 | 4C C6 31 82 */	crclr cr1eq
/* 813426F8 | 48 1E BF A9 */	bl OSReport
/* 813426FC | 80 8E 00 08 */	lwz r4, 0x8(r14)
/* 81342700 | 38 79 00 2C */	addi r3, r25, 0x2c
/* 81342704 | 4C C6 31 82 */	crclr cr1eq
/* 81342708 | 48 1E BF 99 */	bl OSReport
/* 8134270C | 80 8E 00 0C */	lwz r4, 0xc(r14)
/* 81342710 | 38 79 00 3E */	addi r3, r25, 0x3e
/* 81342714 | 4C C6 31 82 */	crclr cr1eq
/* 81342718 | 48 1E BF 89 */	bl OSReport
/* 8134271C | 80 8E 00 10 */	lwz r4, 0x10(r14)
/* 81342720 | 38 79 00 4F */	addi r3, r25, 0x4f
/* 81342724 | 4C C6 31 82 */	crclr cr1eq
/* 81342728 | 48 1E BF 79 */	bl OSReport
/* 8134272C | 80 8E 00 14 */	lwz r4, 0x14(r14)
/* 81342730 | 38 79 00 60 */	addi r3, r25, 0x60
/* 81342734 | 4C C6 31 82 */	crclr cr1eq
/* 81342738 | 48 1E BF 69 */	bl OSReport
/* 8134273C | 80 8E 00 18 */	lwz r4, 0x18(r14)
/* 81342740 | 38 79 00 6C */	addi r3, r25, 0x6c
/* 81342744 | 4C C6 31 82 */	crclr cr1eq
/* 81342748 | 48 1E BF 59 */	bl OSReport
/* 8134274C | 80 8E 00 1C */	lwz r4, 0x1c(r14)
/* 81342750 | 38 79 00 7D */	addi r3, r25, 0x7d
/* 81342754 | 4C C6 31 82 */	crclr cr1eq
/* 81342758 | 48 1E BF 49 */	bl OSReport
/* 8134275C | 80 8E 00 20 */	lwz r4, 0x20(r14)
/* 81342760 | 38 79 00 8E */	addi r3, r25, 0x8e
/* 81342764 | 4C C6 31 82 */	crclr cr1eq
/* 81342768 | 48 1E BF 39 */	bl OSReport
/* 8134276C | 80 8E 00 24 */	lwz r4, 0x24(r14)
/* 81342770 | 38 79 00 9F */	addi r3, r25, 0x9f
/* 81342774 | 4C C6 31 82 */	crclr cr1eq
/* 81342778 | 48 1E BF 29 */	bl OSReport
/* 8134277C | 80 8E 00 28 */	lwz r4, 0x28(r14)
/* 81342780 | 38 79 00 B2 */	addi r3, r25, 0xb2
/* 81342784 | 4C C6 31 82 */	crclr cr1eq
/* 81342788 | 48 1E BF 19 */	bl OSReport
/* 8134278C | 80 8E 00 2C */	lwz r4, 0x2c(r14)
/* 81342790 | 38 79 00 C5 */	addi r3, r25, 0xc5
/* 81342794 | 4C C6 31 82 */	crclr cr1eq
/* 81342798 | 48 1E BF 09 */	bl OSReport
/* 8134279C | 80 8E 00 30 */	lwz r4, 0x30(r14)
/* 813427A0 | 38 79 00 DA */	addi r3, r25, 0xda
/* 813427A4 | 4C C6 31 82 */	crclr cr1eq
/* 813427A8 | 48 1E BE F9 */	bl OSReport
/* 813427AC | 80 8E 00 34 */	lwz r4, 0x34(r14)
/* 813427B0 | 38 79 00 EC */	addi r3, r25, 0xec
/* 813427B4 | 4C C6 31 82 */	crclr cr1eq
/* 813427B8 | 48 1E BE E9 */	bl OSReport
/* 813427BC | 80 8E 00 38 */	lwz r4, 0x38(r14)
/* 813427C0 | 38 79 00 FE */	addi r3, r25, 0xfe
/* 813427C4 | 4C C6 31 82 */	crclr cr1eq
/* 813427C8 | 48 1E BE D9 */	bl OSReport
/* 813427CC | 80 8E 00 3C */	lwz r4, 0x3c(r14)
/* 813427D0 | 38 79 01 10 */	addi r3, r25, 0x110
/* 813427D4 | 4C C6 31 82 */	crclr cr1eq
/* 813427D8 | 48 1E BE C9 */	bl OSReport
/* 813427DC | 80 8E 00 40 */	lwz r4, 0x40(r14)
/* 813427E0 | 38 79 01 26 */	addi r3, r25, 0x126
/* 813427E4 | 4C C6 31 82 */	crclr cr1eq
/* 813427E8 | 48 1E BE B9 */	bl OSReport
/* 813427EC | 7D E3 7B 78 */	mr r3, r15
/* 813427F0 | 4B FF F2 51 */	bl open__Q33ipl5nwc247ManagerFv
/* 813427F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813427F8 | 41 82 0E 04 */	beq .L_813435FC
/* 813427FC | 3B 60 00 01 */	li r27, 0x1
/* 81342800 | 38 61 00 A8 */	addi r3, r1, 0xa8
/* 81342804 | 9B 6F 0A 31 */	stb r27, 0xa31(r15)
/* 81342808 | 48 15 CB 29 */	bl NWC24GetMyUserId
/* 8134280C | 7C 64 1B 78 */	mr r4, r3
/* 81342810 | 7D E3 7B 78 */	mr r3, r15
/* 81342814 | 38 A0 03 89 */	li r5, 0x389
/* 81342818 | 48 00 18 39 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134281C | 3B 80 00 00 */	li r28, 0x0
/* 81342820 | 38 81 00 88 */	addi r4, r1, 0x88
/* 81342824 | 93 81 00 88 */	stw r28, 0x88(r1)
/* 81342828 | 38 60 00 01 */	li r3, 0x1
/* 8134282C | 48 15 F2 95 */	bl NWC24GetNumMsgs
/* 81342830 | 7C 64 1B 78 */	mr r4, r3
/* 81342834 | 7D E3 7B 78 */	mr r3, r15
/* 81342838 | 38 A0 01 EC */	li r5, 0x1ec
/* 8134283C | 48 00 18 15 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342840 | 38 8F 00 18 */	addi r4, r15, 0x18
/* 81342844 | 38 60 00 01 */	li r3, 0x1
/* 81342848 | 38 A0 01 00 */	li r5, 0x100
/* 8134284C | 48 15 F6 61 */	bl NWC24GetMsgIdList
/* 81342850 | 7C 64 1B 78 */	mr r4, r3
/* 81342854 | 7D E3 7B 78 */	mr r3, r15
/* 81342858 | 38 A0 01 F9 */	li r5, 0x1f9
/* 8134285C | 48 00 17 F5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342860 | 38 6F 04 18 */	addi r3, r15, 0x418
/* 81342864 | 38 80 00 00 */	li r4, 0x0
/* 81342868 | 38 A0 04 00 */	li r5, 0x400
/* 8134286C | 4B FE DA C9 */	bl memset
/* 81342870 | 3B A1 00 94 */	addi r29, r1, 0x94
/* 81342874 | 3A E0 00 00 */	li r23, 0x0
/* 81342878 | 39 C0 00 00 */	li r14, 0x0
/* 8134287C | 3A A0 00 00 */	li r21, 0x0
/* 81342880 | 3B E0 00 00 */	li r31, 0x0
/* 81342884 | 48 00 0D 38 */	b .L_813435BC
.L_81342888:
/* 81342888 | 3A 80 00 00 */	li r20, 0x0
/* 8134288C | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81342890 | 92 8F 00 04 */	stw r20, 0x4(r15)
/* 81342894 | 38 80 00 00 */	li r4, 0x0
/* 81342898 | 38 A0 00 18 */	li r5, 0x18
/* 8134289C | 92 8F 00 00 */	stw r20, 0x0(r15)
/* 813428A0 | 92 8F 00 0C */	stw r20, 0xc(r15)
/* 813428A4 | 92 8F 00 08 */	stw r20, 0x8(r15)
/* 813428A8 | 4B FE DA 8D */	bl memset
/* 813428AC | 7C 8F FA 14 */	add r4, r15, r31
/* 813428B0 | 38 61 03 50 */	addi r3, r1, 0x350
/* 813428B4 | 80 A4 00 18 */	lwz r5, 0x18(r4)
/* 813428B8 | 38 80 00 01 */	li r4, 0x1
/* 813428BC | 48 15 F2 89 */	bl NWC24GetMsgObj
/* 813428C0 | 7C 64 1B 78 */	mr r4, r3
/* 813428C4 | 7D E3 7B 78 */	mr r3, r15
/* 813428C8 | 38 A0 02 06 */	li r5, 0x206
/* 813428CC | 48 00 17 85 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813428D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813428D4 | 41 82 0C E0 */	beq .L_813435B4
/* 813428D8 | 38 61 03 50 */	addi r3, r1, 0x350
/* 813428DC | 38 81 00 84 */	addi r4, r1, 0x84
/* 813428E0 | 48 15 EF 71 */	bl NWC24GetMsgType
/* 813428E4 | 7C 64 1B 78 */	mr r4, r3
/* 813428E8 | 7D E3 7B 78 */	mr r3, r15
/* 813428EC | 38 A0 02 12 */	li r5, 0x212
/* 813428F0 | 48 00 17 61 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813428F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813428F8 | 41 82 0C BC */	beq .L_813435B4
/* 813428FC | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 81342900 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 81342904 | 41 82 00 14 */	beq .L_81342918
/* 81342908 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134290C | 41 82 00 0C */	beq .L_81342918
/* 81342910 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81342914 | 40 82 0C 50 */	bne .L_81343564
.L_81342918:
/* 81342918 | 38 61 02 50 */	addi r3, r1, 0x250
/* 8134291C | 38 80 00 00 */	li r4, 0x0
/* 81342920 | 38 A0 01 00 */	li r5, 0x100
/* 81342924 | 4B FE DA 11 */	bl memset
/* 81342928 | 80 01 00 84 */	lwz r0, 0x84(r1)
/* 8134292C | 2C 00 00 04 */	cmpwi r0, 0x4
/* 81342930 | 40 82 00 C0 */	bne .L_813429F0
/* 81342934 | 93 81 00 80 */	stw r28, 0x80(r1)
/* 81342938 | 38 61 03 50 */	addi r3, r1, 0x350
/* 8134293C | 38 81 02 50 */	addi r4, r1, 0x250
/* 81342940 | 38 A0 01 00 */	li r5, 0x100
/* 81342944 | 48 16 64 91 */	bl NWC24ReadMsgFromAddr
/* 81342948 | 7C 64 1B 78 */	mr r4, r3
/* 8134294C | 7D E3 7B 78 */	mr r3, r15
/* 81342950 | 38 A0 03 33 */	li r5, 0x333
/* 81342954 | 48 00 17 F1 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342958 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134295C | 40 82 00 3C */	bne .L_81342998
/* 81342960 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342964 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342968 | 41 81 00 0C */	bgt .L_81342974
/* 8134296C | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342970 | 40 80 0B 68 */	bge .L_813434D8
.L_81342974:
/* 81342974 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342978 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 8134297C | 41 82 0B 5C */	beq .L_813434D8
/* 81342980 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342984 | 41 82 0B 54 */	beq .L_813434D8
/* 81342988 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 8134298C | 41 82 0B 4C */	beq .L_813434D8
/* 81342990 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342994 | 41 82 0B 44 */	beq .L_813434D8
.L_81342998:
/* 81342998 | 38 61 02 50 */	addi r3, r1, 0x250
/* 8134299C | 38 81 00 80 */	addi r4, r1, 0x80
/* 813429A0 | 3A 60 00 02 */	li r19, 0x2
/* 813429A4 | 48 16 A9 A5 */	bl NWC24SearchFriendInfoByAddr
/* 813429A8 | 7C 64 1B 78 */	mr r4, r3
/* 813429AC | 7D E3 7B 78 */	mr r3, r15
/* 813429B0 | 38 A0 03 A4 */	li r5, 0x3a4
/* 813429B4 | 48 00 16 9D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813429B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813429BC | 41 82 00 D4 */	beq .L_81342A90
/* 813429C0 | 80 81 00 80 */	lwz r4, 0x80(r1)
/* 813429C4 | 38 61 05 A0 */	addi r3, r1, 0x5a0
/* 813429C8 | 48 16 9C E1 */	bl NWC24ReadFriendInfo
/* 813429CC | 7C 64 1B 78 */	mr r4, r3
/* 813429D0 | 7D E3 7B 78 */	mr r3, r15
/* 813429D4 | 38 A0 03 BD */	li r5, 0x3bd
/* 813429D8 | 48 00 16 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813429DC | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 813429E0 | 38 81 05 A8 */	addi r4, r1, 0x5a8
/* 813429E4 | 38 A0 00 0C */	li r5, 0xc
/* 813429E8 | 48 2C 5C FD */	bl fn_816086E4
/* 813429EC | 48 00 00 A4 */	b .L_81342A90
.L_813429F0:
/* 813429F0 | 93 81 00 7C */	stw r28, 0x7c(r1)
/* 813429F4 | 38 61 03 50 */	addi r3, r1, 0x350
/* 813429F8 | 38 81 02 50 */	addi r4, r1, 0x250
/* 813429FC | 48 15 F0 21 */	bl NWC24GetMsgFromId
/* 81342A00 | 7C 64 1B 78 */	mr r4, r3
/* 81342A04 | 7D E3 7B 78 */	mr r3, r15
/* 81342A08 | 38 A0 02 4E */	li r5, 0x24e
/* 81342A0C | 48 00 16 45 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A10 | 80 81 02 50 */	lwz r4, 0x250(r1)
/* 81342A14 | 80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 81342A18 | 80 A1 02 54 */	lwz r5, 0x254(r1)
/* 81342A1C | 80 61 00 AC */	lwz r3, 0xac(r1)
/* 81342A20 | 7C 80 02 78 */	xor r0, r4, r0
/* 81342A24 | 7C A3 1A 78 */	xor r3, r5, r3
/* 81342A28 | 7C 60 03 79 */	or. r0, r3, r0
/* 81342A2C | 40 82 00 0C */	bne .L_81342A38
/* 81342A30 | 3A 60 00 00 */	li r19, 0x0
/* 81342A34 | 48 00 00 08 */	b .L_81342A3C
.L_81342A38:
/* 81342A38 | 3A 60 00 01 */	li r19, 0x1
.L_81342A3C:
/* 81342A3C | 80 61 02 50 */	lwz r3, 0x250(r1)
/* 81342A40 | 38 A1 00 7C */	addi r5, r1, 0x7c
/* 81342A44 | 80 81 02 54 */	lwz r4, 0x254(r1)
/* 81342A48 | 48 16 A8 41 */	bl NWC24SearchFriendInfoById
/* 81342A4C | 7C 64 1B 78 */	mr r4, r3
/* 81342A50 | 7D E3 7B 78 */	mr r3, r15
/* 81342A54 | 38 A0 03 B0 */	li r5, 0x3b0
/* 81342A58 | 48 00 15 F9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342A60 | 41 82 00 30 */	beq .L_81342A90
/* 81342A64 | 80 81 00 7C */	lwz r4, 0x7c(r1)
/* 81342A68 | 38 61 04 60 */	addi r3, r1, 0x460
/* 81342A6C | 48 16 9C 3D */	bl NWC24ReadFriendInfo
/* 81342A70 | 7C 64 1B 78 */	mr r4, r3
/* 81342A74 | 7D E3 7B 78 */	mr r3, r15
/* 81342A78 | 38 A0 03 BD */	li r5, 0x3bd
/* 81342A7C | 48 00 15 D5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342A80 | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 81342A84 | 38 81 04 68 */	addi r4, r1, 0x468
/* 81342A88 | 38 A0 00 0C */	li r5, 0xc
/* 81342A8C | 48 2C 5C 59 */	bl fn_816086E4
.L_81342A90:
/* 81342A90 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342A94 | 38 81 00 78 */	addi r4, r1, 0x78
/* 81342A98 | 48 15 EF 65 */	bl NWC24GetMsgAppId
/* 81342A9C | 7C 64 1B 78 */	mr r4, r3
/* 81342AA0 | 7D E3 7B 78 */	mr r3, r15
/* 81342AA4 | 38 A0 02 1E */	li r5, 0x21e
/* 81342AA8 | 48 00 15 A9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342AAC | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342AB0 | 38 81 00 46 */	addi r4, r1, 0x46
/* 81342AB4 | 48 15 EF 59 */	bl NWC24GetMsgGroupId
/* 81342AB8 | 7C 64 1B 78 */	mr r4, r3
/* 81342ABC | 7D E3 7B 78 */	mr r3, r15
/* 81342AC0 | 38 A0 02 2A */	li r5, 0x22a
/* 81342AC4 | 48 00 15 8D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342AC8 | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81342ACC | 38 79 01 31 */	addi r3, r25, 0x131
/* 81342AD0 | A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 81342AD4 | 4C C6 31 82 */	crclr cr1eq
/* 81342AD8 | 48 1E BB C9 */	bl OSReport
/* 81342ADC | 80 81 00 78 */	lwz r4, 0x78(r1)
/* 81342AE0 | 7D E3 7B 78 */	mr r3, r15
/* 81342AE4 | A0 A1 00 46 */	lhz r5, 0x46(r1)
/* 81342AE8 | 48 00 14 91 */	bl is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs
/* 81342AEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342AF0 | 41 82 09 E8 */	beq .L_813434D8
/* 81342AF4 | 93 81 00 74 */	stw r28, 0x74(r1)
/* 81342AF8 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342AFC | 38 81 00 74 */	addi r4, r1, 0x74
/* 81342B00 | 48 16 60 C1 */	bl NWC24ReadMsgMBUpdateSW
/* 81342B04 | 7C 64 1B 78 */	mr r4, r3
/* 81342B08 | 7D E3 7B 78 */	mr r3, r15
/* 81342B0C | 38 A0 03 65 */	li r5, 0x365
/* 81342B10 | 48 00 16 35 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342B14 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B18 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342B1C | 41 81 00 0C */	bgt .L_81342B28
/* 81342B20 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342B24 | 40 80 09 B4 */	bge .L_813434D8
.L_81342B28:
/* 81342B28 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B2C | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342B30 | 41 82 09 A8 */	beq .L_813434D8
/* 81342B34 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342B38 | 41 82 09 A0 */	beq .L_813434D8
/* 81342B3C | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342B40 | 41 82 09 98 */	beq .L_813434D8
/* 81342B44 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342B48 | 41 82 09 90 */	beq .L_813434D8
/* 81342B4C | 80 C1 00 74 */	lwz r6, 0x74(r1)
/* 81342B50 | 38 81 00 70 */	addi r4, r1, 0x70
/* 81342B54 | 93 81 00 70 */	stw r28, 0x70(r1)
/* 81342B58 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 81342B5C | 30 06 FF FF */	subic r0, r6, 0x1
/* 81342B60 | 7C 00 31 10 */	subfe r0, r0, r6
/* 81342B64 | 93 81 00 48 */	stw r28, 0x48(r1)
/* 81342B68 | 7C 66 00 38 */	and r6, r3, r0
/* 81342B6C | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342B70 | 30 06 FF FF */	subic r0, r6, 0x1
/* 81342B74 | 7E 00 31 10 */	subfe r16, r0, r6
/* 81342B78 | 48 16 61 29 */	bl NWC24ReadMsgMBOptOutFlag
/* 81342B7C | 7C 64 1B 78 */	mr r4, r3
/* 81342B80 | 7D E3 7B 78 */	mr r3, r15
/* 81342B84 | 38 A0 03 72 */	li r5, 0x372
/* 81342B88 | 48 00 15 BD */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342B8C | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342B90 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342B94 | 41 81 00 0C */	bgt .L_81342BA0
/* 81342B98 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342B9C | 40 80 09 3C */	bge .L_813434D8
.L_81342BA0:
/* 81342BA0 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342BA4 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342BA8 | 41 82 09 30 */	beq .L_813434D8
/* 81342BAC | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342BB0 | 41 82 09 28 */	beq .L_813434D8
/* 81342BB4 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342BB8 | 41 82 09 20 */	beq .L_813434D8
/* 81342BBC | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342BC0 | 41 82 09 18 */	beq .L_813434D8
/* 81342BC4 | 80 81 00 70 */	lwz r4, 0x70(r1)
/* 81342BC8 | 80 A1 00 78 */	lwz r5, 0x78(r1)
/* 81342BCC | 30 04 FF FF */	subic r0, r4, 0x1
/* 81342BD0 | 7C 00 21 10 */	subfe r0, r0, r4
/* 81342BD4 | 3C 85 B7 BF */	subis r4, r5, 0x4841
/* 81342BD8 | 7C 63 00 38 */	and r3, r3, r0
/* 81342BDC | 30 03 FF FF */	subic r0, r3, 0x1
/* 81342BE0 | 28 04 43 41 */	cmplwi r4, 0x4341
/* 81342BE4 | 7C 00 19 10 */	subfe r0, r0, r3
/* 81342BE8 | 90 01 06 E8 */	stw r0, 0x6e8(r1)
/* 81342BEC | 40 82 00 5C */	bne .L_81342C48
/* 81342BF0 | 38 61 02 02 */	addi r3, r1, 0x202
/* 81342BF4 | 38 81 03 50 */	addi r4, r1, 0x350
/* 81342BF8 | 48 1A 67 61 */	bl RFLiNWC24Msg2CharData
/* 81342BFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342C00 | 41 82 00 24 */	beq .L_81342C24
/* 81342C04 | 80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342C08 | 38 81 02 02 */	addi r4, r1, 0x202
/* 81342C0C | 4B FF C0 B5 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81342C10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342C14 | 41 82 00 10 */	beq .L_81342C24
/* 81342C18 | 80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342C1C | 38 81 03 50 */	addi r4, r1, 0x350
/* 81342C20 | 4B FF C1 01 */	bl addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj
.L_81342C24:
/* 81342C24 | 7C 8F FA 14 */	add r4, r15, r31
/* 81342C28 | 38 60 00 01 */	li r3, 0x1
/* 81342C2C | 80 84 00 18 */	lwz r4, 0x18(r4)
/* 81342C30 | 48 15 F4 E1 */	bl NWC24DeleteMsg
/* 81342C34 | 7C 64 1B 78 */	mr r4, r3
/* 81342C38 | 7D E3 7B 78 */	mr r3, r15
/* 81342C3C | 38 A0 03 7E */	li r5, 0x37e
/* 81342C40 | 48 00 14 11 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342C44 | 48 00 09 70 */	b .L_813435B4
.L_81342C48:
/* 81342C48 | 28 04 45 41 */	cmplwi r4, 0x4541
/* 81342C4C | 41 82 00 0C */	beq .L_81342C58
/* 81342C50 | 28 05 00 02 */	cmplwi r5, 0x2
/* 81342C54 | 40 82 00 44 */	bne .L_81342C98
.L_81342C58:
/* 81342C58 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 81342C5C | 41 82 00 0C */	beq .L_81342C68
/* 81342C60 | 3A C0 00 03 */	li r22, 0x3
/* 81342C64 | 48 00 00 48 */	b .L_81342CAC
.L_81342C68:
/* 81342C68 | 80 81 02 50 */	lwz r4, 0x250(r1)
/* 81342C6C | 80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 81342C70 | 80 A1 02 54 */	lwz r5, 0x254(r1)
/* 81342C74 | 80 61 00 AC */	lwz r3, 0xac(r1)
/* 81342C78 | 7C 80 02 78 */	xor r0, r4, r0
/* 81342C7C | 7C A3 1A 78 */	xor r3, r5, r3
/* 81342C80 | 7C 60 03 79 */	or. r0, r3, r0
/* 81342C84 | 40 82 00 0C */	bne .L_81342C90
/* 81342C88 | 3A C0 00 00 */	li r22, 0x0
/* 81342C8C | 48 00 00 20 */	b .L_81342CAC
.L_81342C90:
/* 81342C90 | 3A C0 00 01 */	li r22, 0x1
/* 81342C94 | 48 00 00 18 */	b .L_81342CAC
.L_81342C98:
/* 81342C98 | 2C 10 00 00 */	cmpwi r16, 0x0
/* 81342C9C | 41 82 00 0C */	beq .L_81342CA8
/* 81342CA0 | 3A C0 00 03 */	li r22, 0x3
/* 81342CA4 | 48 00 00 08 */	b .L_81342CAC
.L_81342CA8:
/* 81342CA8 | 3A C0 00 01 */	li r22, 0x1
.L_81342CAC:
/* 81342CAC | 93 81 00 6C */	stw r28, 0x6c(r1)
/* 81342CB0 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342CB4 | 38 81 00 6C */	addi r4, r1, 0x6c
/* 81342CB8 | 48 16 5C 89 */	bl NWC24ReadMsgMBNoReply
/* 81342CBC | 7C 64 1B 78 */	mr r4, r3
/* 81342CC0 | 7D E3 7B 78 */	mr r3, r15
/* 81342CC4 | 38 A0 03 3F */	li r5, 0x33f
/* 81342CC8 | 48 00 14 7D */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342CCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342CD0 | 40 82 00 3C */	bne .L_81342D0C
/* 81342CD4 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342CD8 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342CDC | 41 81 00 0C */	bgt .L_81342CE8
/* 81342CE0 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342CE4 | 40 80 07 F4 */	bge .L_813434D8
.L_81342CE8:
/* 81342CE8 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342CEC | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342CF0 | 41 82 07 E8 */	beq .L_813434D8
/* 81342CF4 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342CF8 | 41 82 07 E0 */	beq .L_813434D8
/* 81342CFC | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342D00 | 41 82 07 D8 */	beq .L_813434D8
/* 81342D04 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342D08 | 41 82 07 D0 */	beq .L_813434D8
.L_81342D0C:
/* 81342D0C | 9B 81 00 42 */	stb r28, 0x42(r1)
/* 81342D10 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342D14 | 38 81 00 42 */	addi r4, r1, 0x42
/* 81342D18 | 48 16 5D C1 */	bl NWC24ReadMsgMBDelay
/* 81342D1C | 7C 64 1B 78 */	mr r4, r3
/* 81342D20 | 7D E3 7B 78 */	mr r3, r15
/* 81342D24 | 38 A0 03 4B */	li r5, 0x34b
/* 81342D28 | 48 00 14 1D */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342D2C | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342D30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81342D34 | 40 82 00 98 */	bne .L_81342DCC
/* 81342D38 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342D3C | 38 81 01 40 */	addi r4, r1, 0x140
/* 81342D40 | 48 15 ED 09 */	bl NWC24GetMsgDate
/* 81342D44 | 7C 64 1B 78 */	mr r4, r3
/* 81342D48 | 7D E3 7B 78 */	mr r3, r15
/* 81342D4C | 38 A0 02 80 */	li r5, 0x280
/* 81342D50 | 48 00 13 01 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342D54 | 38 61 01 18 */	addi r3, r1, 0x118
/* 81342D58 | 48 15 07 51 */	bl NETGetUniversalCalendar
/* 81342D5C | 38 61 01 18 */	addi r3, r1, 0x118
/* 81342D60 | 48 1F 33 CD */	bl OSCalendarTimeToTicks
/* 81342D64 | 7C 71 1B 78 */	mr r17, r3
/* 81342D68 | 7C 90 23 78 */	mr r16, r4
/* 81342D6C | 38 61 01 40 */	addi r3, r1, 0x140
/* 81342D70 | 48 1F 33 BD */	bl OSCalendarTimeToTicks
/* 81342D74 | 88 C1 00 42 */	lbz r6, 0x42(r1)
/* 81342D78 | 3C A0 80 00 */	lis r5, 0x8000
/* 81342D7C | 80 A5 00 F8 */	lwz r5, 0xf8(r5)
/* 81342D80 | 6E 20 80 00 */	xoris r0, r17, 0x8000
/* 81342D84 | 1D 06 0E 10 */	mulli r8, r6, 0xe10
/* 81342D88 | 54 A9 F0 BE */	srwi r9, r5, 2
/* 81342D8C | 7C C9 40 16 */	mulhwu r6, r9, r8
/* 81342D90 | 7D 05 FE 70 */	srawi r5, r8, 31
/* 81342D94 | 7C FC 41 D6 */	mullw r7, r28, r8
/* 81342D98 | 7C E6 3A 14 */	add r7, r6, r7
/* 81342D9C | 7C C9 29 D6 */	mullw r6, r9, r5
/* 81342DA0 | 7D 09 41 D6 */	mullw r8, r9, r8
/* 81342DA4 | 7C E7 32 14 */	add r7, r7, r6
/* 81342DA8 | 7C A4 40 14 */	addc r5, r4, r8
/* 81342DAC | 7C 63 39 14 */	adde r3, r3, r7
/* 81342DB0 | 6C 64 80 00 */	xoris r4, r3, 0x8000
/* 81342DB4 | 7C 65 80 10 */	subfc r3, r5, r16
/* 81342DB8 | 7C 84 01 10 */	subfe r4, r4, r0
/* 81342DBC | 7C 80 01 10 */	subfe r4, r0, r0
/* 81342DC0 | 7C 84 00 D1 */	neg. r4, r4
/* 81342DC4 | 40 82 07 F0 */	bne .L_813435B4
/* 81342DC8 | 48 00 00 38 */	b .L_81342E00
.L_81342DCC:
/* 81342DCC | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342DD0 | 41 81 00 0C */	bgt .L_81342DDC
/* 81342DD4 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342DD8 | 40 80 07 00 */	bge .L_813434D8
.L_81342DDC:
/* 81342DDC | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342DE0 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342DE4 | 41 82 06 F4 */	beq .L_813434D8
/* 81342DE8 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342DEC | 41 82 06 EC */	beq .L_813434D8
/* 81342DF0 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342DF4 | 41 82 06 E4 */	beq .L_813434D8
/* 81342DF8 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342DFC | 41 82 06 DC */	beq .L_813434D8
.L_81342E00:
/* 81342E00 | 3A 40 00 00 */	li r18, 0x0
/* 81342E04 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342E08 | B2 41 00 44 */	sth r18, 0x44(r1)
/* 81342E0C | 38 81 00 44 */	addi r4, r1, 0x44
/* 81342E10 | 38 A1 00 41 */	addi r5, r1, 0x41
/* 81342E14 | 38 C1 00 40 */	addi r6, r1, 0x40
/* 81342E18 | 9A 41 00 41 */	stb r18, 0x41(r1)
/* 81342E1C | 9A 41 00 40 */	stb r18, 0x40(r1)
/* 81342E20 | 48 16 5B B1 */	bl NWC24ReadMsgMBRegDate
/* 81342E24 | 7C 64 1B 78 */	mr r4, r3
/* 81342E28 | 7D E3 7B 78 */	mr r3, r15
/* 81342E2C | 38 A0 03 59 */	li r5, 0x359
/* 81342E30 | 48 00 13 15 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342E34 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342E38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81342E3C | 40 82 00 34 */	bne .L_81342E70
/* 81342E40 | 3A 40 00 01 */	li r18, 0x1
/* 81342E44 | 48 1F 2E 3D */	bl OSGetTime
/* 81342E48 | 38 A1 00 F0 */	addi r5, r1, 0xf0
/* 81342E4C | 48 1F 31 19 */	bl OSTicksToCalendarTime
/* 81342E50 | 88 61 00 41 */	lbz r3, 0x41(r1)
/* 81342E54 | A0 81 00 44 */	lhz r4, 0x44(r1)
/* 81342E58 | 88 01 00 40 */	lbz r0, 0x40(r1)
/* 81342E5C | 38 63 FF FF */	subi r3, r3, 0x1
/* 81342E60 | 90 81 01 04 */	stw r4, 0x104(r1)
/* 81342E64 | 90 61 01 00 */	stw r3, 0x100(r1)
/* 81342E68 | 90 01 00 FC */	stw r0, 0xfc(r1)
/* 81342E6C | 48 00 00 38 */	b .L_81342EA4
.L_81342E70:
/* 81342E70 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342E74 | 41 81 00 0C */	bgt .L_81342E80
/* 81342E78 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342E7C | 40 80 06 5C */	bge .L_813434D8
.L_81342E80:
/* 81342E80 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342E84 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342E88 | 41 82 06 50 */	beq .L_813434D8
/* 81342E8C | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342E90 | 41 82 06 48 */	beq .L_813434D8
/* 81342E94 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342E98 | 41 82 06 40 */	beq .L_813434D8
/* 81342E9C | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342EA0 | 41 82 06 38 */	beq .L_813434D8
.L_81342EA4:
/* 81342EA4 | 38 61 01 B2 */	addi r3, r1, 0x1b2
/* 81342EA8 | 38 80 00 00 */	li r4, 0x0
/* 81342EAC | 38 A0 00 50 */	li r5, 0x50
/* 81342EB0 | 4B FE D4 85 */	bl memset
/* 81342EB4 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342EB8 | 38 81 01 B2 */	addi r4, r1, 0x1b2
/* 81342EBC | 38 A0 00 28 */	li r5, 0x28
/* 81342EC0 | 48 16 59 C9 */	bl NWC24ReadMsgAltName
/* 81342EC4 | 7C 64 1B 78 */	mr r4, r3
/* 81342EC8 | 7D E3 7B 78 */	mr r3, r15
/* 81342ECC | 38 A0 02 9B */	li r5, 0x29b
/* 81342ED0 | 48 00 12 75 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342ED4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342ED8 | 40 82 00 3C */	bne .L_81342F14
/* 81342EDC | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342EE0 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81342EE4 | 41 81 00 0C */	bgt .L_81342EF0
/* 81342EE8 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81342EEC | 40 80 05 EC */	bge .L_813434D8
.L_81342EF0:
/* 81342EF0 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342EF4 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81342EF8 | 41 82 05 E0 */	beq .L_813434D8
/* 81342EFC | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81342F00 | 41 82 05 D8 */	beq .L_813434D8
/* 81342F04 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81342F08 | 41 82 05 D0 */	beq .L_813434D8
/* 81342F0C | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81342F10 | 41 82 05 C8 */	beq .L_813434D8
.L_81342F14:
/* 81342F14 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342F18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81342F1C | 41 82 00 08 */	beq .L_81342F24
/* 81342F20 | B3 81 01 B2 */	sth r28, 0x1b2(r1)
.L_81342F24:
/* 81342F24 | 80 A1 00 84 */	lwz r5, 0x84(r1)
/* 81342F28 | 7D E3 7B 78 */	mr r3, r15
/* 81342F2C | 93 81 00 68 */	stw r28, 0x68(r1)
/* 81342F30 | 7F 04 C3 78 */	mr r4, r24
/* 81342F34 | 38 05 FF FC */	subi r0, r5, 0x4
/* 81342F38 | 38 A1 03 50 */	addi r5, r1, 0x350
/* 81342F3C | 7C 00 00 34 */	cntlzw r0, r0
/* 81342F40 | 38 E1 00 68 */	addi r7, r1, 0x68
/* 81342F44 | 54 06 D9 7E */	srwi r6, r0, 5
/* 81342F48 | 48 00 0C 3D */	bl make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl
/* 81342F4C | 80 01 00 68 */	lwz r0, 0x68(r1)
/* 81342F50 | 7C 74 1B 78 */	mr r20, r3
/* 81342F54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81342F58 | 40 82 05 80 */	bne .L_813434D8
/* 81342F5C | 38 00 00 00 */	li r0, 0x0
/* 81342F60 | 38 61 01 68 */	addi r3, r1, 0x168
/* 81342F64 | 98 01 06 E1 */	stb r0, 0x6e1(r1)
/* 81342F68 | 38 81 03 50 */	addi r4, r1, 0x350
/* 81342F6C | 48 1A 63 ED */	bl RFLiNWC24Msg2CharData
/* 81342F70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342F74 | 41 82 00 2C */	beq .L_81342FA0
/* 81342F78 | 80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342F7C | 38 81 01 68 */	addi r4, r1, 0x168
/* 81342F80 | 4B FF BD 41 */	bl isValid__Q33ipl6nigaoe7ManagerCFPC12RFLiCharData
/* 81342F84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81342F88 | 41 82 00 18 */	beq .L_81342FA0
/* 81342F8C | 80 7A 00 70 */	lwz r3, 0x70(r26)
/* 81342F90 | 38 81 03 50 */	addi r4, r1, 0x350
/* 81342F94 | 4B FF BD 8D */	bl addHiddenDB__Q33ipl6nigaoe7ManagerFPC11NWC24MsgObj
/* 81342F98 | 38 00 00 01 */	li r0, 0x1
/* 81342F9C | 98 01 06 E1 */	stb r0, 0x6e1(r1)
.L_81342FA0:
/* 81342FA0 | 38 00 00 00 */	li r0, 0x0
/* 81342FA4 | 93 81 00 64 */	stw r28, 0x64(r1)
/* 81342FA8 | 82 2D 80 04 */	lwz r17, RBRFileType_Txt@sda21(r0)
/* 81342FAC | 38 61 03 50 */	addi r3, r1, 0x350
/* 81342FB0 | 93 81 00 9C */	stw r28, 0x9c(r1)
/* 81342FB4 | 38 81 00 64 */	addi r4, r1, 0x64
/* 81342FB8 | 98 01 06 E0 */	stb r0, 0x6e0(r1)
/* 81342FBC | 93 81 00 A0 */	stw r28, 0xa0(r1)
/* 81342FC0 | 93 81 00 94 */	stw r28, 0x94(r1)
/* 81342FC4 | 93 81 00 98 */	stw r28, 0x98(r1)
/* 81342FC8 | 48 15 E9 69 */	bl NWC24GetMsgNumAttached
/* 81342FCC | 7C 64 1B 78 */	mr r4, r3
/* 81342FD0 | 7D E3 7B 78 */	mr r3, r15
/* 81342FD4 | 38 A0 02 5A */	li r5, 0x25a
/* 81342FD8 | 48 00 10 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81342FDC | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81342FE0 | 2C 00 FF F2 */	cmpwi r0, -0xe
/* 81342FE4 | 41 82 04 F0 */	beq .L_813434D4
/* 81342FE8 | 3C 60 00 03 */	lis r3, 0x3
/* 81342FEC | 3A 00 00 00 */	li r16, 0x0
/* 81342FF0 | 38 03 00 01 */	addi r0, r3, 0x1
/* 81342FF4 | 3B C0 00 00 */	li r30, 0x0
/* 81342FF8 | 90 01 06 EC */	stw r0, 0x6ec(r1)
/* 81342FFC | 48 00 03 28 */	b .L_81343324
.L_81343000:
/* 81343000 | 7C AF F2 14 */	add r5, r15, r30
/* 81343004 | 7E 04 83 78 */	mr r4, r16
/* 81343008 | 38 61 03 50 */	addi r3, r1, 0x350
/* 8134300C | 38 A5 00 08 */	addi r5, r5, 0x8
/* 81343010 | 48 15 E9 3D */	bl NWC24GetMsgAttachedSize
/* 81343014 | 7C 64 1B 78 */	mr r4, r3
/* 81343018 | 7D E3 7B 78 */	mr r3, r15
/* 8134301C | 38 A0 02 67 */	li r5, 0x267
/* 81343020 | 48 00 10 31 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343024 | 7C 6F F2 14 */	add r3, r15, r30
/* 81343028 | 7F 04 C3 78 */	mr r4, r24
/* 8134302C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 81343030 | 38 A0 00 20 */	li r5, 0x20
/* 81343034 | 48 2B 50 A1 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343038 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134303C | 7C 6F F1 2E */	stwx r3, r15, r30
/* 81343040 | 40 82 00 10 */	bne .L_81343050
/* 81343044 | 7C 6F F2 14 */	add r3, r15, r30
/* 81343048 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 8134304C | 48 00 02 E4 */	b .L_81343330
.L_81343050:
/* 81343050 | 7C 8F F2 14 */	add r4, r15, r30
/* 81343054 | 7C 65 1B 78 */	mr r5, r3
/* 81343058 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 8134305C | 7E 04 83 78 */	mr r4, r16
/* 81343060 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81343064 | 48 16 64 05 */	bl NWC24ReadMsgAttached
/* 81343068 | 7C 64 1B 78 */	mr r4, r3
/* 8134306C | 7D E3 7B 78 */	mr r3, r15
/* 81343070 | 38 A0 03 26 */	li r5, 0x326
/* 81343074 | 48 00 10 D1 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343078 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134307C | 40 82 00 3C */	bne .L_813430B8
/* 81343080 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81343084 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343088 | 41 81 00 0C */	bgt .L_81343094
/* 8134308C | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81343090 | 40 80 04 48 */	bge .L_813434D8
.L_81343094:
/* 81343094 | 80 0F 09 F8 */	lwz r0, 0x9f8(r15)
/* 81343098 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 8134309C | 41 82 04 3C */	beq .L_813434D8
/* 813430A0 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 813430A4 | 41 82 04 34 */	beq .L_813434D8
/* 813430A8 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 813430AC | 41 82 04 2C */	beq .L_813434D8
/* 813430B0 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 813430B4 | 41 82 04 24 */	beq .L_813434D8
.L_813430B8:
/* 813430B8 | 38 A1 00 9C */	addi r5, r1, 0x9c
/* 813430BC | 7E 04 83 78 */	mr r4, r16
/* 813430C0 | 38 61 03 50 */	addi r3, r1, 0x350
/* 813430C4 | 7C A5 F2 14 */	add r5, r5, r30
/* 813430C8 | 48 15 E8 B9 */	bl NWC24GetMsgAttachedType
/* 813430CC | 7C 64 1B 78 */	mr r4, r3
/* 813430D0 | 7D E3 7B 78 */	mr r3, r15
/* 813430D4 | 38 A0 02 74 */	li r5, 0x274
/* 813430D8 | 48 00 0F 79 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813430DC | 38 61 00 9C */	addi r3, r1, 0x9c
/* 813430E0 | 80 01 06 EC */	lwz r0, 0x6ec(r1)
/* 813430E4 | 7C 83 F0 2E */	lwzx r4, r3, r30
/* 813430E8 | 7C 04 00 00 */	cmpw r4, r0
/* 813430EC | 41 82 01 78 */	beq .L_81343264
/* 813430F0 | 40 80 00 28 */	bge .L_81343118
/* 813430F4 | 3C 60 00 02 */	lis r3, 0x2
/* 813430F8 | 38 03 00 01 */	addi r0, r3, 0x1
/* 813430FC | 7C 04 00 00 */	cmpw r4, r0
/* 81343100 | 41 82 01 14 */	beq .L_81343214
/* 81343104 | 40 80 01 FC */	bge .L_81343300
/* 81343108 | 3C 00 00 02 */	lis r0, 0x2
/* 8134310C | 7C 04 00 00 */	cmpw r4, r0
/* 81343110 | 40 80 00 1C */	bge .L_8134312C
/* 81343114 | 48 00 01 EC */	b .L_81343300
.L_81343118:
/* 81343118 | 3C 60 00 03 */	lis r3, 0x3
/* 8134311C | 38 03 00 03 */	addi r0, r3, 0x3
/* 81343120 | 7C 04 00 00 */	cmpw r4, r0
/* 81343124 | 40 80 01 DC */	bge .L_81343300
/* 81343128 | 48 00 01 8C */	b .L_813432B4
.L_8134312C:
/* 8134312C | 80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 81343130 | 7E 23 8B 78 */	mr r3, r17
/* 81343134 | 48 2B F3 4D */	bl strcmp
/* 81343138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134313C | 40 82 00 C0 */	bne .L_813431FC
/* 81343140 | 7D E3 7B 78 */	mr r3, r15
/* 81343144 | 7F 04 C3 78 */	mr r4, r24
/* 81343148 | 7E 05 83 78 */	mr r5, r16
/* 8134314C | 48 00 09 05 */	bl encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl
/* 81343150 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343154 | 41 82 00 10 */	beq .L_81343164
/* 81343158 | 7F 7D F1 2E */	stwx r27, r29, r30
/* 8134315C | 82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 81343160 | 48 00 01 BC */	b .L_8134331C
.L_81343164:
/* 81343164 | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134316C | 41 82 00 0C */	beq .L_81343178
/* 81343170 | 48 2B 4F 75 */	bl __dl__FPv
/* 81343174 | 7F 8F F1 2E */	stwx r28, r15, r30
.L_81343178:
/* 81343178 | 7C CF F2 14 */	add r6, r15, r30
/* 8134317C | 7F 04 C3 78 */	mr r4, r24
/* 81343180 | 93 86 00 08 */	stw r28, 0x8(r6)
/* 81343184 | 38 A0 00 20 */	li r5, 0x20
/* 81343188 | 80 1A 01 80 */	lwz r0, 0x180(r26)
/* 8134318C | 7C 03 03 78 */	mr r3, r0
/* 81343190 | 90 01 06 E4 */	stw r0, 0x6e4(r1)
/* 81343194 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81343198 | 90 66 00 08 */	stw r3, 0x8(r6)
/* 8134319C | 48 2B 4F 39 */	bl __nwa__FUlPQ23EGG4Heapi
/* 813431A0 | 7C 6F F1 2E */	stwx r3, r15, r30
/* 813431A4 | 7C AF F2 14 */	add r5, r15, r30
/* 813431A8 | 80 81 06 E4 */	lwz r4, 0x6e4(r1)
/* 813431AC | 80 A5 00 08 */	lwz r5, 0x8(r5)
/* 813431B0 | 80 84 00 A0 */	lwz r4, 0xa0(r4)
/* 813431B4 | 4B FE D0 7D */	bl memcpy
/* 813431B8 | 7D E3 7B 78 */	mr r3, r15
/* 813431BC | 7F 04 C3 78 */	mr r4, r24
/* 813431C0 | 7E 05 83 78 */	mr r5, r16
/* 813431C4 | 48 00 08 8D */	bl encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl
/* 813431C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813431CC | 41 82 00 10 */	beq .L_813431DC
/* 813431D0 | 7F 7D F1 2E */	stwx r27, r29, r30
/* 813431D4 | 82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 813431D8 | 48 00 01 44 */	b .L_8134331C
.L_813431DC:
/* 813431DC | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 813431E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813431E4 | 41 82 00 0C */	beq .L_813431F0
/* 813431E8 | 48 2B 4E FD */	bl __dl__FPv
/* 813431EC | 7F 8F F1 2E */	stwx r28, r15, r30
.L_813431F0:
/* 813431F0 | 7C 6F F2 14 */	add r3, r15, r30
/* 813431F4 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813431F8 | 48 00 01 24 */	b .L_8134331C
.L_813431FC:
/* 813431FC | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343200 | 48 2B 4E ED */	bl __dla__FPv
/* 81343204 | 7F 8F F1 2E */	stwx r28, r15, r30
/* 81343208 | 7C 6F F2 14 */	add r3, r15, r30
/* 8134320C | 93 83 00 08 */	stw r28, 0x8(r3)
/* 81343210 | 48 00 01 0C */	b .L_8134331C
.L_81343214:
/* 81343214 | 80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 81343218 | 7E 23 8B 78 */	mr r3, r17
/* 8134321C | 48 2B F2 65 */	bl strcmp
/* 81343220 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343224 | 40 82 00 28 */	bne .L_8134324C
/* 81343228 | 3C 60 00 01 */	lis r3, 0x1
/* 8134322C | 7C 8F F2 14 */	add r4, r15, r30
/* 81343230 | 38 03 54 00 */	addi r0, r3, 0x5400
/* 81343234 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 81343238 | 7C 03 00 40 */	cmplw r3, r0
/* 8134323C | 40 80 00 10 */	bge .L_8134324C
/* 81343240 | 7F 7D F1 2E */	stwx r27, r29, r30
/* 81343244 | 82 2D 80 0C */	lwz r17, RBRFileType_Odh@sda21(r0)
/* 81343248 | 48 00 00 D4 */	b .L_8134331C
.L_8134324C:
/* 8134324C | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343250 | 48 2B 4E 9D */	bl __dla__FPv
/* 81343254 | 7F 8F F1 2E */	stwx r28, r15, r30
/* 81343258 | 7C 6F F2 14 */	add r3, r15, r30
/* 8134325C | 93 83 00 08 */	stw r28, 0x8(r3)
/* 81343260 | 48 00 00 BC */	b .L_8134331C
.L_81343264:
/* 81343264 | 88 01 06 E0 */	lbz r0, 0x6e0(r1)
/* 81343268 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134326C | 40 82 00 30 */	bne .L_8134329C
/* 81343270 | 3C 60 00 02 */	lis r3, 0x2
/* 81343274 | 7C 8F F2 14 */	add r4, r15, r30
/* 81343278 | 38 03 E0 00 */	subi r0, r3, 0x2000
/* 8134327C | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 81343280 | 7C 03 00 40 */	cmplw r3, r0
/* 81343284 | 40 80 00 18 */	bge .L_8134329C
/* 81343288 | 38 00 00 02 */	li r0, 0x2
/* 8134328C | 7C 1D F1 2E */	stwx r0, r29, r30
/* 81343290 | 38 00 00 01 */	li r0, 0x1
/* 81343294 | 98 01 06 E0 */	stb r0, 0x6e0(r1)
/* 81343298 | 48 00 00 84 */	b .L_8134331C
.L_8134329C:
/* 8134329C | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 813432A0 | 48 2B 4E 4D */	bl __dla__FPv
/* 813432A4 | 7F 8F F1 2E */	stwx r28, r15, r30
/* 813432A8 | 7C 6F F2 14 */	add r3, r15, r30
/* 813432AC | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813432B0 | 48 00 00 6C */	b .L_8134331C
.L_813432B4:
/* 813432B4 | 80 8D 80 04 */	lwz r4, RBRFileType_Txt@sda21(r0)
/* 813432B8 | 7E 23 8B 78 */	mr r3, r17
/* 813432BC | 48 2B F1 C5 */	bl strcmp
/* 813432C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813432C4 | 40 82 00 24 */	bne .L_813432E8
/* 813432C8 | 7C 6F F2 14 */	add r3, r15, r30
/* 813432CC | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 813432D0 | 28 00 28 00 */	cmplwi r0, 0x2800
/* 813432D4 | 40 80 00 14 */	bge .L_813432E8
/* 813432D8 | 38 00 00 04 */	li r0, 0x4
/* 813432DC | 82 2D 80 14 */	lwz r17, RBRFileType_Dat@sda21(r0)
/* 813432E0 | 7C 1D F1 2E */	stwx r0, r29, r30
/* 813432E4 | 48 00 00 38 */	b .L_8134331C
.L_813432E8:
/* 813432E8 | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 813432EC | 48 2B 4E 01 */	bl __dla__FPv
/* 813432F0 | 7F 8F F1 2E */	stwx r28, r15, r30
/* 813432F4 | 7C 6F F2 14 */	add r3, r15, r30
/* 813432F8 | 93 83 00 08 */	stw r28, 0x8(r3)
/* 813432FC | 48 00 00 20 */	b .L_8134331C
.L_81343300:
/* 81343300 | 7C 6F F0 2E */	lwzx r3, r15, r30
/* 81343304 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343308 | 41 82 00 0C */	beq .L_81343314
/* 8134330C | 48 2B 4D D9 */	bl __dl__FPv
/* 81343310 | 7F 8F F1 2E */	stwx r28, r15, r30
.L_81343314:
/* 81343314 | 7C 6F F2 14 */	add r3, r15, r30
/* 81343318 | 93 83 00 08 */	stw r28, 0x8(r3)
.L_8134331C:
/* 8134331C | 3A 10 00 01 */	addi r16, r16, 0x1
/* 81343320 | 3B DE 00 04 */	addi r30, r30, 0x4
.L_81343324:
/* 81343324 | 80 01 00 64 */	lwz r0, 0x64(r1)
/* 81343328 | 7C 10 00 40 */	cmplw r16, r0
/* 8134332C | 41 80 FC D4 */	blt .L_81343000
.L_81343330:
/* 81343330 | 38 61 00 60 */	addi r3, r1, 0x60
/* 81343334 | 38 81 00 5C */	addi r4, r1, 0x5c
/* 81343338 | 38 A1 00 58 */	addi r5, r1, 0x58
/* 8134333C | 38 C1 00 54 */	addi r6, r1, 0x54
/* 81343340 | 4B FE F8 A1 */	bl RBRGetPosRect
/* 81343344 | 4B FF 26 99 */	bl getRndm__Q23ipl6SystemFv
/* 81343348 | 48 00 02 DD */	bl get_f01__Q33ipl4math6RandomFv
/* 8134334C | C0 01 00 54 */	lfs f0, 0x54(r1)
/* 81343350 | C0 41 00 58 */	lfs f2, 0x58(r1)
/* 81343354 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81343358 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8134335C | EF E2 00 2A */	fadds f31, f2, f0
/* 81343360 | 4B FF 26 7D */	bl getRndm__Q23ipl6SystemFv
/* 81343364 | 48 00 02 C1 */	bl get_f01__Q33ipl4math6RandomFv
/* 81343368 | C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8134336C | C0 41 00 60 */	lfs f2, 0x60(r1)
/* 81343370 | D3 E1 00 90 */	stfs f31, 0x90(r1)
/* 81343374 | EC 00 10 28 */	fsubs f0, f0, f2
/* 81343378 | EC 00 00 72 */	fmuls f0, f0, f1
/* 8134337C | EC 02 00 2A */	fadds f0, f2, f0
/* 81343380 | D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 81343384 | 48 1E D5 01 */	bl OSDisableInterrupts
/* 81343388 | 38 00 00 05 */	li r0, 0x5
/* 8134338C | 38 C1 00 C4 */	addi r6, r1, 0xc4
/* 81343390 | 38 BA 00 38 */	addi r5, r26, 0x38
/* 81343394 | 7C 09 03 A6 */	mtctr r0
.L_81343398:
/* 81343398 | 80 85 00 04 */	lwz r4, 0x4(r5)
/* 8134339C | 84 05 00 08 */	lwzu r0, 0x8(r5)
/* 813433A0 | 90 86 00 04 */	stw r4, 0x4(r6)
/* 813433A4 | 94 06 00 08 */	stwu r0, 0x8(r6)
/* 813433A8 | 42 00 FF F0 */	bdnz .L_81343398
/* 813433AC | 48 1E D5 01 */	bl OSRestoreInterrupts
/* 813433B0 | 80 01 06 E8 */	lwz r0, 0x6e8(r1)
/* 813433B4 | 93 81 00 50 */	stw r28, 0x50(r1)
/* 813433B8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813433BC | 9A C1 00 53 */	stb r22, 0x53(r1)
/* 813433C0 | 41 82 00 10 */	beq .L_813433D0
/* 813433C4 | 88 01 00 50 */	lbz r0, 0x50(r1)
/* 813433C8 | 60 00 00 01 */	ori r0, r0, 0x1
/* 813433CC | 98 01 00 50 */	stb r0, 0x50(r1)
.L_813433D0:
/* 813433D0 | 88 01 06 E1 */	lbz r0, 0x6e1(r1)
/* 813433D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813433D8 | 41 82 00 0C */	beq .L_813433E4
/* 813433DC | 38 01 01 68 */	addi r0, r1, 0x168
/* 813433E0 | 48 00 00 08 */	b .L_813433E8
.L_813433E4:
/* 813433E4 | 38 00 00 00 */	li r0, 0x0
.L_813433E8:
/* 813433E8 | A0 61 01 B2 */	lhz r3, 0x1b2(r1)
/* 813433EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813433F0 | 41 82 00 0C */	beq .L_813433FC
/* 813433F4 | 39 61 01 B2 */	addi r11, r1, 0x1b2
/* 813433F8 | 48 00 00 08 */	b .L_81343400
.L_813433FC:
/* 813433FC | 39 61 00 B0 */	addi r11, r1, 0xb0
.L_81343400:
/* 81343400 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81343404 | 38 80 00 01 */	li r4, 0x1
/* 81343408 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134340C | 41 82 00 10 */	beq .L_8134341C
/* 81343410 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343414 | 41 82 00 08 */	beq .L_8134341C
/* 81343418 | 38 80 00 00 */	li r4, 0x0
.L_8134341C:
/* 8134341C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81343420 | 41 82 00 0C */	beq .L_8134342C
/* 81343424 | 39 00 00 00 */	li r8, 0x0
/* 81343428 | 48 00 00 08 */	b .L_81343430
.L_8134342C:
/* 8134342C | 39 01 00 46 */	addi r8, r1, 0x46
.L_81343430:
/* 81343430 | A0 61 00 46 */	lhz r3, 0x46(r1)
/* 81343434 | 38 80 00 01 */	li r4, 0x1
/* 81343438 | 28 03 00 01 */	cmplwi r3, 0x1
/* 8134343C | 41 82 00 10 */	beq .L_8134344C
/* 81343440 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343444 | 41 82 00 08 */	beq .L_8134344C
/* 81343448 | 38 80 00 00 */	li r4, 0x0
.L_8134344C:
/* 8134344C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81343450 | 41 82 00 0C */	beq .L_8134345C
/* 81343454 | 38 E0 00 00 */	li r7, 0x0
/* 81343458 | 48 00 00 08 */	b .L_81343460
.L_8134345C:
/* 8134345C | 38 E1 00 78 */	addi r7, r1, 0x78
.L_81343460:
/* 81343460 | 2C 12 00 00 */	cmpwi r18, 0x0
/* 81343464 | 41 82 00 0C */	beq .L_81343470
/* 81343468 | 38 C1 00 F0 */	addi r6, r1, 0xf0
/* 8134346C | 48 00 00 08 */	b .L_81343474
.L_81343470:
/* 81343470 | 38 C1 00 C8 */	addi r6, r1, 0xc8
.L_81343474:
/* 81343474 | 88 7A 02 BC */	lbz r3, 0x2bc(r26)
/* 81343478 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134347C | 41 82 00 0C */	beq .L_81343488
/* 81343480 | 38 60 00 00 */	li r3, 0x0
/* 81343484 | 48 00 00 08 */	b .L_8134348C
.L_81343488:
/* 81343488 | 80 7A 00 7C */	lwz r3, 0x7c(r26)
.L_8134348C:
/* 8134348C | 38 81 02 50 */	addi r4, r1, 0x250
/* 81343490 | 39 8F 00 08 */	addi r12, r15, 0x8
/* 81343494 | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81343498 | 7E 25 8B 78 */	mr r5, r17
/* 8134349C | 81 41 00 50 */	lwz r10, 0x50(r1)
/* 813434A0 | 38 99 01 4C */	addi r4, r25, 0x14c
/* 813434A4 | 92 61 00 0C */	stw r19, 0xc(r1)
/* 813434A8 | 39 21 00 8C */	addi r9, r1, 0x8c
/* 813434AC | 82 01 00 6C */	lwz r16, 0x6c(r1)
/* 813434B0 | 56 10 04 3E */	clrlwi r16, r16, 16
/* 813434B4 | 92 01 00 10 */	stw r16, 0x10(r1)
/* 813434B8 | 91 61 00 14 */	stw r11, 0x14(r1)
/* 813434BC | 92 81 00 18 */	stw r20, 0x18(r1)
/* 813434C0 | 90 01 00 1C */	stw r0, 0x1c(r1)
/* 813434C4 | 91 E1 00 20 */	stw r15, 0x20(r1)
/* 813434C8 | 91 81 00 24 */	stw r12, 0x24(r1)
/* 813434CC | 93 A1 00 28 */	stw r29, 0x28(r1)
/* 813434D0 | 4B FF BC 9D */	bl createNewRecord__Q33ipl3cdb7ManagerFPCcPCcPC14OSCalendarTimePUlPUsRCQ33ipl4math4VEC2UlRC15NWC24FriendAddrUsUsPCwPCwPCvPPCvPUlP17RBRAttachmentType
.L_813434D4:
/* 813434D4 | 9B 6F 0A 30 */	stb r27, 0xa30(r15)
.L_813434D8:
/* 813434D8 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 813434DC | 41 82 00 0C */	beq .L_813434E8
/* 813434E0 | 7E 83 A3 78 */	mr r3, r20
/* 813434E4 | 48 2B 4C 09 */	bl __dla__FPv
.L_813434E8:
/* 813434E8 | 80 6F 00 00 */	lwz r3, 0x0(r15)
/* 813434EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813434F0 | 41 82 00 0C */	beq .L_813434FC
/* 813434F4 | 48 2B 4B F9 */	bl __dla__FPv
/* 813434F8 | 93 8F 00 00 */	stw r28, 0x0(r15)
.L_813434FC:
/* 813434FC | 80 6F 00 04 */	lwz r3, 0x4(r15)
/* 81343500 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343504 | 41 82 00 0C */	beq .L_81343510
/* 81343508 | 48 2B 4B E5 */	bl __dla__FPv
/* 8134350C | 93 8F 00 04 */	stw r28, 0x4(r15)
.L_81343510:
/* 81343510 | 7C 8F FA 14 */	add r4, r15, r31
/* 81343514 | 38 60 00 01 */	li r3, 0x1
/* 81343518 | 80 84 00 18 */	lwz r4, 0x18(r4)
/* 8134351C | 48 15 EB F5 */	bl NWC24DeleteMsg
/* 81343520 | 7C 64 1B 78 */	mr r4, r3
/* 81343524 | 7D E3 7B 78 */	mr r3, r15
/* 81343528 | 38 A0 03 7E */	li r5, 0x37e
/* 8134352C | 48 00 0B 25 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343530 | 88 1A 02 BC */	lbz r0, 0x2bc(r26)
/* 81343534 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343538 | 41 82 00 0C */	beq .L_81343544
/* 8134353C | 38 60 00 00 */	li r3, 0x0
/* 81343540 | 48 00 00 08 */	b .L_81343548
.L_81343544:
/* 81343544 | 80 7A 00 7C */	lwz r3, 0x7c(r26)
.L_81343548:
/* 81343548 | 4B FF C5 1D */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 8134354C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343550 | 40 82 00 78 */	bne .L_813435C8
/* 81343554 | 88 0F 0A 32 */	lbz r0, 0xa32(r15)
/* 81343558 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8134355C | 40 82 00 6C */	bne .L_813435C8
/* 81343560 | 48 00 00 54 */	b .L_813435B4
.L_81343564:
/* 81343564 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 81343568 | 41 82 00 0C */	beq .L_81343574
/* 8134356C | 2C 00 00 03 */	cmpwi r0, 0x3
/* 81343570 | 40 82 00 44 */	bne .L_813435B4
.L_81343574:
/* 81343574 | 38 61 03 50 */	addi r3, r1, 0x350
/* 81343578 | 38 81 00 4C */	addi r4, r1, 0x4c
/* 8134357C | 48 15 E4 FD */	bl NWC24GetMsgIconNewSign
/* 81343580 | 7C 64 1B 78 */	mr r4, r3
/* 81343584 | 7D E3 7B 78 */	mr r3, r15
/* 81343588 | 38 A0 02 8C */	li r5, 0x28c
/* 8134358C | 48 00 0A C5 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343590 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343594 | 41 82 00 20 */	beq .L_813435B4
/* 81343598 | 2C 17 01 00 */	cmpwi r23, 0x100
/* 8134359C | 40 80 00 18 */	bge .L_813435B4
/* 813435A0 | 80 01 00 4C */	lwz r0, 0x4c(r1)
/* 813435A4 | 7C 6F 72 14 */	add r3, r15, r14
/* 813435A8 | 3A F7 00 01 */	addi r23, r23, 0x1
/* 813435AC | 39 CE 00 04 */	addi r14, r14, 0x4
/* 813435B0 | 90 03 04 18 */	stw r0, 0x418(r3)
.L_813435B4:
/* 813435B4 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 813435B8 | 3B FF 00 04 */	addi r31, r31, 0x4
.L_813435BC:
/* 813435BC | 80 01 00 88 */	lwz r0, 0x88(r1)
/* 813435C0 | 7C 15 00 40 */	cmplw r21, r0
/* 813435C4 | 41 80 F2 C4 */	blt .L_81342888
.L_813435C8:
/* 813435C8 | 7D E3 7B 78 */	mr r3, r15
/* 813435CC | 4B FF EC B9 */	bl setDlTable__Q33ipl5nwc247ManagerFv
/* 813435D0 | 48 15 CC BD */	bl NWC24CloseMsgLib
/* 813435D4 | 7C 64 1B 78 */	mr r4, r3
/* 813435D8 | 7D E3 7B 78 */	mr r3, r15
/* 813435DC | 38 A0 00 E9 */	li r5, 0xe9
/* 813435E0 | 48 00 0A 71 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813435E4 | 38 6F 0A 00 */	addi r3, r15, 0xa00
/* 813435E8 | 48 1E E6 FD */	bl fn_81531CE4
/* 813435EC | 38 60 00 01 */	li r3, 0x1
/* 813435F0 | 38 00 00 00 */	li r0, 0x0
/* 813435F4 | 98 6F 0A 33 */	stb r3, 0xa33(r15)
/* 813435F8 | 98 0F 0A 31 */	stb r0, 0xa31(r15)
.L_813435FC:
/* 813435FC | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 81343600 | 38 00 FF F8 */	li r0, -0x8
/* 81343604 | 13 EA 00 0C */	psq_lx f31, r10, r0, 0, qr0
/* 81343608 | 39 6A FF F0 */	subi r11, r10, 0x10
/* 8134360C | CB EA FF F0 */	lfd f31, -0x10(r10)
/* 81343610 | 48 2B 5E C9 */	bl _restgpr_14
/* 81343614 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 81343618 | 7C 08 03 A6 */	mtlr r0
/* 8134361C | 7D 41 53 78 */	mr r1, r10
/* 81343620 | 4E 80 00 20 */	blr
.endfn receive__Q33ipl5nwc247ManagerFv

# .text:0x1CA8 | 0x81343624 | size: 0x48
# ipl::math::Random::get_f01()
.fn get_f01__Q33ipl4math6RandomFv, global
/* 81343624 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81343628 | 3C 80 00 19 */	lis r4, 0x19
/* 8134362C | 3C 00 43 30 */	lis r0, 0x4330
/* 81343630 | C8 42 80 D0 */	lfd f2, lbl_816944D0@sda21(r0)
/* 81343634 | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 81343638 | 38 84 66 0D */	addi r4, r4, 0x660d
/* 8134363C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 81343640 | 7C 85 21 D6 */	mullw r4, r5, r4
/* 81343644 | C0 02 80 C8 */	lfs f0, lbl_816944C8@sda21(r0)
/* 81343648 | 3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8134364C | 38 04 F3 5F */	subi r0, r4, 0xca1
/* 81343650 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 81343654 | C8 21 00 08 */	lfd f1, 0x8(r1)
/* 81343658 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8134365C | EC 21 10 28 */	fsubs f1, f1, f2
/* 81343660 | EC 21 00 24 */	fdivs f1, f1, f0
/* 81343664 | 38 21 00 10 */	addi r1, r1, 0x10
/* 81343668 | 4E 80 00 20 */	blr
.endfn get_f01__Q33ipl4math6RandomFv

# .text:0x1CF0 | 0x8134366C | size: 0x188
# ipl::nwc24::Manager::addDlTask()
.fn addDlTask__Q33ipl5nwc247ManagerFv, global
/* 8134366C | 94 21 EF 70 */	stwu r1, -0x1090(r1)
/* 81343670 | 7C 08 02 A6 */	mflr r0
/* 81343674 | 90 01 10 94 */	stw r0, 0x1094(r1)
/* 81343678 | 39 61 10 90 */	addi r11, r1, 0x1090
/* 8134367C | 48 2B 5E 39 */	bl _savegpr_24
/* 81343680 | 7C 7E 1B 78 */	mr r30, r3
/* 81343684 | 38 61 00 5C */	addi r3, r1, 0x5c
/* 81343688 | 48 22 6F 5D */	bl fn_8156A5E4
/* 8134368C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343690 | 41 82 01 4C */	beq .L_813437DC
/* 81343694 | 3B 80 00 00 */	li r28, 0x0
/* 81343698 | 3B 20 00 0A */	li r25, 0xa
/* 8134369C | 7F 1C C9 D6 */	mullw r24, r28, r25
/* 813436A0 | 3F 60 80 00 */	lis r27, 0x8000
/* 813436A4 | 3B 40 03 E8 */	li r26, 0x3e8
/* 813436A8 | 48 00 00 2C */	b .L_813436D4
.L_813436AC:
/* 813436AC | 80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 813436B0 | 54 00 F0 BE */	srwi r0, r0, 2
/* 813436B4 | 7C 60 D3 96 */	divwu r3, r0, r26
/* 813436B8 | 7C 03 C8 16 */	mulhwu r0, r3, r25
/* 813436BC | 1C 83 00 0A */	mulli r4, r3, 0xa
/* 813436C0 | 7C 60 C2 14 */	add r3, r0, r24
/* 813436C4 | 48 1F 25 09 */	bl OSSleepTicks
/* 813436C8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813436CC | 2C 1C 03 E8 */	cmpwi r28, 0x3e8
/* 813436D0 | 41 81 01 0C */	bgt .L_813437DC
.L_813436D4:
/* 813436D4 | 7F C3 F3 78 */	mr r3, r30
/* 813436D8 | 4B FF E3 69 */	bl open__Q33ipl5nwc247ManagerFv
/* 813436DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813436E0 | 41 82 FF CC */	beq .L_813436AC
/* 813436E4 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 813436E8 | 38 80 00 00 */	li r4, 0x0
/* 813436EC | 38 A0 00 40 */	li r5, 0x40
/* 813436F0 | 4B FE CC 45 */	bl memset
/* 813436F4 | A3 02 80 D8 */	lhz r24, lbl_816944D8@sda21(r0)
/* 813436F8 | 3B 41 00 14 */	addi r26, r1, 0x14
/* 813436FC | A1 82 80 DA */	lhz r12, lbl_816944DA@sda21(r0)
/* 81343700 | 3B 61 00 0C */	addi r27, r1, 0xc
/* 81343704 | A1 62 80 DC */	lhz r11, lbl_816944DC@sda21(r0)
/* 81343708 | 3B 81 00 08 */	addi r28, r1, 0x8
/* 8134370C | A1 42 80 DE */	lhz r10, lbl_816944DE@sda21(r0)
/* 81343710 | 3B E0 00 00 */	li r31, 0x0
/* 81343714 | A1 22 80 E0 */	lhz r9, lbl_816944E0@sda21(r0)
/* 81343718 | 3B A0 00 00 */	li r29, 0x0
/* 8134371C | A1 02 80 E2 */	lhz r8, lbl_816944E2@sda21(r0)
/* 81343720 | 3F 20 81 63 */	lis r25, lbl_81635376@ha
/* 81343724 | A0 E2 80 E4 */	lhz r7, lbl_816944E4@sda21(r0)
/* 81343728 | A0 C2 80 E6 */	lhz r6, lbl_816944E6@sda21(r0)
/* 8134372C | 88 A2 80 E8 */	lbz r5, lbl_816944E8@sda21(r0)
/* 81343730 | 88 82 80 E9 */	lbz r4, lbl_816944E9@sda21(r0)
/* 81343734 | 88 62 80 EA */	lbz r3, lbl_816944EA@sda21(r0)
/* 81343738 | 88 02 80 EB */	lbz r0, lbl_816944EB@sda21(r0)
/* 8134373C | B3 01 00 14 */	sth r24, 0x14(r1)
/* 81343740 | B1 81 00 16 */	sth r12, 0x16(r1)
/* 81343744 | B1 61 00 18 */	sth r11, 0x18(r1)
/* 81343748 | B1 41 00 1A */	sth r10, 0x1a(r1)
/* 8134374C | B1 21 00 0C */	sth r9, 0xc(r1)
/* 81343750 | B1 01 00 0E */	sth r8, 0xe(r1)
/* 81343754 | B0 E1 00 10 */	sth r7, 0x10(r1)
/* 81343758 | B0 C1 00 12 */	sth r6, 0x12(r1)
/* 8134375C | 98 A1 00 08 */	stb r5, 0x8(r1)
/* 81343760 | 98 81 00 09 */	stb r4, 0x9(r1)
/* 81343764 | 98 61 00 0A */	stb r3, 0xa(r1)
/* 81343768 | 98 01 00 0B */	stb r0, 0xb(r1)
.L_8134376C:
/* 8134376C | 4B FF 22 81 */	bl getLanguage__Q23ipl6SystemFv
/* 81343770 | 80 01 00 5C */	lwz r0, 0x5c(r1)
/* 81343774 | 7C 67 1B 78 */	mr r7, r3
/* 81343778 | 38 61 00 1C */	addi r3, r1, 0x1c
/* 8134377C | 38 B9 53 76 */	addi r5, r25, lbl_81635376@l
/* 81343780 | 54 06 46 3E */	srwi r6, r0, 24
/* 81343784 | 39 1F 00 01 */	addi r8, r31, 0x1
/* 81343788 | 38 80 00 40 */	li r4, 0x40
/* 8134378C | 4C C6 31 82 */	crclr cr1eq
/* 81343790 | 48 2B D2 19 */	bl snprintf
/* 81343794 | 7C 9A EA 2E */	lhzx r4, r26, r29
/* 81343798 | 7F C3 F3 78 */	mr r3, r30
/* 8134379C | 7C DB EA 2E */	lhzx r6, r27, r29
/* 813437A0 | 38 A1 00 1C */	addi r5, r1, 0x1c
/* 813437A4 | 88 FC 00 00 */	lbz r7, 0x0(r28)
/* 813437A8 | 48 00 00 4D */	bl add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc
/* 813437AC | 3B FF 00 01 */	addi r31, r31, 0x1
/* 813437B0 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813437B4 | 2C 1F 00 04 */	cmpwi r31, 0x4
/* 813437B8 | 3B BD 00 02 */	addi r29, r29, 0x2
/* 813437BC | 41 80 FF B0 */	blt .L_8134376C
/* 813437C0 | 48 15 CA CD */	bl NWC24CloseMsgLib
/* 813437C4 | 7C 64 1B 78 */	mr r4, r3
/* 813437C8 | 7F C3 F3 78 */	mr r3, r30
/* 813437CC | 38 A0 00 E9 */	li r5, 0xe9
/* 813437D0 | 48 00 08 81 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813437D4 | 38 7E 0A 00 */	addi r3, r30, 0xa00
/* 813437D8 | 48 1E E5 0D */	bl fn_81531CE4
.L_813437DC:
/* 813437DC | 39 61 10 90 */	addi r11, r1, 0x1090
/* 813437E0 | 48 2B 5D 21 */	bl _restgpr_24
/* 813437E4 | 80 01 10 94 */	lwz r0, 0x1094(r1)
/* 813437E8 | 7C 08 03 A6 */	mtlr r0
/* 813437EC | 38 21 10 90 */	addi r1, r1, 0x1090
/* 813437F0 | 4E 80 00 20 */	blr
.endfn addDlTask__Q33ipl5nwc247ManagerFv

# .text:0x1E78 | 0x813437F4 | size: 0x168
# ipl::nwc24::Manager::add_dl_task(unsigned short, const char*, unsigned short, unsigned char)
.fn add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc, global
/* 813437F4 | 94 21 FD E0 */	stwu r1, -0x220(r1)
/* 813437F8 | 7C 08 02 A6 */	mflr r0
/* 813437FC | 90 01 02 24 */	stw r0, 0x224(r1)
/* 81343800 | 39 61 02 20 */	addi r11, r1, 0x220
/* 81343804 | 48 2B 5C B9 */	bl _savegpr_26
/* 81343808 | 7C 7A 1B 78 */	mr r26, r3
/* 8134380C | 7C 9B 23 78 */	mr r27, r4
/* 81343810 | 7C BC 2B 78 */	mr r28, r5
/* 81343814 | 7C DD 33 78 */	mr r29, r6
/* 81343818 | 7C FE 3B 78 */	mr r30, r7
/* 8134381C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81343820 | 3B E0 00 00 */	li r31, 0x0
/* 81343824 | 48 16 C7 39 */	bl NWC24GetDlTask
/* 81343828 | 7C 64 1B 78 */	mr r4, r3
/* 8134382C | 7F 43 D3 78 */	mr r3, r26
/* 81343830 | 38 A0 04 28 */	li r5, 0x428
/* 81343834 | 48 00 08 1D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343838 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8134383C | 40 82 00 70 */	bne .L_813438AC
/* 81343840 | 80 1A 09 F8 */	lwz r0, 0x9f8(r26)
/* 81343844 | 2C 00 FF F3 */	cmpwi r0, -0xd
/* 81343848 | 40 82 00 FC */	bne .L_81343944
/* 8134384C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81343850 | 3B E0 00 01 */	li r31, 0x1
/* 81343854 | 38 80 00 02 */	li r4, 0x2
/* 81343858 | 48 16 B1 61 */	bl NWC24InitDlTask
/* 8134385C | 7C 64 1B 78 */	mr r4, r3
/* 81343860 | 7F 43 D3 78 */	mr r3, r26
/* 81343864 | 38 A0 04 58 */	li r5, 0x458
/* 81343868 | 48 00 07 E9 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 8134386C | 7F 64 DB 78 */	mr r4, r27
/* 81343870 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81343874 | 48 16 B3 85 */	bl NWC24SetDlId
/* 81343878 | 7C 64 1B 78 */	mr r4, r3
/* 8134387C | 7F 43 D3 78 */	mr r3, r26
/* 81343880 | 38 A0 04 64 */	li r5, 0x464
/* 81343884 | 48 00 07 CD */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343888 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134388C | 38 80 00 00 */	li r4, 0x0
/* 81343890 | 48 16 B9 11 */	bl NWC24SetDlFlags
/* 81343894 | 7C 64 1B 78 */	mr r4, r3
/* 81343898 | 7F 43 D3 78 */	mr r3, r26
/* 8134389C | 38 A0 04 A7 */	li r5, 0x4a7
/* 813438A0 | 48 00 07 B1 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438A4 | 48 00 00 08 */	b .L_813438AC
/* 813438A8 | 48 00 00 9C */	b .L_81343944
.L_813438AC:
/* 813438AC | 7F C4 F3 78 */	mr r4, r30
/* 813438B0 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813438B4 | 48 16 B3 E5 */	bl NWC24SetDlPriority
/* 813438B8 | 7C 64 1B 78 */	mr r4, r3
/* 813438BC | 7F 43 D3 78 */	mr r3, r26
/* 813438C0 | 38 A0 04 7C */	li r5, 0x47c
/* 813438C4 | 48 00 07 8D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438C8 | 7F A4 EB 78 */	mr r4, r29
/* 813438CC | 38 61 00 08 */	addi r3, r1, 0x8
/* 813438D0 | 48 16 B4 D1 */	bl NWC24SetDlInterval
/* 813438D4 | 7C 64 1B 78 */	mr r4, r3
/* 813438D8 | 7F 43 D3 78 */	mr r3, r26
/* 813438DC | 38 A0 04 88 */	li r5, 0x488
/* 813438E0 | 48 00 07 71 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 813438E4 | 7F 84 E3 78 */	mr r4, r28
/* 813438E8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 813438EC | 48 16 B7 01 */	bl NWC24SetDlUrl
/* 813438F0 | 7C 64 1B 78 */	mr r4, r3
/* 813438F4 | 7F 43 D3 78 */	mr r3, r26
/* 813438F8 | 38 A0 04 70 */	li r5, 0x470
/* 813438FC | 48 00 07 55 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343900 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 81343904 | 41 82 00 20 */	beq .L_81343924
/* 81343908 | 38 61 00 08 */	addi r3, r1, 0x8
/* 8134390C | 48 16 C4 15 */	bl NWC24AddDlTask
/* 81343910 | 7C 64 1B 78 */	mr r4, r3
/* 81343914 | 7F 43 D3 78 */	mr r3, r26
/* 81343918 | 38 A0 04 BE */	li r5, 0x4be
/* 8134391C | 48 00 07 35 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343920 | 48 00 00 1C */	b .L_8134393C
.L_81343924:
/* 81343924 | 38 61 00 08 */	addi r3, r1, 0x8
/* 81343928 | 48 16 BE 61 */	bl NWC24UpdateDlTask
/* 8134392C | 7C 64 1B 78 */	mr r4, r3
/* 81343930 | 7F 43 D3 78 */	mr r3, r26
/* 81343934 | 38 A0 04 C9 */	li r5, 0x4c9
/* 81343938 | 48 00 07 19 */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
.L_8134393C:
/* 8134393C | 38 61 00 08 */	addi r3, r1, 0x8
/* 81343940 | 48 16 BA 59 */	bl NWC24DumpDlTask
.L_81343944:
/* 81343944 | 39 61 02 20 */	addi r11, r1, 0x220
/* 81343948 | 48 2B 5B C1 */	bl _restgpr_26
/* 8134394C | 80 01 02 24 */	lwz r0, 0x224(r1)
/* 81343950 | 7C 08 03 A6 */	mtlr r0
/* 81343954 | 38 21 02 20 */	addi r1, r1, 0x220
/* 81343958 | 4E 80 00 20 */	blr
.endfn add_dl_task__Q33ipl5nwc247ManagerFUsPCcUsUc

# .text:0x1FE0 | 0x8134395C | size: 0x74
# ipl::nwc24::Manager::getNewTitleTbl(unsigned long*) const
.fn getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl, global
/* 8134395C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81343960 | 7C 08 02 A6 */	mflr r0
/* 81343964 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81343968 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134396C | 48 2B 5B 5D */	bl _savegpr_29
/* 81343970 | 88 03 0A 33 */	lbz r0, 0xa33(r3)
/* 81343974 | 7C 7D 1B 78 */	mr r29, r3
/* 81343978 | 7C 9E 23 78 */	mr r30, r4
/* 8134397C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343980 | 40 82 00 0C */	bne .L_8134398C
/* 81343984 | 38 60 00 00 */	li r3, 0x0
/* 81343988 | 48 00 00 30 */	b .L_813439B8
.L_8134398C:
/* 8134398C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 81343990 | 41 82 00 24 */	beq .L_813439B4
/* 81343994 | 48 1E CE F1 */	bl OSDisableInterrupts
/* 81343998 | 7C 7F 1B 78 */	mr r31, r3
/* 8134399C | 7F C3 F3 78 */	mr r3, r30
/* 813439A0 | 38 9D 04 18 */	addi r4, r29, 0x418
/* 813439A4 | 38 A0 04 00 */	li r5, 0x400
/* 813439A8 | 4B FE C8 89 */	bl memcpy
/* 813439AC | 7F E3 FB 78 */	mr r3, r31
/* 813439B0 | 48 1E CE FD */	bl OSRestoreInterrupts
.L_813439B4:
/* 813439B4 | 38 60 00 01 */	li r3, 0x1
.L_813439B8:
/* 813439B8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813439BC | 48 2B 5B 59 */	bl _restgpr_29
/* 813439C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813439C4 | 7C 08 03 A6 */	mtlr r0
/* 813439C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813439CC | 4E 80 00 20 */	blr
.endfn getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl

# .text:0x2054 | 0x813439D0 | size: 0x80
# ipl::nwc24::Manager::isNewMessageThere(unsigned long) const
.fn isNewMessageThere__Q33ipl5nwc247ManagerCFUl, global
/* 813439D0 | 94 21 FB F0 */	stwu r1, -0x410(r1)
/* 813439D4 | 7C 08 02 A6 */	mflr r0
/* 813439D8 | 90 01 04 14 */	stw r0, 0x414(r1)
/* 813439DC | 93 E1 04 0C */	stw r31, 0x40c(r1)
/* 813439E0 | 7C 9F 23 78 */	mr r31, r4
/* 813439E4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 813439E8 | 4B FF FF 75 */	bl getNewTitleTbl__Q33ipl5nwc247ManagerCFPUl
/* 813439EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813439F0 | 40 82 00 0C */	bne .L_813439FC
/* 813439F4 | 38 60 00 00 */	li r3, 0x0
/* 813439F8 | 48 00 00 44 */	b .L_81343A3C
.L_813439FC:
/* 813439FC | 38 81 00 08 */	addi r4, r1, 0x8
/* 81343A00 | 38 A0 00 00 */	li r5, 0x0
/* 81343A04 | 38 60 00 00 */	li r3, 0x0
/* 81343A08 | 48 00 00 1C */	b .L_81343A24
.L_81343A0C:
/* 81343A0C | 7C 1F 00 40 */	cmplw r31, r0
/* 81343A10 | 40 82 00 0C */	bne .L_81343A1C
/* 81343A14 | 38 60 00 01 */	li r3, 0x1
/* 81343A18 | 48 00 00 24 */	b .L_81343A3C
.L_81343A1C:
/* 81343A1C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 81343A20 | 38 63 00 04 */	addi r3, r3, 0x4
.L_81343A24:
/* 81343A24 | 2C 05 01 00 */	cmpwi r5, 0x100
/* 81343A28 | 40 80 00 10 */	bge .L_81343A38
/* 81343A2C | 7C 04 18 2E */	lwzx r0, r4, r3
/* 81343A30 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343A34 | 40 82 FF D8 */	bne .L_81343A0C
.L_81343A38:
/* 81343A38 | 38 60 00 00 */	li r3, 0x0
.L_81343A3C:
/* 81343A3C | 80 01 04 14 */	lwz r0, 0x414(r1)
/* 81343A40 | 83 E1 04 0C */	lwz r31, 0x40c(r1)
/* 81343A44 | 7C 08 03 A6 */	mtlr r0
/* 81343A48 | 38 21 04 10 */	addi r1, r1, 0x410
/* 81343A4C | 4E 80 00 20 */	blr
.endfn isNewMessageThere__Q33ipl5nwc247ManagerCFUl

# .text:0x20D4 | 0x81343A50 | size: 0x134
# ipl::nwc24::Manager::encode_odh(EGG::Heap*, unsigned long)
.fn encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl, global
/* 81343A50 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 81343A54 | 7C 08 02 A6 */	mflr r0
/* 81343A58 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 81343A5C | 39 61 00 30 */	addi r11, r1, 0x30
/* 81343A60 | 48 2B 5A 59 */	bl _savegpr_25
/* 81343A64 | 3C C0 81 09 */	lis r6, smArg__Q23ipl6System@ha
/* 81343A68 | 54 BC 10 3A */	slwi r28, r5, 2
/* 81343A6C | 38 C6 90 08 */	addi r6, r6, smArg__Q23ipl6System@l
/* 81343A70 | 3B 60 00 00 */	li r27, 0x0
/* 81343A74 | 83 A6 00 BC */	lwz r29, 0xbc(r6)
/* 81343A78 | 7F C3 E2 14 */	add r30, r3, r28
/* 81343A7C | 7C 79 1B 78 */	mr r25, r3
/* 81343A80 | 7C 9A 23 78 */	mr r26, r4
/* 81343A84 | 93 63 00 10 */	stw r27, 0x10(r3)
/* 81343A88 | 93 63 00 14 */	stw r27, 0x14(r3)
/* 81343A8C | 7F A3 EB 78 */	mr r3, r29
/* 81343A90 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 81343A94 | 80 DE 00 08 */	lwz r6, 0x8(r30)
/* 81343A98 | 48 02 13 FD */	bl decodeJpg__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl
/* 81343A9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AA0 | 41 82 00 B8 */	beq .L_81343B58
/* 81343AA4 | 7F A3 EB 78 */	mr r3, r29
/* 81343AA8 | 48 02 18 B5 */	bl waitCaptured__Q33ipl7utility11JpegDecoderFv
/* 81343AAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AB0 | 41 82 00 94 */	beq .L_81343B44
/* 81343AB4 | 7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343AB8 | 48 2B 46 35 */	bl __dla__FPv
/* 81343ABC | 3B E0 00 00 */	li r31, 0x0
/* 81343AC0 | 3C 60 00 01 */	lis r3, 0x1
/* 81343AC4 | 7F F9 E1 2E */	stwx r31, r25, r28
/* 81343AC8 | 38 63 40 00 */	addi r3, r3, 0x4000
/* 81343ACC | 7F 44 D3 78 */	mr r4, r26
/* 81343AD0 | 38 A0 00 20 */	li r5, 0x20
/* 81343AD4 | 90 79 00 14 */	stw r3, 0x14(r25)
/* 81343AD8 | 48 2B 45 FD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343ADC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343AE0 | 90 79 00 10 */	stw r3, 0x10(r25)
/* 81343AE4 | 7C 65 1B 78 */	mr r5, r3
/* 81343AE8 | 41 82 00 50 */	beq .L_81343B38
/* 81343AEC | 80 D9 00 14 */	lwz r6, 0x14(r25)
/* 81343AF0 | 7F A3 EB 78 */	mr r3, r29
/* 81343AF4 | 7F 44 D3 78 */	mr r4, r26
/* 81343AF8 | 48 02 15 7D */	bl encodeOdh__Q33ipl7utility11JpegDecoderFPQ23EGG4HeapPUcUl
/* 81343AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343B00 | 90 79 00 14 */	stw r3, 0x14(r25)
/* 81343B04 | 7C 64 1B 78 */	mr r4, r3
/* 81343B08 | 41 82 00 24 */	beq .L_81343B2C
/* 81343B0C | 80 79 00 10 */	lwz r3, 0x10(r25)
/* 81343B10 | 48 1E 9E 55 */	bl DCStoreRange
/* 81343B14 | 80 19 00 10 */	lwz r0, 0x10(r25)
/* 81343B18 | 3B 60 00 01 */	li r27, 0x1
/* 81343B1C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 81343B20 | 80 19 00 14 */	lwz r0, 0x14(r25)
/* 81343B24 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 81343B28 | 48 00 00 10 */	b .L_81343B38
.L_81343B2C:
/* 81343B2C | 80 79 00 10 */	lwz r3, 0x10(r25)
/* 81343B30 | 48 2B 45 BD */	bl __dla__FPv
/* 81343B34 | 93 F9 00 10 */	stw r31, 0x10(r25)
.L_81343B38:
/* 81343B38 | 7F A3 EB 78 */	mr r3, r29
/* 81343B3C | 48 02 18 61 */	bl clear__Q33ipl7utility11JpegDecoderFv
/* 81343B40 | 48 00 00 28 */	b .L_81343B68
.L_81343B44:
/* 81343B44 | 7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343B48 | 48 2B 45 A5 */	bl __dla__FPv
/* 81343B4C | 38 00 00 00 */	li r0, 0x0
/* 81343B50 | 7C 19 E1 2E */	stwx r0, r25, r28
/* 81343B54 | 48 00 00 14 */	b .L_81343B68
.L_81343B58:
/* 81343B58 | 7C 79 E0 2E */	lwzx r3, r25, r28
/* 81343B5C | 48 2B 45 91 */	bl __dla__FPv
/* 81343B60 | 38 00 00 00 */	li r0, 0x0
/* 81343B64 | 7C 19 E1 2E */	stwx r0, r25, r28
.L_81343B68:
/* 81343B68 | 39 61 00 30 */	addi r11, r1, 0x30
/* 81343B6C | 7F 63 DB 78 */	mr r3, r27
/* 81343B70 | 48 2B 59 95 */	bl _restgpr_25
/* 81343B74 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 81343B78 | 7C 08 03 A6 */	mtlr r0
/* 81343B7C | 38 21 00 30 */	addi r1, r1, 0x30
/* 81343B80 | 4E 80 00 20 */	blr
.endfn encode_odh__Q33ipl5nwc247ManagerFPQ23EGG4HeapUl

# .text:0x2208 | 0x81343B84 | size: 0x3F4
# ipl::nwc24::Manager::make_text(EGG::Heap*, const NWC24MsgObj*, bool, unsigned long*)
.fn make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl, global
/* 81343B84 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 81343B88 | 7C 08 02 A6 */	mflr r0
/* 81343B8C | 90 01 00 54 */	stw r0, 0x54(r1)
/* 81343B90 | 39 61 00 50 */	addi r11, r1, 0x50
/* 81343B94 | 48 2B 59 19 */	bl _savegpr_22
/* 81343B98 | 3B E0 00 00 */	li r31, 0x0
/* 81343B9C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 81343BA0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 81343BA4 | 7C 76 1B 78 */	mr r22, r3
/* 81343BA8 | 7C 97 23 78 */	mr r23, r4
/* 81343BAC | 7C B8 2B 78 */	mr r24, r5
/* 81343BB0 | 93 E1 00 18 */	stw r31, 0x18(r1)
/* 81343BB4 | 7C D9 33 78 */	mr r25, r6
/* 81343BB8 | 7C FA 3B 78 */	mr r26, r7
/* 81343BBC | 3B C0 00 00 */	li r30, 0x0
/* 81343BC0 | 93 E1 00 14 */	stw r31, 0x14(r1)
/* 81343BC4 | 3B A0 00 00 */	li r29, 0x0
/* 81343BC8 | 3B 80 00 00 */	li r28, 0x0
/* 81343BCC | 3B 60 00 00 */	li r27, 0x0
/* 81343BD0 | 93 E1 00 10 */	stw r31, 0x10(r1)
/* 81343BD4 | 93 E7 00 00 */	stw r31, 0x0(r7)
/* 81343BD8 | 41 82 01 04 */	beq .L_81343CDC
/* 81343BDC | 7F 03 C3 78 */	mr r3, r24
/* 81343BE0 | 38 81 00 1C */	addi r4, r1, 0x1c
/* 81343BE4 | 48 15 DC E5 */	bl NWC24GetMsgSubjectSize
/* 81343BE8 | 7C 64 1B 78 */	mr r4, r3
/* 81343BEC | 7E C3 B3 78 */	mr r3, r22
/* 81343BF0 | 38 A0 02 42 */	li r5, 0x242
/* 81343BF4 | 48 00 04 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343BF8 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81343BFC | 28 00 00 01 */	cmplwi r0, 0x1
/* 81343C00 | 40 81 00 DC */	ble .L_81343CDC
/* 81343C04 | 38 00 01 00 */	li r0, 0x100
/* 81343C08 | 7E E4 BB 78 */	mr r4, r23
/* 81343C0C | 90 01 00 18 */	stw r0, 0x18(r1)
/* 81343C10 | 38 60 02 02 */	li r3, 0x202
/* 81343C14 | 38 A0 FF FC */	li r5, -0x4
/* 81343C18 | 48 2B 44 BD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343C1C | 7C 7E 1B 78 */	mr r30, r3
/* 81343C20 | 7E E4 BB 78 */	mr r4, r23
/* 81343C24 | 38 60 06 04 */	li r3, 0x604
/* 81343C28 | 38 A0 FF FC */	li r5, -0x4
/* 81343C2C | 48 2B 44 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343C30 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81343C34 | 7C 7D 1B 78 */	mr r29, r3
/* 81343C38 | 41 82 00 A4 */	beq .L_81343CDC
/* 81343C3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343C40 | 41 82 00 9C */	beq .L_81343CDC
/* 81343C44 | 7F C3 F3 78 */	mr r3, r30
/* 81343C48 | 38 80 00 00 */	li r4, 0x0
/* 81343C4C | 38 A0 02 02 */	li r5, 0x202
/* 81343C50 | 4B FE C6 E5 */	bl memset
/* 81343C54 | 7F A3 EB 78 */	mr r3, r29
/* 81343C58 | 38 80 00 00 */	li r4, 0x0
/* 81343C5C | 38 A0 06 04 */	li r5, 0x604
/* 81343C60 | 4B FE C6 D5 */	bl memset
/* 81343C64 | 3C 80 00 01 */	lis r4, 0x1
/* 81343C68 | 7F 03 C3 78 */	mr r3, r24
/* 81343C6C | 38 04 FF FF */	subi r0, r4, 0x1
/* 81343C70 | 7F A8 EB 78 */	mr r8, r29
/* 81343C74 | 7F C4 F3 78 */	mr r4, r30
/* 81343C78 | 38 A1 00 18 */	addi r5, r1, 0x18
/* 81343C7C | 54 07 04 3E */	clrlwi r7, r0, 16
/* 81343C80 | 38 C0 00 01 */	li r6, 0x1
/* 81343C84 | 39 20 06 00 */	li r9, 0x600
/* 81343C88 | 48 16 5B C9 */	bl NWC24ReadMsgSubjectPublic
/* 81343C8C | 7C 64 1B 78 */	mr r4, r3
/* 81343C90 | 7E C3 B3 78 */	mr r3, r22
/* 81343C94 | 38 A0 03 15 */	li r5, 0x315
/* 81343C98 | 48 00 04 AD */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343C9C | 80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343CA0 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343CA4 | 41 81 00 0C */	bgt .L_81343CB0
/* 81343CA8 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81343CAC | 40 80 00 24 */	bge .L_81343CD0
.L_81343CB0:
/* 81343CB0 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81343CB4 | 41 82 00 1C */	beq .L_81343CD0
/* 81343CB8 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343CBC | 41 82 00 14 */	beq .L_81343CD0
/* 81343CC0 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343CC4 | 41 82 00 0C */	beq .L_81343CD0
/* 81343CC8 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343CCC | 40 82 00 10 */	bne .L_81343CDC
.L_81343CD0:
/* 81343CD0 | 38 00 00 01 */	li r0, 0x1
/* 81343CD4 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343CD8 | 48 00 02 44 */	b .L_81343F1C
.L_81343CDC:
/* 81343CDC | 7F 03 C3 78 */	mr r3, r24
/* 81343CE0 | 38 81 00 14 */	addi r4, r1, 0x14
/* 81343CE4 | 48 15 DC 0D */	bl NWC24GetMsgTextSize
/* 81343CE8 | 7C 64 1B 78 */	mr r4, r3
/* 81343CEC | 7E C3 B3 78 */	mr r3, r22
/* 81343CF0 | 38 A0 02 36 */	li r5, 0x236
/* 81343CF4 | 48 00 03 5D */	bl error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343CF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81343CFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343D00 | 41 82 01 50 */	beq .L_81343E50
/* 81343D04 | 38 00 0B B8 */	li r0, 0xbb8
/* 81343D08 | 7E E4 BB 78 */	mr r4, r23
/* 81343D0C | 90 01 00 10 */	stw r0, 0x10(r1)
/* 81343D10 | 38 60 17 72 */	li r3, 0x1772
/* 81343D14 | 38 A0 FF FC */	li r5, -0x4
/* 81343D18 | 48 2B 43 BD */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343D1C | 7C 7C 1B 78 */	mr r28, r3
/* 81343D20 | 7E E4 BB 78 */	mr r4, r23
/* 81343D24 | 38 60 2E E4 */	li r3, 0x2ee4
/* 81343D28 | 38 A0 FF FC */	li r5, -0x4
/* 81343D2C | 48 2B 43 A9 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343D30 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81343D34 | 7C 7B 1B 78 */	mr r27, r3
/* 81343D38 | 41 82 01 18 */	beq .L_81343E50
/* 81343D3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343D40 | 41 82 01 10 */	beq .L_81343E50
/* 81343D44 | 7F 83 E3 78 */	mr r3, r28
/* 81343D48 | 38 80 00 00 */	li r4, 0x0
/* 81343D4C | 38 A0 17 72 */	li r5, 0x1772
/* 81343D50 | 4B FE C5 E5 */	bl memset
/* 81343D54 | 7F 63 DB 78 */	mr r3, r27
/* 81343D58 | 38 80 00 00 */	li r4, 0x0
/* 81343D5C | 38 A0 2E E4 */	li r5, 0x2ee4
/* 81343D60 | 4B FE C5 D5 */	bl memset
/* 81343D64 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81343D68 | 41 82 00 7C */	beq .L_81343DE4
/* 81343D6C | 3C 80 00 01 */	lis r4, 0x1
/* 81343D70 | 7F 03 C3 78 */	mr r3, r24
/* 81343D74 | 38 04 FF FF */	subi r0, r4, 0x1
/* 81343D78 | 7F 68 DB 78 */	mr r8, r27
/* 81343D7C | 7F 84 E3 78 */	mr r4, r28
/* 81343D80 | 38 A1 00 10 */	addi r5, r1, 0x10
/* 81343D84 | 54 07 04 3E */	clrlwi r7, r0, 16
/* 81343D88 | 38 C0 00 01 */	li r6, 0x1
/* 81343D8C | 39 20 2E E0 */	li r9, 0x2ee0
/* 81343D90 | 48 16 5C 61 */	bl NWC24ReadMsgTextPublic
/* 81343D94 | 7C 64 1B 78 */	mr r4, r3
/* 81343D98 | 7E C3 B3 78 */	mr r3, r22
/* 81343D9C | 38 A0 02 DA */	li r5, 0x2da
/* 81343DA0 | 48 00 03 A5 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343DA4 | 80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343DA8 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343DAC | 41 81 00 0C */	bgt .L_81343DB8
/* 81343DB0 | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81343DB4 | 40 80 00 24 */	bge .L_81343DD8
.L_81343DB8:
/* 81343DB8 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81343DBC | 41 82 00 1C */	beq .L_81343DD8
/* 81343DC0 | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343DC4 | 41 82 00 14 */	beq .L_81343DD8
/* 81343DC8 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343DCC | 41 82 00 0C */	beq .L_81343DD8
/* 81343DD0 | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343DD4 | 40 82 00 7C */	bne .L_81343E50
.L_81343DD8:
/* 81343DD8 | 38 00 00 01 */	li r0, 0x1
/* 81343DDC | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343DE0 | 48 00 01 3C */	b .L_81343F1C
.L_81343DE4:
/* 81343DE4 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343DE8 | 7F 03 C3 78 */	mr r3, r24
/* 81343DEC | 7F 84 E3 78 */	mr r4, r28
/* 81343DF0 | 38 C1 00 0C */	addi r6, r1, 0xc
/* 81343DF4 | 54 05 08 3C */	slwi r5, r0, 1
/* 81343DF8 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 81343DFC | 48 16 52 91 */	bl NWC24ReadMsgText
/* 81343E00 | 7C 64 1B 78 */	mr r4, r3
/* 81343E04 | 7E C3 B3 78 */	mr r3, r22
/* 81343E08 | 38 A0 02 B3 */	li r5, 0x2b3
/* 81343E0C | 48 00 03 39 */	bl error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81343E10 | 80 16 09 F8 */	lwz r0, 0x9f8(r22)
/* 81343E14 | 2C 00 FF F0 */	cmpwi r0, -0x10
/* 81343E18 | 41 81 00 0C */	bgt .L_81343E24
/* 81343E1C | 2C 00 FF EB */	cmpwi r0, -0x15
/* 81343E20 | 40 80 00 24 */	bge .L_81343E44
.L_81343E24:
/* 81343E24 | 2C 00 FF DA */	cmpwi r0, -0x26
/* 81343E28 | 41 82 00 1C */	beq .L_81343E44
/* 81343E2C | 2C 00 FF D7 */	cmpwi r0, -0x29
/* 81343E30 | 41 82 00 14 */	beq .L_81343E44
/* 81343E34 | 2C 00 FF D5 */	cmpwi r0, -0x2b
/* 81343E38 | 41 82 00 0C */	beq .L_81343E44
/* 81343E3C | 2C 00 FF D2 */	cmpwi r0, -0x2e
/* 81343E40 | 40 82 00 10 */	bne .L_81343E50
.L_81343E44:
/* 81343E44 | 38 00 00 01 */	li r0, 0x1
/* 81343E48 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 81343E4C | 48 00 00 D0 */	b .L_81343F1C
.L_81343E50:
/* 81343E50 | 80 61 00 18 */	lwz r3, 0x18(r1)
/* 81343E54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343E58 | 40 82 00 10 */	bne .L_81343E68
/* 81343E5C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343E60 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343E64 | 41 82 00 B8 */	beq .L_81343F1C
.L_81343E68:
/* 81343E68 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343E6C | 7E E4 BB 78 */	mr r4, r23
/* 81343E70 | 38 A0 00 04 */	li r5, 0x4
/* 81343E74 | 7C 63 02 14 */	add r3, r3, r0
/* 81343E78 | 3A C3 00 04 */	addi r22, r3, 0x4
/* 81343E7C | 56 C3 08 3C */	slwi r3, r22, 1
/* 81343E80 | 48 2B 42 55 */	bl __nwa__FUlPQ23EGG4Heapi
/* 81343E84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 81343E88 | 7C 7F 1B 78 */	mr r31, r3
/* 81343E8C | 41 82 00 90 */	beq .L_81343F1C
/* 81343E90 | 56 C5 08 3C */	slwi r5, r22, 1
/* 81343E94 | 38 80 00 00 */	li r4, 0x0
/* 81343E98 | 4B FE C4 9D */	bl memset
/* 81343E9C | 2C 19 00 00 */	cmpwi r25, 0x0
/* 81343EA0 | 41 82 00 4C */	beq .L_81343EEC
/* 81343EA4 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 81343EA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343EAC | 41 82 00 40 */	beq .L_81343EEC
/* 81343EB0 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 81343EB4 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81343EB8 | 40 81 00 34 */	ble .L_81343EEC
/* 81343EBC | 7F E3 FB 78 */	mr r3, r31
/* 81343EC0 | 48 2C 47 ED */	bl fn_816086AC
/* 81343EC4 | 7C A3 B0 50 */	subf r5, r3, r22
/* 81343EC8 | 7F E3 FB 78 */	mr r3, r31
/* 81343ECC | 7F C4 F3 78 */	mr r4, r30
/* 81343ED0 | 48 2C 48 85 */	bl fn_81608754
/* 81343ED4 | 7F E3 FB 78 */	mr r3, r31
/* 81343ED8 | 48 2C 47 D5 */	bl fn_816086AC
/* 81343EDC | 7C A3 B0 50 */	subf r5, r3, r22
/* 81343EE0 | 7F E3 FB 78 */	mr r3, r31
/* 81343EE4 | 38 8D 80 B0 */	li r4, lbl_816960F0@sda21
/* 81343EE8 | 48 2C 48 6D */	bl fn_81608754
.L_81343EEC:
/* 81343EEC | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 81343EF0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343EF4 | 41 82 00 28 */	beq .L_81343F1C
/* 81343EF8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81343EFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 81343F00 | 41 82 00 1C */	beq .L_81343F1C
/* 81343F04 | 7F E3 FB 78 */	mr r3, r31
/* 81343F08 | 48 2C 47 A5 */	bl fn_816086AC
/* 81343F0C | 7C A3 B0 50 */	subf r5, r3, r22
/* 81343F10 | 7F E3 FB 78 */	mr r3, r31
/* 81343F14 | 7F 84 E3 78 */	mr r4, r28
/* 81343F18 | 48 2C 48 3D */	bl fn_81608754
.L_81343F1C:
/* 81343F1C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 81343F20 | 41 82 00 0C */	beq .L_81343F2C
/* 81343F24 | 7F C3 F3 78 */	mr r3, r30
/* 81343F28 | 48 2B 41 C5 */	bl __dla__FPv
.L_81343F2C:
/* 81343F2C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 81343F30 | 41 82 00 0C */	beq .L_81343F3C
/* 81343F34 | 7F A3 EB 78 */	mr r3, r29
/* 81343F38 | 48 2B 41 B5 */	bl __dla__FPv
.L_81343F3C:
/* 81343F3C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 81343F40 | 41 82 00 0C */	beq .L_81343F4C
/* 81343F44 | 7F 83 E3 78 */	mr r3, r28
/* 81343F48 | 48 2B 41 A5 */	bl __dla__FPv
.L_81343F4C:
/* 81343F4C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 81343F50 | 41 82 00 0C */	beq .L_81343F5C
/* 81343F54 | 7F 63 DB 78 */	mr r3, r27
/* 81343F58 | 48 2B 41 95 */	bl __dla__FPv
.L_81343F5C:
/* 81343F5C | 39 61 00 50 */	addi r11, r1, 0x50
/* 81343F60 | 7F E3 FB 78 */	mr r3, r31
/* 81343F64 | 48 2B 55 95 */	bl _restgpr_22
/* 81343F68 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 81343F6C | 7C 08 03 A6 */	mtlr r0
/* 81343F70 | 38 21 00 50 */	addi r1, r1, 0x50
/* 81343F74 | 4E 80 00 20 */	blr
.endfn make_text__Q33ipl5nwc247ManagerFPQ23EGG4HeapPC11NWC24MsgObjbPUl

# .text:0x25FC | 0x81343F78 | size: 0xB4
# ipl::nwc24::Manager::is_valid_app_id(unsigned long, unsigned short) const
.fn is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs, global
/* 81343F78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81343F7C | 7C 08 02 A6 */	mflr r0
/* 81343F80 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 81343F84 | 54 A0 04 3E */	clrlwi r0, r5, 16
/* 81343F88 | 28 00 00 01 */	cmplwi r0, 0x1
/* 81343F8C | 90 81 00 08 */	stw r4, 0x8(r1)
/* 81343F90 | B0 A1 00 0C */	sth r5, 0xc(r1)
/* 81343F94 | 41 81 00 0C */	bgt .L_81343FA0
/* 81343F98 | 38 60 00 01 */	li r3, 0x1
/* 81343F9C | 48 00 00 80 */	b .L_8134401C
.L_81343FA0:
/* 81343FA0 | 38 61 00 0E */	addi r3, r1, 0xe
/* 81343FA4 | 38 80 00 00 */	li r4, 0x0
/* 81343FA8 | 38 A0 00 06 */	li r5, 0x6
/* 81343FAC | 4B FE C3 89 */	bl memset
/* 81343FB0 | 38 61 00 0E */	addi r3, r1, 0xe
/* 81343FB4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 81343FB8 | 38 A0 00 04 */	li r5, 0x4
/* 81343FBC | 48 2B E4 09 */	bl strncpy
/* 81343FC0 | 38 61 00 0E */	addi r3, r1, 0xe
/* 81343FC4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 81343FC8 | 38 A0 00 02 */	li r5, 0x2
/* 81343FCC | 48 2B E4 69 */	bl strncat
/* 81343FD0 | 38 00 00 06 */	li r0, 0x6
/* 81343FD4 | 38 61 00 0E */	addi r3, r1, 0xe
/* 81343FD8 | 7C 09 03 A6 */	mtctr r0
.L_81343FDC:
/* 81343FDC | 88 83 00 00 */	lbz r4, 0x0(r3)
/* 81343FE0 | 7C 80 07 74 */	extsb r0, r4
/* 81343FE4 | 2C 00 00 41 */	cmpwi r0, 0x41
/* 81343FE8 | 41 80 00 0C */	blt .L_81343FF4
/* 81343FEC | 2C 00 00 5A */	cmpwi r0, 0x5a
/* 81343FF0 | 40 81 00 20 */	ble .L_81344010
.L_81343FF4:
/* 81343FF4 | 7C 80 07 74 */	extsb r0, r4
/* 81343FF8 | 2C 00 00 30 */	cmpwi r0, 0x30
/* 81343FFC | 41 80 00 0C */	blt .L_81344008
/* 81344000 | 2C 00 00 39 */	cmpwi r0, 0x39
/* 81344004 | 40 81 00 0C */	ble .L_81344010
.L_81344008:
/* 81344008 | 38 60 00 00 */	li r3, 0x0
/* 8134400C | 48 00 00 10 */	b .L_8134401C
.L_81344010:
/* 81344010 | 38 63 00 01 */	addi r3, r3, 0x1
/* 81344014 | 42 00 FF C8 */	bdnz .L_81343FDC
/* 81344018 | 38 60 00 01 */	li r3, 0x1
.L_8134401C:
/* 8134401C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344020 | 7C 08 03 A6 */	mtlr r0
/* 81344024 | 38 21 00 20 */	addi r1, r1, 0x20
/* 81344028 | 4E 80 00 20 */	blr
.endfn is_valid_app_id__Q33ipl5nwc247ManagerCFUlUs

# .text:0x26B0 | 0x8134402C | size: 0x24
# ipl::nwc24::Manager::getErrCode()
.fn getErrCode__Q33ipl5nwc247ManagerFv, global
/* 8134402C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81344030 | 7C 08 02 A6 */	mflr r0
/* 81344034 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 81344038 | 48 15 C6 15 */	bl NWC24GetErrorCode
/* 8134403C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 81344040 | 7C 63 00 D0 */	neg r3, r3
/* 81344044 | 7C 08 03 A6 */	mtlr r0
/* 81344048 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8134404C | 4E 80 00 20 */	blr
.endfn getErrCode__Q33ipl5nwc247ManagerFv

# .text:0x26D4 | 0x81344050 | size: 0xF4
# ipl::nwc24::Manager::error_handling(NWC24Err, int)
.fn error_handling__Q33ipl5nwc247ManagerF8NWC24Erri, global
/* 81344050 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 81344054 | 7C 08 02 A6 */	mflr r0
/* 81344058 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8134405C | 39 61 00 20 */	addi r11, r1, 0x20
/* 81344060 | 48 2B 54 65 */	bl _savegpr_28
/* 81344064 | 38 04 00 26 */	addi r0, r4, 0x26
/* 81344068 | 90 83 09 F8 */	stw r4, 0x9f8(r3)
/* 8134406C | 28 00 00 26 */	cmplwi r0, 0x26
/* 81344070 | 7C 7F 1B 78 */	mr r31, r3
/* 81344074 | 7C 9C 23 78 */	mr r28, r4
/* 81344078 | 7C BD 2B 78 */	mr r29, r5
/* 8134407C | 3B C0 00 00 */	li r30, 0x0
/* 81344080 | 41 81 00 A8 */	bgt .L_81344128
/* 81344084 | 3C 60 81 63 */	lis r3, jumptable_816353BC@ha
/* 81344088 | 54 00 10 3A */	slwi r0, r0, 2
/* 8134408C | 38 63 53 BC */	addi r3, r3, jumptable_816353BC@l
/* 81344090 | 7C 63 00 2E */	lwzx r3, r3, r0
/* 81344094 | 7C 69 03 A6 */	mtctr r3
/* 81344098 | 4E 80 04 20 */	bctr
.L_8134409C:
/* 8134409C | 3B C0 00 01 */	li r30, 0x1
/* 813440A0 | 48 00 00 88 */	b .L_81344128
.L_813440A4:
/* 813440A4 | 48 15 C1 7D */	bl NWC24CloseLib
/* 813440A8 | 80 7F 09 FC */	lwz r3, 0x9fc(r31)
/* 813440AC | 38 80 00 00 */	li r4, 0x0
/* 813440B0 | 38 A0 00 01 */	li r5, 0x1
/* 813440B4 | 38 C0 00 00 */	li r6, 0x0
/* 813440B8 | 38 E0 00 00 */	li r7, 0x0
/* 813440BC | 48 15 C6 49 */	bl NWC24InitFilesIndividually
/* 813440C0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 813440C4 | 3C C0 81 63 */	lis r6, lbl_816353A6@ha
/* 813440C8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 813440CC | 7F 85 E3 78 */	mr r5, r28
/* 813440D0 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813440D4 | 7F A7 EB 78 */	mr r7, r29
/* 813440D8 | 38 C6 53 A6 */	addi r6, r6, lbl_816353A6@l
/* 813440DC | 38 8D 80 B6 */	li r4, lbl_816960F6@sda21
/* 813440E0 | 48 01 26 19 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 813440E4 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 813440E8 | 38 80 00 01 */	li r4, 0x1
/* 813440EC | 38 A0 00 02 */	li r5, 0x2
/* 813440F0 | 38 C0 00 00 */	li r6, 0x0
/* 813440F4 | 38 E0 00 00 */	li r7, 0x0
/* 813440F8 | 39 00 FF FF */	li r8, -0x1
/* 813440FC | 48 01 24 19 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 81344100 | 48 00 00 28 */	b .L_81344128
.L_81344104:
/* 81344104 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81344108 | 38 80 00 01 */	li r4, 0x1
/* 8134410C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81344110 | 38 A0 00 01 */	li r5, 0x1
/* 81344114 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 81344118 | 38 C0 00 00 */	li r6, 0x0
/* 8134411C | 38 E0 00 00 */	li r7, 0x0
/* 81344120 | 39 00 FF FF */	li r8, -0x1
/* 81344124 | 48 01 23 F1 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_81344128:
/* 81344128 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8134412C | 7F C3 F3 78 */	mr r3, r30
/* 81344130 | 48 2B 53 E1 */	bl _restgpr_28
/* 81344134 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 81344138 | 7C 08 03 A6 */	mtlr r0
/* 8134413C | 38 21 00 20 */	addi r1, r1, 0x20
/* 81344140 | 4E 80 00 20 */	blr
.endfn error_handling__Q33ipl5nwc247ManagerF8NWC24Erri

# .text:0x27C8 | 0x81344144 | size: 0x44
# ipl::nwc24::Manager::error_handling_ignore_file(NWC24Err, int)
.fn error_handling_ignore_file__Q33ipl5nwc247ManagerF8NWC24Erri, global
/* 81344144 | 2C 04 FF F0 */	cmpwi r4, -0x10
/* 81344148 | 90 83 09 F8 */	stw r4, 0x9f8(r3)
/* 8134414C | 41 81 00 0C */	bgt .L_81344158
/* 81344150 | 2C 04 FF EB */	cmpwi r4, -0x15
/* 81344154 | 40 80 00 24 */	bge .L_81344178
.L_81344158:
/* 81344158 | 2C 04 FF DA */	cmpwi r4, -0x26
/* 8134415C | 41 82 00 1C */	beq .L_81344178
/* 81344160 | 2C 04 FF D7 */	cmpwi r4, -0x29
/* 81344164 | 41 82 00 14 */	beq .L_81344178
/* 81344168 | 2C 04 FF D5 */	cmpwi r4, -0x2b
/* 8134416C | 41 82 00 0C */	beq .L_81344178
/* 81344170 | 2C 04 FF D2 */	cmpwi r4, -0x2e
/* 81344174 | 40 82 00 0C */	bne .L_81344180
.L_81344178:
/* 81344178 | 38 60 00 00 */	li r3, 0x0
/* 8134417C | 4E 80 00 20 */	blr
.L_81344180:
/* 81344180 | 4B FF FE D0 */	b error_handling__Q33ipl5nwc247ManagerF8NWC24Erri
/* 81344184 | 4E 80 00 20 */	blr
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
