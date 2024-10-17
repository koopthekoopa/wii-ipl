.include "macros.inc"
.file "snd_TaskThread.cpp"

# 0x8110E618..0x81110980 | size: 0x2368
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8110E618 | size: 0x2368
.obj instance$1088, local
	.skip 0x2368
.endobj instance$1088

# 0x8150F018..0x8150F18C | size: 0x174
.text
.balign 4

# .text:0x0 | 0x8150F018 | size: 0x30
# nw4r::snd::detail::TaskThread::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail10TaskThreadFv, global
/* 8150F018 | 88 0D AE F8 */	lbz r0, "@GUARD@instance$1088"@sda21(r0)
/* 8150F01C | 7C 00 07 75 */	extsb. r0, r0
/* 8150F020 | 40 82 00 1C */	bne .L_8150F03C
/* 8150F024 | 3C 60 81 11 */	lis r3, instance$1088@ha
/* 8150F028 | 38 00 00 01 */	li r0, 0x1
/* 8150F02C | 38 63 E6 18 */	addi r3, r3, instance$1088@l
/* 8150F030 | 38 80 00 00 */	li r4, 0x0
/* 8150F034 | 98 83 23 60 */	stb r4, 0x2360(r3)
/* 8150F038 | 98 0D AE F8 */	stb r0, "@GUARD@instance$1088"@sda21(r0)
.L_8150F03C:
/* 8150F03C | 3C 60 81 11 */	lis r3, instance$1088@ha
/* 8150F040 | 38 63 E6 18 */	addi r3, r3, instance$1088@l
/* 8150F044 | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail10TaskThreadFv

# .text:0x30 | 0x8150F048 | size: 0xC8
# nw4r::snd::detail::TaskThread::Create(long)
.fn Create__Q44nw4r3snd6detail10TaskThreadFl, global
/* 8150F048 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150F04C | 7C 08 02 A6 */	mflr r0
/* 8150F050 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150F054 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150F058 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150F05C | 7C 9E 23 78 */	mr r30, r4
/* 8150F060 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150F064 | 7C 7D 1B 78 */	mr r29, r3
/* 8150F068 | 88 03 23 60 */	lbz r0, 0x2360(r3)
/* 8150F06C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150F070 | 41 82 00 0C */	beq .L_8150F07C
/* 8150F074 | 38 60 00 01 */	li r3, 0x1
/* 8150F078 | 48 00 00 7C */	b .L_8150F0F4
.L_8150F07C:
/* 8150F07C | 3B E0 00 01 */	li r31, 0x1
/* 8150F080 | 9B E3 23 60 */	stb r31, 0x2360(r3)
/* 8150F084 | 38 63 23 18 */	addi r3, r3, 0x2318
/* 8150F088 | 48 02 4E C9 */	bl OSInitThreadQueue
/* 8150F08C | 88 0D AE F8 */	lbz r0, "@GUARD@instance$1088"@sda21(r0)
/* 8150F090 | 7C 00 07 75 */	extsb. r0, r0
/* 8150F094 | 40 82 00 18 */	bne .L_8150F0AC
/* 8150F098 | 3C 60 81 11 */	lis r3, instance$1088@ha
/* 8150F09C | 38 00 00 00 */	li r0, 0x0
/* 8150F0A0 | 38 63 E6 18 */	addi r3, r3, instance$1088@l
/* 8150F0A4 | 9B ED AE F8 */	stb r31, "@GUARD@instance$1088"@sda21(r0)
/* 8150F0A8 | 98 03 23 60 */	stb r0, 0x2360(r3)
.L_8150F0AC:
/* 8150F0AC | 3C 80 81 51 */	lis r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@ha
/* 8150F0B0 | 3C A0 81 11 */	lis r5, instance$1088@ha
/* 8150F0B4 | 7F A3 EB 78 */	mr r3, r29
/* 8150F0B8 | 7F C8 F3 78 */	mr r8, r30
/* 8150F0BC | 38 84 F1 20 */	addi r4, r4, ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv@l
/* 8150F0C0 | 38 A5 E6 18 */	addi r5, r5, instance$1088@l
/* 8150F0C4 | 38 DD 23 18 */	addi r6, r29, 0x2318
/* 8150F0C8 | 38 E0 20 00 */	li r7, 0x2000
/* 8150F0CC | 39 20 00 00 */	li r9, 0x0
/* 8150F0D0 | 48 02 54 79 */	bl OSCreateThread
/* 8150F0D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150F0D8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150F0DC | 41 82 00 0C */	beq .L_8150F0E8
/* 8150F0E0 | 7F A3 EB 78 */	mr r3, r29
/* 8150F0E4 | 48 02 5B 6D */	bl OSResumeThread
.L_8150F0E8:
/* 8150F0E8 | 7C 1F 00 D0 */	neg r0, r31
/* 8150F0EC | 7C 00 FB 78 */	or r0, r0, r31
/* 8150F0F0 | 54 03 0F FE */	srwi r3, r0, 31
.L_8150F0F4:
/* 8150F0F4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150F0F8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150F0FC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150F100 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150F104 | 7C 08 03 A6 */	mtlr r0
/* 8150F108 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150F10C | 4E 80 00 20 */	blr
.endfn Create__Q44nw4r3snd6detail10TaskThreadFl

# .text:0xF8 | 0x8150F110 | size: 0x10
# nw4r::snd::detail::TaskThread::SendWakeupMessage()
.fn SendWakeupMessage__Q44nw4r3snd6detail10TaskThreadFv, global
/* 8150F110 | 38 80 00 01 */	li r4, 0x1
/* 8150F114 | 38 A0 00 00 */	li r5, 0x0
/* 8150F118 | 38 63 23 20 */	addi r3, r3, 0x2320
/* 8150F11C | 48 02 1F 64 */	b OSSendMessage
.endfn SendWakeupMessage__Q44nw4r3snd6detail10TaskThreadFv

# .text:0x108 | 0x8150F120 | size: 0x6C
# nw4r::snd::detail::TaskThread::ThreadFunc(void*)
.fn ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv, global
/* 8150F120 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150F124 | 7C 08 02 A6 */	mflr r0
/* 8150F128 | 38 83 23 40 */	addi r4, r3, 0x2340
/* 8150F12C | 38 A0 00 08 */	li r5, 0x8
/* 8150F130 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150F134 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150F138 | 7C 7F 1B 78 */	mr r31, r3
/* 8150F13C | 38 63 23 20 */	addi r3, r3, 0x2320
/* 8150F140 | 48 02 1E E1 */	bl OSInitMessageQueue
.L_8150F144:
/* 8150F144 | 38 7F 23 20 */	addi r3, r31, 0x2320
/* 8150F148 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150F14C | 38 A0 00 01 */	li r5, 0x1
/* 8150F150 | 48 02 1F F9 */	bl OSReceiveMessage
/* 8150F154 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8150F158 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8150F15C | 40 82 00 10 */	bne .L_8150F16C
/* 8150F160 | 4B FF F9 B1 */	bl GetInstance__Q44nw4r3snd6detail11TaskManagerFv
/* 8150F164 | 4B FF FC 25 */	bl Execute__Q44nw4r3snd6detail11TaskManagerFv
/* 8150F168 | 4B FF FF DC */	b .L_8150F144
.L_8150F16C:
/* 8150F16C | 28 00 00 02 */	cmplwi r0, 0x2
/* 8150F170 | 40 82 FF D4 */	bne .L_8150F144
/* 8150F174 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150F178 | 38 60 00 00 */	li r3, 0x0
/* 8150F17C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150F180 | 7C 08 03 A6 */	mtlr r0
/* 8150F184 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150F188 | 4E 80 00 20 */	blr
.endfn ThreadFunc__Q44nw4r3snd6detail10TaskThreadFPv

# 0x81698F38..0x81698F40 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F38 | size: 0x1
.obj "@GUARD@instance$1088", local
	.skip 0x1
.endobj "@GUARD@instance$1088"

# .sbss:0x1 | 0x81698F39 | size: 0x7
.obj gap_12_81698F39_sbss, global
.hidden gap_12_81698F39_sbss
	.skip 0x7
.endobj gap_12_81698F39_sbss
