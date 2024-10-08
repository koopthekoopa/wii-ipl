.include "macros.inc"
.file "iplSDVFWorker.cpp"

# 0x8135EE98..0x8135FC1C | size: 0xD84
.text
.balign 4

# .text:0x0 | 0x8135EE98 | size: 0xC
# ipl::SDVFWorker::SDVFWorker()
.fn __ct__Q23ipl10SDVFWorkerFv, global
/* 8135EE98 | 38 00 00 00 */	li r0, 0x0
/* 8135EE9C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8135EEA0 | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl10SDVFWorkerFv

# .text:0xC | 0x8135EEA4 | size: 0x138
# ipl::SDVFWorker::create(void*, int)
.fn create__Q23ipl10SDVFWorkerFPvi, global
/* 8135EEA4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135EEA8 | 7C 08 02 A6 */	mflr r0
/* 8135EEAC | 3C E0 00 02 */	lis r7, 0x2
/* 8135EEB0 | 39 20 00 01 */	li r9, 0x1
/* 8135EEB4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135EEB8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135EEBC | 7C BF 2B 78 */	mr r31, r5
/* 8135EEC0 | 7F E8 FB 78 */	mr r8, r31
/* 8135EEC4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135EEC8 | 7C 7E 1B 78 */	mr r30, r3
/* 8135EECC | 7F C5 F3 78 */	mr r5, r30
/* 8135EED0 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 8135EED4 | 3C 64 00 02 */	addis r3, r4, 0x2
/* 8135EED8 | 7C 66 1B 78 */	mr r6, r3
/* 8135EEDC | 3C 80 81 36 */	lis r4, thread_main__Q23ipl10SDVFWorkerFPv@ha
/* 8135EEE0 | 38 84 F0 F4 */	addi r4, r4, thread_main__Q23ipl10SDVFWorkerFPv@l
/* 8135EEE4 | 38 63 11 60 */	addi r3, r3, 0x1160
/* 8135EEE8 | 38 C6 11 60 */	addi r6, r6, 0x1160
/* 8135EEEC | 48 1D 56 5D */	bl OSCreateThread
/* 8135EEF0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EEF4 | 38 A0 00 08 */	li r5, 0x8
/* 8135EEF8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EEFC | 7C 64 1B 78 */	mr r4, r3
/* 8135EF00 | 38 63 14 90 */	addi r3, r3, 0x1490
/* 8135EF04 | 38 84 14 B0 */	addi r4, r4, 0x14b0
/* 8135EF08 | 48 1D 21 19 */	bl OSInitMessageQueue
/* 8135EF0C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF10 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EF14 | 38 63 14 78 */	addi r3, r3, 0x1478
/* 8135EF18 | 48 1D 2C B9 */	bl fn_81531BD0
/* 8135EF1C | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 8135EF20 | 38 C0 00 04 */	li r6, 0x4
/* 8135EF24 | 38 A0 00 01 */	li r5, 0x1
/* 8135EF28 | 38 80 00 00 */	li r4, 0x0
/* 8135EF2C | 38 67 10 00 */	addi r3, r7, 0x1000
/* 8135EF30 | 38 00 FF FF */	li r0, -0x1
/* 8135EF34 | 90 67 11 4C */	stw r3, 0x114c(r7)
/* 8135EF38 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF3C | 90 63 11 50 */	stw r3, 0x1150(r3)
/* 8135EF40 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF44 | B0 C3 11 54 */	sth r6, 0x1154(r3)
/* 8135EF48 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF4C | B0 C3 11 56 */	sth r6, 0x1156(r3)
/* 8135EF50 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF54 | 90 A3 11 58 */	stw r5, 0x1158(r3)
/* 8135EF58 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF5C | 90 A3 11 5C */	stw r5, 0x115c(r3)
/* 8135EF60 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF64 | 90 83 11 40 */	stw r4, 0x1140(r3)
/* 8135EF68 | 80 BE 00 00 */	lwz r5, 0x0(r30)
/* 8135EF6C | 38 65 11 4C */	addi r3, r5, 0x114c
/* 8135EF70 | 90 65 11 44 */	stw r3, 0x1144(r5)
/* 8135EF74 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF78 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EF7C | 90 83 14 D0 */	stw r4, 0x14d0(r3)
/* 8135EF80 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF84 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EF88 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135EF8C | 90 8D A6 B8 */	stw r4, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135EF90 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EF94 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EF98 | 90 83 14 D8 */	stw r4, 0x14d8(r3)
/* 8135EF9C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EFA0 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EFA4 | 90 03 14 DC */	stw r0, 0x14dc(r3)
/* 8135EFA8 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EFAC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EFB0 | 93 E3 14 E0 */	stw r31, 0x14e0(r3)
/* 8135EFB4 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135EFB8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135EFBC | 38 63 11 60 */	addi r3, r3, 0x1160
/* 8135EFC0 | 48 1D 5C 91 */	bl OSResumeThread
/* 8135EFC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135EFC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135EFCC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135EFD0 | 7C 08 03 A6 */	mtlr r0
/* 8135EFD4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135EFD8 | 4E 80 00 20 */	blr
.endfn create__Q23ipl10SDVFWorkerFPvi

# .text:0x144 | 0x8135EFDC | size: 0x10
# ipl::SDVFWorker::is_terminated()
.fn is_terminated__Q23ipl10SDVFWorkerFv, global
/* 8135EFDC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 8135EFE0 | 7C 00 00 34 */	cntlzw r0, r0
/* 8135EFE4 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8135EFE8 | 4E 80 00 20 */	blr
.endfn is_terminated__Q23ipl10SDVFWorkerFv

# .text:0x154 | 0x8135EFEC | size: 0x2C
# ipl::SDVFWorker::is_working()
.fn is_working__Q23ipl10SDVFWorkerFv, global
/* 8135EFEC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135EFF0 | 7C 08 02 A6 */	mflr r0
/* 8135EFF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135EFF8 | 48 00 09 89 */	bl get_state__Q23ipl10SDVFWorkerFv
/* 8135EFFC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135F000 | 7C 00 00 34 */	cntlzw r0, r0
/* 8135F004 | 54 03 D9 7E */	srwi r3, r0, 5
/* 8135F008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F00C | 7C 08 03 A6 */	mtlr r0
/* 8135F010 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F014 | 4E 80 00 20 */	blr
.endfn is_working__Q23ipl10SDVFWorkerFv

# .text:0x180 | 0x8135F018 | size: 0x50
# ipl::SDVFWorker::get_async_result()
.fn get_async_result__Q23ipl10SDVFWorkerFv, global
/* 8135F018 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F01C | 7C 08 02 A6 */	mflr r0
/* 8135F020 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F024 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F028 | 7C 7F 1B 78 */	mr r31, r3
/* 8135F02C | 48 00 09 55 */	bl get_state__Q23ipl10SDVFWorkerFv
/* 8135F030 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135F034 | 7C 00 00 34 */	cntlzw r0, r0
/* 8135F038 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8135F03C | 41 82 00 0C */	beq .L_8135F048
/* 8135F040 | 38 60 FF FF */	li r3, -0x1
/* 8135F044 | 48 00 00 10 */	b .L_8135F054
.L_8135F048:
/* 8135F048 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135F04C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F050 | 80 63 14 D4 */	lwz r3, 0x14d4(r3)
.L_8135F054:
/* 8135F054 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F058 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135F05C | 7C 08 03 A6 */	mtlr r0
/* 8135F060 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F064 | 4E 80 00 20 */	blr
.endfn get_async_result__Q23ipl10SDVFWorkerFv

# .text:0x1D0 | 0x8135F068 | size: 0x8
# ipl::SDVFWorker::get_sd_state()
.fn get_sd_state__Q23ipl10SDVFWorkerFv, global
/* 8135F068 | 80 6D A6 B8 */	lwz r3, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F06C | 4E 80 00 20 */	blr
.endfn get_sd_state__Q23ipl10SDVFWorkerFv

# .text:0x1D8 | 0x8135F070 | size: 0x24
# ipl::SDVFWorker::is_sd_write_protected()
.fn is_sd_write_protected__Q23ipl10SDVFWorkerFv, global
/* 8135F070 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F074 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8135F078 | 40 82 00 14 */	bne .L_8135F08C
/* 8135F07C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F080 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F084 | 80 63 14 D8 */	lwz r3, 0x14d8(r3)
/* 8135F088 | 4E 80 00 20 */	blr
.L_8135F08C:
/* 8135F08C | 38 60 00 00 */	li r3, 0x0
/* 8135F090 | 4E 80 00 20 */	blr
.endfn is_sd_write_protected__Q23ipl10SDVFWorkerFv

# .text:0x1FC | 0x8135F094 | size: 0x48
# ipl::SDVFWorker::terminate_async()
.fn terminate_async__Q23ipl10SDVFWorkerFv, global
/* 8135F094 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F098 | 7C 08 02 A6 */	mflr r0
/* 8135F09C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F0A0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F0A4 | 7C 7F 1B 78 */	mr r31, r3
/* 8135F0A8 | 48 00 08 D9 */	bl get_state__Q23ipl10SDVFWorkerFv
/* 8135F0AC | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135F0B0 | 7C 00 00 34 */	cntlzw r0, r0
/* 8135F0B4 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8135F0B8 | 40 82 00 10 */	bne .L_8135F0C8
/* 8135F0BC | 7F E3 FB 78 */	mr r3, r31
/* 8135F0C0 | 38 80 00 01 */	li r4, 0x1
/* 8135F0C4 | 48 00 07 FD */	bl send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage
.L_8135F0C8:
/* 8135F0C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F0CC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135F0D0 | 7C 08 03 A6 */	mtlr r0
/* 8135F0D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F0D8 | 4E 80 00 20 */	blr
.endfn terminate_async__Q23ipl10SDVFWorkerFv

# .text:0x244 | 0x8135F0DC | size: 0x8
# ipl::SDVFWorker::mount_sd_async()
.fn mount_sd_async__Q23ipl10SDVFWorkerFv, global
/* 8135F0DC | 38 80 00 02 */	li r4, 0x2
/* 8135F0E0 | 48 00 07 E0 */	b send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage
.endfn mount_sd_async__Q23ipl10SDVFWorkerFv

# .text:0x24C | 0x8135F0E4 | size: 0x8
# ipl::SDVFWorker::prepare_cdb_backup_to_sd_async()
.fn prepare_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv, global
/* 8135F0E4 | 38 80 00 05 */	li r4, 0x5
/* 8135F0E8 | 48 00 07 D8 */	b send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage
.endfn prepare_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv

# .text:0x254 | 0x8135F0EC | size: 0x8
# ipl::SDVFWorker::cleanup_cdb_backup_to_sd_async()
.fn cleanup_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv, global
/* 8135F0EC | 38 80 00 06 */	li r4, 0x6
/* 8135F0F0 | 48 00 07 D0 */	b send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage
.endfn cleanup_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv

# .text:0x25C | 0x8135F0F4 | size: 0x3C
# ipl::SDVFWorker::thread_main(void*)
.fn thread_main__Q23ipl10SDVFWorkerFPv, global
/* 8135F0F4 | 7C 60 1B 78 */	mr r0, r3
/* 8135F0F8 | 38 60 00 04 */	li r3, 0x4
/* 8135F0FC | 64 63 00 04 */	oris r3, r3, 0x4
/* 8135F100 | 7C 72 E3 A6 */	mtspr GQR2, r3
/* 8135F104 | 38 60 00 05 */	li r3, 0x5
/* 8135F108 | 64 63 00 05 */	oris r3, r3, 0x5
/* 8135F10C | 7C 73 E3 A6 */	mtspr GQR3, r3
/* 8135F110 | 38 60 00 06 */	li r3, 0x6
/* 8135F114 | 64 63 00 06 */	oris r3, r3, 0x6
/* 8135F118 | 7C 74 E3 A6 */	mtspr GQR4, r3
/* 8135F11C | 38 60 00 07 */	li r3, 0x7
/* 8135F120 | 64 63 00 07 */	oris r3, r3, 0x7
/* 8135F124 | 7C 75 E3 A6 */	mtspr GQR5, r3
/* 8135F128 | 7C 03 03 78 */	mr r3, r0
/* 8135F12C | 48 00 00 04 */	b run__Q23ipl10SDVFWorkerFv
.endfn thread_main__Q23ipl10SDVFWorkerFPv

# .text:0x298 | 0x8135F130 | size: 0x2C0
# ipl::SDVFWorker::run()
.fn run__Q23ipl10SDVFWorkerFv, global
/* 8135F130 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8135F134 | 7C 08 02 A6 */	mflr r0
/* 8135F138 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8135F13C | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135F140 | 48 29 A3 75 */	bl _savegpr_24
/* 8135F144 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135F148 | 3F 60 81 64 */	lis r27, lbl_816394A8@ha
/* 8135F14C | 7C 79 1B 78 */	mr r25, r3
/* 8135F150 | 3B 40 00 00 */	li r26, 0x0
/* 8135F154 | 3B 7B 94 A8 */	addi r27, r27, lbl_816394A8@l
/* 8135F158 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135F15C | 3B C0 00 00 */	li r30, 0x0
/* 8135F160 | 3B 00 FF FE */	li r24, -0x2
/* 8135F164 | 3B A0 FF FF */	li r29, -0x1
/* 8135F168 | 3F 80 81 64 */	lis r28, jumptable_81639558@ha
.L_8135F16C:
/* 8135F16C | 7F 23 CB 78 */	mr r3, r25
/* 8135F170 | 48 00 07 BD */	bl wait_work__Q23ipl10SDVFWorkerFv
/* 8135F174 | 28 03 00 06 */	cmplwi r3, 0x6
/* 8135F178 | 41 81 02 08 */	bgt .L_8135F380
/* 8135F17C | 38 9C 95 58 */	addi r4, r28, jumptable_81639558@l
/* 8135F180 | 54 60 10 3A */	slwi r0, r3, 2
/* 8135F184 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8135F188 | 7C 89 03 A6 */	mtctr r4
/* 8135F18C | 4E 80 04 20 */	bctr
.L_8135F190:
/* 8135F190 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F194 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F198 | 41 82 00 48 */	beq .L_8135F1E0
/* 8135F19C | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F1A0 | 38 80 00 01 */	li r4, 0x1
/* 8135F1A4 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F1A8 | 7C 03 07 74 */	extsb r3, r0
/* 8135F1AC | 48 28 92 91 */	bl fn_815E843C
/* 8135F1B0 | 7C 64 1B 78 */	mr r4, r3
/* 8135F1B4 | 38 7B 00 00 */	addi r3, r27, 0x0
/* 8135F1B8 | 4C C6 31 82 */	crclr cr1eq
/* 8135F1BC | 48 1C F4 E5 */	bl OSReport
/* 8135F1C0 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F1C4 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F1C8 | 7C 03 07 74 */	extsb r3, r0
/* 8135F1CC | 48 28 8D 35 */	bl fn_815E7F00
/* 8135F1D0 | 7C 64 1B 78 */	mr r4, r3
/* 8135F1D4 | 38 7B 00 1D */	addi r3, r27, 0x1d
/* 8135F1D8 | 4C C6 31 82 */	crclr cr1eq
/* 8135F1DC | 48 1C F4 C5 */	bl OSReport
.L_8135F1E0:
/* 8135F1E0 | 3B 40 00 01 */	li r26, 0x1
/* 8135F1E4 | 48 00 01 9C */	b .L_8135F380
.L_8135F1E8:
/* 8135F1E8 | 7F 23 CB 78 */	mr r3, r25
/* 8135F1EC | 48 00 02 05 */	bl do_mount_sd__Q23ipl10SDVFWorkerFv
/* 8135F1F0 | 80 6D A6 B8 */	lwz r3, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F1F4 | 38 03 FF FD */	subi r0, r3, 0x3
/* 8135F1F8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 8135F1FC | 41 81 00 18 */	bgt .L_8135F214
/* 8135F200 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F204 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F208 | 80 03 14 D4 */	lwz r0, 0x14d4(r3)
/* 8135F20C | 90 03 14 DC */	stw r0, 0x14dc(r3)
/* 8135F210 | 48 00 01 70 */	b .L_8135F380
.L_8135F214:
/* 8135F214 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F218 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F21C | 93 A3 14 DC */	stw r29, 0x14dc(r3)
/* 8135F220 | 48 00 01 60 */	b .L_8135F380
.L_8135F224:
/* 8135F224 | 7F 23 CB 78 */	mr r3, r25
/* 8135F228 | 48 00 05 95 */	bl do_format_sd__Q23ipl10SDVFWorkerFv
/* 8135F22C | 48 00 01 54 */	b .L_8135F380
.L_8135F230:
/* 8135F230 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F234 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F238 | 41 82 00 4C */	beq .L_8135F284
/* 8135F23C | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F240 | 38 80 00 01 */	li r4, 0x1
/* 8135F244 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F248 | 7C 03 07 74 */	extsb r3, r0
/* 8135F24C | 48 28 91 F1 */	bl fn_815E843C
/* 8135F250 | 7C 64 1B 78 */	mr r4, r3
/* 8135F254 | 38 7B 00 00 */	addi r3, r27, 0x0
/* 8135F258 | 4C C6 31 82 */	crclr cr1eq
/* 8135F25C | 48 1C F4 45 */	bl OSReport
/* 8135F260 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F264 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F268 | 7C 03 07 74 */	extsb r3, r0
/* 8135F26C | 48 28 8C 95 */	bl fn_815E7F00
/* 8135F270 | 7C 64 1B 78 */	mr r4, r3
/* 8135F274 | 38 7B 00 1D */	addi r3, r27, 0x1d
/* 8135F278 | 4C C6 31 82 */	crclr cr1eq
/* 8135F27C | 48 1C F4 25 */	bl OSReport
/* 8135F280 | 93 CD A6 B8 */	stw r30, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
.L_8135F284:
/* 8135F284 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135F288 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F28C | 41 82 00 0C */	beq .L_8135F298
/* 8135F290 | 38 60 00 00 */	li r3, 0x0
/* 8135F294 | 48 00 00 08 */	b .L_8135F29C
.L_8135F298:
/* 8135F298 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
.L_8135F29C:
/* 8135F29C | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 8135F2A0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F2A4 | 40 82 00 08 */	bne .L_8135F2AC
/* 8135F2A8 | 4B FE 0E FD */	bl mountSD__Q33ipl3cdb7ManagerFv
.L_8135F2AC:
/* 8135F2AC | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135F2B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F2B4 | 41 82 00 0C */	beq .L_8135F2C0
/* 8135F2B8 | 38 60 00 00 */	li r3, 0x0
/* 8135F2BC | 48 00 00 08 */	b .L_8135F2C4
.L_8135F2C0:
/* 8135F2C0 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
.L_8135F2C4:
/* 8135F2C4 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8135F2C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135F2CC | 41 82 00 0C */	beq .L_8135F2D8
/* 8135F2D0 | 2C 04 00 0A */	cmpwi r4, 0xa
/* 8135F2D4 | 40 82 00 14 */	bne .L_8135F2E8
.L_8135F2D8:
/* 8135F2D8 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F2DC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F2E0 | 93 C3 14 D4 */	stw r30, 0x14d4(r3)
/* 8135F2E4 | 48 00 00 9C */	b .L_8135F380
.L_8135F2E8:
/* 8135F2E8 | 38 7B 00 39 */	addi r3, r27, 0x39
/* 8135F2EC | 4C C6 31 82 */	crclr cr1eq
/* 8135F2F0 | 48 1C F3 B1 */	bl OSReport
/* 8135F2F4 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F2F8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F2FC | 93 03 14 D4 */	stw r24, 0x14d4(r3)
/* 8135F300 | 48 00 00 80 */	b .L_8135F380
.L_8135F304:
/* 8135F304 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135F308 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F30C | 41 82 00 0C */	beq .L_8135F318
/* 8135F310 | 38 60 00 00 */	li r3, 0x0
/* 8135F314 | 48 00 00 08 */	b .L_8135F31C
.L_8135F318:
/* 8135F318 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
.L_8135F31C:
/* 8135F31C | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 8135F320 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F324 | 41 82 00 08 */	beq .L_8135F32C
/* 8135F328 | 4B FE 0E ED */	bl unmountSD__Q33ipl3cdb7ManagerFv
.L_8135F32C:
/* 8135F32C | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135F330 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F334 | 41 82 00 0C */	beq .L_8135F340
/* 8135F338 | 38 60 00 00 */	li r3, 0x0
/* 8135F33C | 48 00 00 08 */	b .L_8135F344
.L_8135F340:
/* 8135F340 | 80 7F 00 7C */	lwz r3, 0x7c(r31)
.L_8135F344:
/* 8135F344 | 80 83 00 04 */	lwz r4, 0x4(r3)
/* 8135F348 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135F34C | 41 82 00 0C */	beq .L_8135F358
/* 8135F350 | 2C 04 00 0B */	cmpwi r4, 0xb
/* 8135F354 | 40 82 00 14 */	bne .L_8135F368
.L_8135F358:
/* 8135F358 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F35C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F360 | 93 C3 14 D4 */	stw r30, 0x14d4(r3)
/* 8135F364 | 48 00 00 1C */	b .L_8135F380
.L_8135F368:
/* 8135F368 | 38 7B 00 5D */	addi r3, r27, 0x5d
/* 8135F36C | 4C C6 31 82 */	crclr cr1eq
/* 8135F370 | 48 1C F3 31 */	bl OSReport
/* 8135F374 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F378 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F37C | 93 03 14 D4 */	stw r24, 0x14d4(r3)
.L_8135F380:
/* 8135F380 | 80 79 00 00 */	lwz r3, 0x0(r25)
/* 8135F384 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F388 | 80 63 14 68 */	lwz r3, 0x1468(r3)
/* 8135F38C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F390 | 3C 03 21 53 */	addis r0, r3, 0x2153
/* 8135F394 | 28 00 BA BE */	cmplwi r0, 0xbabe
/* 8135F398 | 41 82 00 18 */	beq .L_8135F3B0
/* 8135F39C | 38 7B 00 83 */	addi r3, r27, 0x83
/* 8135F3A0 | 38 BB 00 95 */	addi r5, r27, 0x95
/* 8135F3A4 | 38 80 01 C0 */	li r4, 0x1c0
/* 8135F3A8 | 4C C6 31 82 */	crclr cr1eq
/* 8135F3AC | 48 1C F3 85 */	bl OSPanic
.L_8135F3B0:
/* 8135F3B0 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 8135F3B4 | 40 82 00 14 */	bne .L_8135F3C8
/* 8135F3B8 | 7F 23 CB 78 */	mr r3, r25
/* 8135F3BC | 38 80 00 00 */	li r4, 0x0
/* 8135F3C0 | 48 00 06 11 */	bl set_state__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker9WorkState
/* 8135F3C4 | 4B FF FD A8 */	b .L_8135F16C
.L_8135F3C8:
/* 8135F3C8 | 38 00 00 00 */	li r0, 0x0
/* 8135F3CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 8135F3D0 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 8135F3D4 | 7F 23 CB 78 */	mr r3, r25
/* 8135F3D8 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F3DC | 48 29 A1 25 */	bl _restgpr_24
/* 8135F3E0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8135F3E4 | 7C 08 03 A6 */	mtlr r0
/* 8135F3E8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8135F3EC | 4E 80 00 20 */	blr
.endfn run__Q23ipl10SDVFWorkerFv

# .text:0x558 | 0x8135F3F0 | size: 0x1EC
# ipl::SDVFWorker::do_mount_sd()
.fn do_mount_sd__Q23ipl10SDVFWorkerFv, global
/* 8135F3F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F3F4 | 7C 08 02 A6 */	mflr r0
/* 8135F3F8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F3FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F400 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135F404 | 7C 7E 1B 78 */	mr r30, r3
/* 8135F408 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F40C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8135F410 | 41 82 01 54 */	beq .L_8135F564
/* 8135F414 | 40 80 00 14 */	bge .L_8135F428
/* 8135F418 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F41C | 41 82 00 18 */	beq .L_8135F434
/* 8135F420 | 40 80 01 1C */	bge .L_8135F53C
/* 8135F424 | 48 00 01 A0 */	b .L_8135F5C4
.L_8135F428:
/* 8135F428 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 8135F42C | 41 82 01 88 */	beq .L_8135F5B4
/* 8135F430 | 48 00 01 94 */	b .L_8135F5C4
.L_8135F434:
/* 8135F434 | 3B E0 00 01 */	li r31, 0x1
/* 8135F438 | 3C 60 00 02 */	lis r3, 0x2
/* 8135F43C | 9B ED A6 BC */	stb r31, lbl_816986FC@sda21(r0)
/* 8135F440 | 48 28 8D 45 */	bl fn_815E8184
/* 8135F444 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135F448 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F44C | 80 63 14 E0 */	lwz r3, 0x14e0(r3)
/* 8135F450 | 48 28 8F 8D */	bl fn_815E83DC
/* 8135F454 | 3C 80 81 36 */	lis r4, sd_insert_callback__Q23ipl10SDVFWorkerFSc@ha
/* 8135F458 | 3C A0 81 36 */	lis r5, sd_eject_callback__Q23ipl10SDVFWorkerFSc@ha
/* 8135F45C | 38 84 FA 30 */	addi r4, r4, sd_insert_callback__Q23ipl10SDVFWorkerFSc@l
/* 8135F460 | 38 60 00 00 */	li r3, 0x0
/* 8135F464 | 38 A5 FA 80 */	addi r5, r5, sd_eject_callback__Q23ipl10SDVFWorkerFSc@l
/* 8135F468 | 48 28 8E 1D */	bl fn_815E8284
/* 8135F46C | 80 DE 00 00 */	lwz r6, 0x0(r30)
/* 8135F470 | 38 60 00 00 */	li r3, 0x0
/* 8135F474 | 38 80 00 00 */	li r4, 0x0
/* 8135F478 | 38 A0 00 00 */	li r5, 0x0
/* 8135F47C | 38 C6 11 40 */	addi r6, r6, 0x1140
/* 8135F480 | 48 28 88 05 */	bl fn_815E7C84
/* 8135F484 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F488 | 40 82 00 80 */	bne .L_8135F508
/* 8135F48C | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8135F490 | 3C 60 81 64 */	lis r3, lbl_81639574@ha
/* 8135F494 | 38 63 95 74 */	addi r3, r3, lbl_81639574@l
/* 8135F498 | 88 84 11 48 */	lbz r4, 0x1148(r4)
/* 8135F49C | 7C 84 07 74 */	extsb r4, r4
/* 8135F4A0 | 4C C6 31 82 */	crclr cr1eq
/* 8135F4A4 | 48 1C F1 FD */	bl OSReport
/* 8135F4A8 | 7F C3 F3 78 */	mr r3, r30
/* 8135F4AC | 48 00 01 31 */	bl call_fa_mount__Q23ipl10SDVFWorkerFv
/* 8135F4B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F4B4 | 40 82 00 10 */	bne .L_8135F4C4
/* 8135F4B8 | 38 00 00 05 */	li r0, 0x5
/* 8135F4BC | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F4C0 | 48 00 00 38 */	b .L_8135F4F8
.L_8135F4C4:
/* 8135F4C4 | 2C 03 FF F7 */	cmpwi r3, -0x9
/* 8135F4C8 | 40 82 00 10 */	bne .L_8135F4D8
/* 8135F4CC | 38 00 00 03 */	li r0, 0x3
/* 8135F4D0 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F4D4 | 48 00 00 24 */	b .L_8135F4F8
.L_8135F4D8:
/* 8135F4D8 | 2C 03 FF F6 */	cmpwi r3, -0xa
/* 8135F4DC | 40 82 00 10 */	bne .L_8135F4EC
/* 8135F4E0 | 38 00 00 04 */	li r0, 0x4
/* 8135F4E4 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F4E8 | 48 00 00 10 */	b .L_8135F4F8
.L_8135F4EC:
/* 8135F4EC | 38 00 00 00 */	li r0, 0x0
/* 8135F4F0 | 93 ED A6 B8 */	stw r31, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F4F4 | 98 0D A6 BC */	stb r0, lbl_816986FC@sda21(r0)
.L_8135F4F8:
/* 8135F4F8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8135F4FC | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135F500 | 90 64 14 D4 */	stw r3, 0x14d4(r4)
/* 8135F504 | 48 00 00 C0 */	b .L_8135F5C4
.L_8135F508:
/* 8135F508 | 48 28 8A A1 */	bl fn_815E7FA8
/* 8135F50C | 3C A0 81 64 */	lis r5, lbl_8163959B@ha
/* 8135F510 | 7C 64 1B 78 */	mr r4, r3
/* 8135F514 | 38 65 95 9B */	addi r3, r5, lbl_8163959B@l
/* 8135F518 | 4C C6 31 82 */	crclr cr1eq
/* 8135F51C | 48 1C F1 85 */	bl OSReport
/* 8135F520 | 38 60 00 00 */	li r3, 0x0
/* 8135F524 | 38 00 FF F8 */	li r0, -0x8
/* 8135F528 | 90 6D A6 B8 */	stw r3, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F52C | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135F530 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F534 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135F538 | 48 00 00 8C */	b .L_8135F5C4
.L_8135F53C:
/* 8135F53C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F540 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F544 | 80 03 14 DC */	lwz r0, 0x14dc(r3)
/* 8135F548 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8135F54C | 40 82 00 10 */	bne .L_8135F55C
/* 8135F550 | 38 00 FF FE */	li r0, -0x2
/* 8135F554 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135F558 | 48 00 00 6C */	b .L_8135F5C4
.L_8135F55C:
/* 8135F55C | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135F560 | 48 00 00 64 */	b .L_8135F5C4
.L_8135F564:
/* 8135F564 | 48 00 00 79 */	bl call_fa_mount__Q23ipl10SDVFWorkerFv
/* 8135F568 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F56C | 40 82 00 10 */	bne .L_8135F57C
/* 8135F570 | 38 00 00 05 */	li r0, 0x5
/* 8135F574 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F578 | 48 00 00 2C */	b .L_8135F5A4
.L_8135F57C:
/* 8135F57C | 2C 03 FF F7 */	cmpwi r3, -0x9
/* 8135F580 | 40 82 00 10 */	bne .L_8135F590
/* 8135F584 | 38 00 00 03 */	li r0, 0x3
/* 8135F588 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F58C | 48 00 00 18 */	b .L_8135F5A4
.L_8135F590:
/* 8135F590 | 2C 03 FF F6 */	cmpwi r3, -0xa
/* 8135F594 | 38 00 00 01 */	li r0, 0x1
/* 8135F598 | 40 82 00 08 */	bne .L_8135F5A0
/* 8135F59C | 38 00 00 04 */	li r0, 0x4
.L_8135F5A0:
/* 8135F5A0 | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
.L_8135F5A4:
/* 8135F5A4 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8135F5A8 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135F5AC | 90 64 14 D4 */	stw r3, 0x14d4(r4)
/* 8135F5B0 | 48 00 00 14 */	b .L_8135F5C4
.L_8135F5B4:
/* 8135F5B4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F5B8 | 38 00 00 00 */	li r0, 0x0
/* 8135F5BC | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F5C0 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
.L_8135F5C4:
/* 8135F5C4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F5C8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135F5CC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135F5D0 | 7C 08 03 A6 */	mtlr r0
/* 8135F5D4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F5D8 | 4E 80 00 20 */	blr
.endfn do_mount_sd__Q23ipl10SDVFWorkerFv

# .text:0x744 | 0x8135F5DC | size: 0x1E0
# ipl::SDVFWorker::call_fa_mount()
.fn call_fa_mount__Q23ipl10SDVFWorkerFv, global
/* 8135F5DC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135F5E0 | 7C 08 02 A6 */	mflr r0
/* 8135F5E4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135F5E8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135F5EC | 48 29 9E DD */	bl _savegpr_29
/* 8135F5F0 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F5F4 | 3F E0 81 64 */	lis r31, lbl_816394A8@ha
/* 8135F5F8 | 7C 7D 1B 78 */	mr r29, r3
/* 8135F5FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F600 | 3B FF 94 A8 */	addi r31, r31, lbl_816394A8@l
/* 8135F604 | 41 82 00 70 */	beq .L_8135F674
/* 8135F608 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F60C | 38 80 00 01 */	li r4, 0x1
/* 8135F610 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F614 | 7C 03 07 74 */	extsb r3, r0
/* 8135F618 | 48 28 8E 25 */	bl fn_815E843C
/* 8135F61C | 7C 64 1B 78 */	mr r4, r3
/* 8135F620 | 38 7F 01 15 */	addi r3, r31, 0x115
/* 8135F624 | 4C C6 31 82 */	crclr cr1eq
/* 8135F628 | 48 1C F0 79 */	bl OSReport
/* 8135F62C | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F630 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F634 | 7C 03 07 74 */	extsb r3, r0
/* 8135F638 | 48 28 88 C9 */	bl fn_815E7F00
/* 8135F63C | 7C 64 1B 78 */	mr r4, r3
/* 8135F640 | 38 7F 00 1D */	addi r3, r31, 0x1d
/* 8135F644 | 4C C6 31 82 */	crclr cr1eq
/* 8135F648 | 48 1C F0 59 */	bl OSReport
/* 8135F64C | 80 DD 00 00 */	lwz r6, 0x0(r29)
/* 8135F650 | 38 60 00 00 */	li r3, 0x0
/* 8135F654 | 38 80 00 00 */	li r4, 0x0
/* 8135F658 | 38 A0 00 00 */	li r5, 0x0
/* 8135F65C | 38 C6 11 40 */	addi r6, r6, 0x1140
/* 8135F660 | 48 28 86 25 */	bl fn_815E7C84
/* 8135F664 | 7C 64 1B 78 */	mr r4, r3
/* 8135F668 | 38 7F 01 47 */	addi r3, r31, 0x147
/* 8135F66C | 4C C6 31 82 */	crclr cr1eq
/* 8135F670 | 48 1C F0 31 */	bl OSReport
.L_8135F674:
/* 8135F674 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F678 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F67C | 7C 03 07 74 */	extsb r3, r0
/* 8135F680 | 48 28 8B D5 */	bl fn_815E8254
/* 8135F684 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F688 | 40 82 00 98 */	bne .L_8135F720
/* 8135F68C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8135F690 | 38 7F 01 63 */	addi r3, r31, 0x163
/* 8135F694 | 88 84 11 48 */	lbz r4, 0x1148(r4)
/* 8135F698 | 7C 84 07 74 */	extsb r4, r4
/* 8135F69C | 4C C6 31 82 */	crclr cr1eq
/* 8135F6A0 | 48 1C F0 01 */	bl OSReport
/* 8135F6A4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F6A8 | 38 80 00 01 */	li r4, 0x1
/* 8135F6AC | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F6B0 | 7C 03 07 74 */	extsb r3, r0
/* 8135F6B4 | 48 28 87 C5 */	bl fn_815E7E78
/* 8135F6B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F6BC | 7C 7E 1B 78 */	mr r30, r3
/* 8135F6C0 | 40 82 00 1C */	bne .L_8135F6DC
/* 8135F6C4 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8135F6C8 | 38 00 00 00 */	li r0, 0x0
/* 8135F6CC | 38 60 00 00 */	li r3, 0x0
/* 8135F6D0 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135F6D4 | 90 04 14 D8 */	stw r0, 0x14d8(r4)
/* 8135F6D8 | 48 00 00 CC */	b .L_8135F7A4
.L_8135F6DC:
/* 8135F6DC | 48 28 88 CD */	bl fn_815E7FA8
/* 8135F6E0 | 2C 03 00 C9 */	cmpwi r3, 0xc9
/* 8135F6E4 | 40 82 00 28 */	bne .L_8135F70C
/* 8135F6E8 | 38 7F 01 89 */	addi r3, r31, 0x189
/* 8135F6EC | 4C C6 31 82 */	crclr cr1eq
/* 8135F6F0 | 48 1C EF B1 */	bl OSReport
/* 8135F6F4 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8135F6F8 | 38 00 00 01 */	li r0, 0x1
/* 8135F6FC | 38 60 00 00 */	li r3, 0x0
/* 8135F700 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135F704 | 90 04 14 D8 */	stw r0, 0x14d8(r4)
/* 8135F708 | 48 00 00 9C */	b .L_8135F7A4
.L_8135F70C:
/* 8135F70C | 7F A3 EB 78 */	mr r3, r29
/* 8135F710 | 7F C4 F3 78 */	mr r4, r30
/* 8135F714 | 38 A0 00 00 */	li r5, 0x0
/* 8135F718 | 48 00 03 B9 */	bl handle_sd_error__Q23ipl10SDVFWorkerFlPl
/* 8135F71C | 48 00 00 88 */	b .L_8135F7A4
.L_8135F720:
/* 8135F720 | 48 28 88 89 */	bl fn_815E7FA8
/* 8135F724 | 7C 7E 1B 78 */	mr r30, r3
/* 8135F728 | 38 7F 01 B2 */	addi r3, r31, 0x1b2
/* 8135F72C | 7F C4 F3 78 */	mr r4, r30
/* 8135F730 | 4C C6 31 82 */	crclr cr1eq
/* 8135F734 | 48 1C EF 6D */	bl OSReport
/* 8135F738 | 2C 1E 00 08 */	cmpwi r30, 0x8
/* 8135F73C | 40 82 00 20 */	bne .L_8135F75C
/* 8135F740 | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8135F744 | 38 60 FF FE */	li r3, -0x2
/* 8135F748 | 88 04 11 49 */	lbz r0, 0x1149(r4)
/* 8135F74C | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 8135F750 | 41 82 00 54 */	beq .L_8135F7A4
/* 8135F754 | 38 60 FF F7 */	li r3, -0x9
/* 8135F758 | 48 00 00 4C */	b .L_8135F7A4
.L_8135F75C:
/* 8135F75C | 2C 1E 00 16 */	cmpwi r30, 0x16
/* 8135F760 | 40 82 00 0C */	bne .L_8135F76C
/* 8135F764 | 38 60 FF FE */	li r3, -0x2
/* 8135F768 | 48 00 00 3C */	b .L_8135F7A4
.L_8135F76C:
/* 8135F76C | 2C 1E 00 05 */	cmpwi r30, 0x5
/* 8135F770 | 40 82 00 30 */	bne .L_8135F7A0
/* 8135F774 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F778 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8135F77C | 40 82 00 0C */	bne .L_8135F788
/* 8135F780 | 38 60 FF FE */	li r3, -0x2
/* 8135F784 | 48 00 00 20 */	b .L_8135F7A4
.L_8135F788:
/* 8135F788 | 88 0D A6 BC */	lbz r0, lbl_816986FC@sda21(r0)
/* 8135F78C | 38 60 FF FE */	li r3, -0x2
/* 8135F790 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135F794 | 41 82 00 10 */	beq .L_8135F7A4
/* 8135F798 | 38 60 FF F6 */	li r3, -0xa
/* 8135F79C | 48 00 00 08 */	b .L_8135F7A4
.L_8135F7A0:
/* 8135F7A0 | 38 60 FF F6 */	li r3, -0xa
.L_8135F7A4:
/* 8135F7A4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135F7A8 | 48 29 9D 6D */	bl _restgpr_29
/* 8135F7AC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135F7B0 | 7C 08 03 A6 */	mtlr r0
/* 8135F7B4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135F7B8 | 4E 80 00 20 */	blr
.endfn call_fa_mount__Q23ipl10SDVFWorkerFv

# .text:0x924 | 0x8135F7BC | size: 0x104
# ipl::SDVFWorker::do_format_sd()
.fn do_format_sd__Q23ipl10SDVFWorkerFv, global
/* 8135F7BC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135F7C0 | 7C 08 02 A6 */	mflr r0
/* 8135F7C4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135F7C8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135F7CC | 48 29 9C FD */	bl _savegpr_29
/* 8135F7D0 | 80 8D A6 B8 */	lwz r4, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135F7D4 | 3F E0 81 64 */	lis r31, lbl_816394A8@ha
/* 8135F7D8 | 7C 7D 1B 78 */	mr r29, r3
/* 8135F7DC | 2C 04 00 05 */	cmpwi r4, 0x5
/* 8135F7E0 | 3B FF 94 A8 */	addi r31, r31, lbl_816394A8@l
/* 8135F7E4 | 41 82 00 2C */	beq .L_8135F810
/* 8135F7E8 | 2C 04 00 03 */	cmpwi r4, 0x3
/* 8135F7EC | 41 82 00 24 */	beq .L_8135F810
/* 8135F7F0 | 38 7F 01 D3 */	addi r3, r31, 0x1d3
/* 8135F7F4 | 4C C6 31 82 */	crclr cr1eq
/* 8135F7F8 | 48 1C EE A9 */	bl OSReport
/* 8135F7FC | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F800 | 38 00 FF FE */	li r0, -0x2
/* 8135F804 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F808 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135F80C | 48 00 00 9C */	b .L_8135F8A8
.L_8135F810:
/* 8135F810 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F814 | 38 80 00 00 */	li r4, 0x0
/* 8135F818 | 88 03 11 48 */	lbz r0, 0x1148(r3)
/* 8135F81C | 7C 03 07 74 */	extsb r3, r0
/* 8135F820 | 48 28 88 4D */	bl fn_815E806C
/* 8135F824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135F828 | 7C 7E 1B 78 */	mr r30, r3
/* 8135F82C | 41 82 00 30 */	beq .L_8135F85C
/* 8135F830 | 48 28 87 79 */	bl fn_815E7FA8
/* 8135F834 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8135F838 | 40 82 00 24 */	bne .L_8135F85C
/* 8135F83C | 38 7F 02 12 */	addi r3, r31, 0x212
/* 8135F840 | 4C C6 31 82 */	crclr cr1eq
/* 8135F844 | 48 1C EE 5D */	bl OSReport
/* 8135F848 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F84C | 38 00 FF F7 */	li r0, -0x9
/* 8135F850 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F854 | 90 03 14 D4 */	stw r0, 0x14d4(r3)
/* 8135F858 | 48 00 00 50 */	b .L_8135F8A8
.L_8135F85C:
/* 8135F85C | 7F A3 EB 78 */	mr r3, r29
/* 8135F860 | 7F C4 F3 78 */	mr r4, r30
/* 8135F864 | 38 A0 00 00 */	li r5, 0x0
/* 8135F868 | 48 00 02 69 */	bl handle_sd_error__Q23ipl10SDVFWorkerFlPl
/* 8135F86C | 80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8135F870 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 8135F874 | 90 64 14 D4 */	stw r3, 0x14d4(r4)
/* 8135F878 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8135F87C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F880 | 80 83 14 D4 */	lwz r4, 0x14d4(r3)
/* 8135F884 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135F888 | 40 82 00 14 */	bne .L_8135F89C
/* 8135F88C | 38 7F 02 4D */	addi r3, r31, 0x24d
/* 8135F890 | 4C C6 31 82 */	crclr cr1eq
/* 8135F894 | 48 1C EE 0D */	bl OSReport
/* 8135F898 | 48 00 00 10 */	b .L_8135F8A8
.L_8135F89C:
/* 8135F89C | 38 7F 02 72 */	addi r3, r31, 0x272
/* 8135F8A0 | 4C C6 31 82 */	crclr cr1eq
/* 8135F8A4 | 48 1C ED FD */	bl OSReport
.L_8135F8A8:
/* 8135F8A8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135F8AC | 48 29 9C 69 */	bl _restgpr_29
/* 8135F8B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135F8B4 | 7C 08 03 A6 */	mtlr r0
/* 8135F8B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135F8BC | 4E 80 00 20 */	blr
.endfn do_format_sd__Q23ipl10SDVFWorkerFv

# .text:0xA28 | 0x8135F8C0 | size: 0x6C
# ipl::SDVFWorker::send_work(ipl::SDVFWorker::WorkMessage)
.fn send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage, global
/* 8135F8C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F8C4 | 7C 08 02 A6 */	mflr r0
/* 8135F8C8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F8CC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F8D0 | 7C 9F 23 78 */	mr r31, r4
/* 8135F8D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135F8D8 | 7C 7E 1B 78 */	mr r30, r3
/* 8135F8DC | 48 00 00 A5 */	bl get_state__Q23ipl10SDVFWorkerFv
/* 8135F8E0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 8135F8E4 | 7C 00 00 34 */	cntlzw r0, r0
/* 8135F8E8 | 54 00 D9 7F */	srwi. r0, r0, 5
/* 8135F8EC | 40 82 00 28 */	bne .L_8135F914
/* 8135F8F0 | 7F C3 F3 78 */	mr r3, r30
/* 8135F8F4 | 38 80 00 01 */	li r4, 0x1
/* 8135F8F8 | 48 00 00 D9 */	bl set_state__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker9WorkState
/* 8135F8FC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135F900 | 7F E4 FB 78 */	mr r4, r31
/* 8135F904 | 38 A0 00 00 */	li r5, 0x0
/* 8135F908 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F90C | 38 63 14 90 */	addi r3, r3, 0x1490
/* 8135F910 | 48 1D 17 71 */	bl OSSendMessage
.L_8135F914:
/* 8135F914 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F918 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135F91C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135F920 | 7C 08 03 A6 */	mtlr r0
/* 8135F924 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F928 | 4E 80 00 20 */	blr
.endfn send_work__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker11WorkMessage

# .text:0xA94 | 0x8135F92C | size: 0x54
# ipl::SDVFWorker::wait_work()
.fn wait_work__Q23ipl10SDVFWorkerFv, global
/* 8135F92C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F930 | 7C 08 02 A6 */	mflr r0
/* 8135F934 | 38 A0 00 01 */	li r5, 0x1
/* 8135F938 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F93C | 38 00 00 00 */	li r0, 0x0
/* 8135F940 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135F944 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135F948 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 8135F94C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F950 | 38 63 14 90 */	addi r3, r3, 0x1490
/* 8135F954 | 48 1D 17 F5 */	bl OSReceiveMessage
/* 8135F958 | 3C 60 81 64 */	lis r3, lbl_8163973C@ha
/* 8135F95C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 8135F960 | 38 63 97 3C */	addi r3, r3, lbl_8163973C@l
/* 8135F964 | 4C C6 31 82 */	crclr cr1eq
/* 8135F968 | 48 1C ED 39 */	bl OSReport
/* 8135F96C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F970 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 8135F974 | 7C 08 03 A6 */	mtlr r0
/* 8135F978 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F97C | 4E 80 00 20 */	blr
.endfn wait_work__Q23ipl10SDVFWorkerFv

# .text:0xAE8 | 0x8135F980 | size: 0x50
# ipl::SDVFWorker::get_state()
.fn get_state__Q23ipl10SDVFWorkerFv, global
/* 8135F980 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F984 | 7C 08 02 A6 */	mflr r0
/* 8135F988 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F98C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F990 | 7C 7F 1B 78 */	mr r31, r3
/* 8135F994 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 8135F998 | 3C 64 00 02 */	addis r3, r4, 0x2
/* 8135F99C | 38 63 14 78 */	addi r3, r3, 0x1478
/* 8135F9A0 | 48 1D 22 69 */	bl fn_81531C08
/* 8135F9A4 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8135F9A8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135F9AC | 83 E3 14 D0 */	lwz r31, 0x14d0(r3)
/* 8135F9B0 | 38 63 14 78 */	addi r3, r3, 0x1478
/* 8135F9B4 | 48 1D 23 31 */	bl fn_81531CE4
/* 8135F9B8 | 7F E3 FB 78 */	mr r3, r31
/* 8135F9BC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135F9C0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135F9C4 | 7C 08 03 A6 */	mtlr r0
/* 8135F9C8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135F9CC | 4E 80 00 20 */	blr
.endfn get_state__Q23ipl10SDVFWorkerFv

# .text:0xB38 | 0x8135F9D0 | size: 0x60
# ipl::SDVFWorker::set_state(ipl::SDVFWorker::WorkState)
.fn set_state__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker9WorkState, global
/* 8135F9D0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135F9D4 | 7C 08 02 A6 */	mflr r0
/* 8135F9D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135F9DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135F9E0 | 7C 9F 23 78 */	mr r31, r4
/* 8135F9E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135F9E8 | 7C 7E 1B 78 */	mr r30, r3
/* 8135F9EC | 80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8135F9F0 | 3C 65 00 02 */	addis r3, r5, 0x2
/* 8135F9F4 | 38 63 14 78 */	addi r3, r3, 0x1478
/* 8135F9F8 | 48 1D 22 11 */	bl fn_81531C08
/* 8135F9FC | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135FA00 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135FA04 | 93 E3 14 D0 */	stw r31, 0x14d0(r3)
/* 8135FA08 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 8135FA0C | 3C 63 00 02 */	addis r3, r3, 0x2
/* 8135FA10 | 38 63 14 78 */	addi r3, r3, 0x1478
/* 8135FA14 | 48 1D 22 D1 */	bl fn_81531CE4
/* 8135FA18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135FA1C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135FA20 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135FA24 | 7C 08 03 A6 */	mtlr r0
/* 8135FA28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135FA2C | 4E 80 00 20 */	blr
.endfn set_state__Q23ipl10SDVFWorkerFQ33ipl10SDVFWorker9WorkState

# .text:0xB98 | 0x8135FA30 | size: 0x50
# ipl::SDVFWorker::sd_insert_callback(signed char)
.fn sd_insert_callback__Q23ipl10SDVFWorkerFSc, global
/* 8135FA30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135FA34 | 7C 08 02 A6 */	mflr r0
/* 8135FA38 | 38 80 00 01 */	li r4, 0x1
/* 8135FA3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135FA40 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135FA44 | 98 8D A6 BC */	stb r4, lbl_816986FC@sda21(r0)
/* 8135FA48 | 7C 64 1B 78 */	mr r4, r3
/* 8135FA4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135FA50 | 41 82 00 20 */	beq .L_8135FA70
/* 8135FA54 | 3C 60 81 64 */	lis r3, lbl_8163975E@ha
/* 8135FA58 | 7C 84 07 74 */	extsb r4, r4
/* 8135FA5C | 38 63 97 5E */	addi r3, r3, lbl_8163975E@l
/* 8135FA60 | 4C C6 31 82 */	crclr cr1eq
/* 8135FA64 | 48 1C EC 3D */	bl OSReport
/* 8135FA68 | 38 00 00 02 */	li r0, 0x2
/* 8135FA6C | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
.L_8135FA70:
/* 8135FA70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135FA74 | 7C 08 03 A6 */	mtlr r0
/* 8135FA78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135FA7C | 4E 80 00 20 */	blr
.endfn sd_insert_callback__Q23ipl10SDVFWorkerFSc

# .text:0xBE8 | 0x8135FA80 | size: 0x50
# ipl::SDVFWorker::sd_eject_callback(signed char)
.fn sd_eject_callback__Q23ipl10SDVFWorkerFSc, global
/* 8135FA80 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135FA84 | 7C 08 02 A6 */	mflr r0
/* 8135FA88 | 38 80 00 00 */	li r4, 0x0
/* 8135FA8C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135FA90 | 80 0D A6 B8 */	lwz r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
/* 8135FA94 | 98 8D A6 BC */	stb r4, lbl_816986FC@sda21(r0)
/* 8135FA98 | 7C 64 1B 78 */	mr r4, r3
/* 8135FA9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135FAA0 | 41 82 00 20 */	beq .L_8135FAC0
/* 8135FAA4 | 3C 60 81 64 */	lis r3, lbl_8163978A@ha
/* 8135FAA8 | 7C 84 07 74 */	extsb r4, r4
/* 8135FAAC | 38 63 97 8A */	addi r3, r3, lbl_8163978A@l
/* 8135FAB0 | 4C C6 31 82 */	crclr cr1eq
/* 8135FAB4 | 48 1C EB ED */	bl OSReport
/* 8135FAB8 | 38 00 00 01 */	li r0, 0x1
/* 8135FABC | 90 0D A6 B8 */	stw r0, s_sd_state__Q23ipl10SDVFWorker@sda21(r0)
.L_8135FAC0:
/* 8135FAC0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135FAC4 | 7C 08 03 A6 */	mtlr r0
/* 8135FAC8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135FACC | 4E 80 00 20 */	blr
.endfn sd_eject_callback__Q23ipl10SDVFWorkerFSc

# .text:0xC38 | 0x8135FAD0 | size: 0x14C
# ipl::SDVFWorker::handle_sd_error(long, long*)
.fn handle_sd_error__Q23ipl10SDVFWorkerFlPl, global
/* 8135FAD0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135FAD4 | 7C 08 02 A6 */	mflr r0
/* 8135FAD8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 8135FADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135FAE0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135FAE4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135FAE8 | 7C BE 2B 78 */	mr r30, r5
/* 8135FAEC | 40 82 00 0C */	bne .L_8135FAF8
/* 8135FAF0 | 38 60 00 00 */	li r3, 0x0
/* 8135FAF4 | 48 00 01 10 */	b .L_8135FC04
.L_8135FAF8:
/* 8135FAF8 | 3B E0 FF FE */	li r31, -0x2
/* 8135FAFC | 48 28 84 AD */	bl fn_815E7FA8
/* 8135FB00 | 2C 03 00 15 */	cmpwi r3, 0x15
/* 8135FB04 | 40 80 00 6C */	bge .L_8135FB70
/* 8135FB08 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 8135FB0C | 41 82 00 CC */	beq .L_8135FBD8
/* 8135FB10 | 40 80 00 30 */	bge .L_8135FB40
/* 8135FB14 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8135FB18 | 40 80 00 1C */	bge .L_8135FB34
/* 8135FB1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135FB20 | 41 82 00 BC */	beq .L_8135FBDC
/* 8135FB24 | 40 80 00 9C */	bge .L_8135FBC0
/* 8135FB28 | 2C 03 FF FF */	cmpwi r3, -0x1
/* 8135FB2C | 40 80 00 94 */	bge .L_8135FBC0
/* 8135FB30 | 48 00 00 AC */	b .L_8135FBDC
.L_8135FB34:
/* 8135FB34 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8135FB38 | 41 82 00 A0 */	beq .L_8135FBD8
/* 8135FB3C | 48 00 00 A0 */	b .L_8135FBDC
.L_8135FB40:
/* 8135FB40 | 2C 03 00 0E */	cmpwi r3, 0xe
/* 8135FB44 | 40 80 00 18 */	bge .L_8135FB5C
/* 8135FB48 | 2C 03 00 0C */	cmpwi r3, 0xc
/* 8135FB4C | 40 80 00 74 */	bge .L_8135FBC0
/* 8135FB50 | 2C 03 00 0A */	cmpwi r3, 0xa
/* 8135FB54 | 40 80 00 88 */	bge .L_8135FBDC
/* 8135FB58 | 48 00 00 68 */	b .L_8135FBC0
.L_8135FB5C:
/* 8135FB5C | 2C 03 00 12 */	cmpwi r3, 0x12
/* 8135FB60 | 40 80 00 7C */	bge .L_8135FBDC
/* 8135FB64 | 2C 03 00 10 */	cmpwi r3, 0x10
/* 8135FB68 | 40 80 00 58 */	bge .L_8135FBC0
/* 8135FB6C | 48 00 00 70 */	b .L_8135FBDC
.L_8135FB70:
/* 8135FB70 | 2C 03 00 58 */	cmpwi r3, 0x58
/* 8135FB74 | 41 82 00 4C */	beq .L_8135FBC0
/* 8135FB78 | 40 80 00 30 */	bge .L_8135FBA8
/* 8135FB7C | 2C 03 00 1C */	cmpwi r3, 0x1c
/* 8135FB80 | 41 82 00 48 */	beq .L_8135FBC8
/* 8135FB84 | 40 80 00 18 */	bge .L_8135FB9C
/* 8135FB88 | 2C 03 00 1B */	cmpwi r3, 0x1b
/* 8135FB8C | 40 80 00 34 */	bge .L_8135FBC0
/* 8135FB90 | 2C 03 00 19 */	cmpwi r3, 0x19
/* 8135FB94 | 40 80 00 48 */	bge .L_8135FBDC
/* 8135FB98 | 48 00 00 28 */	b .L_8135FBC0
.L_8135FB9C:
/* 8135FB9C | 2C 03 00 2E */	cmpwi r3, 0x2e
/* 8135FBA0 | 41 82 00 20 */	beq .L_8135FBC0
/* 8135FBA4 | 48 00 00 38 */	b .L_8135FBDC
.L_8135FBA8:
/* 8135FBA8 | 2C 03 00 C9 */	cmpwi r3, 0xc9
/* 8135FBAC | 41 82 00 24 */	beq .L_8135FBD0
/* 8135FBB0 | 40 80 00 2C */	bge .L_8135FBDC
/* 8135FBB4 | 2C 03 00 5A */	cmpwi r3, 0x5a
/* 8135FBB8 | 41 82 00 08 */	beq .L_8135FBC0
/* 8135FBBC | 48 00 00 20 */	b .L_8135FBDC
.L_8135FBC0:
/* 8135FBC0 | 3B E0 FF F8 */	li r31, -0x8
/* 8135FBC4 | 48 00 00 18 */	b .L_8135FBDC
.L_8135FBC8:
/* 8135FBC8 | 3B E0 FF F9 */	li r31, -0x7
/* 8135FBCC | 48 00 00 10 */	b .L_8135FBDC
.L_8135FBD0:
/* 8135FBD0 | 3B E0 FF F5 */	li r31, -0xb
/* 8135FBD4 | 48 00 00 08 */	b .L_8135FBDC
.L_8135FBD8:
/* 8135FBD8 | 3B E0 FF FE */	li r31, -0x2
.L_8135FBDC:
/* 8135FBDC | 48 28 83 CD */	bl fn_815E7FA8
/* 8135FBE0 | 3C A0 81 64 */	lis r5, lbl_816397B6@ha
/* 8135FBE4 | 7C 64 1B 78 */	mr r4, r3
/* 8135FBE8 | 38 65 97 B6 */	addi r3, r5, lbl_816397B6@l
/* 8135FBEC | 4C C6 31 82 */	crclr cr1eq
/* 8135FBF0 | 48 1C EA B1 */	bl OSReport
/* 8135FBF4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8135FBF8 | 41 82 00 08 */	beq .L_8135FC00
/* 8135FBFC | 93 FE 00 00 */	stw r31, 0x0(r30)
.L_8135FC00:
/* 8135FC00 | 7F E3 FB 78 */	mr r3, r31
.L_8135FC04:
/* 8135FC04 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135FC08 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135FC0C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135FC10 | 7C 08 03 A6 */	mtlr r0
/* 8135FC14 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135FC18 | 4E 80 00 20 */	blr
.endfn handle_sd_error__Q23ipl10SDVFWorkerFlPl

# 0x816394A8..0x816397E0 | size: 0x338
.data
.balign 8

# .data:0x0 | 0x816394A8 | size: 0xB0
.obj lbl_816394A8, global
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x756E6D6F
	.4byte 0x756E7420
	.4byte 0x7364205B
	.4byte 0x25645D0A
	.4byte 0x00534456
	.4byte 0x46576F72
	.4byte 0x6B65723A
	.4byte 0x20646574
	.4byte 0x61636820
	.4byte 0x7364205B
	.4byte 0x25645D0A
	.4byte 0x00534456
	.4byte 0x46576F72
	.4byte 0x6B65723A
	.4byte 0x20434442
	.4byte 0x4D6F756E
	.4byte 0x74534420
	.4byte 0x6661696C
	.4byte 0x6564205B
	.4byte 0x25645D0A
	.4byte 0x00534456
	.4byte 0x46576F72
	.4byte 0x6B65723A
	.4byte 0x20434442
	.4byte 0x556E6D6F
	.4byte 0x756E7453
	.4byte 0x44206661
	.4byte 0x696C6564
	.4byte 0x205B2564
	.4byte 0x5D0A0069
	.4byte 0x706C5344
	.4byte 0x5646576F
	.4byte 0x726B6572
	.4byte 0x2E637070
	.4byte 0x00534456
	.4byte 0x46576F72
	.4byte 0x6B65723A
	.4byte 0x20737461
	.4byte 0x636B206F
	.4byte 0x76657221
	.4byte 0x0A000000
.endobj lbl_816394A8

# .data:0xB0 | 0x81639558 | size: 0x1C
.obj jumptable_81639558, local
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F380
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F190
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F1E8
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F224
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F380
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F230
	.rel run__Q23ipl10SDVFWorkerFv, .L_8135F304
.endobj jumptable_81639558

# .data:0xCC | 0x81639574 | size: 0x27
.obj lbl_81639574, global
	.string "SDVFWorker: attach SD card drive = %c\n"
.endobj lbl_81639574

# .data:0xF3 | 0x8163959B | size: 0x1A1
.obj lbl_8163959B, global
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x46414174
	.4byte 0x74616368
	.4byte 0x20666169
	.4byte 0x6C65642E
	.4byte 0x5B25645D
	.4byte 0x0A005344
	.4byte 0x5646576F
	.4byte 0x726B6572
	.4byte 0x3A20666F
	.4byte 0x72636520
	.4byte 0x756E6D6F
	.4byte 0x756E7420
	.4byte 0x73642062
	.4byte 0x65666F72
	.4byte 0x65206D6F
	.4byte 0x756E7469
	.4byte 0x6E675B25
	.4byte 0x645D0A00
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x61747461
	.4byte 0x63682073
	.4byte 0x64205B25
	.4byte 0x645D0A00
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x6D6F756E
	.4byte 0x74205344
	.4byte 0x20636172
	.4byte 0x64206472
	.4byte 0x69766520
	.4byte 0x3D202563
	.4byte 0x0A005344
	.4byte 0x5646576F
	.4byte 0x726B6572
	.4byte 0x3A205344
	.4byte 0x20636172
	.4byte 0x64206973
	.4byte 0x20777269
	.4byte 0x74652070
	.4byte 0x726F7465
	.4byte 0x63746564
	.4byte 0x2E0A0053
	.4byte 0x44564657
	.4byte 0x6F726B65
	.4byte 0x723A2046
	.4byte 0x414D6F75
	.4byte 0x6E742066
	.4byte 0x61696C65
	.4byte 0x642E5B25
	.4byte 0x645D0A00
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x63616E6E
	.4byte 0x6F742066
	.4byte 0x6F726D61
	.4byte 0x74207364
	.4byte 0x20626563
	.4byte 0x61757365
	.4byte 0x206F6620
	.4byte 0x696C6C65
	.4byte 0x67616C20
	.4byte 0x73642073
	.4byte 0x74617465
	.4byte 0x2E5B2564
	.4byte 0x5D0A0053
	.4byte 0x44564657
	.4byte 0x6F726B65
	.4byte 0x723A2053
	.4byte 0x44206361
	.4byte 0x7264204D
	.4byte 0x42522069
	.4byte 0x73206272
	.4byte 0x6F6B656E
	.4byte 0x2E206361
	.4byte 0x6E6E6F74
	.4byte 0x20757365
	.4byte 0x20746869
	.4byte 0x73206D65
	.4byte 0x6469612E
	.4byte 0x0A005344
	.4byte 0x5646576F
	.4byte 0x726B6572
	.4byte 0x3A207375
	.4byte 0x63636573
	.4byte 0x7366756C
	.4byte 0x6C792066
	.4byte 0x6F726D61
	.4byte 0x74207364
	.4byte 0x2E0A0053
	.4byte 0x44564657
	.4byte 0x6F726B65
	.4byte 0x723A2046
	.4byte 0x41466F72
	.4byte 0x6D617420
	.4byte 0x6661696C
	.4byte 0x65642E5B
	.4byte 0x25645D0A
	.byte 0x00
.endobj lbl_8163959B

# .data:0x294 | 0x8163973C | size: 0x22
.obj lbl_8163973C, global
	.string "SDVFWorker: recieve message = %d\n"
.endobj lbl_8163973C

# .data:0x2B6 | 0x8163975E | size: 0x2C
.obj lbl_8163975E, global
	.string "SDVFWorker: SD card inserted !!   %c drive\n"
.endobj lbl_8163975E

# .data:0x2E2 | 0x8163978A | size: 0x2C
.obj lbl_8163978A, global
	.string "SDVFWorker: SD card ejected  !!   %c drive\n"
.endobj lbl_8163978A

# .data:0x30E | 0x816397B6 | size: 0x2A
.obj lbl_816397B6, global
	.4byte 0x53445646
	.4byte 0x576F726B
	.4byte 0x65723A20
	.4byte 0x4641206C
	.4byte 0x69627261
	.4byte 0x72792065
	.4byte 0x72726F72
	.4byte 0x2E5B2564
	.4byte 0x5D0A0000
	.4byte 0x00000000
	.2byte 0x0000
.endobj lbl_816397B6

# 0x816986F8..0x81698700 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986F8 | size: 0x4
# ipl::SDVFWorker::s_sd_state
.obj s_sd_state__Q23ipl10SDVFWorker, global
	.skip 0x4
.endobj s_sd_state__Q23ipl10SDVFWorker

# .sbss:0x4 | 0x816986FC | size: 0x1
.obj lbl_816986FC, global
	.skip 0x1
.endobj lbl_816986FC

# .sbss:0x5 | 0x816986FD | size: 0x3
.obj gap_12_816986FD_sbss, global
.hidden gap_12_816986FD_sbss
	.skip 0x3
.endobj gap_12_816986FD_sbss
