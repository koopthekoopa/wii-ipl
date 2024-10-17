.include "macros.inc"
.file "snd_TaskManager.cpp"

# 0x8110C580..0x8110E618 | size: 0x2098
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8110C580 | size: 0x2044
# nw4r::snd::detail::TaskManager::mTaskArea
.obj mTaskArea__Q44nw4r3snd6detail11TaskManager, global
	.skip 0x2044
.endobj mTaskArea__Q44nw4r3snd6detail11TaskManager

# .bss:0x2044 | 0x8110E5C4 | size: 0xC
.obj lbl_8110E5C4, global
	.skip 0xC
.endobj lbl_8110E5C4

# .bss:0x2050 | 0x8110E5D0 | size: 0x44
.obj instance$1084, local
	.skip 0x44
.endobj instance$1084

# .bss:0x2094 | 0x8110E614 | size: 0x4
.obj gap_00_8110E614_bss, global
.hidden gap_00_8110E614_bss
	.skip 0x4
.endobj gap_00_8110E614_bss

# 0x8150EB10..0x8150F018 | size: 0x508
.text
.balign 4

# .text:0x0 | 0x8150EB10 | size: 0xB0
# nw4r::snd::detail::TaskManager::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail11TaskManagerFv, global
/* 8150EB10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150EB14 | 7C 08 02 A6 */	mflr r0
/* 8150EB18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150EB1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150EB20 | 3F E0 81 11 */	lis r31, mTaskArea__Q44nw4r3snd6detail11TaskManager@ha
/* 8150EB24 | 3B FF C5 80 */	addi r31, r31, mTaskArea__Q44nw4r3snd6detail11TaskManager@l
/* 8150EB28 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150EB2C | 88 0D AE F0 */	lbz r0, "@GUARD@instance$1084"@sda21(r0)
/* 8150EB30 | 7C 00 07 75 */	extsb. r0, r0
/* 8150EB34 | 40 82 00 70 */	bne .L_8150EBA4
/* 8150EB38 | 3B DF 20 50 */	addi r30, r31, 0x2050
/* 8150EB3C | 38 00 00 00 */	li r0, 0x0
/* 8150EB40 | 3C 80 81 51 */	lis r4, "__ct__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@ha
/* 8150EB44 | 3C A0 81 51 */	lis r5, "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@ha
/* 8150EB48 | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8150EB4C | 38 7E 00 20 */	addi r3, r30, 0x20
/* 8150EB50 | 38 84 EC 80 */	addi r4, r4, "__ct__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@l
/* 8150EB54 | 38 A5 EC 28 */	addi r5, r5, "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@l
/* 8150EB58 | 38 C0 00 0C */	li r6, 0xc
/* 8150EB5C | 38 E0 00 03 */	li r7, 0x3
/* 8150EB60 | 48 0E A6 A1 */	bl __construct_array
/* 8150EB64 | 7F C3 F3 78 */	mr r3, r30
/* 8150EB68 | 48 02 30 69 */	bl fn_81531BD0
/* 8150EB6C | 38 7F 00 00 */	addi r3, r31, 0x0
/* 8150EB70 | 38 80 20 44 */	li r4, 0x2044
/* 8150EB74 | 38 A0 00 40 */	li r5, 0x40
/* 8150EB78 | 38 C0 00 04 */	li r6, 0x4
/* 8150EB7C | 38 E0 00 00 */	li r7, 0x0
/* 8150EB80 | 48 04 C7 E1 */	bl fn_8155B360
/* 8150EB84 | 3C 80 81 51 */	lis r4, __dt__Q44nw4r3snd6detail11TaskManagerFv@ha
/* 8150EB88 | 90 7E 00 18 */	stw r3, 0x18(r30)
/* 8150EB8C | 7F C3 F3 78 */	mr r3, r30
/* 8150EB90 | 38 BF 20 44 */	addi r5, r31, 0x2044
/* 8150EB94 | 38 84 EB C0 */	addi r4, r4, __dt__Q44nw4r3snd6detail11TaskManagerFv@l
/* 8150EB98 | 48 0E A4 49 */	bl __register_global_object
/* 8150EB9C | 38 00 00 01 */	li r0, 0x1
/* 8150EBA0 | 98 0D AE F0 */	stb r0, "@GUARD@instance$1084"@sda21(r0)
.L_8150EBA4:
/* 8150EBA4 | 38 7F 20 50 */	addi r3, r31, 0x2050
/* 8150EBA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150EBAC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150EBB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150EBB4 | 7C 08 03 A6 */	mtlr r0
/* 8150EBB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150EBBC | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail11TaskManagerFv

# .text:0xB0 | 0x8150EBC0 | size: 0x68
# nw4r::snd::detail::TaskManager::~TaskManager()
.fn __dt__Q44nw4r3snd6detail11TaskManagerFv, global
/* 8150EBC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150EBC4 | 7C 08 02 A6 */	mflr r0
/* 8150EBC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150EBCC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150EBD0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150EBD4 | 7C 9F 23 78 */	mr r31, r4
/* 8150EBD8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150EBDC | 7C 7E 1B 78 */	mr r30, r3
/* 8150EBE0 | 41 82 00 2C */	beq .L_8150EC0C
/* 8150EBE4 | 3C 80 81 51 */	lis r4, "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@ha
/* 8150EBE8 | 38 A0 00 0C */	li r5, 0xc
/* 8150EBEC | 38 84 EC 28 */	addi r4, r4, "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"@l
/* 8150EBF0 | 38 C0 00 03 */	li r6, 0x3
/* 8150EBF4 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8150EBF8 | 48 0E A7 01 */	bl __destroy_arr
/* 8150EBFC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150EC00 | 40 81 00 0C */	ble .L_8150EC0C
/* 8150EC04 | 7F C3 F3 78 */	mr r3, r30
/* 8150EC08 | 48 0E 94 DD */	bl __dl__FPv
.L_8150EC0C:
/* 8150EC0C | 7F C3 F3 78 */	mr r3, r30
/* 8150EC10 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150EC14 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150EC18 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150EC1C | 7C 08 03 A6 */	mtlr r0
/* 8150EC20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150EC24 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail11TaskManagerFv

# .text:0x118 | 0x8150EC28 | size: 0x58
# nw4r::ut::LinkList<nw4r::snd::detail::Task, 4>::~LinkList()
.fn "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv", global
/* 8150EC28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150EC2C | 7C 08 02 A6 */	mflr r0
/* 8150EC30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150EC34 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150EC38 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150EC3C | 7C 9F 23 78 */	mr r31, r4
/* 8150EC40 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150EC44 | 7C 7E 1B 78 */	mr r30, r3
/* 8150EC48 | 41 82 00 1C */	beq .L_8150EC64
/* 8150EC4C | 38 80 00 00 */	li r4, 0x0
/* 8150EC50 | 48 00 37 15 */	bl fn_81512364
/* 8150EC54 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8150EC58 | 40 81 00 0C */	ble .L_8150EC64
/* 8150EC5C | 7F C3 F3 78 */	mr r3, r30
/* 8150EC60 | 48 0E 94 85 */	bl __dl__FPv
.L_8150EC64:
/* 8150EC64 | 7F C3 F3 78 */	mr r3, r30
/* 8150EC68 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150EC6C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8150EC70 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150EC74 | 7C 08 03 A6 */	mtlr r0
/* 8150EC78 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150EC7C | 4E 80 00 20 */	blr
.endfn "__dt__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"

# .text:0x170 | 0x8150EC80 | size: 0x20
# nw4r::ut::LinkList<nw4r::snd::detail::Task, 4>::LinkList()
.fn "__ct__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv", global
/* 8150EC80 | 38 00 00 00 */	li r0, 0x0
/* 8150EC84 | 38 83 00 04 */	addi r4, r3, 0x4
/* 8150EC88 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 8150EC8C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 8150EC90 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 8150EC94 | 90 83 00 04 */	stw r4, 0x4(r3)
/* 8150EC98 | 90 83 00 08 */	stw r4, 0x8(r3)
/* 8150EC9C | 4E 80 00 20 */	blr
.endfn "__ct__Q34nw4r2ut35LinkList<Q44nw4r3snd6detail4Task,4>Fv"

# .text:0x190 | 0x8150ECA0 | size: 0x78
# nw4r::snd::detail::TaskManager::Alloc()
.fn Alloc__Q44nw4r3snd6detail11TaskManagerFv, global
/* 8150ECA0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150ECA4 | 7C 08 02 A6 */	mflr r0
/* 8150ECA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150ECAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150ECB0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150ECB4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150ECB8 | 7C 7D 1B 78 */	mr r29, r3
/* 8150ECBC | 48 02 1B C9 */	bl OSDisableInterrupts
/* 8150ECC0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150ECC4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150ECC8 | 48 04 C8 25 */	bl fn_8155B4EC
/* 8150ECCC | 7C 7E 1B 78 */	mr r30, r3
/* 8150ECD0 | 48 00 00 18 */	b .L_8150ECE8
.L_8150ECD4:
/* 8150ECD4 | 7F A3 EB 78 */	mr r3, r29
/* 8150ECD8 | 48 00 00 E9 */	bl ExecuteSingle__Q44nw4r3snd6detail11TaskManagerFv
/* 8150ECDC | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150ECE0 | 48 04 C8 0D */	bl fn_8155B4EC
/* 8150ECE4 | 7C 7E 1B 78 */	mr r30, r3
.L_8150ECE8:
/* 8150ECE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 8150ECEC | 41 82 FF E8 */	beq .L_8150ECD4
/* 8150ECF0 | 7F E3 FB 78 */	mr r3, r31
/* 8150ECF4 | 48 02 1B B9 */	bl OSRestoreInterrupts
/* 8150ECF8 | 7F C3 F3 78 */	mr r3, r30
/* 8150ECFC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150ED00 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150ED04 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150ED08 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150ED0C | 7C 08 03 A6 */	mtlr r0
/* 8150ED10 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150ED14 | 4E 80 00 20 */	blr
.endfn Alloc__Q44nw4r3snd6detail11TaskManagerFv

# .text:0x208 | 0x8150ED18 | size: 0x70
# nw4r::snd::detail::TaskManager::AppendTask(nw4r::snd::detail::Task*, nw4r::snd::detail::TaskManager::TaskPriority)
.fn AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority, global
/* 8150ED18 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8150ED1C | 7C 08 02 A6 */	mflr r0
/* 8150ED20 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8150ED24 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8150ED28 | 7C BF 2B 78 */	mr r31, r5
/* 8150ED2C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 8150ED30 | 7C 9E 23 78 */	mr r30, r4
/* 8150ED34 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 8150ED38 | 7C 7D 1B 78 */	mr r29, r3
/* 8150ED3C | 48 02 1B 49 */	bl OSDisableInterrupts
/* 8150ED40 | 1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8150ED44 | 7C 7F 1B 78 */	mr r31, r3
/* 8150ED48 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150ED4C | 38 BE 00 04 */	addi r5, r30, 0x4
/* 8150ED50 | 7C 7D 02 14 */	add r3, r29, r0
/* 8150ED54 | 38 63 00 20 */	addi r3, r3, 0x20
/* 8150ED58 | 38 03 00 04 */	addi r0, r3, 0x4
/* 8150ED5C | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8150ED60 | 48 00 37 15 */	bl fn_81512474
/* 8150ED64 | 7F E3 FB 78 */	mr r3, r31
/* 8150ED68 | 48 02 1B 45 */	bl OSRestoreInterrupts
/* 8150ED6C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8150ED70 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8150ED74 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8150ED78 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8150ED7C | 7C 08 03 A6 */	mtlr r0
/* 8150ED80 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8150ED84 | 4E 80 00 20 */	blr
.endfn AppendTask__Q44nw4r3snd6detail11TaskManagerFPQ44nw4r3snd6detail4TaskQ54nw4r3snd6detail11TaskManager12TaskPriority

# .text:0x278 | 0x8150ED88 | size: 0x38
# nw4r::snd::detail::TaskManager::Execute()
.fn Execute__Q44nw4r3snd6detail11TaskManagerFv, global
/* 8150ED88 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8150ED8C | 7C 08 02 A6 */	mflr r0
/* 8150ED90 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8150ED94 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8150ED98 | 7C 7F 1B 78 */	mr r31, r3
.L_8150ED9C:
/* 8150ED9C | 7F E3 FB 78 */	mr r3, r31
/* 8150EDA0 | 48 00 00 21 */	bl ExecuteSingle__Q44nw4r3snd6detail11TaskManagerFv
/* 8150EDA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150EDA8 | 40 82 FF F4 */	bne .L_8150ED9C
/* 8150EDAC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8150EDB0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8150EDB4 | 7C 08 03 A6 */	mtlr r0
/* 8150EDB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8150EDBC | 4E 80 00 20 */	blr
.endfn Execute__Q44nw4r3snd6detail11TaskManagerFv

# .text:0x2B0 | 0x8150EDC0 | size: 0x178
# nw4r::snd::detail::TaskManager::ExecuteSingle()
.fn ExecuteSingle__Q44nw4r3snd6detail11TaskManagerFv, global
/* 8150EDC0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8150EDC4 | 7C 08 02 A6 */	mflr r0
/* 8150EDC8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 8150EDCC | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8150EDD0 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 8150EDD4 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 8150EDD8 | 7C 7D 1B 78 */	mr r29, r3
/* 8150EDDC | 48 02 2E 2D */	bl fn_81531C08
/* 8150EDE0 | 48 02 1A A5 */	bl OSDisableInterrupts
/* 8150EDE4 | 80 1D 00 38 */	lwz r0, 0x38(r29)
/* 8150EDE8 | 7C 7F 1B 78 */	mr r31, r3
/* 8150EDEC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EDF0 | 40 82 00 10 */	bne .L_8150EE00
/* 8150EDF4 | 48 02 1A B9 */	bl OSRestoreInterrupts
/* 8150EDF8 | 38 00 00 00 */	li r0, 0x0
/* 8150EDFC | 48 00 00 24 */	b .L_8150EE20
.L_8150EE00:
/* 8150EE00 | 83 DD 00 3C */	lwz r30, 0x3c(r29)
/* 8150EE04 | 38 7D 00 38 */	addi r3, r29, 0x38
/* 8150EE08 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8150EE0C | 93 C1 00 10 */	stw r30, 0x10(r1)
/* 8150EE10 | 48 00 35 D9 */	bl fn_815123E8
/* 8150EE14 | 7F E3 FB 78 */	mr r3, r31
/* 8150EE18 | 48 02 1A 95 */	bl OSRestoreInterrupts
/* 8150EE1C | 38 1E FF FC */	subi r0, r30, 0x4
.L_8150EE20:
/* 8150EE20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EE24 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8150EE28 | 40 82 00 AC */	bne .L_8150EED4
/* 8150EE2C | 48 02 1A 59 */	bl OSDisableInterrupts
/* 8150EE30 | 80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8150EE34 | 7C 7F 1B 78 */	mr r31, r3
/* 8150EE38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EE3C | 40 82 00 10 */	bne .L_8150EE4C
/* 8150EE40 | 48 02 1A 6D */	bl OSRestoreInterrupts
/* 8150EE44 | 38 00 00 00 */	li r0, 0x0
/* 8150EE48 | 48 00 00 24 */	b .L_8150EE6C
.L_8150EE4C:
/* 8150EE4C | 83 DD 00 30 */	lwz r30, 0x30(r29)
/* 8150EE50 | 38 7D 00 2C */	addi r3, r29, 0x2c
/* 8150EE54 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8150EE58 | 93 C1 00 0C */	stw r30, 0xc(r1)
/* 8150EE5C | 48 00 35 8D */	bl fn_815123E8
/* 8150EE60 | 7F E3 FB 78 */	mr r3, r31
/* 8150EE64 | 48 02 1A 49 */	bl OSRestoreInterrupts
/* 8150EE68 | 38 1E FF FC */	subi r0, r30, 0x4
.L_8150EE6C:
/* 8150EE6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EE70 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8150EE74 | 40 82 00 60 */	bne .L_8150EED4
/* 8150EE78 | 48 02 1A 0D */	bl OSDisableInterrupts
/* 8150EE7C | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 8150EE80 | 7C 7F 1B 78 */	mr r31, r3
/* 8150EE84 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EE88 | 40 82 00 10 */	bne .L_8150EE98
/* 8150EE8C | 48 02 1A 21 */	bl OSRestoreInterrupts
/* 8150EE90 | 38 00 00 00 */	li r0, 0x0
/* 8150EE94 | 48 00 00 24 */	b .L_8150EEB8
.L_8150EE98:
/* 8150EE98 | 83 DD 00 24 */	lwz r30, 0x24(r29)
/* 8150EE9C | 38 7D 00 20 */	addi r3, r29, 0x20
/* 8150EEA0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150EEA4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8150EEA8 | 48 00 35 41 */	bl fn_815123E8
/* 8150EEAC | 7F E3 FB 78 */	mr r3, r31
/* 8150EEB0 | 48 02 19 FD */	bl OSRestoreInterrupts
/* 8150EEB4 | 38 1E FF FC */	subi r0, r30, 0x4
.L_8150EEB8:
/* 8150EEB8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8150EEBC | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8150EEC0 | 40 82 00 14 */	bne .L_8150EED4
/* 8150EEC4 | 7F A3 EB 78 */	mr r3, r29
/* 8150EEC8 | 48 02 2E 1D */	bl fn_81531CE4
/* 8150EECC | 38 60 00 00 */	li r3, 0x0
/* 8150EED0 | 48 00 00 4C */	b .L_8150EF1C
.L_8150EED4:
/* 8150EED4 | 80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8150EED8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150EEDC | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8150EEE0 | 7D 89 03 A6 */	mtctr r12
/* 8150EEE4 | 4E 80 04 21 */	bctrl
/* 8150EEE8 | 83 DD 00 1C */	lwz r30, 0x1c(r29)
/* 8150EEEC | 48 02 19 99 */	bl OSDisableInterrupts
/* 8150EEF0 | 7C 7F 1B 78 */	mr r31, r3
/* 8150EEF4 | 80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8150EEF8 | 7F C4 F3 78 */	mr r4, r30
/* 8150EEFC | 48 04 C6 85 */	bl fn_8155B580
/* 8150EF00 | 7F E3 FB 78 */	mr r3, r31
/* 8150EF04 | 48 02 19 A9 */	bl OSRestoreInterrupts
/* 8150EF08 | 38 00 00 00 */	li r0, 0x0
/* 8150EF0C | 7F A3 EB 78 */	mr r3, r29
/* 8150EF10 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 8150EF14 | 48 02 2D D1 */	bl fn_81531CE4
/* 8150EF18 | 38 60 00 01 */	li r3, 0x1
.L_8150EF1C:
/* 8150EF1C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 8150EF20 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8150EF24 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8150EF28 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8150EF2C | 7C 08 03 A6 */	mtlr r0
/* 8150EF30 | 38 21 00 30 */	addi r1, r1, 0x30
/* 8150EF34 | 4E 80 00 20 */	blr
.endfn ExecuteSingle__Q44nw4r3snd6detail11TaskManagerFv

# .text:0x428 | 0x8150EF38 | size: 0xE0
# nw4r::snd::detail::TaskManager::CancelByTaskId(unsigned long)
.fn CancelByTaskId__Q44nw4r3snd6detail11TaskManagerFUl, global
/* 8150EF38 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8150EF3C | 7C 08 02 A6 */	mflr r0
/* 8150EF40 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 8150EF44 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8150EF48 | 48 0E A5 65 */	bl _savegpr_22
/* 8150EF4C | 7C 76 1B 78 */	mr r22, r3
/* 8150EF50 | 7C 97 23 78 */	mr r23, r4
/* 8150EF54 | 48 02 19 31 */	bl OSDisableInterrupts
/* 8150EF58 | 7C 7E 1B 78 */	mr r30, r3
/* 8150EF5C | 3B 00 00 00 */	li r24, 0x0
/* 8150EF60 | 3B E0 00 00 */	li r31, 0x0
.L_8150EF64:
/* 8150EF64 | 7C 76 FA 14 */	add r3, r22, r31
/* 8150EF68 | 3B 23 00 20 */	addi r25, r3, 0x20
/* 8150EF6C | 83 A3 00 24 */	lwz r29, 0x24(r3)
/* 8150EF70 | 3B 99 00 04 */	addi r28, r25, 0x4
/* 8150EF74 | 48 00 00 44 */	b .L_8150EFB8
.L_8150EF78:
/* 8150EF78 | 7F BA EB 78 */	mr r26, r29
/* 8150EF7C | 83 BD 00 00 */	lwz r29, 0x0(r29)
/* 8150EF80 | 80 1A 00 08 */	lwz r0, 0x8(r26)
/* 8150EF84 | 7C 17 00 40 */	cmplw r23, r0
/* 8150EF88 | 40 82 00 30 */	bne .L_8150EFB8
/* 8150EF8C | 93 41 00 08 */	stw r26, 0x8(r1)
/* 8150EF90 | 7F 23 CB 78 */	mr r3, r25
/* 8150EF94 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8150EF98 | 48 00 34 51 */	bl fn_815123E8
/* 8150EF9C | 48 02 18 E9 */	bl OSDisableInterrupts
/* 8150EFA0 | 7C 7B 1B 78 */	mr r27, r3
/* 8150EFA4 | 80 76 00 18 */	lwz r3, 0x18(r22)
/* 8150EFA8 | 38 9A FF FC */	subi r4, r26, 0x4
/* 8150EFAC | 48 04 C5 D5 */	bl fn_8155B580
/* 8150EFB0 | 7F 63 DB 78 */	mr r3, r27
/* 8150EFB4 | 48 02 18 F9 */	bl OSRestoreInterrupts
.L_8150EFB8:
/* 8150EFB8 | 7C 1D E0 40 */	cmplw r29, r28
/* 8150EFBC | 40 82 FF BC */	bne .L_8150EF78
/* 8150EFC0 | 3B 18 00 01 */	addi r24, r24, 0x1
/* 8150EFC4 | 3B FF 00 0C */	addi r31, r31, 0xc
/* 8150EFC8 | 2C 18 00 03 */	cmpwi r24, 0x3
/* 8150EFCC | 41 80 FF 98 */	blt .L_8150EF64
/* 8150EFD0 | 80 76 00 1C */	lwz r3, 0x1c(r22)
/* 8150EFD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8150EFD8 | 41 82 00 20 */	beq .L_8150EFF8
/* 8150EFDC | 80 03 00 0C */	lwz r0, 0xc(r3)
/* 8150EFE0 | 7C 17 00 40 */	cmplw r23, r0
/* 8150EFE4 | 40 82 00 14 */	bne .L_8150EFF8
/* 8150EFE8 | 81 83 00 00 */	lwz r12, 0x0(r3)
/* 8150EFEC | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8150EFF0 | 7D 89 03 A6 */	mtctr r12
/* 8150EFF4 | 4E 80 04 21 */	bctrl
.L_8150EFF8:
/* 8150EFF8 | 7F C3 F3 78 */	mr r3, r30
/* 8150EFFC | 48 02 18 B1 */	bl OSRestoreInterrupts
/* 8150F000 | 39 61 00 40 */	addi r11, r1, 0x40
/* 8150F004 | 48 0E A4 F5 */	bl _restgpr_22
/* 8150F008 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 8150F00C | 7C 08 03 A6 */	mtlr r0
/* 8150F010 | 38 21 00 40 */	addi r1, r1, 0x40
/* 8150F014 | 4E 80 00 20 */	blr
.endfn CancelByTaskId__Q44nw4r3snd6detail11TaskManagerFUl

# 0x81698F30..0x81698F38 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698F30 | size: 0x1
.obj "@GUARD@instance$1084", local
	.skip 0x1
.endobj "@GUARD@instance$1084"

# .sbss:0x1 | 0x81698F31 | size: 0x7
.obj gap_12_81698F31_sbss, global
.hidden gap_12_81698F31_sbss
	.skip 0x7
.endobj gap_12_81698F31_sbss
