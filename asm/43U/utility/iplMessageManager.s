.include "macros.inc"
.file "iplMessageManager.cpp"

# 0x81364D78 - 0x81364E04
.text
.balign 4

# ipl::utility::ut_message_base::SendMessage(void*, long)
.fn SendMessage__Q33ipl7utility15ut_message_baseFPvl, global
/* 81364D78 00033178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364D7C 0003317C  7C 08 02 A6 */	mflr r0
/* 81364D80 00033180  38 63 00 04 */	addi r3, r3, 0x4
/* 81364D84 00033184  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364D88 00033188  48 1C C2 F9 */	bl fn_81531080
/* 81364D8C 0003318C  30 03 FF FF */	subic r0, r3, 0x1
/* 81364D90 00033190  7C 60 19 10 */	subfe r3, r0, r3
/* 81364D94 00033194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364D98 00033198  7C 08 03 A6 */	mtlr r0
/* 81364D9C 0003319C  38 21 00 10 */	addi r1, r1, 0x10
/* 81364DA0 000331A0  4E 80 00 20 */	blr
.endfn SendMessage__Q33ipl7utility15ut_message_baseFPvl

# ipl::utility::ut_message_base::JamMessage(void*, long)
.fn JamMessage__Q33ipl7utility15ut_message_baseFPvl, global
/* 81364DA4 000331A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364DA8 000331A8  7C 08 02 A6 */	mflr r0
/* 81364DAC 000331AC  38 63 00 04 */	addi r3, r3, 0x4
/* 81364DB0 000331B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364DB4 000331B4  48 1C C4 71 */	bl fn_81531224
/* 81364DB8 000331B8  30 03 FF FF */	subic r0, r3, 0x1
/* 81364DBC 000331BC  7C 60 19 10 */	subfe r3, r0, r3
/* 81364DC0 000331C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364DC4 000331C4  7C 08 03 A6 */	mtlr r0
/* 81364DC8 000331C8  38 21 00 10 */	addi r1, r1, 0x10
/* 81364DCC 000331CC  4E 80 00 20 */	blr
.endfn JamMessage__Q33ipl7utility15ut_message_baseFPvl

# ipl::utility::ut_message_base::ReceiveMessage(void**, long)
.fn ReceiveMessage__Q33ipl7utility15ut_message_baseFPPvl, global
/* 81364DD0 000331D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81364DD4 000331D4  7C 08 02 A6 */	mflr r0
/* 81364DD8 000331D8  38 63 00 04 */	addi r3, r3, 0x4
/* 81364DDC 000331DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 81364DE0 000331E0  48 1C C3 69 */	bl fn_81531148
/* 81364DE4 000331E4  30 03 FF FF */	subic r0, r3, 0x1
/* 81364DE8 000331E8  7C 60 19 10 */	subfe r3, r0, r3
/* 81364DEC 000331EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81364DF0 000331F0  7C 08 03 A6 */	mtlr r0
/* 81364DF4 000331F4  38 21 00 10 */	addi r1, r1, 0x10
/* 81364DF8 000331F8  4E 80 00 20 */	blr
.endfn ReceiveMessage__Q33ipl7utility15ut_message_baseFPPvl

# ipl::utility::ut_message_base::InitMessageQueue(void**, long)
.fn InitMessageQueue__Q33ipl7utility15ut_message_baseFPPvl, global
/* 81364DFC 000331FC  38 63 00 04 */	addi r3, r3, 0x4
/* 81364E00 00033200  48 1C C2 20 */	b OSInitMessageQueue
.endfn InitMessageQueue__Q33ipl7utility15ut_message_baseFPPvl
