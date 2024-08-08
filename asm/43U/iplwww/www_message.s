.include "macros.inc"
.file "www_message.cpp"

# 0x8136DEAC..0x8136DF38 | size: 0x8C
.text
.balign 4

# .text:0x0 | 0x8136DEAC | size: 0x2C
# ext_ead::www::ut_message_base::SendMessage(void*, long)
.fn SendMessage__Q37ext_ead3www15ut_message_baseFPvl, global
/* 8136DEAC 0003C2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DEB0 0003C2B0  7C 08 02 A6 */	mflr r0
/* 8136DEB4 0003C2B4  38 63 00 04 */	addi r3, r3, 0x4
/* 8136DEB8 0003C2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DEBC 0003C2BC  48 1C 31 C5 */	bl OSSendMessage
/* 8136DEC0 0003C2C0  30 03 FF FF */	subic r0, r3, 0x1
/* 8136DEC4 0003C2C4  7C 60 19 10 */	subfe r3, r0, r3
/* 8136DEC8 0003C2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DECC 0003C2CC  7C 08 03 A6 */	mtlr r0
/* 8136DED0 0003C2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DED4 0003C2D4  4E 80 00 20 */	blr
.endfn SendMessage__Q37ext_ead3www15ut_message_baseFPvl

# .text:0x2C | 0x8136DED8 | size: 0x2C
# ext_ead::www::ut_message_base::JamMessage(void*, long)
.fn JamMessage__Q37ext_ead3www15ut_message_baseFPvl, global
/* 8136DED8 0003C2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DEDC 0003C2DC  7C 08 02 A6 */	mflr r0
/* 8136DEE0 0003C2E0  38 63 00 04 */	addi r3, r3, 0x4
/* 8136DEE4 0003C2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DEE8 0003C2E8  48 1C 33 3D */	bl OSJamMessage
/* 8136DEEC 0003C2EC  30 03 FF FF */	subic r0, r3, 0x1
/* 8136DEF0 0003C2F0  7C 60 19 10 */	subfe r3, r0, r3
/* 8136DEF4 0003C2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DEF8 0003C2F8  7C 08 03 A6 */	mtlr r0
/* 8136DEFC 0003C2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DF00 0003C300  4E 80 00 20 */	blr
.endfn JamMessage__Q37ext_ead3www15ut_message_baseFPvl

# .text:0x58 | 0x8136DF04 | size: 0x2C
# ext_ead::www::ut_message_base::ReceiveMessage(void**, long)
.fn ReceiveMessage__Q37ext_ead3www15ut_message_baseFPPvl, global
/* 8136DF04 0003C304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136DF08 0003C308  7C 08 02 A6 */	mflr r0
/* 8136DF0C 0003C30C  38 63 00 04 */	addi r3, r3, 0x4
/* 8136DF10 0003C310  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136DF14 0003C314  48 1C 32 35 */	bl OSReceiveMessage
/* 8136DF18 0003C318  30 03 FF FF */	subic r0, r3, 0x1
/* 8136DF1C 0003C31C  7C 60 19 10 */	subfe r3, r0, r3
/* 8136DF20 0003C320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136DF24 0003C324  7C 08 03 A6 */	mtlr r0
/* 8136DF28 0003C328  38 21 00 10 */	addi r1, r1, 0x10
/* 8136DF2C 0003C32C  4E 80 00 20 */	blr
.endfn ReceiveMessage__Q37ext_ead3www15ut_message_baseFPPvl

# .text:0x84 | 0x8136DF30 | size: 0x8
# ext_ead::www::ut_message_base::InitMessageQueue(void**, long)
.fn InitMessageQueue__Q37ext_ead3www15ut_message_baseFPPvl, global
/* 8136DF30 0003C330  38 63 00 04 */	addi r3, r3, 0x4
/* 8136DF34 0003C334  48 1C 30 EC */	b OSInitMessageQueue
.endfn InitMessageQueue__Q37ext_ead3www15ut_message_baseFPPvl
