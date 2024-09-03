.include "macros.inc"
.file "nandsdworker_autotest.cpp"

# 0x813BE9E8..0x813C02F8 | size: 0x1910
.text
.balign 4

# .text:0x0 | 0x813BE9E8 | size: 0x44
# ipl::kitayama::NandSDWorker_AutoTest::NandSDWorker_AutoTest()
.fn __ct__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BE9E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BE9EC | 7C 08 02 A6 */	mflr r0
/* 813BE9F0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BE9F4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BE9F8 | 7C 7F 1B 78 */	mr r31, r3
/* 813BE9FC | 4B F8 99 F1 */	bl __ct__Q23ipl12NandSDWorkerFv
/* 813BEA00 | 3C 9F 00 01 */	addis r4, r31, 0x1
/* 813BEA04 | 38 60 00 00 */	li r3, 0x0
/* 813BEA08 | 38 00 FF FF */	li r0, -0x1
/* 813BEA0C | 90 64 F3 A8 */	stw r3, -0xc58(r4)
/* 813BEA10 | 7F E3 FB 78 */	mr r3, r31
/* 813BEA14 | 90 04 F3 B0 */	stw r0, -0xc50(r4)
/* 813BEA18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEA1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEA20 | 7C 08 03 A6 */	mtlr r0
/* 813BEA24 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEA28 | 4E 80 00 20 */	blr
.endfn __ct__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0x44 | 0x813BEA2C | size: 0x58
# ipl::kitayama::NandSDWorker_AutoTest::~NandSDWorker_AutoTest()
.fn __dt__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BEA2C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BEA30 | 7C 08 02 A6 */	mflr r0
/* 813BEA34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEA38 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BEA3C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BEA40 | 7C 9F 23 78 */	mr r31, r4
/* 813BEA44 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 813BEA48 | 7C 7E 1B 78 */	mr r30, r3
/* 813BEA4C | 41 82 00 1C */	beq .L_813BEA68
/* 813BEA50 | 38 80 FF FF */	li r4, -0x1
/* 813BEA54 | 4B F8 99 A5 */	bl __dt__Q23ipl12NandSDWorkerFv
/* 813BEA58 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 813BEA5C | 40 81 00 0C */	ble .L_813BEA68
/* 813BEA60 | 7F C3 F3 78 */	mr r3, r30
/* 813BEA64 | 48 23 96 81 */	bl __dl__FPv
.L_813BEA68:
/* 813BEA68 | 7F C3 F3 78 */	mr r3, r30
/* 813BEA6C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEA70 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 813BEA74 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEA78 | 7C 08 03 A6 */	mtlr r0
/* 813BEA7C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEA80 | 4E 80 00 20 */	blr
.endfn __dt__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0x9C | 0x813BEA84 | size: 0x48
# ipl::kitayama::NandSDWorker_AutoTest::start_save_test(void*, void*, int)
.fn start_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi, global
/* 813BEA84 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BEA88 | 7C 08 02 A6 */	mflr r0
/* 813BEA8C | 7C C7 33 78 */	mr r7, r6
/* 813BEA90 | 38 C0 00 00 */	li r6, 0x0
/* 813BEA94 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BEA98 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BEA9C | 7C 7F 1B 78 */	mr r31, r3
/* 813BEAA0 | 4B F8 99 99 */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
/* 813BEAA4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEAA8 | 38 80 00 01 */	li r4, 0x1
/* 813BEAAC | 38 00 00 00 */	li r0, 0x0
/* 813BEAB0 | 90 83 F3 A8 */	stw r4, -0xc58(r3)
/* 813BEAB4 | 90 03 F3 AC */	stw r0, -0xc54(r3)
/* 813BEAB8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEABC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEAC0 | 7C 08 03 A6 */	mtlr r0
/* 813BEAC4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEAC8 | 4E 80 00 20 */	blr
.endfn start_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi

# .text:0xE4 | 0x813BEACC | size: 0x4C
# ipl::kitayama::NandSDWorker_AutoTest::start_initialize_nand(void*, int)
.fn start_initialize_nand__Q33ipl8kitayama21NandSDWorker_AutoTestFPvi, global
/* 813BEACC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BEAD0 | 7C 08 02 A6 */	mflr r0
/* 813BEAD4 | 7C A7 2B 78 */	mr r7, r5
/* 813BEAD8 | 38 A0 00 00 */	li r5, 0x0
/* 813BEADC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BEAE0 | 38 C0 00 00 */	li r6, 0x0
/* 813BEAE4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BEAE8 | 7C 7F 1B 78 */	mr r31, r3
/* 813BEAEC | 4B F8 99 4D */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
/* 813BEAF0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEAF4 | 38 80 00 1B */	li r4, 0x1b
/* 813BEAF8 | 38 00 00 01 */	li r0, 0x1
/* 813BEAFC | 90 83 F3 A8 */	stw r4, -0xc58(r3)
/* 813BEB00 | 90 03 F3 AC */	stw r0, -0xc54(r3)
/* 813BEB04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEB08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEB0C | 7C 08 03 A6 */	mtlr r0
/* 813BEB10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEB14 | 4E 80 00 20 */	blr
.endfn start_initialize_nand__Q33ipl8kitayama21NandSDWorker_AutoTestFPvi

# .text:0x130 | 0x813BEB18 | size: 0x4C
# ipl::kitayama::NandSDWorker_AutoTest::start_app_test(void*, void*, int)
.fn start_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi, global
/* 813BEB18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BEB1C | 7C 08 02 A6 */	mflr r0
/* 813BEB20 | 7C C7 33 78 */	mr r7, r6
/* 813BEB24 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BEB28 | 7C A0 2B 78 */	mr r0, r5
/* 813BEB2C | 38 A0 00 00 */	li r5, 0x0
/* 813BEB30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BEB34 | 7C 7F 1B 78 */	mr r31, r3
/* 813BEB38 | 7C 06 03 78 */	mr r6, r0
/* 813BEB3C | 4B F8 98 FD */	bl create__Q23ipl12NandSDWorkerFPvPvPvi
/* 813BEB40 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEB44 | 38 00 00 02 */	li r0, 0x2
/* 813BEB48 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEB4C | 90 03 F3 AC */	stw r0, -0xc54(r3)
/* 813BEB50 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEB54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEB58 | 7C 08 03 A6 */	mtlr r0
/* 813BEB5C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEB60 | 4E 80 00 20 */	blr
.endfn start_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFPvPvi

# .text:0x17C | 0x813BEB64 | size: 0x90
# ipl::kitayama::NandSDWorker_AutoTest::process()
.fn process__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BEB64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BEB68 | 7C 08 02 A6 */	mflr r0
/* 813BEB6C | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813BEB70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BEB74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BEB78 | 7C 7F 1B 78 */	mr r31, r3
/* 813BEB7C | 80 04 F3 AC */	lwz r0, -0xc54(r4)
/* 813BEB80 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 813BEB84 | 41 82 00 28 */	beq .L_813BEBAC
/* 813BEB88 | 40 80 00 10 */	bge .L_813BEB98
/* 813BEB8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BEB90 | 40 80 00 14 */	bge .L_813BEBA4
/* 813BEB94 | 48 00 00 28 */	b .L_813BEBBC
.L_813BEB98:
/* 813BEB98 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 813BEB9C | 40 80 00 20 */	bge .L_813BEBBC
/* 813BEBA0 | 48 00 00 14 */	b .L_813BEBB4
.L_813BEBA4:
/* 813BEBA4 | 48 00 00 5D */	bl process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BEBA8 | 48 00 00 38 */	b .L_813BEBE0
.L_813BEBAC:
/* 813BEBAC | 48 00 0B A1 */	bl process_initialize__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BEBB0 | 48 00 00 30 */	b .L_813BEBE0
.L_813BEBB4:
/* 813BEBB4 | 48 00 0C A1 */	bl process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv
/* 813BEBB8 | 48 00 00 28 */	b .L_813BEBE0
.L_813BEBBC:
/* 813BEBBC | 3C 60 81 65 */	lis r3, lbl_8164FD80@ha
/* 813BEBC0 | 3C A0 81 65 */	lis r5, lbl_8164FD9A@ha
/* 813BEBC4 | 38 63 FD 80 */	addi r3, r3, lbl_8164FD80@l
/* 813BEBC8 | 38 80 00 3C */	li r4, 0x3c
/* 813BEBCC | 38 A5 FD 9A */	addi r5, r5, lbl_8164FD9A@l
/* 813BEBD0 | 4C C6 31 82 */	crclr cr1eq
/* 813BEBD4 | 48 16 FB 5D */	bl OSPanic
/* 813BEBD8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEBDC | 80 63 F3 A8 */	lwz r3, -0xc58(r3)
.L_813BEBE0:
/* 813BEBE0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BEBE4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BEBE8 | 7C 08 03 A6 */	mtlr r0
/* 813BEBEC | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BEBF0 | 4E 80 00 20 */	blr
.endfn process__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0x20C | 0x813BEBF4 | size: 0xC
# ipl::kitayama::NandSDWorker_AutoTest::get_result()
.fn get_result__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BEBF4 | 3C 63 00 01 */	addis r3, r3, 0x1
/* 813BEBF8 | 80 63 F3 B0 */	lwz r3, -0xc50(r3)
/* 813BEBFC | 4E 80 00 20 */	blr
.endfn get_result__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0x218 | 0x813BEC00 | size: 0xB4C
# ipl::kitayama::NandSDWorker_AutoTest::process_save_test()
.fn process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BEC00 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BEC04 | 7C 08 02 A6 */	mflr r0
/* 813BEC08 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BEC0C | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BEC10 | 48 23 A8 B5 */	bl _savegpr_28
/* 813BEC14 | 3C A3 00 01 */	addis r5, r3, 0x1
/* 813BEC18 | 3F A0 81 65 */	lis r29, lbl_8164FD80@ha
/* 813BEC1C | 80 05 F3 A8 */	lwz r0, -0xc58(r5)
/* 813BEC20 | 7C 7F 1B 78 */	mr r31, r3
/* 813BEC24 | 3B BD FD 80 */	addi r29, r29, lbl_8164FD80@l
/* 813BEC28 | 28 00 00 52 */	cmplwi r0, 0x52
/* 813BEC2C | 41 81 0B 00 */	bgt .L_813BF72C
/* 813BEC30 | 3C 80 81 65 */	lis r4, jumptable_8164FF5C@ha
/* 813BEC34 | 54 00 10 3A */	slwi r0, r0, 2
/* 813BEC38 | 38 84 FF 5C */	addi r4, r4, jumptable_8164FF5C@l
/* 813BEC3C | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813BEC40 | 7C 89 03 A6 */	mtctr r4
/* 813BEC44 | 4E 80 04 20 */	bctr
.L_813BEC48:
/* 813BEC48 | 38 00 00 02 */	li r0, 0x2
/* 813BEC4C | 90 05 F3 A8 */	stw r0, -0xc58(r5)
/* 813BEC50 | 48 00 0A DC */	b .L_813BF72C
.L_813BEC54:
/* 813BEC54 | 4B F8 A0 95 */	bl startup_async__Q23ipl12NandSDWorkerFv
/* 813BEC58 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEC5C | 38 00 00 03 */	li r0, 0x3
/* 813BEC60 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEC64 | 48 00 0A C8 */	b .L_813BF72C
.L_813BEC68:
/* 813BEC68 | 4B F8 9B A1 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEC6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEC70 | 40 82 0A BC */	bne .L_813BF72C
/* 813BEC74 | 7F E3 FB 78 */	mr r3, r31
/* 813BEC78 | 4B F8 9B BD */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEC7C | 7C 64 1B 78 */	mr r4, r3
/* 813BEC80 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEC84 | 4C C6 31 82 */	crclr cr1eq
/* 813BEC88 | 48 16 FA 19 */	bl OSReport
/* 813BEC8C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEC90 | 38 00 00 04 */	li r0, 0x4
/* 813BEC94 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEC98 | 48 00 0A 94 */	b .L_813BF72C
.L_813BEC9C:
/* 813BEC9C | 4B F8 A0 9D */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813BECA0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BECA4 | 38 00 00 05 */	li r0, 0x5
/* 813BECA8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BECAC | 48 00 0A 80 */	b .L_813BF72C
.L_813BECB0:
/* 813BECB0 | 4B F8 9B 59 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BECB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BECB8 | 40 82 0A 74 */	bne .L_813BF72C
/* 813BECBC | 7F E3 FB 78 */	mr r3, r31
/* 813BECC0 | 4B F8 9B 75 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BECC4 | 7C 64 1B 78 */	mr r4, r3
/* 813BECC8 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BECCC | 4C C6 31 82 */	crclr cr1eq
/* 813BECD0 | 48 16 F9 D1 */	bl OSReport
/* 813BECD4 | 7F E3 FB 78 */	mr r3, r31
/* 813BECD8 | 4B F8 9F C9 */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813BECDC | 7C 64 1B 78 */	mr r4, r3
/* 813BECE0 | 38 7D 00 36 */	addi r3, r29, 0x36
/* 813BECE4 | 4C C6 31 82 */	crclr cr1eq
/* 813BECE8 | 48 16 F9 B9 */	bl OSReport
/* 813BECEC | 7F E3 FB 78 */	mr r3, r31
/* 813BECF0 | 4B F8 9F D5 */	bl get_sd_drive_letter__Q23ipl12NandSDWorkerFv
/* 813BECF4 | 7C 64 07 74 */	extsb r4, r3
/* 813BECF8 | 38 7D 00 51 */	addi r3, r29, 0x51
/* 813BECFC | 4C C6 31 82 */	crclr cr1eq
/* 813BED00 | 48 16 F9 A1 */	bl OSReport
/* 813BED04 | 7F E3 FB 78 */	mr r3, r31
/* 813BED08 | 4B F8 9B 7D */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813BED0C | 7C 64 1B 78 */	mr r4, r3
/* 813BED10 | 38 7D 00 66 */	addi r3, r29, 0x66
/* 813BED14 | 4C C6 31 82 */	crclr cr1eq
/* 813BED18 | 48 16 F9 89 */	bl OSReport
/* 813BED1C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BED20 | 38 00 00 21 */	li r0, 0x21
/* 813BED24 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BED28 | 48 00 0A 04 */	b .L_813BF72C
.L_813BED2C:
/* 813BED2C | 4B F8 A2 A5 */	bl format_sd_async__Q23ipl12NandSDWorkerFv
/* 813BED30 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BED34 | 38 00 00 22 */	li r0, 0x22
/* 813BED38 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BED3C | 48 00 09 F0 */	b .L_813BF72C
.L_813BED40:
/* 813BED40 | 4B F8 9A C9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BED44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BED48 | 40 82 09 E4 */	bne .L_813BF72C
/* 813BED4C | 7F E3 FB 78 */	mr r3, r31
/* 813BED50 | 4B F8 9A E5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BED54 | 7C 64 1B 78 */	mr r4, r3
/* 813BED58 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BED5C | 4C C6 31 82 */	crclr cr1eq
/* 813BED60 | 48 16 F9 41 */	bl OSReport
/* 813BED64 | 7F E3 FB 78 */	mr r3, r31
/* 813BED68 | 4B F8 9B 25 */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BED6C | 7C 64 1B 78 */	mr r4, r3
/* 813BED70 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 813BED74 | 4C C6 31 82 */	crclr cr1eq
/* 813BED78 | 48 16 F9 29 */	bl OSReport
/* 813BED7C | 7F E3 FB 78 */	mr r3, r31
/* 813BED80 | 4B F8 9D 29 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BED84 | 7C 64 1B 78 */	mr r4, r3
/* 813BED88 | 38 7D 00 88 */	addi r3, r29, 0x88
/* 813BED8C | 4C C6 31 82 */	crclr cr1eq
/* 813BED90 | 48 16 F9 11 */	bl OSReport
/* 813BED94 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BED98 | 38 00 00 39 */	li r0, 0x39
/* 813BED9C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEDA0 | 48 00 09 8C */	b .L_813BF72C
.L_813BEDA4:
/* 813BEDA4 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEDA8 | 3C A0 00 01 */	lis r5, 0x1
/* 813BEDAC | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEDB0 | 4B F8 A3 19 */	bl nocopy_exist_nand_save_async__Q23ipl12NandSDWorkerFUx
/* 813BEDB4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEDB8 | 38 00 00 3A */	li r0, 0x3a
/* 813BEDBC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEDC0 | 48 00 09 6C */	b .L_813BF72C
.L_813BEDC4:
/* 813BEDC4 | 4B F8 9A 45 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEDC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEDCC | 40 82 09 60 */	bne .L_813BF72C
/* 813BEDD0 | 7F E3 FB 78 */	mr r3, r31
/* 813BEDD4 | 4B F8 9A 61 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEDD8 | 7C 64 1B 78 */	mr r4, r3
/* 813BEDDC | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEDE0 | 4C C6 31 82 */	crclr cr1eq
/* 813BEDE4 | 48 16 F8 BD */	bl OSReport
/* 813BEDE8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEDEC | 38 00 00 1D */	li r0, 0x1d
/* 813BEDF0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEDF4 | 48 00 09 38 */	b .L_813BF72C
.L_813BEDF8:
/* 813BEDF8 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEDFC | 3C A0 00 01 */	lis r5, 0x1
/* 813BEE00 | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEE04 | 4B F8 A1 99 */	bl copy_nand_save_to_sd_async__Q23ipl12NandSDWorkerFUx
/* 813BEE08 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEE0C | 38 00 00 1E */	li r0, 0x1e
/* 813BEE10 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEE14 | 48 00 09 18 */	b .L_813BF72C
.L_813BEE18:
/* 813BEE18 | 4B F8 99 F1 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEE1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEE20 | 40 82 09 0C */	bne .L_813BF72C
/* 813BEE24 | 7F E3 FB 78 */	mr r3, r31
/* 813BEE28 | 4B F8 9A 0D */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEE2C | 7C 64 1B 78 */	mr r4, r3
/* 813BEE30 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEE34 | 4C C6 31 82 */	crclr cr1eq
/* 813BEE38 | 48 16 F8 69 */	bl OSReport
/* 813BEE3C | 7F E3 FB 78 */	mr r3, r31
/* 813BEE40 | 4B F8 9A 4D */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BEE44 | 7C 64 1B 78 */	mr r4, r3
/* 813BEE48 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 813BEE4C | 4C C6 31 82 */	crclr cr1eq
/* 813BEE50 | 48 16 F8 51 */	bl OSReport
/* 813BEE54 | 7F E3 FB 78 */	mr r3, r31
/* 813BEE58 | 4B F8 9C 51 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BEE5C | 7C 64 1B 78 */	mr r4, r3
/* 813BEE60 | 38 7D 00 88 */	addi r3, r29, 0x88
/* 813BEE64 | 4C C6 31 82 */	crclr cr1eq
/* 813BEE68 | 48 16 F8 39 */	bl OSReport
/* 813BEE6C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEE70 | 38 00 00 3B */	li r0, 0x3b
/* 813BEE74 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEE78 | 48 00 08 B4 */	b .L_813BF72C
.L_813BEE7C:
/* 813BEE7C | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEE80 | 3C A0 00 01 */	lis r5, 0x1
/* 813BEE84 | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEE88 | 4B F8 A2 59 */	bl nand_save_exist_async__Q23ipl12NandSDWorkerFUx
/* 813BEE8C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEE90 | 38 00 00 3C */	li r0, 0x3c
/* 813BEE94 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEE98 | 48 00 08 94 */	b .L_813BF72C
.L_813BEE9C:
/* 813BEE9C | 4B F8 99 6D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEEA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEEA4 | 40 82 08 88 */	bne .L_813BF72C
/* 813BEEA8 | 7F E3 FB 78 */	mr r3, r31
/* 813BEEAC | 4B F8 99 89 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEEB0 | 7C 64 1B 78 */	mr r4, r3
/* 813BEEB4 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEEB8 | 4C C6 31 82 */	crclr cr1eq
/* 813BEEBC | 48 16 F7 E5 */	bl OSReport
/* 813BEEC0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEEC4 | 38 00 00 3D */	li r0, 0x3d
/* 813BEEC8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEECC | 48 00 08 60 */	b .L_813BF72C
.L_813BEED0:
/* 813BEED0 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEED4 | 38 84 30 30 */	addi r4, r4, 0x3030
/* 813BEED8 | 4B F8 A2 21 */	bl nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl
/* 813BEEDC | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEEE0 | 38 00 00 3E */	li r0, 0x3e
/* 813BEEE4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEEE8 | 48 00 08 44 */	b .L_813BF72C
.L_813BEEEC:
/* 813BEEEC | 4B F8 99 1D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEEF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEEF4 | 40 82 08 38 */	bne .L_813BF72C
/* 813BEEF8 | 7F E3 FB 78 */	mr r3, r31
/* 813BEEFC | 4B F8 99 39 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEF00 | 7C 64 1B 78 */	mr r4, r3
/* 813BEF04 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEF08 | 4C C6 31 82 */	crclr cr1eq
/* 813BEF0C | 48 16 F7 95 */	bl OSReport
/* 813BEF10 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEF14 | 38 00 00 0E */	li r0, 0xe
/* 813BEF18 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEF1C | 48 00 08 10 */	b .L_813BF72C
.L_813BEF20:
/* 813BEF20 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEF24 | 3C A0 00 01 */	lis r5, 0x1
/* 813BEF28 | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEF2C | 4B F8 9F D9 */	bl delete_nand_save_async__Q23ipl12NandSDWorkerFUx
/* 813BEF30 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEF34 | 38 00 00 0F */	li r0, 0xf
/* 813BEF38 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEF3C | 48 00 07 F0 */	b .L_813BF72C
.L_813BEF40:
/* 813BEF40 | 4B F8 98 C9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEF44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEF48 | 40 82 07 E4 */	bne .L_813BF72C
/* 813BEF4C | 7F E3 FB 78 */	mr r3, r31
/* 813BEF50 | 4B F8 98 E5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEF54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEF58 | 40 82 00 1C */	bne .L_813BEF74
/* 813BEF5C | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEF60 | 38 7D 00 9A */	addi r3, r29, 0x9a
/* 813BEF64 | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEF68 | 3C A0 00 01 */	lis r5, 0x1
/* 813BEF6C | 4C C6 31 82 */	crclr cr1eq
/* 813BEF70 | 48 16 F7 31 */	bl OSReport
.L_813BEF74:
/* 813BEF74 | 7F E3 FB 78 */	mr r3, r31
/* 813BEF78 | 4B F8 98 BD */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BEF7C | 7C 64 1B 78 */	mr r4, r3
/* 813BEF80 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BEF84 | 4C C6 31 82 */	crclr cr1eq
/* 813BEF88 | 48 16 F7 19 */	bl OSReport
/* 813BEF8C | 7F E3 FB 78 */	mr r3, r31
/* 813BEF90 | 4B F8 98 FD */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BEF94 | 7C 64 1B 78 */	mr r4, r3
/* 813BEF98 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 813BEF9C | 4C C6 31 82 */	crclr cr1eq
/* 813BEFA0 | 48 16 F7 01 */	bl OSReport
/* 813BEFA4 | 7F E3 FB 78 */	mr r3, r31
/* 813BEFA8 | 4B F8 9B 01 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BEFAC | 7C 64 1B 78 */	mr r4, r3
/* 813BEFB0 | 38 7D 00 88 */	addi r3, r29, 0x88
/* 813BEFB4 | 4C C6 31 82 */	crclr cr1eq
/* 813BEFB8 | 48 16 F6 E9 */	bl OSReport
/* 813BEFBC | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEFC0 | 38 00 00 45 */	li r0, 0x45
/* 813BEFC4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEFC8 | 48 00 07 64 */	b .L_813BF72C
.L_813BEFCC:
/* 813BEFCC | 3C 80 30 30 */	lis r4, 0x3030
/* 813BEFD0 | 3C A0 00 01 */	lis r5, 0x1
/* 813BEFD4 | 38 C4 30 30 */	addi r6, r4, 0x3030
/* 813BEFD8 | 4B F8 A1 09 */	bl nand_save_exist_async__Q23ipl12NandSDWorkerFUx
/* 813BEFDC | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BEFE0 | 38 00 00 46 */	li r0, 0x46
/* 813BEFE4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BEFE8 | 48 00 07 44 */	b .L_813BF72C
.L_813BEFEC:
/* 813BEFEC | 4B F8 98 1D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BEFF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BEFF4 | 40 82 07 38 */	bne .L_813BF72C
/* 813BEFF8 | 7F E3 FB 78 */	mr r3, r31
/* 813BEFFC | 4B F8 98 39 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF000 | 7C 64 1B 78 */	mr r4, r3
/* 813BF004 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF008 | 4C C6 31 82 */	crclr cr1eq
/* 813BF00C | 48 16 F6 95 */	bl OSReport
/* 813BF010 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF014 | 38 00 00 47 */	li r0, 0x47
/* 813BF018 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF01C | 48 00 07 10 */	b .L_813BF72C
.L_813BF020:
/* 813BF020 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BF024 | 38 84 30 30 */	addi r4, r4, 0x3030
/* 813BF028 | 4B F8 A0 D1 */	bl nand_save_exist_lo_async__Q23ipl12NandSDWorkerFUl
/* 813BF02C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF030 | 38 00 00 48 */	li r0, 0x48
/* 813BF034 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF038 | 48 00 06 F4 */	b .L_813BF72C
.L_813BF03C:
/* 813BF03C | 4B F8 97 CD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF044 | 40 82 06 E8 */	bne .L_813BF72C
/* 813BF048 | 7F E3 FB 78 */	mr r3, r31
/* 813BF04C | 4B F8 97 E9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF050 | 7C 64 1B 78 */	mr r4, r3
/* 813BF054 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF058 | 4C C6 31 82 */	crclr cr1eq
/* 813BF05C | 48 16 F6 45 */	bl OSReport
/* 813BF060 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF064 | 38 00 00 1F */	li r0, 0x1f
/* 813BF068 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF06C | 48 00 06 C0 */	b .L_813BF72C
.L_813BF070:
/* 813BF070 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BF074 | 38 84 30 30 */	addi r4, r4, 0x3030
/* 813BF078 | 4B F8 9F 3D */	bl copy_sd_save_to_nand_async__Q23ipl12NandSDWorkerFUl
/* 813BF07C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF080 | 38 00 00 20 */	li r0, 0x20
/* 813BF084 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF088 | 48 00 06 A4 */	b .L_813BF72C
.L_813BF08C:
/* 813BF08C | 4B F8 97 7D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF094 | 40 82 06 98 */	bne .L_813BF72C
/* 813BF098 | 7F E3 FB 78 */	mr r3, r31
/* 813BF09C | 4B F8 97 99 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF0A0 | 3C BF 00 01 */	addis r5, r31, 0x1
/* 813BF0A4 | 7C 64 1B 78 */	mr r4, r3
/* 813BF0A8 | 90 65 F3 B0 */	stw r3, -0xc50(r5)
/* 813BF0AC | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF0B0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF0B4 | 48 16 F5 ED */	bl OSReport
/* 813BF0B8 | 7F E3 FB 78 */	mr r3, r31
/* 813BF0BC | 4B F8 97 D1 */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BF0C0 | 7C 64 1B 78 */	mr r4, r3
/* 813BF0C4 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 813BF0C8 | 4C C6 31 82 */	crclr cr1eq
/* 813BF0CC | 48 16 F5 D5 */	bl OSReport
/* 813BF0D0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF0D4 | 4B F8 99 D5 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BF0D8 | 7C 64 1B 78 */	mr r4, r3
/* 813BF0DC | 38 7D 00 88 */	addi r3, r29, 0x88
/* 813BF0E0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF0E4 | 48 16 F5 BD */	bl OSReport
/* 813BF0E8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF0EC | 38 00 00 41 */	li r0, 0x41
/* 813BF0F0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF0F4 | 48 00 06 38 */	b .L_813BF72C
.L_813BF0F8:
/* 813BF0F8 | 3C 80 30 30 */	lis r4, 0x3030
/* 813BF0FC | 38 84 30 30 */	addi r4, r4, 0x3030
/* 813BF100 | 4B F8 A0 49 */	bl sd_app_exist_async__Q23ipl12NandSDWorkerFUl
/* 813BF104 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF108 | 38 00 00 42 */	li r0, 0x42
/* 813BF10C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF110 | 48 00 06 1C */	b .L_813BF72C
.L_813BF114:
/* 813BF114 | 4B F8 96 F5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF118 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF11C | 40 82 06 10 */	bne .L_813BF72C
/* 813BF120 | 7F E3 FB 78 */	mr r3, r31
/* 813BF124 | 4B F8 97 11 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF128 | 7C 64 1B 78 */	mr r4, r3
/* 813BF12C | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF130 | 4C C6 31 82 */	crclr cr1eq
/* 813BF134 | 48 16 F5 6D */	bl OSReport
/* 813BF138 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF13C | 38 00 00 06 */	li r0, 0x6
/* 813BF140 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF144 | 48 00 05 E8 */	b .L_813BF72C
.L_813BF148:
/* 813BF148 | 4B F8 9E 4D */	bl get_nand_user_free_area_async__Q23ipl12NandSDWorkerFv
/* 813BF14C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF150 | 38 00 00 07 */	li r0, 0x7
/* 813BF154 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF158 | 48 00 05 D4 */	b .L_813BF72C
.L_813BF15C:
/* 813BF15C | 4B F8 96 AD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF160 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF164 | 40 82 05 C8 */	bne .L_813BF72C
/* 813BF168 | 7F E3 FB 78 */	mr r3, r31
/* 813BF16C | 4B F8 96 C9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF170 | 7C 64 1B 78 */	mr r4, r3
/* 813BF174 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF178 | 4C C6 31 82 */	crclr cr1eq
/* 813BF17C | 48 16 F5 25 */	bl OSReport
/* 813BF180 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF184 | 38 00 00 08 */	li r0, 0x8
/* 813BF188 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF18C | 48 00 05 A0 */	b .L_813BF72C
.L_813BF190:
/* 813BF190 | 4B F8 96 FD */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BF194 | 7C 64 1B 78 */	mr r4, r3
/* 813BF198 | 38 7D 00 74 */	addi r3, r29, 0x74
/* 813BF19C | 4C C6 31 82 */	crclr cr1eq
/* 813BF1A0 | 48 16 F5 01 */	bl OSReport
/* 813BF1A4 | 7F E3 FB 78 */	mr r3, r31
/* 813BF1A8 | 38 9F 00 08 */	addi r4, r31, 0x8
/* 813BF1AC | 4B F8 9B 95 */	bl list_nand_save_async__Q23ipl12NandSDWorkerFPUx
/* 813BF1B0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF1B4 | 38 00 00 09 */	li r0, 0x9
/* 813BF1B8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF1BC | 48 00 05 70 */	b .L_813BF72C
.L_813BF1C0:
/* 813BF1C0 | 4B F8 96 49 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF1C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF1C8 | 40 82 05 64 */	bne .L_813BF72C
/* 813BF1CC | 7F E3 FB 78 */	mr r3, r31
/* 813BF1D0 | 4B F8 96 65 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF1D4 | 7C 64 1B 78 */	mr r4, r3
/* 813BF1D8 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF1DC | 4C C6 31 82 */	crclr cr1eq
/* 813BF1E0 | 48 16 F4 C1 */	bl OSReport
/* 813BF1E4 | 3B 80 00 00 */	li r28, 0x0
/* 813BF1E8 | 3B C0 00 00 */	li r30, 0x0
/* 813BF1EC | 48 00 00 24 */	b .L_813BF210
.L_813BF1F0:
/* 813BF1F0 | 7C 9F F2 14 */	add r4, r31, r30
/* 813BF1F4 | 38 7D 00 BC */	addi r3, r29, 0xbc
/* 813BF1F8 | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 813BF1FC | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 813BF200 | 4C C6 31 82 */	crclr cr1eq
/* 813BF204 | 48 16 F4 9D */	bl OSReport
/* 813BF208 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BF20C | 3B DE 00 08 */	addi r30, r30, 0x8
.L_813BF210:
/* 813BF210 | 7F E3 FB 78 */	mr r3, r31
/* 813BF214 | 4B F8 96 79 */	bl get_nand_save_num__Q23ipl12NandSDWorkerFv
/* 813BF218 | 7C 1C 18 40 */	cmplw r28, r3
/* 813BF21C | 41 80 FF D4 */	blt .L_813BF1F0
/* 813BF220 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF224 | 38 00 00 0A */	li r0, 0xa
/* 813BF228 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF22C | 48 00 05 00 */	b .L_813BF72C
.L_813BF230:
/* 813BF230 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BF234 | 38 E3 03 08 */	addi r7, r3, 0x308
/* 813BF238 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BF23C | 4B F8 9B 19 */	bl get_nand_save_banner_async__Q23ipl12NandSDWorkerFUxP17WIISaveBannerFile
/* 813BF240 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF244 | 38 00 00 0B */	li r0, 0xb
/* 813BF248 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF24C | 48 00 04 E0 */	b .L_813BF72C
.L_813BF250:
/* 813BF250 | 4B F8 95 B9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF258 | 40 82 04 D4 */	bne .L_813BF72C
/* 813BF25C | 7F E3 FB 78 */	mr r3, r31
/* 813BF260 | 4B F8 95 D5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF264 | 7C 64 1B 78 */	mr r4, r3
/* 813BF268 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF26C | 4C C6 31 82 */	crclr cr1eq
/* 813BF270 | 48 16 F4 31 */	bl OSReport
/* 813BF274 | 7F E3 FB 78 */	mr r3, r31
/* 813BF278 | 4B F8 95 BD */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF27C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF280 | 40 82 00 38 */	bne .L_813BF2B8
/* 813BF284 | 80 9F 03 08 */	lwz r4, 0x308(r31)
/* 813BF288 | 38 7D 00 D6 */	addi r3, r29, 0xd6
/* 813BF28C | 4C C6 31 82 */	crclr cr1eq
/* 813BF290 | 48 16 F4 11 */	bl OSReport
/* 813BF294 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 813BF298 | 7F E3 FB 78 */	mr r3, r31
/* 813BF29C | 80 DF 00 0C */	lwz r6, 0xc(r31)
/* 813BF2A0 | 4B F8 96 0D */	bl get_cached_nand_save_banner__Q23ipl12NandSDWorkerFUx
/* 813BF2A4 | 7C 64 1B 78 */	mr r4, r3
/* 813BF2A8 | 38 7D 00 EF */	addi r3, r29, 0xef
/* 813BF2AC | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813BF2B0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF2B4 | 48 16 F3 ED */	bl OSReport
.L_813BF2B8:
/* 813BF2B8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF2BC | 38 00 00 0C */	li r0, 0xc
/* 813BF2C0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF2C4 | 48 00 04 68 */	b .L_813BF72C
.L_813BF2C8:
/* 813BF2C8 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BF2CC | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BF2D0 | 4B F8 9C 05 */	bl get_nand_save_size_async__Q23ipl12NandSDWorkerFUx
/* 813BF2D4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF2D8 | 38 00 00 0D */	li r0, 0xd
/* 813BF2DC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF2E0 | 48 00 04 4C */	b .L_813BF72C
.L_813BF2E4:
/* 813BF2E4 | 4B F8 95 25 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF2E8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF2EC | 40 82 04 40 */	bne .L_813BF72C
/* 813BF2F0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF2F4 | 4B F8 95 41 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF2F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF2FC | 7C 7C 1B 78 */	mr r28, r3
/* 813BF300 | 41 80 00 40 */	blt .L_813BF340
/* 813BF304 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 813BF308 | 7F 87 E3 78 */	mr r7, r28
/* 813BF30C | 80 DF 00 0C */	lwz r6, 0xc(r31)
/* 813BF310 | 38 7D 01 0F */	addi r3, r29, 0x10f
/* 813BF314 | 4C C6 31 82 */	crclr cr1eq
/* 813BF318 | 48 16 F3 89 */	bl OSReport
/* 813BF31C | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 813BF320 | 7F E3 FB 78 */	mr r3, r31
/* 813BF324 | 80 DF 00 0C */	lwz r6, 0xc(r31)
/* 813BF328 | 4B F8 96 ED */	bl get_cached_nand_save_size__Q23ipl12NandSDWorkerFUx
/* 813BF32C | 7C 64 1B 78 */	mr r4, r3
/* 813BF330 | 38 7D 01 2E */	addi r3, r29, 0x12e
/* 813BF334 | 4C C6 31 82 */	crclr cr1eq
/* 813BF338 | 48 16 F3 69 */	bl OSReport
/* 813BF33C | 48 00 00 28 */	b .L_813BF364
.L_813BF340:
/* 813BF340 | 7F 84 E3 78 */	mr r4, r28
/* 813BF344 | 38 7D 01 45 */	addi r3, r29, 0x145
/* 813BF348 | 4C C6 31 82 */	crclr cr1eq
/* 813BF34C | 48 16 F3 55 */	bl OSReport
/* 813BF350 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF354 | 38 00 00 4F */	li r0, 0x4f
/* 813BF358 | 93 83 F3 B0 */	stw r28, -0xc50(r3)
/* 813BF35C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF360 | 48 00 03 CC */	b .L_813BF72C
.L_813BF364:
/* 813BF364 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF368 | 38 00 00 10 */	li r0, 0x10
/* 813BF36C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF370 | 48 00 03 BC */	b .L_813BF72C
.L_813BF374:
/* 813BF374 | 4B F8 95 11 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813BF378 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 813BF37C | 40 82 03 B0 */	bne .L_813BF72C
/* 813BF380 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF384 | 38 00 00 11 */	li r0, 0x11
/* 813BF388 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF38C | 48 00 03 A0 */	b .L_813BF72C
.L_813BF390:
/* 813BF390 | 4B F8 99 A9 */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813BF394 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF398 | 38 00 00 12 */	li r0, 0x12
/* 813BF39C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF3A0 | 48 00 03 8C */	b .L_813BF72C
.L_813BF3A4:
/* 813BF3A4 | 4B F8 94 65 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF3A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF3AC | 40 82 03 80 */	bne .L_813BF72C
/* 813BF3B0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF3B4 | 4B F8 94 81 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF3B8 | 7C 64 1B 78 */	mr r4, r3
/* 813BF3BC | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF3C0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF3C4 | 48 16 F2 DD */	bl OSReport
/* 813BF3C8 | 7F E3 FB 78 */	mr r3, r31
/* 813BF3CC | 4B F8 94 B9 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813BF3D0 | 7C 64 1B 78 */	mr r4, r3
/* 813BF3D4 | 38 7D 00 66 */	addi r3, r29, 0x66
/* 813BF3D8 | 4C C6 31 82 */	crclr cr1eq
/* 813BF3DC | 48 16 F2 C5 */	bl OSReport
/* 813BF3E0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF3E4 | 4B F8 94 A1 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813BF3E8 | 2C 03 00 06 */	cmpwi r3, 0x6
/* 813BF3EC | 40 82 00 44 */	bne .L_813BF430
/* 813BF3F0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF3F4 | 4B F8 98 AD */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813BF3F8 | 7C 64 1B 78 */	mr r4, r3
/* 813BF3FC | 38 7D 00 36 */	addi r3, r29, 0x36
/* 813BF400 | 4C C6 31 82 */	crclr cr1eq
/* 813BF404 | 48 16 F2 9D */	bl OSReport
/* 813BF408 | 7F E3 FB 78 */	mr r3, r31
/* 813BF40C | 4B F8 98 B9 */	bl get_sd_drive_letter__Q23ipl12NandSDWorkerFv
/* 813BF410 | 7C 64 07 74 */	extsb r4, r3
/* 813BF414 | 38 7D 00 51 */	addi r3, r29, 0x51
/* 813BF418 | 4C C6 31 82 */	crclr cr1eq
/* 813BF41C | 48 16 F2 85 */	bl OSReport
/* 813BF420 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF424 | 38 00 00 13 */	li r0, 0x13
/* 813BF428 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF42C | 48 00 03 00 */	b .L_813BF72C
.L_813BF430:
/* 813BF430 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF434 | 38 00 00 10 */	li r0, 0x10
/* 813BF438 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF43C | 48 00 02 F0 */	b .L_813BF72C
.L_813BF440:
/* 813BF440 | 38 80 00 00 */	li r4, 0x0
/* 813BF444 | 38 A0 01 00 */	li r5, 0x100
/* 813BF448 | 38 63 02 08 */	addi r3, r3, 0x208
/* 813BF44C | 4B F7 0E E9 */	bl memset
/* 813BF450 | 7F E3 FB 78 */	mr r3, r31
/* 813BF454 | 38 9F 02 08 */	addi r4, r31, 0x208
/* 813BF458 | 4B F8 99 21 */	bl list_sd_save_async__Q23ipl12NandSDWorkerFPUl
/* 813BF45C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF460 | 38 00 00 14 */	li r0, 0x14
/* 813BF464 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF468 | 48 00 02 C4 */	b .L_813BF72C
.L_813BF46C:
/* 813BF46C | 4B F8 93 9D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF474 | 40 82 02 B8 */	bne .L_813BF72C
/* 813BF478 | 7F E3 FB 78 */	mr r3, r31
/* 813BF47C | 4B F8 93 B9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF480 | 7C 64 1B 78 */	mr r4, r3
/* 813BF484 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF488 | 4C C6 31 82 */	crclr cr1eq
/* 813BF48C | 48 16 F2 15 */	bl OSReport
/* 813BF490 | 7F E3 FB 78 */	mr r3, r31
/* 813BF494 | 4B F8 96 15 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BF498 | 7C 64 1B 78 */	mr r4, r3
/* 813BF49C | 38 7D 00 88 */	addi r3, r29, 0x88
/* 813BF4A0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF4A4 | 48 16 F1 FD */	bl OSReport
/* 813BF4A8 | 3B 80 00 00 */	li r28, 0x0
/* 813BF4AC | 3B C0 00 00 */	li r30, 0x0
/* 813BF4B0 | 48 00 00 20 */	b .L_813BF4D0
.L_813BF4B4:
/* 813BF4B4 | 7C 9F F2 14 */	add r4, r31, r30
/* 813BF4B8 | 38 7D 01 69 */	addi r3, r29, 0x169
/* 813BF4BC | 80 84 02 08 */	lwz r4, 0x208(r4)
/* 813BF4C0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF4C4 | 48 16 F1 DD */	bl OSReport
/* 813BF4C8 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BF4CC | 3B DE 00 04 */	addi r30, r30, 0x4
.L_813BF4D0:
/* 813BF4D0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF4D4 | 4B F8 95 D5 */	bl get_sd_save_num__Q23ipl12NandSDWorkerFv
/* 813BF4D8 | 7C 1C 18 00 */	cmpw r28, r3
/* 813BF4DC | 41 80 FF D8 */	blt .L_813BF4B4
/* 813BF4E0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF4E4 | 38 00 00 15 */	li r0, 0x15
/* 813BF4E8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF4EC | 48 00 02 40 */	b .L_813BF72C
.L_813BF4F0:
/* 813BF4F0 | 3C 80 00 01 */	lis r4, 0x1
/* 813BF4F4 | 38 63 03 08 */	addi r3, r3, 0x308
/* 813BF4F8 | 38 A4 F0 A0 */	subi r5, r4, 0xf60
/* 813BF4FC | 38 80 00 00 */	li r4, 0x0
/* 813BF500 | 4B F7 0E 35 */	bl memset
/* 813BF504 | 80 9F 02 08 */	lwz r4, 0x208(r31)
/* 813BF508 | 7F E3 FB 78 */	mr r3, r31
/* 813BF50C | 38 BF 03 08 */	addi r5, r31, 0x308
/* 813BF510 | 4B F8 98 91 */	bl get_sd_save_banner_async__Q23ipl12NandSDWorkerFUlP17WIISaveBannerFile
/* 813BF514 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF518 | 38 00 00 16 */	li r0, 0x16
/* 813BF51C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF520 | 48 00 02 0C */	b .L_813BF72C
.L_813BF524:
/* 813BF524 | 4B F8 92 E5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF528 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF52C | 40 82 02 00 */	bne .L_813BF72C
/* 813BF530 | 7F E3 FB 78 */	mr r3, r31
/* 813BF534 | 4B F8 93 01 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF538 | 7C 64 1B 78 */	mr r4, r3
/* 813BF53C | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF540 | 4C C6 31 82 */	crclr cr1eq
/* 813BF544 | 48 16 F1 5D */	bl OSReport
/* 813BF548 | 7F E3 FB 78 */	mr r3, r31
/* 813BF54C | 4B F8 92 E9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF550 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF554 | 40 82 00 34 */	bne .L_813BF588
/* 813BF558 | 80 9F 03 08 */	lwz r4, 0x308(r31)
/* 813BF55C | 38 7D 00 D6 */	addi r3, r29, 0xd6
/* 813BF560 | 4C C6 31 82 */	crclr cr1eq
/* 813BF564 | 48 16 F1 3D */	bl OSReport
/* 813BF568 | 80 9F 02 08 */	lwz r4, 0x208(r31)
/* 813BF56C | 7F E3 FB 78 */	mr r3, r31
/* 813BF570 | 4B F8 95 81 */	bl get_cached_sd_save_banner__Q23ipl12NandSDWorkerFUl
/* 813BF574 | 7C 64 1B 78 */	mr r4, r3
/* 813BF578 | 38 7D 00 EF */	addi r3, r29, 0xef
/* 813BF57C | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813BF580 | 4C C6 31 82 */	crclr cr1eq
/* 813BF584 | 48 16 F1 1D */	bl OSReport
.L_813BF588:
/* 813BF588 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF58C | 38 00 00 17 */	li r0, 0x17
/* 813BF590 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF594 | 48 00 01 98 */	b .L_813BF72C
.L_813BF598:
/* 813BF598 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813BF59C | 4B F8 99 81 */	bl get_sd_save_size_async__Q23ipl12NandSDWorkerFUl
/* 813BF5A0 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF5A4 | 38 00 00 18 */	li r0, 0x18
/* 813BF5A8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF5AC | 48 00 01 80 */	b .L_813BF72C
.L_813BF5B0:
/* 813BF5B0 | 4B F8 92 59 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF5B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF5B8 | 40 82 01 74 */	bne .L_813BF72C
/* 813BF5BC | 7F E3 FB 78 */	mr r3, r31
/* 813BF5C0 | 4B F8 92 75 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF5C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF5C8 | 7C 7C 1B 78 */	mr r28, r3
/* 813BF5CC | 41 80 00 38 */	blt .L_813BF604
/* 813BF5D0 | 80 9F 02 08 */	lwz r4, 0x208(r31)
/* 813BF5D4 | 7F 85 E3 78 */	mr r5, r28
/* 813BF5D8 | 38 7D 01 7E */	addi r3, r29, 0x17e
/* 813BF5DC | 4C C6 31 82 */	crclr cr1eq
/* 813BF5E0 | 48 16 F0 C1 */	bl OSReport
/* 813BF5E4 | 80 9F 02 08 */	lwz r4, 0x208(r31)
/* 813BF5E8 | 7F E3 FB 78 */	mr r3, r31
/* 813BF5EC | 4B F8 95 E9 */	bl get_cached_sd_save_size__Q23ipl12NandSDWorkerFUl
/* 813BF5F0 | 7C 64 1B 78 */	mr r4, r3
/* 813BF5F4 | 38 7D 01 2E */	addi r3, r29, 0x12e
/* 813BF5F8 | 4C C6 31 82 */	crclr cr1eq
/* 813BF5FC | 48 16 F0 A5 */	bl OSReport
/* 813BF600 | 48 00 00 28 */	b .L_813BF628
.L_813BF604:
/* 813BF604 | 7F 84 E3 78 */	mr r4, r28
/* 813BF608 | 38 7D 01 9A */	addi r3, r29, 0x19a
/* 813BF60C | 4C C6 31 82 */	crclr cr1eq
/* 813BF610 | 48 16 F0 91 */	bl OSReport
/* 813BF614 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF618 | 38 00 00 4F */	li r0, 0x4f
/* 813BF61C | 93 83 F3 B0 */	stw r28, -0xc50(r3)
/* 813BF620 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF624 | 48 00 01 08 */	b .L_813BF72C
.L_813BF628:
/* 813BF628 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF62C | 38 00 00 19 */	li r0, 0x19
/* 813BF630 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF634 | 48 00 00 F8 */	b .L_813BF72C
.L_813BF638:
/* 813BF638 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813BF63C | 4B F8 99 19 */	bl delete_sd_save_async__Q23ipl12NandSDWorkerFUl
/* 813BF640 | 80 9F 02 08 */	lwz r4, 0x208(r31)
/* 813BF644 | 38 7D 01 BC */	addi r3, r29, 0x1bc
/* 813BF648 | 4C C6 31 82 */	crclr cr1eq
/* 813BF64C | 48 16 F0 55 */	bl OSReport
/* 813BF650 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF654 | 38 00 00 1A */	li r0, 0x1a
/* 813BF658 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF65C | 48 00 00 D0 */	b .L_813BF72C
.L_813BF660:
/* 813BF660 | 4B F8 91 A9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF668 | 40 82 00 C4 */	bne .L_813BF72C
/* 813BF66C | 7F E3 FB 78 */	mr r3, r31
/* 813BF670 | 4B F8 91 C5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF674 | 7C 64 1B 78 */	mr r4, r3
/* 813BF678 | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF67C | 4C C6 31 82 */	crclr cr1eq
/* 813BF680 | 48 16 F0 21 */	bl OSReport
/* 813BF684 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF688 | 38 80 00 00 */	li r4, 0x0
/* 813BF68C | 38 00 00 4B */	li r0, 0x4b
/* 813BF690 | 90 83 F3 B0 */	stw r4, -0xc50(r3)
/* 813BF694 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF698 | 48 00 00 94 */	b .L_813BF72C
.L_813BF69C:
/* 813BF69C | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813BF6A0 | 4B F8 9A A9 */	bl sd_app_exist_async__Q23ipl12NandSDWorkerFUl
/* 813BF6A4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF6A8 | 38 00 00 4C */	li r0, 0x4c
/* 813BF6AC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF6B0 | 48 00 00 7C */	b .L_813BF72C
.L_813BF6B4:
/* 813BF6B4 | 4B F8 91 55 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF6B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF6BC | 40 82 00 70 */	bne .L_813BF72C
/* 813BF6C0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF6C4 | 4B F8 91 71 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF6C8 | 7C 64 1B 78 */	mr r4, r3
/* 813BF6CC | 38 7D 00 2A */	addi r3, r29, 0x2a
/* 813BF6D0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF6D4 | 48 16 EF CD */	bl OSReport
/* 813BF6D8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF6DC | 38 00 00 4F */	li r0, 0x4f
/* 813BF6E0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF6E4 | 48 00 00 48 */	b .L_813BF72C
.L_813BF6E8:
/* 813BF6E8 | 4B F8 96 09 */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813BF6EC | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF6F0 | 38 00 00 50 */	li r0, 0x50
/* 813BF6F4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF6F8 | 48 00 00 34 */	b .L_813BF72C
.L_813BF6FC:
/* 813BF6FC | 4B F8 90 FD */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813BF700 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF704 | 41 82 00 28 */	beq .L_813BF72C
/* 813BF708 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF70C | 80 03 F3 B0 */	lwz r0, -0xc50(r3)
/* 813BF710 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BF714 | 40 82 00 10 */	bne .L_813BF724
/* 813BF718 | 38 00 00 52 */	li r0, 0x52
/* 813BF71C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF720 | 48 00 00 0C */	b .L_813BF72C
.L_813BF724:
/* 813BF724 | 38 00 00 51 */	li r0, 0x51
/* 813BF728 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
.L_813BF72C:
/* 813BF72C | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF730 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BF734 | 80 63 F3 A8 */	lwz r3, -0xc58(r3)
/* 813BF738 | 48 23 9D D9 */	bl _restgpr_28
/* 813BF73C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813BF740 | 7C 08 03 A6 */	mtlr r0
/* 813BF744 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813BF748 | 4E 80 00 20 */	blr
.endfn process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0xD64 | 0x813BF74C | size: 0x108
# ipl::kitayama::NandSDWorker_AutoTest::process_initialize()
.fn process_initialize__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BF74C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 813BF750 | 7C 08 02 A6 */	mflr r0
/* 813BF754 | 3C 83 00 01 */	addis r4, r3, 0x1
/* 813BF758 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 813BF75C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 813BF760 | 7C 7F 1B 78 */	mr r31, r3
/* 813BF764 | 80 04 F3 A8 */	lwz r0, -0xc58(r4)
/* 813BF768 | 2C 00 00 4F */	cmpwi r0, 0x4f
/* 813BF76C | 41 82 00 88 */	beq .L_813BF7F4
/* 813BF770 | 40 80 00 1C */	bge .L_813BF78C
/* 813BF774 | 2C 00 00 1C */	cmpwi r0, 0x1c
/* 813BF778 | 41 82 00 3C */	beq .L_813BF7B4
/* 813BF77C | 40 80 00 BC */	bge .L_813BF838
/* 813BF780 | 2C 00 00 1B */	cmpwi r0, 0x1b
/* 813BF784 | 40 80 00 1C */	bge .L_813BF7A0
/* 813BF788 | 48 00 00 B0 */	b .L_813BF838
.L_813BF78C:
/* 813BF78C | 2C 00 00 53 */	cmpwi r0, 0x53
/* 813BF790 | 40 80 00 A8 */	bge .L_813BF838
/* 813BF794 | 2C 00 00 51 */	cmpwi r0, 0x51
/* 813BF798 | 40 80 00 A0 */	bge .L_813BF838
/* 813BF79C | 48 00 00 6C */	b .L_813BF808
.L_813BF7A0:
/* 813BF7A0 | 4B F8 97 ED */	bl initialize_nand_async__Q23ipl12NandSDWorkerFv
/* 813BF7A4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF7A8 | 38 00 00 1C */	li r0, 0x1c
/* 813BF7AC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF7B0 | 48 00 00 88 */	b .L_813BF838
.L_813BF7B4:
/* 813BF7B4 | 4B F8 90 55 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF7B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF7BC | 40 82 00 7C */	bne .L_813BF838
/* 813BF7C0 | 7F E3 FB 78 */	mr r3, r31
/* 813BF7C4 | 4B F8 90 71 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF7C8 | 3C BF 00 01 */	addis r5, r31, 0x1
/* 813BF7CC | 7C 64 1B 78 */	mr r4, r3
/* 813BF7D0 | 90 65 F3 B0 */	stw r3, -0xc50(r5)
/* 813BF7D4 | 3C 60 81 65 */	lis r3, lbl_8164FDAA@ha
/* 813BF7D8 | 38 63 FD AA */	addi r3, r3, lbl_8164FDAA@l
/* 813BF7DC | 4C C6 31 82 */	crclr cr1eq
/* 813BF7E0 | 48 16 EE C1 */	bl OSReport
/* 813BF7E4 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF7E8 | 38 00 00 4F */	li r0, 0x4f
/* 813BF7EC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF7F0 | 48 00 00 48 */	b .L_813BF838
.L_813BF7F4:
/* 813BF7F4 | 4B F8 94 FD */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813BF7F8 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF7FC | 38 00 00 50 */	li r0, 0x50
/* 813BF800 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF804 | 48 00 00 34 */	b .L_813BF838
.L_813BF808:
/* 813BF808 | 4B F8 8F F1 */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813BF80C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF810 | 41 82 00 28 */	beq .L_813BF838
/* 813BF814 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF818 | 80 03 F3 B0 */	lwz r0, -0xc50(r3)
/* 813BF81C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813BF820 | 40 82 00 10 */	bne .L_813BF830
/* 813BF824 | 38 00 00 52 */	li r0, 0x52
/* 813BF828 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF82C | 48 00 00 0C */	b .L_813BF838
.L_813BF830:
/* 813BF830 | 38 00 00 51 */	li r0, 0x51
/* 813BF834 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
.L_813BF838:
/* 813BF838 | 3C 7F 00 01 */	addis r3, r31, 0x1
/* 813BF83C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 813BF840 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 813BF844 | 80 63 F3 A8 */	lwz r3, -0xc58(r3)
/* 813BF848 | 7C 08 03 A6 */	mtlr r0
/* 813BF84C | 38 21 00 10 */	addi r1, r1, 0x10
/* 813BF850 | 4E 80 00 20 */	blr
.endfn process_initialize__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# .text:0xE6C | 0x813BF854 | size: 0xAA4
# ipl::kitayama::NandSDWorker_AutoTest::process_app_test()
.fn process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, global
/* 813BF854 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 813BF858 | 7C 08 02 A6 */	mflr r0
/* 813BF85C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 813BF860 | 39 61 00 20 */	addi r11, r1, 0x20
/* 813BF864 | 48 23 9C 61 */	bl _savegpr_28
/* 813BF868 | 3C E3 00 01 */	addis r7, r3, 0x1
/* 813BF86C | 3F E0 81 65 */	lis r31, lbl_8164FD80@ha
/* 813BF870 | 80 07 F3 A8 */	lwz r0, -0xc58(r7)
/* 813BF874 | 7C 7E 1B 78 */	mr r30, r3
/* 813BF878 | 3B FF FD 80 */	addi r31, r31, lbl_8164FD80@l
/* 813BF87C | 28 00 00 52 */	cmplwi r0, 0x52
/* 813BF880 | 41 81 0A 58 */	bgt .L_813C02D8
/* 813BF884 | 3C 80 81 65 */	lis r4, jumptable_81650234@ha
/* 813BF888 | 54 00 10 3A */	slwi r0, r0, 2
/* 813BF88C | 38 84 02 34 */	addi r4, r4, jumptable_81650234@l
/* 813BF890 | 7C 84 00 2E */	lwzx r4, r4, r0
/* 813BF894 | 7C 89 03 A6 */	mtctr r4
/* 813BF898 | 4E 80 04 20 */	bctr
.L_813BF89C:
/* 813BF89C | 4B F8 94 4D */	bl startup_async__Q23ipl12NandSDWorkerFv
/* 813BF8A0 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BF8A4 | 38 00 00 03 */	li r0, 0x3
/* 813BF8A8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF8AC | 48 00 0A 2C */	b .L_813C02D8
.L_813BF8B0:
/* 813BF8B0 | 4B F8 8F 59 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF8B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF8B8 | 40 82 0A 20 */	bne .L_813C02D8
/* 813BF8BC | 7F C3 F3 78 */	mr r3, r30
/* 813BF8C0 | 4B F8 8F 75 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF8C4 | 7C 64 1B 78 */	mr r4, r3
/* 813BF8C8 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BF8CC | 4C C6 31 82 */	crclr cr1eq
/* 813BF8D0 | 48 16 ED D1 */	bl OSReport
/* 813BF8D4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BF8D8 | 38 00 00 2B */	li r0, 0x2b
/* 813BF8DC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF8E0 | 48 00 09 F8 */	b .L_813C02D8
.L_813BF8E4:
/* 813BF8E4 | 4B F8 8F B9 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813BF8E8 | 7C 64 1B 78 */	mr r4, r3
/* 813BF8EC | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813BF8F0 | 4C C6 31 82 */	crclr cr1eq
/* 813BF8F4 | 48 16 ED AD */	bl OSReport
/* 813BF8F8 | 7F C3 F3 78 */	mr r3, r30
/* 813BF8FC | 38 9E 00 08 */	addi r4, r30, 0x8
/* 813BF900 | 4B F8 96 ED */	bl list_nand_app_async__Q23ipl12NandSDWorkerFPUx
/* 813BF904 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BF908 | 38 00 00 2C */	li r0, 0x2c
/* 813BF90C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF910 | 48 00 09 C8 */	b .L_813C02D8
.L_813BF914:
/* 813BF914 | 4B F8 8E F5 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF918 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF91C | 40 82 09 BC */	bne .L_813C02D8
/* 813BF920 | 7F C3 F3 78 */	mr r3, r30
/* 813BF924 | 4B F8 8F 11 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF928 | 7C 64 1B 78 */	mr r4, r3
/* 813BF92C | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BF930 | 4C C6 31 82 */	crclr cr1eq
/* 813BF934 | 48 16 ED 6D */	bl OSReport
/* 813BF938 | 3B 80 00 00 */	li r28, 0x0
/* 813BF93C | 3B A0 00 00 */	li r29, 0x0
/* 813BF940 | 48 00 00 24 */	b .L_813BF964
.L_813BF944:
/* 813BF944 | 7C 9E EA 14 */	add r4, r30, r29
/* 813BF948 | 38 7F 03 3B */	addi r3, r31, 0x33b
/* 813BF94C | 80 A4 00 08 */	lwz r5, 0x8(r4)
/* 813BF950 | 80 C4 00 0C */	lwz r6, 0xc(r4)
/* 813BF954 | 4C C6 31 82 */	crclr cr1eq
/* 813BF958 | 48 16 ED 49 */	bl OSReport
/* 813BF95C | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BF960 | 3B BD 00 08 */	addi r29, r29, 0x8
.L_813BF964:
/* 813BF964 | 7F C3 F3 78 */	mr r3, r30
/* 813BF968 | 4B F8 8F 35 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813BF96C | 7C 1C 18 40 */	cmplw r28, r3
/* 813BF970 | 41 80 FF D4 */	blt .L_813BF944
/* 813BF974 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BF978 | 38 00 00 2D */	li r0, 0x2d
/* 813BF97C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF980 | 48 00 09 58 */	b .L_813C02D8
.L_813BF984:
/* 813BF984 | 3D 03 00 03 */	addis r8, r3, 0x3
/* 813BF988 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BF98C | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BF990 | 38 E7 F3 B4 */	subi r7, r7, 0xc4c
/* 813BF994 | 39 08 83 B4 */	subi r8, r8, 0x7c4c
/* 813BF998 | 4B F8 96 89 */	bl get_nand_app_thumbnail_async__Q23ipl12NandSDWorkerFUxPvPQ33ipl7channel18SChanMgrMetaHeader
/* 813BF99C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BF9A0 | 38 00 00 2E */	li r0, 0x2e
/* 813BF9A4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BF9A8 | 48 00 09 30 */	b .L_813C02D8
.L_813BF9AC:
/* 813BF9AC | 4B F8 8E 5D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BF9B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF9B4 | 40 82 09 24 */	bne .L_813C02D8
/* 813BF9B8 | 7F C3 F3 78 */	mr r3, r30
/* 813BF9BC | 4B F8 8E 79 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF9C0 | 7C 64 1B 78 */	mr r4, r3
/* 813BF9C4 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BF9C8 | 4C C6 31 82 */	crclr cr1eq
/* 813BF9CC | 48 16 EC D5 */	bl OSReport
/* 813BF9D0 | 7F C3 F3 78 */	mr r3, r30
/* 813BF9D4 | 4B F8 8E 61 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BF9D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BF9DC | 40 81 00 B0 */	ble .L_813BFA8C
/* 813BF9E0 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813BF9E4 | 7F C3 F3 78 */	mr r3, r30
/* 813BF9E8 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 813BF9EC | 4B F8 8F 6D */	bl get_cached_nand_app_meta_header__Q23ipl12NandSDWorkerFUx
/* 813BF9F0 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 813BF9F4 | 7C 7D 1B 78 */	mr r29, r3
/* 813BF9F8 | 80 84 F3 B4 */	lwz r4, -0xc4c(r4)
/* 813BF9FC | 38 7F 00 D6 */	addi r3, r31, 0xd6
/* 813BFA00 | 4C C6 31 82 */	crclr cr1eq
/* 813BFA04 | 48 16 EC 9D */	bl OSReport
/* 813BFA08 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813BFA0C | 7F C3 F3 78 */	mr r3, r30
/* 813BFA10 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 813BFA14 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 813BFA18 | 4B F8 8E DD */	bl get_cached_nand_app_thumbnail__Q23ipl12NandSDWorkerFUxPUl
/* 813BFA1C | 7C 64 1B 78 */	mr r4, r3
/* 813BFA20 | 38 7F 00 EF */	addi r3, r31, 0xef
/* 813BFA24 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813BFA28 | 4C C6 31 82 */	crclr cr1eq
/* 813BFA2C | 48 16 EC 75 */	bl OSReport
/* 813BFA30 | 3C FE 00 03 */	addis r7, r30, 0x3
/* 813BFA34 | 38 7F 03 54 */	addi r3, r31, 0x354
/* 813BFA38 | 88 87 83 F4 */	lbz r4, -0x7c0c(r7)
/* 813BFA3C | 88 A7 83 F5 */	lbz r5, -0x7c0b(r7)
/* 813BFA40 | 88 C7 83 F6 */	lbz r6, -0x7c0a(r7)
/* 813BFA44 | 7C 84 07 74 */	extsb r4, r4
/* 813BFA48 | 88 E7 83 F7 */	lbz r7, -0x7c09(r7)
/* 813BFA4C | 7C A5 07 74 */	extsb r5, r5
/* 813BFA50 | 7C C6 07 74 */	extsb r6, r6
/* 813BFA54 | 7C E7 07 74 */	extsb r7, r7
/* 813BFA58 | 4C C6 31 82 */	crclr cr1eq
/* 813BFA5C | 48 16 EC 45 */	bl OSReport
/* 813BFA60 | 88 9D 00 40 */	lbz r4, 0x40(r29)
/* 813BFA64 | 38 7F 03 6E */	addi r3, r31, 0x36e
/* 813BFA68 | 88 BD 00 41 */	lbz r5, 0x41(r29)
/* 813BFA6C | 88 DD 00 42 */	lbz r6, 0x42(r29)
/* 813BFA70 | 7C 84 07 74 */	extsb r4, r4
/* 813BFA74 | 88 FD 00 43 */	lbz r7, 0x43(r29)
/* 813BFA78 | 7C A5 07 74 */	extsb r5, r5
/* 813BFA7C | 7C C6 07 74 */	extsb r6, r6
/* 813BFA80 | 7C E7 07 74 */	extsb r7, r7
/* 813BFA84 | 4C C6 31 82 */	crclr cr1eq
/* 813BFA88 | 48 16 EC 19 */	bl OSReport
.L_813BFA8C:
/* 813BFA8C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFA90 | 38 00 00 37 */	li r0, 0x37
/* 813BFA94 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFA98 | 48 00 08 40 */	b .L_813C02D8
.L_813BFA9C:
/* 813BFA9C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BFAA0 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BFAA4 | 4B F8 94 49 */	bl get_nand_app_size_async__Q23ipl12NandSDWorkerFUx
/* 813BFAA8 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFAAC | 38 00 00 38 */	li r0, 0x38
/* 813BFAB0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFAB4 | 48 00 08 24 */	b .L_813C02D8
.L_813BFAB8:
/* 813BFAB8 | 4B F8 8D 51 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFABC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFAC0 | 40 82 08 18 */	bne .L_813C02D8
/* 813BFAC4 | 7F C3 F3 78 */	mr r3, r30
/* 813BFAC8 | 4B F8 8D 6D */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFACC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFAD0 | 7C 7C 1B 78 */	mr r28, r3
/* 813BFAD4 | 41 80 00 40 */	blt .L_813BFB14
/* 813BFAD8 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813BFADC | 7F 87 E3 78 */	mr r7, r28
/* 813BFAE0 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 813BFAE4 | 38 7F 03 8F */	addi r3, r31, 0x38f
/* 813BFAE8 | 4C C6 31 82 */	crclr cr1eq
/* 813BFAEC | 48 16 EB B5 */	bl OSReport
/* 813BFAF0 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813BFAF4 | 7F C3 F3 78 */	mr r3, r30
/* 813BFAF8 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 813BFAFC | 4B F8 8F 65 */	bl get_cached_nand_app_size__Q23ipl12NandSDWorkerFUx
/* 813BFB00 | 7C 64 1B 78 */	mr r4, r3
/* 813BFB04 | 38 7F 03 AD */	addi r3, r31, 0x3ad
/* 813BFB08 | 4C C6 31 82 */	crclr cr1eq
/* 813BFB0C | 48 16 EB 95 */	bl OSReport
/* 813BFB10 | 48 00 00 28 */	b .L_813BFB38
.L_813BFB14:
/* 813BFB14 | 7F 84 E3 78 */	mr r4, r28
/* 813BFB18 | 38 7F 03 C3 */	addi r3, r31, 0x3c3
/* 813BFB1C | 4C C6 31 82 */	crclr cr1eq
/* 813BFB20 | 48 16 EB 81 */	bl OSReport
/* 813BFB24 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFB28 | 38 00 00 4F */	li r0, 0x4f
/* 813BFB2C | 93 83 F3 B0 */	stw r28, -0xc50(r3)
/* 813BFB30 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFB34 | 48 00 07 A4 */	b .L_813C02D8
.L_813BFB38:
/* 813BFB38 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFB3C | 38 00 00 04 */	li r0, 0x4
/* 813BFB40 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFB44 | 48 00 07 94 */	b .L_813C02D8
.L_813BFB48:
/* 813BFB48 | 4B F8 91 F1 */	bl mount_sd_async__Q23ipl12NandSDWorkerFv
/* 813BFB4C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFB50 | 38 00 00 05 */	li r0, 0x5
/* 813BFB54 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFB58 | 48 00 07 80 */	b .L_813C02D8
.L_813BFB5C:
/* 813BFB5C | 4B F8 8C AD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFB60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFB64 | 40 82 07 74 */	bne .L_813C02D8
/* 813BFB68 | 7F C3 F3 78 */	mr r3, r30
/* 813BFB6C | 4B F8 8C C9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFB70 | 7C 64 1B 78 */	mr r4, r3
/* 813BFB74 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFB78 | 4C C6 31 82 */	crclr cr1eq
/* 813BFB7C | 48 16 EB 25 */	bl OSReport
/* 813BFB80 | 7F C3 F3 78 */	mr r3, r30
/* 813BFB84 | 4B F8 91 1D */	bl is_sd_write_protected__Q23ipl12NandSDWorkerFv
/* 813BFB88 | 7C 64 1B 78 */	mr r4, r3
/* 813BFB8C | 38 7F 00 36 */	addi r3, r31, 0x36
/* 813BFB90 | 4C C6 31 82 */	crclr cr1eq
/* 813BFB94 | 48 16 EB 0D */	bl OSReport
/* 813BFB98 | 7F C3 F3 78 */	mr r3, r30
/* 813BFB9C | 4B F8 91 29 */	bl get_sd_drive_letter__Q23ipl12NandSDWorkerFv
/* 813BFBA0 | 7C 64 07 74 */	extsb r4, r3
/* 813BFBA4 | 38 7F 00 51 */	addi r3, r31, 0x51
/* 813BFBA8 | 4C C6 31 82 */	crclr cr1eq
/* 813BFBAC | 48 16 EA F5 */	bl OSReport
/* 813BFBB0 | 7F C3 F3 78 */	mr r3, r30
/* 813BFBB4 | 4B F8 8C D1 */	bl get_sd_state__Q23ipl12NandSDWorkerFv
/* 813BFBB8 | 7C 64 1B 78 */	mr r4, r3
/* 813BFBBC | 38 7F 00 66 */	addi r3, r31, 0x66
/* 813BFBC0 | 4C C6 31 82 */	crclr cr1eq
/* 813BFBC4 | 48 16 EA DD */	bl OSReport
/* 813BFBC8 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFBCC | 38 00 00 21 */	li r0, 0x21
/* 813BFBD0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFBD4 | 48 00 07 04 */	b .L_813C02D8
.L_813BFBD8:
/* 813BFBD8 | 4B F8 93 F9 */	bl format_sd_async__Q23ipl12NandSDWorkerFv
/* 813BFBDC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFBE0 | 38 00 00 22 */	li r0, 0x22
/* 813BFBE4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFBE8 | 48 00 06 F0 */	b .L_813C02D8
.L_813BFBEC:
/* 813BFBEC | 4B F8 8C 1D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFBF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFBF4 | 40 82 06 E4 */	bne .L_813C02D8
/* 813BFBF8 | 7F C3 F3 78 */	mr r3, r30
/* 813BFBFC | 4B F8 8C 39 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFC00 | 7C 64 1B 78 */	mr r4, r3
/* 813BFC04 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFC08 | 4C C6 31 82 */	crclr cr1eq
/* 813BFC0C | 48 16 EA 95 */	bl OSReport
/* 813BFC10 | 7F C3 F3 78 */	mr r3, r30
/* 813BFC14 | 4B F8 8E B9 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813BFC18 | 7C 64 1B 78 */	mr r4, r3
/* 813BFC1C | 38 7F 03 E6 */	addi r3, r31, 0x3e6
/* 813BFC20 | 4C C6 31 82 */	crclr cr1eq
/* 813BFC24 | 48 16 EA 7D */	bl OSReport
/* 813BFC28 | 7F C3 F3 78 */	mr r3, r30
/* 813BFC2C | 4B F8 8C 71 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813BFC30 | 7C 64 1B 78 */	mr r4, r3
/* 813BFC34 | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813BFC38 | 4C C6 31 82 */	crclr cr1eq
/* 813BFC3C | 48 16 EA 65 */	bl OSReport
/* 813BFC40 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFC44 | 38 00 00 3F */	li r0, 0x3f
/* 813BFC48 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFC4C | 48 00 06 8C */	b .L_813C02D8
.L_813BFC50:
/* 813BFC50 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BFC54 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BFC58 | 4B F8 94 BD */	bl nand_app_exist_async__Q23ipl12NandSDWorkerFUx
/* 813BFC5C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFC60 | 38 00 00 40 */	li r0, 0x40
/* 813BFC64 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFC68 | 48 00 06 70 */	b .L_813C02D8
.L_813BFC6C:
/* 813BFC6C | 4B F8 8B 9D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFC70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFC74 | 40 82 06 64 */	bne .L_813C02D8
/* 813BFC78 | 7F C3 F3 78 */	mr r3, r30
/* 813BFC7C | 4B F8 8B B9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFC80 | 7C 64 1B 78 */	mr r4, r3
/* 813BFC84 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFC88 | 4C C6 31 82 */	crclr cr1eq
/* 813BFC8C | 48 16 EA 15 */	bl OSReport
/* 813BFC90 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFC94 | 38 00 00 25 */	li r0, 0x25
/* 813BFC98 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFC9C | 48 00 06 3C */	b .L_813C02D8
.L_813BFCA0:
/* 813BFCA0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813BFCA4 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813BFCA8 | 4B F8 93 D1 */	bl copy_nand_app_to_sd_async__Q23ipl12NandSDWorkerFUx
/* 813BFCAC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFCB0 | 38 00 00 26 */	li r0, 0x26
/* 813BFCB4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFCB8 | 48 00 06 20 */	b .L_813C02D8
.L_813BFCBC:
/* 813BFCBC | 4B F8 8B 4D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFCC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFCC4 | 40 82 06 14 */	bne .L_813C02D8
/* 813BFCC8 | 7F C3 F3 78 */	mr r3, r30
/* 813BFCCC | 4B F8 8B 69 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFCD0 | 7C 64 1B 78 */	mr r4, r3
/* 813BFCD4 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFCD8 | 4C C6 31 82 */	crclr cr1eq
/* 813BFCDC | 48 16 E9 C5 */	bl OSReport
/* 813BFCE0 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFCE4 | 38 00 00 23 */	li r0, 0x23
/* 813BFCE8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFCEC | 48 00 05 EC */	b .L_813C02D8
.L_813BFCF0:
/* 813BFCF0 | 38 7F 03 F7 */	addi r3, r31, 0x3f7
/* 813BFCF4 | 4C C6 31 82 */	crclr cr1eq
/* 813BFCF8 | 48 16 E9 A9 */	bl OSReport
/* 813BFCFC | 3C 9E 00 03 */	addis r4, r30, 0x3
/* 813BFD00 | 7F C3 F3 78 */	mr r3, r30
/* 813BFD04 | 38 84 89 B8 */	subi r4, r4, 0x7648
/* 813BFD08 | 4B F8 92 D1 */	bl get_sd_free_area_async__Q23ipl12NandSDWorkerFv
/* 813BFD0C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFD10 | 38 00 00 24 */	li r0, 0x24
/* 813BFD14 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFD18 | 48 00 05 C0 */	b .L_813C02D8
.L_813BFD1C:
/* 813BFD1C | 4B F8 8A ED */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFD20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFD24 | 40 82 05 B4 */	bne .L_813C02D8
/* 813BFD28 | 7F C3 F3 78 */	mr r3, r30
/* 813BFD2C | 4B F8 8B 09 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFD30 | 3C DE 00 03 */	addis r6, r30, 0x3
/* 813BFD34 | 7C 64 1B 78 */	mr r4, r3
/* 813BFD38 | 80 A6 89 B8 */	lwz r5, -0x7648(r6)
/* 813BFD3C | 38 7F 04 0A */	addi r3, r31, 0x40a
/* 813BFD40 | 80 C6 89 BC */	lwz r6, -0x7644(r6)
/* 813BFD44 | 4C C6 31 82 */	crclr cr1eq
/* 813BFD48 | 48 16 E9 59 */	bl OSReport
/* 813BFD4C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFD50 | 38 00 00 2F */	li r0, 0x2f
/* 813BFD54 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFD58 | 48 00 05 80 */	b .L_813C02D8
.L_813BFD5C:
/* 813BFD5C | 38 80 00 00 */	li r4, 0x0
/* 813BFD60 | 38 A0 01 00 */	li r5, 0x100
/* 813BFD64 | 38 63 02 08 */	addi r3, r3, 0x208
/* 813BFD68 | 4B F7 05 CD */	bl memset
/* 813BFD6C | 7F C3 F3 78 */	mr r3, r30
/* 813BFD70 | 38 9E 02 08 */	addi r4, r30, 0x208
/* 813BFD74 | 4B F8 90 19 */	bl list_sd_app_async__Q23ipl12NandSDWorkerFPUl
/* 813BFD78 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFD7C | 38 00 00 30 */	li r0, 0x30
/* 813BFD80 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFD84 | 48 00 05 54 */	b .L_813C02D8
.L_813BFD88:
/* 813BFD88 | 4B F8 8A 81 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFD8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFD90 | 40 82 05 48 */	bne .L_813C02D8
/* 813BFD94 | 7F C3 F3 78 */	mr r3, r30
/* 813BFD98 | 4B F8 8A 9D */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFD9C | 7C 64 1B 78 */	mr r4, r3
/* 813BFDA0 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFDA4 | 4C C6 31 82 */	crclr cr1eq
/* 813BFDA8 | 48 16 E8 F9 */	bl OSReport
/* 813BFDAC | 7F C3 F3 78 */	mr r3, r30
/* 813BFDB0 | 4B F8 8D 1D */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813BFDB4 | 7C 64 1B 78 */	mr r4, r3
/* 813BFDB8 | 38 7F 03 E6 */	addi r3, r31, 0x3e6
/* 813BFDBC | 4C C6 31 82 */	crclr cr1eq
/* 813BFDC0 | 48 16 E8 E1 */	bl OSReport
/* 813BFDC4 | 7F C3 F3 78 */	mr r3, r30
/* 813BFDC8 | 4B F8 8A D5 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813BFDCC | 7C 64 1B 78 */	mr r4, r3
/* 813BFDD0 | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813BFDD4 | 4C C6 31 82 */	crclr cr1eq
/* 813BFDD8 | 48 16 E8 C9 */	bl OSReport
/* 813BFDDC | 3B 80 00 00 */	li r28, 0x0
/* 813BFDE0 | 3B A0 00 00 */	li r29, 0x0
/* 813BFDE4 | 48 00 00 20 */	b .L_813BFE04
.L_813BFDE8:
/* 813BFDE8 | 7C 9E EA 14 */	add r4, r30, r29
/* 813BFDEC | 38 7F 04 26 */	addi r3, r31, 0x426
/* 813BFDF0 | 80 84 02 08 */	lwz r4, 0x208(r4)
/* 813BFDF4 | 4C C6 31 82 */	crclr cr1eq
/* 813BFDF8 | 48 16 E8 A9 */	bl OSReport
/* 813BFDFC | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 813BFE00 | 3B BD 00 04 */	addi r29, r29, 0x4
.L_813BFE04:
/* 813BFE04 | 7F C3 F3 78 */	mr r3, r30
/* 813BFE08 | 4B F8 8C C5 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813BFE0C | 7C 1C 18 00 */	cmpw r28, r3
/* 813BFE10 | 41 80 FF D8 */	blt .L_813BFDE8
/* 813BFE14 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFE18 | 38 00 00 43 */	li r0, 0x43
/* 813BFE1C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFE20 | 48 00 04 B8 */	b .L_813C02D8
.L_813BFE24:
/* 813BFE24 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813BFE28 | 4B F8 93 3D */	bl iplNandSD_81349164
/* 813BFE2C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFE30 | 38 00 00 44 */	li r0, 0x44
/* 813BFE34 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFE38 | 48 00 04 A0 */	b .L_813C02D8
.L_813BFE3C:
/* 813BFE3C | 4B F8 89 CD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFE40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFE44 | 40 82 04 94 */	bne .L_813C02D8
/* 813BFE48 | 7F C3 F3 78 */	mr r3, r30
/* 813BFE4C | 4B F8 89 E9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFE50 | 7C 64 1B 78 */	mr r4, r3
/* 813BFE54 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFE58 | 4C C6 31 82 */	crclr cr1eq
/* 813BFE5C | 48 16 E8 45 */	bl OSReport
/* 813BFE60 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFE64 | 38 00 00 31 */	li r0, 0x31
/* 813BFE68 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFE6C | 48 00 04 6C */	b .L_813C02D8
.L_813BFE70:
/* 813BFE70 | 7C E3 3B 78 */	mr r3, r7
/* 813BFE74 | 3C 80 00 02 */	lis r4, 0x2
/* 813BFE78 | 38 A4 90 00 */	subi r5, r4, 0x7000
/* 813BFE7C | 38 80 00 00 */	li r4, 0x0
/* 813BFE80 | 38 63 F3 B4 */	subi r3, r3, 0xc4c
/* 813BFE84 | 4B F7 04 B1 */	bl memset
/* 813BFE88 | 3C BE 00 01 */	addis r5, r30, 0x1
/* 813BFE8C | 3C DE 00 03 */	addis r6, r30, 0x3
/* 813BFE90 | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813BFE94 | 7F C3 F3 78 */	mr r3, r30
/* 813BFE98 | 38 C6 83 B4 */	subi r6, r6, 0x7c4c
/* 813BFE9C | 38 A5 F3 B4 */	subi r5, r5, 0xc4c
/* 813BFEA0 | 4B F8 8F 29 */	bl get_sd_app_thumbnail_async__Q23ipl12NandSDWorkerFUlPUcPQ33ipl7channel18SChanMgrMetaHeader
/* 813BFEA4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFEA8 | 38 00 00 32 */	li r0, 0x32
/* 813BFEAC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFEB0 | 48 00 04 28 */	b .L_813C02D8
.L_813BFEB4:
/* 813BFEB4 | 4B F8 89 55 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFEB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFEBC | 40 82 04 1C */	bne .L_813C02D8
/* 813BFEC0 | 7F C3 F3 78 */	mr r3, r30
/* 813BFEC4 | 4B F8 89 71 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFEC8 | 7C 64 1B 78 */	mr r4, r3
/* 813BFECC | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813BFED0 | 4C C6 31 82 */	crclr cr1eq
/* 813BFED4 | 48 16 E7 CD */	bl OSReport
/* 813BFED8 | 7F C3 F3 78 */	mr r3, r30
/* 813BFEDC | 4B F8 89 59 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFEE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFEE4 | 41 80 00 A8 */	blt .L_813BFF8C
/* 813BFEE8 | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813BFEEC | 7F C3 F3 78 */	mr r3, r30
/* 813BFEF0 | 4B F8 8A B9 */	bl get_cached_sd_app_meta_header__Q23ipl12NandSDWorkerFUl
/* 813BFEF4 | 3C 9E 00 01 */	addis r4, r30, 0x1
/* 813BFEF8 | 7C 7D 1B 78 */	mr r29, r3
/* 813BFEFC | 80 84 F3 B4 */	lwz r4, -0xc4c(r4)
/* 813BFF00 | 38 7F 00 D6 */	addi r3, r31, 0xd6
/* 813BFF04 | 4C C6 31 82 */	crclr cr1eq
/* 813BFF08 | 48 16 E7 99 */	bl OSReport
/* 813BFF0C | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813BFF10 | 7F C3 F3 78 */	mr r3, r30
/* 813BFF14 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 813BFF18 | 4B F8 8C 3D */	bl get_cached_sd_app_thumbnail__Q23ipl12NandSDWorkerFUlPUl
/* 813BFF1C | 7C 64 1B 78 */	mr r4, r3
/* 813BFF20 | 38 7F 00 EF */	addi r3, r31, 0xef
/* 813BFF24 | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 813BFF28 | 4C C6 31 82 */	crclr cr1eq
/* 813BFF2C | 48 16 E7 75 */	bl OSReport
/* 813BFF30 | 3C FE 00 03 */	addis r7, r30, 0x3
/* 813BFF34 | 38 7F 03 54 */	addi r3, r31, 0x354
/* 813BFF38 | 88 87 83 F4 */	lbz r4, -0x7c0c(r7)
/* 813BFF3C | 88 A7 83 F5 */	lbz r5, -0x7c0b(r7)
/* 813BFF40 | 88 C7 83 F6 */	lbz r6, -0x7c0a(r7)
/* 813BFF44 | 7C 84 07 74 */	extsb r4, r4
/* 813BFF48 | 88 E7 83 F7 */	lbz r7, -0x7c09(r7)
/* 813BFF4C | 7C A5 07 74 */	extsb r5, r5
/* 813BFF50 | 7C C6 07 74 */	extsb r6, r6
/* 813BFF54 | 7C E7 07 74 */	extsb r7, r7
/* 813BFF58 | 4C C6 31 82 */	crclr cr1eq
/* 813BFF5C | 48 16 E7 45 */	bl OSReport
/* 813BFF60 | 88 9D 00 40 */	lbz r4, 0x40(r29)
/* 813BFF64 | 38 7F 03 6E */	addi r3, r31, 0x36e
/* 813BFF68 | 88 BD 00 41 */	lbz r5, 0x41(r29)
/* 813BFF6C | 88 DD 00 42 */	lbz r6, 0x42(r29)
/* 813BFF70 | 7C 84 07 74 */	extsb r4, r4
/* 813BFF74 | 88 FD 00 43 */	lbz r7, 0x43(r29)
/* 813BFF78 | 7C A5 07 74 */	extsb r5, r5
/* 813BFF7C | 7C C6 07 74 */	extsb r6, r6
/* 813BFF80 | 7C E7 07 74 */	extsb r7, r7
/* 813BFF84 | 4C C6 31 82 */	crclr cr1eq
/* 813BFF88 | 48 16 E7 19 */	bl OSReport
.L_813BFF8C:
/* 813BFF8C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFF90 | 38 00 00 33 */	li r0, 0x33
/* 813BFF94 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFF98 | 48 00 03 40 */	b .L_813C02D8
.L_813BFF9C:
/* 813BFF9C | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813BFFA0 | 4B F8 8F 99 */	bl get_sd_app_size_async__Q23ipl12NandSDWorkerFUl
/* 813BFFA4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813BFFA8 | 38 00 00 34 */	li r0, 0x34
/* 813BFFAC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813BFFB0 | 48 00 03 28 */	b .L_813C02D8
.L_813BFFB4:
/* 813BFFB4 | 4B F8 88 55 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813BFFB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFFBC | 40 82 03 1C */	bne .L_813C02D8
/* 813BFFC0 | 7F C3 F3 78 */	mr r3, r30
/* 813BFFC4 | 4B F8 88 71 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813BFFC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813BFFCC | 7C 7C 1B 78 */	mr r28, r3
/* 813BFFD0 | 41 80 00 38 */	blt .L_813C0008
/* 813BFFD4 | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813BFFD8 | 7F 85 E3 78 */	mr r5, r28
/* 813BFFDC | 38 7F 04 3A */	addi r3, r31, 0x43a
/* 813BFFE0 | 4C C6 31 82 */	crclr cr1eq
/* 813BFFE4 | 48 16 E6 BD */	bl OSReport
/* 813BFFE8 | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813BFFEC | 7F C3 F3 78 */	mr r3, r30
/* 813BFFF0 | 4B F8 8C 4D */	bl get_cached_sd_app_size__Q23ipl12NandSDWorkerFUl
/* 813BFFF4 | 7C 64 1B 78 */	mr r4, r3
/* 813BFFF8 | 38 7F 03 AD */	addi r3, r31, 0x3ad
/* 813BFFFC | 4C C6 31 82 */	crclr cr1eq
/* 813C0000 | 48 16 E6 A1 */	bl OSReport
/* 813C0004 | 48 00 00 28 */	b .L_813C002C
.L_813C0008:
/* 813C0008 | 7F 84 E3 78 */	mr r4, r28
/* 813C000C | 38 7F 04 55 */	addi r3, r31, 0x455
/* 813C0010 | 4C C6 31 82 */	crclr cr1eq
/* 813C0014 | 48 16 E6 8D */	bl OSReport
/* 813C0018 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C001C | 38 00 00 4F */	li r0, 0x4f
/* 813C0020 | 93 83 F3 B0 */	stw r28, -0xc50(r3)
/* 813C0024 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0028 | 48 00 02 B0 */	b .L_813C02D8
.L_813C002C:
/* 813C002C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0030 | 38 00 00 29 */	li r0, 0x29
/* 813C0034 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0038 | 48 00 02 A0 */	b .L_813C02D8
.L_813C003C:
/* 813C003C | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813C0040 | 38 E0 00 00 */	li r7, 0x0
/* 813C0044 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813C0048 | 4B F8 90 09 */	bl delete_nand_app_async__Q23ipl12NandSDWorkerFUx
/* 813C004C | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0050 | 38 00 00 2A */	li r0, 0x2a
/* 813C0054 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0058 | 48 00 02 80 */	b .L_813C02D8
.L_813C005C:
/* 813C005C | 4B F8 87 AD */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813C0060 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0064 | 40 82 02 74 */	bne .L_813C02D8
/* 813C0068 | 7F C3 F3 78 */	mr r3, r30
/* 813C006C | 4B F8 87 C9 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C0070 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0074 | 40 82 00 18 */	bne .L_813C008C
/* 813C0078 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 813C007C | 38 7F 04 76 */	addi r3, r31, 0x476
/* 813C0080 | 80 DE 00 0C */	lwz r6, 0xc(r30)
/* 813C0084 | 4C C6 31 82 */	crclr cr1eq
/* 813C0088 | 48 16 E6 19 */	bl OSReport
.L_813C008C:
/* 813C008C | 7F C3 F3 78 */	mr r3, r30
/* 813C0090 | 4B F8 87 A5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C0094 | 7C 64 1B 78 */	mr r4, r3
/* 813C0098 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813C009C | 4C C6 31 82 */	crclr cr1eq
/* 813C00A0 | 48 16 E6 01 */	bl OSReport
/* 813C00A4 | 7F C3 F3 78 */	mr r3, r30
/* 813C00A8 | 4B F8 8A 25 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813C00AC | 7C 64 1B 78 */	mr r4, r3
/* 813C00B0 | 38 7F 03 E6 */	addi r3, r31, 0x3e6
/* 813C00B4 | 4C C6 31 82 */	crclr cr1eq
/* 813C00B8 | 48 16 E5 E9 */	bl OSReport
/* 813C00BC | 7F C3 F3 78 */	mr r3, r30
/* 813C00C0 | 4B F8 87 DD */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813C00C4 | 7C 64 1B 78 */	mr r4, r3
/* 813C00C8 | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813C00CC | 4C C6 31 82 */	crclr cr1eq
/* 813C00D0 | 48 16 E5 D1 */	bl OSReport
/* 813C00D4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C00D8 | 38 00 00 49 */	li r0, 0x49
/* 813C00DC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C00E0 | 48 00 01 F8 */	b .L_813C02D8
.L_813C00E4:
/* 813C00E4 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 813C00E8 | 80 C3 00 0C */	lwz r6, 0xc(r3)
/* 813C00EC | 4B F8 90 29 */	bl nand_app_exist_async__Q23ipl12NandSDWorkerFUx
/* 813C00F0 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C00F4 | 38 00 00 4A */	li r0, 0x4a
/* 813C00F8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C00FC | 48 00 01 DC */	b .L_813C02D8
.L_813C0100:
/* 813C0100 | 4B F8 87 09 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813C0104 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0108 | 40 82 01 D0 */	bne .L_813C02D8
/* 813C010C | 7F C3 F3 78 */	mr r3, r30
/* 813C0110 | 4B F8 87 25 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C0114 | 7C 64 1B 78 */	mr r4, r3
/* 813C0118 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813C011C | 4C C6 31 82 */	crclr cr1eq
/* 813C0120 | 48 16 E5 81 */	bl OSReport
/* 813C0124 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0128 | 38 00 00 27 */	li r0, 0x27
/* 813C012C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0130 | 48 00 01 A8 */	b .L_813C02D8
.L_813C0134:
/* 813C0134 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813C0138 | 38 A0 00 00 */	li r5, 0x0
/* 813C013C | 4B F8 8F 5D */	bl copy_sd_app_to_nand_async__Q23ipl12NandSDWorkerFUl
/* 813C0140 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0144 | 38 00 00 28 */	li r0, 0x28
/* 813C0148 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C014C | 48 00 01 8C */	b .L_813C02D8
.L_813C0150:
/* 813C0150 | 4B F8 86 B9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813C0154 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0158 | 40 82 01 80 */	bne .L_813C02D8
/* 813C015C | 7F C3 F3 78 */	mr r3, r30
/* 813C0160 | 4B F8 86 D5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C0164 | 7C 64 1B 78 */	mr r4, r3
/* 813C0168 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813C016C | 4C C6 31 82 */	crclr cr1eq
/* 813C0170 | 48 16 E5 31 */	bl OSReport
/* 813C0174 | 7F C3 F3 78 */	mr r3, r30
/* 813C0178 | 4B F8 89 55 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813C017C | 7C 64 1B 78 */	mr r4, r3
/* 813C0180 | 38 7F 03 E6 */	addi r3, r31, 0x3e6
/* 813C0184 | 4C C6 31 82 */	crclr cr1eq
/* 813C0188 | 48 16 E5 19 */	bl OSReport
/* 813C018C | 7F C3 F3 78 */	mr r3, r30
/* 813C0190 | 4B F8 87 0D */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813C0194 | 7C 64 1B 78 */	mr r4, r3
/* 813C0198 | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813C019C | 4C C6 31 82 */	crclr cr1eq
/* 813C01A0 | 48 16 E5 01 */	bl OSReport
/* 813C01A4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C01A8 | 38 00 00 35 */	li r0, 0x35
/* 813C01AC | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C01B0 | 48 00 01 28 */	b .L_813C02D8
.L_813C01B4:
/* 813C01B4 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813C01B8 | 4B F8 8D B9 */	bl delete_sd_app_async__Q23ipl12NandSDWorkerFUl
/* 813C01BC | 80 9E 02 08 */	lwz r4, 0x208(r30)
/* 813C01C0 | 38 7F 04 97 */	addi r3, r31, 0x497
/* 813C01C4 | 4C C6 31 82 */	crclr cr1eq
/* 813C01C8 | 48 16 E4 D9 */	bl OSReport
/* 813C01CC | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C01D0 | 38 00 00 36 */	li r0, 0x36
/* 813C01D4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C01D8 | 48 00 01 00 */	b .L_813C02D8
.L_813C01DC:
/* 813C01DC | 4B F8 86 2D */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813C01E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C01E4 | 40 82 00 F4 */	bne .L_813C02D8
/* 813C01E8 | 7F C3 F3 78 */	mr r3, r30
/* 813C01EC | 4B F8 86 49 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C01F0 | 7C 64 1B 78 */	mr r4, r3
/* 813C01F4 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813C01F8 | 4C C6 31 82 */	crclr cr1eq
/* 813C01FC | 48 16 E4 A5 */	bl OSReport
/* 813C0200 | 7F C3 F3 78 */	mr r3, r30
/* 813C0204 | 4B F8 88 C9 */	bl get_sd_app_num__Q23ipl12NandSDWorkerFv
/* 813C0208 | 7C 64 1B 78 */	mr r4, r3
/* 813C020C | 38 7F 03 E6 */	addi r3, r31, 0x3e6
/* 813C0210 | 4C C6 31 82 */	crclr cr1eq
/* 813C0214 | 48 16 E4 8D */	bl OSReport
/* 813C0218 | 7F C3 F3 78 */	mr r3, r30
/* 813C021C | 4B F8 86 81 */	bl get_nand_app_num__Q23ipl12NandSDWorkerFv
/* 813C0220 | 7C 64 1B 78 */	mr r4, r3
/* 813C0224 | 38 7F 03 28 */	addi r3, r31, 0x328
/* 813C0228 | 4C C6 31 82 */	crclr cr1eq
/* 813C022C | 48 16 E4 75 */	bl OSReport
/* 813C0230 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0234 | 38 80 00 00 */	li r4, 0x0
/* 813C0238 | 38 00 00 4D */	li r0, 0x4d
/* 813C023C | 90 83 F3 B0 */	stw r4, -0xc50(r3)
/* 813C0240 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0244 | 48 00 00 94 */	b .L_813C02D8
.L_813C0248:
/* 813C0248 | 80 83 02 08 */	lwz r4, 0x208(r3)
/* 813C024C | 4B F8 8F 19 */	bl iplNandSD_81349164
/* 813C0250 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0254 | 38 00 00 4E */	li r0, 0x4e
/* 813C0258 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C025C | 48 00 00 7C */	b .L_813C02D8
.L_813C0260:
/* 813C0260 | 4B F8 85 A9 */	bl is_working__Q23ipl12NandSDWorkerFv
/* 813C0264 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C0268 | 40 82 00 70 */	bne .L_813C02D8
/* 813C026C | 7F C3 F3 78 */	mr r3, r30
/* 813C0270 | 4B F8 85 C5 */	bl get_async_result__Q23ipl12NandSDWorkerFv
/* 813C0274 | 7C 64 1B 78 */	mr r4, r3
/* 813C0278 | 38 7F 00 2A */	addi r3, r31, 0x2a
/* 813C027C | 4C C6 31 82 */	crclr cr1eq
/* 813C0280 | 48 16 E4 21 */	bl OSReport
/* 813C0284 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C0288 | 38 00 00 4F */	li r0, 0x4f
/* 813C028C | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C0290 | 48 00 00 48 */	b .L_813C02D8
.L_813C0294:
/* 813C0294 | 4B F8 8A 5D */	bl terminate_async__Q23ipl12NandSDWorkerFv
/* 813C0298 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C029C | 38 00 00 50 */	li r0, 0x50
/* 813C02A0 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C02A4 | 48 00 00 34 */	b .L_813C02D8
.L_813C02A8:
/* 813C02A8 | 4B F8 85 51 */	bl is_terminated__Q23ipl12NandSDWorkerFv
/* 813C02AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 813C02B0 | 41 82 00 28 */	beq .L_813C02D8
/* 813C02B4 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C02B8 | 80 03 F3 B0 */	lwz r0, -0xc50(r3)
/* 813C02BC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 813C02C0 | 40 82 00 10 */	bne .L_813C02D0
/* 813C02C4 | 38 00 00 52 */	li r0, 0x52
/* 813C02C8 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
/* 813C02CC | 48 00 00 0C */	b .L_813C02D8
.L_813C02D0:
/* 813C02D0 | 38 00 00 51 */	li r0, 0x51
/* 813C02D4 | 90 03 F3 A8 */	stw r0, -0xc58(r3)
.L_813C02D8:
/* 813C02D8 | 3C 7E 00 01 */	addis r3, r30, 0x1
/* 813C02DC | 39 61 00 20 */	addi r11, r1, 0x20
/* 813C02E0 | 80 63 F3 A8 */	lwz r3, -0xc58(r3)
/* 813C02E4 | 48 23 92 2D */	bl _restgpr_28
/* 813C02E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 813C02EC | 7C 08 03 A6 */	mtlr r0
/* 813C02F0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 813C02F4 | 4E 80 00 20 */	blr
.endfn process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv

# 0x8164FD80..0x81650380 | size: 0x600
.data
.balign 8

# .data:0x0 | 0x8164FD80 | size: 0x1A
.obj lbl_8164FD80, global
	.string "nandsdworker_autotest.cpp"
.endobj lbl_8164FD80

# .data:0x1A | 0x8164FD9A | size: 0x10
.obj lbl_8164FD9A, global
	.string "illegal state.\n"
.endobj lbl_8164FD9A

# .data:0x2A | 0x8164FDAA | size: 0x1B2
.obj lbl_8164FDAA, global
	.4byte 0x72657375
	.4byte 0x6C743A20
	.4byte 0x25640A00
	.4byte 0x69735F73
	.4byte 0x645F7772
	.4byte 0x6974655F
	.4byte 0x70726F74
	.4byte 0x65637465
	.4byte 0x643A2025
	.4byte 0x640A0073
	.4byte 0x64206472
	.4byte 0x69766520
	.4byte 0x6C657474
	.4byte 0x65723A20
	.4byte 0x25630A00
	.4byte 0x73642073
	.4byte 0x74617465
	.4byte 0x3A202564
	.4byte 0x0A006E61
	.4byte 0x6E642073
	.4byte 0x61766520
	.4byte 0x6E756D20
	.4byte 0x3D202564
	.4byte 0x0A007364
	.4byte 0x20736176
	.4byte 0x65206E75
	.4byte 0x6D203D20
	.4byte 0x25640A00
	.4byte 0x64656C65
	.4byte 0x7465206E
	.4byte 0x616E6420
	.4byte 0x73617665
	.4byte 0x20696420
	.4byte 0x3D203078
	.4byte 0x25303136
	.4byte 0x6C6C782E
	.4byte 0x0A006E61
	.4byte 0x6E642073
	.4byte 0x61766520
	.4byte 0x6964203D
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x62616E6E
	.4byte 0x65722073
	.4byte 0x69676E61
	.4byte 0x74757265
	.4byte 0x203D2030
	.4byte 0x7825780A
	.4byte 0x00636163
	.4byte 0x68656420
	.4byte 0x62616E6E
	.4byte 0x65722073
	.4byte 0x69676E61
	.4byte 0x74757265
	.4byte 0x203D2030
	.4byte 0x7825780A
	.4byte 0x0073697A
	.4byte 0x65206F66
	.4byte 0x20736176
	.4byte 0x65206964
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C783A20
	.4byte 0x25640A00
	.4byte 0x63616368
	.4byte 0x65642073
	.4byte 0x61766520
	.4byte 0x73697A65
	.4byte 0x203D2025
	.4byte 0x640A0067
	.4byte 0x65745F6E
	.4byte 0x616E645F
	.4byte 0x73617665
	.4byte 0x5F73697A
	.4byte 0x655F6173
	.4byte 0x796E6320
	.4byte 0x6572726F
	.4byte 0x723A2025
	.4byte 0x640A0073
	.4byte 0x64207361
	.4byte 0x76652069
	.4byte 0x64203D20
	.4byte 0x30782530
	.4byte 0x38780A00
	.4byte 0x73697A65
	.4byte 0x206F6620
	.4byte 0x73617665
	.4byte 0x20696420
	.4byte 0x30782530
	.4byte 0x38783A20
	.4byte 0x25640A00
	.4byte 0x6765745F
	.4byte 0x73645F73
	.4byte 0x6176655F
	.4byte 0x73697A65
	.4byte 0x5F617379
	.4byte 0x6E632065
	.4byte 0x72726F72
	.4byte 0x3A202564
	.4byte 0x0A006465
	.4byte 0x6C657465
	.4byte 0x20736420
	.4byte 0x73617665
	.4byte 0x20696420
	.4byte 0x3D203078
	.4byte 0x25303878
	.4byte 0x2E0A0000
	.2byte 0x0000
.endobj lbl_8164FDAA

# .data:0x1DC | 0x8164FF5C | size: 0x14C
.obj jumptable_8164FF5C, local
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEC48
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEC54
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEC68
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEC9C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BECB0
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF148
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF15C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF190
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF1C0
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF230
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF250
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF2C8
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF2E4
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEF20
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEF40
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF374
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF390
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF3A4
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF440
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF46C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF4F0
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF524
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF598
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF5B0
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF638
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF660
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEDF8
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEE18
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF070
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF08C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BED2C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BED40
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEDA4
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEDC4
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEE7C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEE9C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEED0
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEEEC
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF0F8
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF114
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEFCC
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BEFEC
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF020
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF03C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF69C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF6B4
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF6E8
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF6FC
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
	.rel process_save_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF72C
.endobj jumptable_8164FF5C

# .data:0x328 | 0x816500A8 | size: 0x18C
.obj gap_08_816500A8_data, global
.hidden gap_08_816500A8_data
	.4byte 0x6E616E64
	.4byte 0x20617070
	.4byte 0x206E756D
	.4byte 0x203D2025
	.4byte 0x640A006E
	.4byte 0x616E6420
	.4byte 0x61707020
	.4byte 0x6964203D
	.4byte 0x20307825
	.4byte 0x3031366C
	.4byte 0x6C780A00
	.4byte 0x6D657461
	.4byte 0x20736967
	.4byte 0x6E617475
	.4byte 0x72653A20
	.4byte 0x25632563
	.4byte 0x25632563
	.4byte 0x0A006361
	.4byte 0x63686564
	.4byte 0x206D6574
	.4byte 0x61207369
	.4byte 0x676E6174
	.4byte 0x7572653A
	.4byte 0x20256325
	.4byte 0x63256325
	.4byte 0x630A0073
	.4byte 0x697A6520
	.4byte 0x6F662061
	.4byte 0x70702069
	.4byte 0x64203078
	.4byte 0x25303136
	.4byte 0x6C6C783A
	.4byte 0x2025640A
	.4byte 0x00636163
	.4byte 0x68656420
	.4byte 0x61707020
	.4byte 0x73697A65
	.4byte 0x203D2025
	.4byte 0x640A0067
	.4byte 0x65745F6E
	.4byte 0x616E645F
	.4byte 0x6170705F
	.4byte 0x73697A65
	.4byte 0x5F617379
	.4byte 0x6E632065
	.4byte 0x72726F72
	.4byte 0x3A202564
	.4byte 0x0A007364
	.4byte 0x20617070
	.4byte 0x206E756D
	.4byte 0x203D2025
	.4byte 0x640A0067
	.4byte 0x65742073
	.4byte 0x64206672
	.4byte 0x65652061
	.4byte 0x7265612E
	.4byte 0x0A007265
	.4byte 0x73756C74
	.4byte 0x3A202564
	.4byte 0x20667265
	.4byte 0x65207369
	.4byte 0x7A653A20
	.4byte 0x256C6C75
	.4byte 0x0A007364
	.4byte 0x20617070
	.4byte 0x20696420
	.4byte 0x3D203078
	.4byte 0x25303878
	.4byte 0x0A007369
	.4byte 0x7A65206F
	.4byte 0x66206170
	.4byte 0x70206964
	.4byte 0x20307825
	.4byte 0x3038783A
	.4byte 0x2025640A
	.4byte 0x00676574
	.4byte 0x5F73645F
	.4byte 0x6170705F
	.4byte 0x73697A65
	.4byte 0x5F617379
	.4byte 0x6E632065
	.4byte 0x72726F72
	.4byte 0x3A202564
	.4byte 0x0A006465
	.4byte 0x6C657465
	.4byte 0x206E616E
	.4byte 0x64206170
	.4byte 0x70206964
	.4byte 0x203D2030
	.4byte 0x78253031
	.4byte 0x366C6C78
	.4byte 0x2E0A0064
	.4byte 0x656C6574
	.4byte 0x65207364
	.4byte 0x20617070
	.4byte 0x20696420
	.4byte 0x3D203078
	.4byte 0x25303878
	.4byte 0x2E0A0000
.endobj gap_08_816500A8_data

# .data:0x4B4 | 0x81650234 | size: 0x14C
.obj jumptable_81650234, local
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF89C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF8B0
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFB48
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFB5C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFBD8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFBEC
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFCF0
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFD1C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFCA0
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFCBC
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0134
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0150
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C003C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C005C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF8E4
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF914
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF984
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BF9AC
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFD5C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFD88
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFE70
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFEB4
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFF9C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFFB4
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C01B4
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C01DC
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFA9C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFAB8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFC50
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFC6C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFE24
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813BFE3C
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C00E4
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0100
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0248
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0260
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C0294
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02A8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
	.rel process_app_test__Q33ipl8kitayama21NandSDWorker_AutoTestFv, .L_813C02D8
.endobj jumptable_81650234
