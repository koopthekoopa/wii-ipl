.include "macros.inc"
.file "iplCdbBackup.cpp"

# 0x8135A590..0x8135B53C | size: 0xFAC
.text
.balign 4

# .text:0x0 | 0x8135A590 | size: 0xA0
# ipl::CdbBackup::CdbBackup()
.fn __ct__Q23ipl9CdbBackupFv, global
/* 8135A590 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135A594 | 7C 08 02 A6 */	mflr r0
/* 8135A598 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135A59C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135A5A0 | 48 29 EF 29 */	bl _savegpr_29
/* 8135A5A4 | 3B C0 00 00 */	li r30, 0x0
/* 8135A5A8 | 38 80 00 01 */	li r4, 0x1
/* 8135A5AC | 38 00 FF FF */	li r0, -0x1
/* 8135A5B0 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A5B4 | 9B C3 00 00 */	stb r30, 0x0(r3)
/* 8135A5B8 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A5BC | 7C 7D 1B 78 */	mr r29, r3
/* 8135A5C0 | 93 C3 00 04 */	stw r30, 0x4(r3)
/* 8135A5C4 | 93 C3 00 08 */	stw r30, 0x8(r3)
/* 8135A5C8 | 93 C3 00 0C */	stw r30, 0xc(r3)
/* 8135A5CC | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8135A5D0 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8135A5D4 | 80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 8135A5D8 | 4B FE DD 41 */	bl disable__Q23ipl14HomeButtonMenuFv
/* 8135A5DC | 4B FD 96 AD */	bl stopReceiveSchedule__Q23ipl6SystemFv
/* 8135A5E0 | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135A5E4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135A5E8 | 41 82 00 08 */	beq .L_8135A5F0
/* 8135A5EC | 48 00 00 08 */	b .L_8135A5F4
.L_8135A5F0:
/* 8135A5F0 | 83 DF 00 7C */	lwz r30, 0x7c(r31)
.L_8135A5F4:
/* 8135A5F4 | 38 7E 00 18 */	addi r3, r30, 0x18
/* 8135A5F8 | 48 00 49 F5 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8135A5FC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A600 | 41 82 00 14 */	beq .L_8135A614
/* 8135A604 | 38 60 00 00 */	li r3, 0x0
/* 8135A608 | 38 00 00 01 */	li r0, 0x1
/* 8135A60C | 90 7D 00 10 */	stw r3, 0x10(r29)
/* 8135A610 | 90 1D 00 14 */	stw r0, 0x14(r29)
.L_8135A614:
/* 8135A614 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135A618 | 7F A3 EB 78 */	mr r3, r29
/* 8135A61C | 48 29 EE F9 */	bl _restgpr_29
/* 8135A620 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135A624 | 7C 08 03 A6 */	mtlr r0
/* 8135A628 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135A62C | 4E 80 00 20 */	blr
.endfn __ct__Q23ipl9CdbBackupFv

# .text:0xA0 | 0x8135A630 | size: 0x64
# ipl::CdbBackup::~CdbBackup()
.fn __dt__Q23ipl9CdbBackupFv, global
/* 8135A630 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A634 | 7C 08 02 A6 */	mflr r0
/* 8135A638 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A63C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A640 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A644 | 7C 9F 23 78 */	mr r31, r4
/* 8135A648 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A64C | 7C 7E 1B 78 */	mr r30, r3
/* 8135A650 | 41 82 00 28 */	beq .L_8135A678
/* 8135A654 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135A658 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135A65C | 80 63 00 B4 */	lwz r3, 0xb4(r3)
/* 8135A660 | 4B FE DC E5 */	bl enable__Q23ipl14HomeButtonMenuFv
/* 8135A664 | 4B FD 96 89 */	bl startReceiveSchedule__Q23ipl6SystemFv
/* 8135A668 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 8135A66C | 40 81 00 0C */	ble .L_8135A678
/* 8135A670 | 7F C3 F3 78 */	mr r3, r30
/* 8135A674 | 48 29 DA 71 */	bl __dl__FPv
.L_8135A678:
/* 8135A678 | 7F C3 F3 78 */	mr r3, r30
/* 8135A67C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A680 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A684 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A688 | 7C 08 03 A6 */	mtlr r0
/* 8135A68C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A690 | 4E 80 00 20 */	blr
.endfn __dt__Q23ipl9CdbBackupFv

# .text:0x104 | 0x8135A694 | size: 0x74
# ipl::CdbBackup::update()
.fn update__Q23ipl9CdbBackupFv, global
/* 8135A694 | 80 03 00 10 */	lwz r0, 0x10(r3)
/* 8135A698 | 28 00 00 10 */	cmplwi r0, 0x10
/* 8135A69C | 4D 81 00 20 */	bgtlr
/* 8135A6A0 | 3C 80 81 64 */	lis r4, jumptable_81639278@ha
/* 8135A6A4 | 54 00 10 3A */	slwi r0, r0, 2
/* 8135A6A8 | 38 84 92 78 */	addi r4, r4, jumptable_81639278@l
/* 8135A6AC | 7C 84 00 2E */	lwzx r4, r4, r0
/* 8135A6B0 | 7C 89 03 A6 */	mtctr r4
/* 8135A6B4 | 4E 80 04 20 */	bctr
.L_8135A6B8:
/* 8135A6B8 | 48 00 00 50 */	b stt_wait_worker__Q23ipl9CdbBackupFv
.L_8135A6BC:
/* 8135A6BC | 48 00 00 BC */	b stt_mount_sd__Q23ipl9CdbBackupFv
.L_8135A6C0:
/* 8135A6C0 | 48 00 01 18 */	b stt_check_sd__Q23ipl9CdbBackupFv
.L_8135A6C4:
/* 8135A6C4 | 48 00 01 F4 */	b stt_wait_del_msg__Q23ipl9CdbBackupFv
.L_8135A6C8:
/* 8135A6C8 | 48 00 02 A8 */	b stt_wait_besd_del_msg__Q23ipl9CdbBackupFv
.L_8135A6CC:
/* 8135A6CC | 48 00 03 44 */	b stt_wait_delete__Q23ipl9CdbBackupFv
.L_8135A6D0:
/* 8135A6D0 | 48 00 03 8C */	b stt_wait_del_msg_fns__Q23ipl9CdbBackupFv
.L_8135A6D4:
/* 8135A6D4 | 48 00 04 14 */	b stt_wait_sd_back_msg__Q23ipl9CdbBackupFv
.L_8135A6D8:
/* 8135A6D8 | 48 00 05 58 */	b stt_check_sd_err__Q23ipl9CdbBackupFv
.L_8135A6DC:
/* 8135A6DC | 48 00 06 74 */	b stt_check_prepare_back__Q23ipl9CdbBackupFv
.L_8135A6E0:
/* 8135A6E0 | 48 00 07 38 */	b stt_wait_backup__Q23ipl9CdbBackupFv
.L_8135A6E4:
/* 8135A6E4 | 48 00 07 CC */	b stt_wait_back_msg_fns__Q23ipl9CdbBackupFv
.L_8135A6E8:
/* 8135A6E8 | 38 00 00 11 */	li r0, 0x11
/* 8135A6EC | 90 03 00 10 */	stw r0, 0x10(r3)
/* 8135A6F0 | 4E 80 00 20 */	blr
.L_8135A6F4:
/* 8135A6F4 | 48 00 09 3C */	b stt_clean_up_back__Q23ipl9CdbBackupFv
.L_8135A6F8:
/* 8135A6F8 | 48 00 08 E0 */	b stt_wait_ret_msg__Q23ipl9CdbBackupFv
.L_8135A6FC:
/* 8135A6FC | 48 00 09 08 */	b stt_wait_fns_msg__Q23ipl9CdbBackupFv
.L_8135A700:
/* 8135A700 | 48 00 09 90 */	b stt_wait_terminate__Q23ipl9CdbBackupFv
/* 8135A704 | 4E 80 00 20 */	blr
.endfn update__Q23ipl9CdbBackupFv

# .text:0x178 | 0x8135A708 | size: 0x70
# ipl::CdbBackup::stt_wait_worker()
.fn stt_wait_worker__Q23ipl9CdbBackupFv, global
/* 8135A708 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A70C | 7C 08 02 A6 */	mflr r0
/* 8135A710 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135A714 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A718 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135A71C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A720 | 7C 7F 1B 78 */	mr r31, r3
/* 8135A724 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135A728 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135A72C | 41 82 00 0C */	beq .L_8135A738
/* 8135A730 | 38 60 00 00 */	li r3, 0x0
/* 8135A734 | 48 00 00 08 */	b .L_8135A73C
.L_8135A738:
/* 8135A738 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135A73C:
/* 8135A73C | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135A740 | 48 00 48 AD */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8135A744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A748 | 40 82 00 1C */	bne .L_8135A764
/* 8135A74C | 7F E3 FB 78 */	mr r3, r31
/* 8135A750 | 48 00 09 A1 */	bl error_handling__Q23ipl9CdbBackupFv
/* 8135A754 | 80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8135A758 | 38 00 FF FF */	li r0, -0x1
/* 8135A75C | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135A760 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8135A764:
/* 8135A764 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A768 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A76C | 7C 08 03 A6 */	mtlr r0
/* 8135A770 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A774 | 4E 80 00 20 */	blr
.endfn stt_wait_worker__Q23ipl9CdbBackupFv

# .text:0x1E8 | 0x8135A778 | size: 0x60
# ipl::CdbBackup::stt_mount_sd()
.fn stt_mount_sd__Q23ipl9CdbBackupFv, global
/* 8135A778 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A77C | 7C 08 02 A6 */	mflr r0
/* 8135A780 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135A784 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A788 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135A78C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A790 | 7C 7F 1B 78 */	mr r31, r3
/* 8135A794 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135A798 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135A79C | 41 82 00 0C */	beq .L_8135A7A8
/* 8135A7A0 | 38 60 00 00 */	li r3, 0x0
/* 8135A7A4 | 48 00 00 08 */	b .L_8135A7AC
.L_8135A7A8:
/* 8135A7A8 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135A7AC:
/* 8135A7AC | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135A7B0 | 48 00 49 2D */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 8135A7B4 | 38 60 00 02 */	li r3, 0x2
/* 8135A7B8 | 38 00 00 00 */	li r0, 0x0
/* 8135A7BC | 90 7F 00 14 */	stw r3, 0x14(r31)
/* 8135A7C0 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8135A7C4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A7C8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A7CC | 7C 08 03 A6 */	mtlr r0
/* 8135A7D0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A7D4 | 4E 80 00 20 */	blr
.endfn stt_mount_sd__Q23ipl9CdbBackupFv

# .text:0x248 | 0x8135A7D8 | size: 0xE0
# ipl::CdbBackup::stt_check_sd()
.fn stt_check_sd__Q23ipl9CdbBackupFv, global
/* 8135A7D8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A7DC | 7C 08 02 A6 */	mflr r0
/* 8135A7E0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135A7E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A7E8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135A7EC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A7F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A7F4 | 7C 7E 1B 78 */	mr r30, r3
/* 8135A7F8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135A7FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135A800 | 41 82 00 0C */	beq .L_8135A80C
/* 8135A804 | 38 60 00 00 */	li r3, 0x0
/* 8135A808 | 48 00 00 08 */	b .L_8135A810
.L_8135A80C:
/* 8135A80C | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135A810:
/* 8135A810 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A814 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135A818 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A81C | 88 1F 02 BC */	lbz r0, 0x2bc(r31)
/* 8135A820 | 48 00 48 49 */	bl get_sd_state__Q23ipl10SDVFWorkerFv
/* 8135A824 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 8135A828 | 41 82 00 20 */	beq .L_8135A848
/* 8135A82C | 40 80 00 10 */	bge .L_8135A83C
/* 8135A830 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135A834 | 40 80 00 6C */	bge .L_8135A8A0
/* 8135A838 | 48 00 00 40 */	b .L_8135A878
.L_8135A83C:
/* 8135A83C | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8135A840 | 40 80 00 38 */	bge .L_8135A878
/* 8135A844 | 48 00 00 28 */	b .L_8135A86C
.L_8135A848:
/* 8135A848 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8135A84C | 38 80 00 93 */	li r4, 0x93
/* 8135A850 | 38 A0 01 42 */	li r5, 0x142
/* 8135A854 | 38 C0 01 41 */	li r6, 0x141
/* 8135A858 | 38 E0 00 00 */	li r7, 0x0
/* 8135A85C | 4B FE C2 79 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8135A860 | 38 00 00 03 */	li r0, 0x3
/* 8135A864 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8135A868 | 48 00 00 38 */	b .L_8135A8A0
.L_8135A86C:
/* 8135A86C | 38 00 00 01 */	li r0, 0x1
/* 8135A870 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8135A874 | 48 00 00 2C */	b .L_8135A8A0
.L_8135A878:
/* 8135A878 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135A87C | 38 80 00 39 */	li r4, 0x39
/* 8135A880 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135A884 | 38 A0 01 42 */	li r5, 0x142
/* 8135A888 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135A88C | 38 C0 01 41 */	li r6, 0x141
/* 8135A890 | 38 E0 00 00 */	li r7, 0x0
/* 8135A894 | 4B FE C2 41 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8135A898 | 38 00 00 07 */	li r0, 0x7
/* 8135A89C | 90 1E 00 10 */	stw r0, 0x10(r30)
.L_8135A8A0:
/* 8135A8A0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A8A4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A8A8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A8AC | 7C 08 03 A6 */	mtlr r0
/* 8135A8B0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A8B4 | 4E 80 00 20 */	blr
.endfn stt_check_sd__Q23ipl9CdbBackupFv

# .text:0x328 | 0x8135A8B8 | size: 0xB8
# ipl::CdbBackup::stt_wait_del_msg()
.fn stt_wait_del_msg__Q23ipl9CdbBackupFv, global
/* 8135A8B8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A8BC | 7C 08 02 A6 */	mflr r0
/* 8135A8C0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A8C4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A8C8 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A8CC | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A8D0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A8D4 | 7C 7E 1B 78 */	mr r30, r3
/* 8135A8D8 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8135A8DC | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8135A8E0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8135A8E4 | 41 82 00 14 */	beq .L_8135A8F8
/* 8135A8E8 | 40 80 00 70 */	bge .L_8135A958
/* 8135A8EC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8135A8F0 | 40 80 00 48 */	bge .L_8135A938
/* 8135A8F4 | 48 00 00 64 */	b .L_8135A958
.L_8135A8F8:
/* 8135A8F8 | 38 00 00 00 */	li r0, 0x0
/* 8135A8FC | 3C 80 81 36 */	lis r4, iplCdbBack_8135B274@ha
/* 8135A900 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8135A904 | 7F C5 F3 78 */	mr r5, r30
/* 8135A908 | 38 84 B2 74 */	addi r4, r4, iplCdbBack_8135B274@l
/* 8135A90C | 38 C0 00 00 */	li r6, 0x0
/* 8135A910 | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8135A914 | 48 29 D9 35 */	bl fn_815F8248
/* 8135A918 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8135A91C | 38 80 00 94 */	li r4, 0x94
/* 8135A920 | 38 A0 00 00 */	li r5, 0x0
/* 8135A924 | 38 C0 00 01 */	li r6, 0x1
/* 8135A928 | 4B FE BB 25 */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 8135A92C | 38 00 00 05 */	li r0, 0x5
/* 8135A930 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8135A934 | 48 00 00 24 */	b .L_8135A958
.L_8135A938:
/* 8135A938 | 7C 83 23 78 */	mr r3, r4
/* 8135A93C | 38 80 00 96 */	li r4, 0x96
/* 8135A940 | 38 A0 00 2E */	li r5, 0x2e
/* 8135A944 | 4B FE BD B5 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135A948 | 38 60 00 0E */	li r3, 0xe
/* 8135A94C | 38 00 00 01 */	li r0, 0x1
/* 8135A950 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135A954 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8135A958:
/* 8135A958 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A95C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135A960 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135A964 | 7C 08 03 A6 */	mtlr r0
/* 8135A968 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135A96C | 4E 80 00 20 */	blr
.endfn stt_wait_del_msg__Q23ipl9CdbBackupFv

# .text:0x3E0 | 0x8135A970 | size: 0xA0
# ipl::CdbBackup::stt_wait_besd_del_msg()
.fn stt_wait_besd_del_msg__Q23ipl9CdbBackupFv, global
/* 8135A970 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135A974 | 7C 08 02 A6 */	mflr r0
/* 8135A978 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135A97C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135A980 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135A984 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135A988 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135A98C | 7C 7E 1B 78 */	mr r30, r3
/* 8135A990 | 80 9F 00 AC */	lwz r4, 0xac(r31)
/* 8135A994 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8135A998 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8135A99C | 41 82 00 14 */	beq .L_8135A9B0
/* 8135A9A0 | 40 80 00 58 */	bge .L_8135A9F8
/* 8135A9A4 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8135A9A8 | 40 80 00 48 */	bge .L_8135A9F0
/* 8135A9AC | 48 00 00 4C */	b .L_8135A9F8
.L_8135A9B0:
/* 8135A9B0 | 38 00 00 00 */	li r0, 0x0
/* 8135A9B4 | 3C 80 81 36 */	lis r4, iplCdbBack_8135B274@ha
/* 8135A9B8 | 98 03 00 00 */	stb r0, 0x0(r3)
/* 8135A9BC | 7F C5 F3 78 */	mr r5, r30
/* 8135A9C0 | 38 84 B2 74 */	addi r4, r4, iplCdbBack_8135B274@l
/* 8135A9C4 | 38 C0 00 00 */	li r6, 0x0
/* 8135A9C8 | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8135A9CC | 48 29 D8 7D */	bl fn_815F8248
/* 8135A9D0 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8135A9D4 | 38 80 00 94 */	li r4, 0x94
/* 8135A9D8 | 38 A0 00 00 */	li r5, 0x0
/* 8135A9DC | 38 C0 00 01 */	li r6, 0x1
/* 8135A9E0 | 4B FE BA 6D */	bl callBtn0__Q23ipl12DialogWindowFUlUlb
/* 8135A9E4 | 38 00 00 05 */	li r0, 0x5
/* 8135A9E8 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8135A9EC | 48 00 00 0C */	b .L_8135A9F8
.L_8135A9F0:
/* 8135A9F0 | 38 00 00 02 */	li r0, 0x2
/* 8135A9F4 | 90 03 00 10 */	stw r0, 0x10(r3)
.L_8135A9F8:
/* 8135A9F8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135A9FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AA00 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135AA04 | 7C 08 03 A6 */	mtlr r0
/* 8135AA08 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AA0C | 4E 80 00 20 */	blr
.endfn stt_wait_besd_del_msg__Q23ipl9CdbBackupFv

# .text:0x480 | 0x8135AA10 | size: 0x4C
# ipl::CdbBackup::stt_wait_delete()
.fn stt_wait_delete__Q23ipl9CdbBackupFv, global
/* 8135AA10 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AA14 | 7C 08 02 A6 */	mflr r0
/* 8135AA18 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AA1C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AA20 | 7C 7F 1B 78 */	mr r31, r3
/* 8135AA24 | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 8135AA28 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AA2C | 41 82 00 1C */	beq .L_8135AA48
/* 8135AA30 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AA34 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AA38 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AA3C | 4B FE CE C9 */	bl terminate__Q23ipl12DialogWindowFv
/* 8135AA40 | 38 00 00 06 */	li r0, 0x6
/* 8135AA44 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_8135AA48:
/* 8135AA48 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AA4C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AA50 | 7C 08 03 A6 */	mtlr r0
/* 8135AA54 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AA58 | 4E 80 00 20 */	blr
.endfn stt_wait_delete__Q23ipl9CdbBackupFv

# .text:0x4CC | 0x8135AA5C | size: 0x8C
# ipl::CdbBackup::stt_wait_del_msg_fns()
.fn stt_wait_del_msg_fns__Q23ipl9CdbBackupFv, global
/* 8135AA5C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AA60 | 7C 08 02 A6 */	mflr r0
/* 8135AA64 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AA68 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AA6C | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AA70 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AA74 | 7C 7F 1B 78 */	mr r31, r3
/* 8135AA78 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 8135AA7C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8135AA80 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8135AA84 | 41 82 00 50 */	beq .L_8135AAD4
/* 8135AA88 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135AA8C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AA90 | 41 82 00 0C */	beq .L_8135AA9C
/* 8135AA94 | 38 60 00 00 */	li r3, 0x0
/* 8135AA98 | 48 00 00 08 */	b .L_8135AAA0
.L_8135AA9C:
/* 8135AA9C | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135AAA0:
/* 8135AAA0 | 4B FE 4F C5 */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 8135AAA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135AAA8 | 40 82 00 2C */	bne .L_8135AAD4
/* 8135AAAC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AAB0 | 38 80 00 95 */	li r4, 0x95
/* 8135AAB4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AAB8 | 38 A0 00 2E */	li r5, 0x2e
/* 8135AABC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AAC0 | 4B FE BC 39 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AAC4 | 38 60 00 0F */	li r3, 0xf
/* 8135AAC8 | 38 00 00 11 */	li r0, 0x11
/* 8135AACC | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135AAD0 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8135AAD4:
/* 8135AAD4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AAD8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AADC | 7C 08 03 A6 */	mtlr r0
/* 8135AAE0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AAE4 | 4E 80 00 20 */	blr
.endfn stt_wait_del_msg_fns__Q23ipl9CdbBackupFv

# .text:0x558 | 0x8135AAE8 | size: 0x148
# ipl::CdbBackup::stt_wait_sd_back_msg()
.fn stt_wait_sd_back_msg__Q23ipl9CdbBackupFv, global
/* 8135AAE8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AAEC | 7C 08 02 A6 */	mflr r0
/* 8135AAF0 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AAF4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AAF8 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AAFC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AB00 | 7C 7F 1B 78 */	mr r31, r3
/* 8135AB04 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135AB08 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AB0C | 41 82 00 0C */	beq .L_8135AB18
/* 8135AB10 | 38 60 00 00 */	li r3, 0x0
/* 8135AB14 | 48 00 00 08 */	b .L_8135AB1C
.L_8135AB18:
/* 8135AB18 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135AB1C:
/* 8135AB1C | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135AB20 | 48 00 44 CD */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8135AB24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135AB28 | 40 82 00 60 */	bne .L_8135AB88
/* 8135AB2C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AB30 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AB34 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135AB38 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AB3C | 41 82 00 0C */	beq .L_8135AB48
/* 8135AB40 | 38 60 00 00 */	li r3, 0x0
/* 8135AB44 | 48 00 00 08 */	b .L_8135AB4C
.L_8135AB48:
/* 8135AB48 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135AB4C:
/* 8135AB4C | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135AB50 | 48 00 45 19 */	bl get_sd_state__Q23ipl10SDVFWorkerFv
/* 8135AB54 | 2C 03 00 02 */	cmpwi r3, 0x2
/* 8135AB58 | 40 82 00 38 */	bne .L_8135AB90
/* 8135AB5C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AB60 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AB64 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135AB68 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AB6C | 41 82 00 0C */	beq .L_8135AB78
/* 8135AB70 | 38 60 00 00 */	li r3, 0x0
/* 8135AB74 | 48 00 00 08 */	b .L_8135AB7C
.L_8135AB78:
/* 8135AB78 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135AB7C:
/* 8135AB7C | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135AB80 | 48 00 45 5D */	bl mount_sd_async__Q23ipl10SDVFWorkerFv
/* 8135AB84 | 48 00 00 0C */	b .L_8135AB90
.L_8135AB88:
/* 8135AB88 | 7F E3 FB 78 */	mr r3, r31
/* 8135AB8C | 48 00 05 65 */	bl error_handling__Q23ipl9CdbBackupFv
.L_8135AB90:
/* 8135AB90 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AB94 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AB98 | 80 64 00 AC */	lwz r3, 0xac(r4)
/* 8135AB9C | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 8135ABA0 | 2C 00 00 02 */	cmpwi r0, 0x2
/* 8135ABA4 | 41 82 00 14 */	beq .L_8135ABB8
/* 8135ABA8 | 40 80 00 74 */	bge .L_8135AC1C
/* 8135ABAC | 2C 00 00 01 */	cmpwi r0, 0x1
/* 8135ABB0 | 40 80 00 50 */	bge .L_8135AC00
/* 8135ABB4 | 48 00 00 68 */	b .L_8135AC1C
.L_8135ABB8:
/* 8135ABB8 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135ABBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135ABC0 | 41 82 00 0C */	beq .L_8135ABCC
/* 8135ABC4 | 38 60 00 00 */	li r3, 0x0
/* 8135ABC8 | 48 00 00 08 */	b .L_8135ABD0
.L_8135ABCC:
/* 8135ABCC | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135ABD0:
/* 8135ABD0 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135ABD4 | 48 00 44 19 */	bl is_working__Q23ipl10SDVFWorkerFv
/* 8135ABD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135ABDC | 41 82 00 18 */	beq .L_8135ABF4
/* 8135ABE0 | 38 60 00 00 */	li r3, 0x0
/* 8135ABE4 | 38 00 00 08 */	li r0, 0x8
/* 8135ABE8 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135ABEC | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8135ABF0 | 48 00 00 2C */	b .L_8135AC1C
.L_8135ABF4:
/* 8135ABF4 | 38 00 00 08 */	li r0, 0x8
/* 8135ABF8 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 8135ABFC | 48 00 00 20 */	b .L_8135AC1C
.L_8135AC00:
/* 8135AC00 | 38 80 00 93 */	li r4, 0x93
/* 8135AC04 | 38 A0 01 42 */	li r5, 0x142
/* 8135AC08 | 38 C0 01 41 */	li r6, 0x141
/* 8135AC0C | 38 E0 00 00 */	li r7, 0x0
/* 8135AC10 | 4B FE BE C5 */	bl callBtn2__Q23ipl12DialogWindowFUlUlUlb
/* 8135AC14 | 38 00 00 04 */	li r0, 0x4
/* 8135AC18 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_8135AC1C:
/* 8135AC1C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AC20 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AC24 | 7C 08 03 A6 */	mtlr r0
/* 8135AC28 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AC2C | 4E 80 00 20 */	blr
.endfn stt_wait_sd_back_msg__Q23ipl9CdbBackupFv

# .text:0x6A0 | 0x8135AC30 | size: 0x120
# ipl::CdbBackup::stt_check_sd_err()
.fn stt_check_sd_err__Q23ipl9CdbBackupFv, global
/* 8135AC30 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AC34 | 7C 08 02 A6 */	mflr r0
/* 8135AC38 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AC3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AC40 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AC44 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AC48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135AC4C | 7C 7E 1B 78 */	mr r30, r3
/* 8135AC50 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135AC54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AC58 | 41 82 00 0C */	beq .L_8135AC64
/* 8135AC5C | 38 60 00 00 */	li r3, 0x0
/* 8135AC60 | 48 00 00 08 */	b .L_8135AC68
.L_8135AC64:
/* 8135AC64 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135AC68:
/* 8135AC68 | 3B E3 00 18 */	addi r31, r3, 0x18
/* 8135AC6C | 7F E3 FB 78 */	mr r3, r31
/* 8135AC70 | 48 00 43 F9 */	bl get_sd_state__Q23ipl10SDVFWorkerFv
/* 8135AC74 | 2C 03 00 05 */	cmpwi r3, 0x5
/* 8135AC78 | 41 82 00 14 */	beq .L_8135AC8C
/* 8135AC7C | 40 80 00 94 */	bge .L_8135AD10
/* 8135AC80 | 2C 03 00 03 */	cmpwi r3, 0x3
/* 8135AC84 | 40 80 00 60 */	bge .L_8135ACE4
/* 8135AC88 | 48 00 00 88 */	b .L_8135AD10
.L_8135AC8C:
/* 8135AC8C | 7F E3 FB 78 */	mr r3, r31
/* 8135AC90 | 48 00 43 E1 */	bl is_sd_write_protected__Q23ipl10SDVFWorkerFv
/* 8135AC94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135AC98 | 41 82 00 30 */	beq .L_8135ACC8
/* 8135AC9C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135ACA0 | 38 80 00 3E */	li r4, 0x3e
/* 8135ACA4 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135ACA8 | 38 A0 00 2E */	li r5, 0x2e
/* 8135ACAC | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135ACB0 | 4B FE BA 49 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135ACB4 | 38 60 00 0E */	li r3, 0xe
/* 8135ACB8 | 38 00 00 01 */	li r0, 0x1
/* 8135ACBC | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135ACC0 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8135ACC4 | 48 00 00 74 */	b .L_8135AD38
.L_8135ACC8:
/* 8135ACC8 | 7F E3 FB 78 */	mr r3, r31
/* 8135ACCC | 48 00 44 19 */	bl prepare_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv
/* 8135ACD0 | 38 60 00 00 */	li r3, 0x0
/* 8135ACD4 | 38 00 00 09 */	li r0, 0x9
/* 8135ACD8 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135ACDC | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8135ACE0 | 48 00 00 58 */	b .L_8135AD38
.L_8135ACE4:
/* 8135ACE4 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135ACE8 | 38 80 00 38 */	li r4, 0x38
/* 8135ACEC | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135ACF0 | 38 A0 00 2E */	li r5, 0x2e
/* 8135ACF4 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135ACF8 | 4B FE BA 01 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135ACFC | 38 60 00 0E */	li r3, 0xe
/* 8135AD00 | 38 00 00 01 */	li r0, 0x1
/* 8135AD04 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135AD08 | 90 1E 00 14 */	stw r0, 0x14(r30)
/* 8135AD0C | 48 00 00 2C */	b .L_8135AD38
.L_8135AD10:
/* 8135AD10 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AD14 | 38 80 00 97 */	li r4, 0x97
/* 8135AD18 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AD1C | 38 A0 00 2E */	li r5, 0x2e
/* 8135AD20 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AD24 | 4B FE B9 D5 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AD28 | 38 60 00 0E */	li r3, 0xe
/* 8135AD2C | 38 00 00 01 */	li r0, 0x1
/* 8135AD30 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135AD34 | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8135AD38:
/* 8135AD38 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AD3C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AD40 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135AD44 | 7C 08 03 A6 */	mtlr r0
/* 8135AD48 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AD4C | 4E 80 00 20 */	blr
.endfn stt_check_sd_err__Q23ipl9CdbBackupFv

# .text:0x7C0 | 0x8135AD50 | size: 0xC8
# ipl::CdbBackup::stt_check_prepare_back()
.fn stt_check_prepare_back__Q23ipl9CdbBackupFv, global
/* 8135AD50 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AD54 | 7C 08 02 A6 */	mflr r0
/* 8135AD58 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AD5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AD60 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AD64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AD68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135AD6C | 7C 7E 1B 78 */	mr r30, r3
/* 8135AD70 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135AD74 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AD78 | 41 82 00 0C */	beq .L_8135AD84
/* 8135AD7C | 38 60 00 00 */	li r3, 0x0
/* 8135AD80 | 48 00 00 08 */	b .L_8135AD88
.L_8135AD84:
/* 8135AD84 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135AD88:
/* 8135AD88 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135AD8C | 48 00 42 8D */	bl get_async_result__Q23ipl10SDVFWorkerFv
/* 8135AD90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135AD94 | 40 82 00 44 */	bne .L_8135ADD8
/* 8135AD98 | 38 00 00 00 */	li r0, 0x0
/* 8135AD9C | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135ADA0 | 98 1E 00 00 */	stb r0, 0x0(r30)
/* 8135ADA4 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135ADA8 | 3C 80 81 36 */	lis r4, iplCdbBack_8135B40C@ha
/* 8135ADAC | 7F C5 F3 78 */	mr r5, r30
/* 8135ADB0 | 80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8135ADB4 | 38 84 B4 0C */	addi r4, r4, iplCdbBack_8135B40C@l
/* 8135ADB8 | 38 C0 00 00 */	li r6, 0x0
/* 8135ADBC | 48 29 D4 8D */	bl fn_815F8248
/* 8135ADC0 | 80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8135ADC4 | 38 80 00 3A */	li r4, 0x3a
/* 8135ADC8 | 4B FE C2 79 */	bl callBtnPrg__Q23ipl12DialogWindowFUl
/* 8135ADCC | 38 00 00 0A */	li r0, 0xa
/* 8135ADD0 | 90 1E 00 10 */	stw r0, 0x10(r30)
/* 8135ADD4 | 48 00 00 2C */	b .L_8135AE00
.L_8135ADD8:
/* 8135ADD8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135ADDC | 38 80 00 97 */	li r4, 0x97
/* 8135ADE0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135ADE4 | 38 A0 00 2E */	li r5, 0x2e
/* 8135ADE8 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135ADEC | 4B FE B9 0D */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135ADF0 | 38 60 00 0E */	li r3, 0xe
/* 8135ADF4 | 38 00 00 01 */	li r0, 0x1
/* 8135ADF8 | 90 7E 00 10 */	stw r3, 0x10(r30)
/* 8135ADFC | 90 1E 00 14 */	stw r0, 0x14(r30)
.L_8135AE00:
/* 8135AE00 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AE04 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AE08 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135AE0C | 7C 08 03 A6 */	mtlr r0
/* 8135AE10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AE14 | 4E 80 00 20 */	blr
.endfn stt_check_prepare_back__Q23ipl9CdbBackupFv

# .text:0x888 | 0x8135AE18 | size: 0x98
# ipl::CdbBackup::stt_wait_backup()
.fn stt_wait_backup__Q23ipl9CdbBackupFv, global
/* 8135AE18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AE1C | 7C 08 02 A6 */	mflr r0
/* 8135AE20 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AE24 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AE28 | 7C 7F 1B 78 */	mr r31, r3
/* 8135AE2C | 48 00 03 95 */	bl cdb_backup_delete_task___3iplFPv
/* 8135AE30 | 2C 03 00 64 */	cmpwi r3, 0x64
/* 8135AE34 | 40 80 00 1C */	bge .L_8135AE50
/* 8135AE38 | 7F E3 FB 78 */	mr r3, r31
/* 8135AE3C | 48 00 03 85 */	bl cdb_backup_delete_task___3iplFPv
/* 8135AE40 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AE44 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AE48 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8135AE4C | 90 64 00 3C */	stw r3, 0x3c(r4)
.L_8135AE50:
/* 8135AE50 | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 8135AE54 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AE58 | 41 82 00 44 */	beq .L_8135AE9C
/* 8135AE5C | 7F E3 FB 78 */	mr r3, r31
/* 8135AE60 | 48 00 03 61 */	bl cdb_backup_delete_task___3iplFPv
/* 8135AE64 | 2C 03 00 64 */	cmpwi r3, 0x64
/* 8135AE68 | 41 80 00 1C */	blt .L_8135AE84
/* 8135AE6C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AE70 | 38 00 00 64 */	li r0, 0x64
/* 8135AE74 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AE78 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AE7C | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 8135AE80 | 48 00 00 14 */	b .L_8135AE94
.L_8135AE84:
/* 8135AE84 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AE88 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AE8C | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AE90 | 4B FE CA 75 */	bl terminate__Q23ipl12DialogWindowFv
.L_8135AE94:
/* 8135AE94 | 38 00 00 0B */	li r0, 0xb
/* 8135AE98 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_8135AE9C:
/* 8135AE9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AEA0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AEA4 | 7C 08 03 A6 */	mtlr r0
/* 8135AEA8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AEAC | 4E 80 00 20 */	blr
.endfn stt_wait_backup__Q23ipl9CdbBackupFv

# .text:0x920 | 0x8135AEB0 | size: 0x128
# ipl::CdbBackup::stt_wait_back_msg_fns()
.fn stt_wait_back_msg_fns__Q23ipl9CdbBackupFv, global
/* 8135AEB0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135AEB4 | 7C 08 02 A6 */	mflr r0
/* 8135AEB8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AEBC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135AEC0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AEC4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135AEC8 | 7C 7F 1B 78 */	mr r31, r3
/* 8135AECC | 80 A4 00 AC */	lwz r5, 0xac(r4)
/* 8135AED0 | 80 05 00 24 */	lwz r0, 0x24(r5)
/* 8135AED4 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8135AED8 | 41 82 00 EC */	beq .L_8135AFC4
/* 8135AEDC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135AEE0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AEE4 | 41 82 00 0C */	beq .L_8135AEF0
/* 8135AEE8 | 38 80 00 00 */	li r4, 0x0
/* 8135AEEC | 48 00 00 08 */	b .L_8135AEF4
.L_8135AEF0:
/* 8135AEF0 | 80 84 00 7C */	lwz r4, 0x7c(r4)
.L_8135AEF4:
/* 8135AEF4 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 8135AEF8 | 2C 00 00 17 */	cmpwi r0, 0x17
/* 8135AEFC | 41 82 00 38 */	beq .L_8135AF34
/* 8135AF00 | 40 80 00 9C */	bge .L_8135AF9C
/* 8135AF04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135AF08 | 41 82 00 08 */	beq .L_8135AF10
/* 8135AF0C | 48 00 00 90 */	b .L_8135AF9C
.L_8135AF10:
/* 8135AF10 | 7C A3 2B 78 */	mr r3, r5
/* 8135AF14 | 38 80 00 3B */	li r4, 0x3b
/* 8135AF18 | 38 A0 00 2E */	li r5, 0x2e
/* 8135AF1C | 4B FE B7 DD */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AF20 | 38 60 00 0F */	li r3, 0xf
/* 8135AF24 | 38 00 00 0C */	li r0, 0xc
/* 8135AF28 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135AF2C | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8135AF30 | 48 00 00 8C */	b .L_8135AFBC
.L_8135AF34:
/* 8135AF34 | 7C 83 23 78 */	mr r3, r4
/* 8135AF38 | 4B FE 4B 2D */	bl isOverFlow__Q33ipl3cdb7ManagerCFv
/* 8135AF3C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135AF40 | 41 82 00 30 */	beq .L_8135AF70
/* 8135AF44 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AF48 | 38 80 00 3C */	li r4, 0x3c
/* 8135AF4C | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AF50 | 38 A0 00 2E */	li r5, 0x2e
/* 8135AF54 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AF58 | 4B FE B7 A1 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AF5C | 38 60 00 0E */	li r3, 0xe
/* 8135AF60 | 38 00 00 0D */	li r0, 0xd
/* 8135AF64 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135AF68 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8135AF6C | 48 00 00 50 */	b .L_8135AFBC
.L_8135AF70:
/* 8135AF70 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135AF74 | 38 80 00 98 */	li r4, 0x98
/* 8135AF78 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135AF7C | 38 A0 00 2E */	li r5, 0x2e
/* 8135AF80 | 80 63 00 AC */	lwz r3, 0xac(r3)
/* 8135AF84 | 4B FE B7 75 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AF88 | 38 60 00 0F */	li r3, 0xf
/* 8135AF8C | 38 00 00 0C */	li r0, 0xc
/* 8135AF90 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135AF94 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8135AF98 | 48 00 00 24 */	b .L_8135AFBC
.L_8135AF9C:
/* 8135AF9C | 7C A3 2B 78 */	mr r3, r5
/* 8135AFA0 | 38 80 00 3D */	li r4, 0x3d
/* 8135AFA4 | 38 A0 00 2E */	li r5, 0x2e
/* 8135AFA8 | 4B FE B7 51 */	bl callBtn1__Q23ipl12DialogWindowFUlUl
/* 8135AFAC | 38 60 00 0E */	li r3, 0xe
/* 8135AFB0 | 38 00 00 0D */	li r0, 0xd
/* 8135AFB4 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135AFB8 | 90 1F 00 14 */	stw r0, 0x14(r31)
.L_8135AFBC:
/* 8135AFBC | 38 00 00 00 */	li r0, 0x0
/* 8135AFC0 | 90 1F 00 04 */	stw r0, 0x4(r31)
.L_8135AFC4:
/* 8135AFC4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135AFC8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135AFCC | 7C 08 03 A6 */	mtlr r0
/* 8135AFD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135AFD4 | 4E 80 00 20 */	blr
.endfn stt_wait_back_msg_fns__Q23ipl9CdbBackupFv

# .text:0xA48 | 0x8135AFD8 | size: 0x2C
# ipl::CdbBackup::stt_wait_ret_msg()
.fn stt_wait_ret_msg__Q23ipl9CdbBackupFv, global
/* 8135AFD8 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135AFDC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135AFE0 | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8135AFE4 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8135AFE8 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8135AFEC | 4D 82 00 20 */	beqlr
/* 8135AFF0 | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8135AFF4 | 38 00 FF FF */	li r0, -0x1
/* 8135AFF8 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8135AFFC | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8135B000 | 4E 80 00 20 */	blr
.endfn stt_wait_ret_msg__Q23ipl9CdbBackupFv

# .text:0xA74 | 0x8135B004 | size: 0x2C
# ipl::CdbBackup::stt_wait_fns_msg()
.fn stt_wait_fns_msg__Q23ipl9CdbBackupFv, global
/* 8135B004 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135B008 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135B00C | 80 84 00 AC */	lwz r4, 0xac(r4)
/* 8135B010 | 80 04 00 24 */	lwz r0, 0x24(r4)
/* 8135B014 | 2C 00 FF FF */	cmpwi r0, -0x1
/* 8135B018 | 4D 82 00 20 */	beqlr
/* 8135B01C | 80 83 00 14 */	lwz r4, 0x14(r3)
/* 8135B020 | 38 00 FF FF */	li r0, -0x1
/* 8135B024 | 90 83 00 10 */	stw r4, 0x10(r3)
/* 8135B028 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 8135B02C | 4E 80 00 20 */	blr
.endfn stt_wait_fns_msg__Q23ipl9CdbBackupFv

# .text:0xAA0 | 0x8135B030 | size: 0x60
# ipl::CdbBackup::stt_clean_up_back()
.fn stt_clean_up_back__Q23ipl9CdbBackupFv, global
/* 8135B030 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B034 | 7C 08 02 A6 */	mflr r0
/* 8135B038 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135B03C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B040 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135B044 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135B048 | 7C 7F 1B 78 */	mr r31, r3
/* 8135B04C | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135B050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B054 | 41 82 00 0C */	beq .L_8135B060
/* 8135B058 | 38 60 00 00 */	li r3, 0x0
/* 8135B05C | 48 00 00 08 */	b .L_8135B064
.L_8135B060:
/* 8135B060 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135B064:
/* 8135B064 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135B068 | 48 00 40 85 */	bl cleanup_cdb_backup_to_sd_async__Q23ipl10SDVFWorkerFv
/* 8135B06C | 38 60 00 00 */	li r3, 0x0
/* 8135B070 | 38 00 00 01 */	li r0, 0x1
/* 8135B074 | 90 7F 00 10 */	stw r3, 0x10(r31)
/* 8135B078 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 8135B07C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135B080 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B084 | 7C 08 03 A6 */	mtlr r0
/* 8135B088 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B08C | 4E 80 00 20 */	blr
.endfn stt_clean_up_back__Q23ipl9CdbBackupFv

# .text:0xB00 | 0x8135B090 | size: 0x60
# ipl::CdbBackup::stt_wait_terminate()
.fn stt_wait_terminate__Q23ipl9CdbBackupFv, global
/* 8135B090 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B094 | 7C 08 02 A6 */	mflr r0
/* 8135B098 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135B09C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B0A0 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135B0A4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135B0A8 | 7C 7F 1B 78 */	mr r31, r3
/* 8135B0AC | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135B0B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B0B4 | 41 82 00 0C */	beq .L_8135B0C0
/* 8135B0B8 | 38 60 00 00 */	li r3, 0x0
/* 8135B0BC | 48 00 00 08 */	b .L_8135B0C4
.L_8135B0C0:
/* 8135B0C0 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135B0C4:
/* 8135B0C4 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135B0C8 | 48 00 3F 15 */	bl is_terminated__Q23ipl10SDVFWorkerFv
/* 8135B0CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B0D0 | 41 82 00 0C */	beq .L_8135B0DC
/* 8135B0D4 | 38 00 00 11 */	li r0, 0x11
/* 8135B0D8 | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_8135B0DC:
/* 8135B0DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B0E0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135B0E4 | 7C 08 03 A6 */	mtlr r0
/* 8135B0E8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B0EC | 4E 80 00 20 */	blr
.endfn stt_wait_terminate__Q23ipl9CdbBackupFv

# .text:0xB60 | 0x8135B0F0 | size: 0xD0
# ipl::CdbBackup::error_handling()
.fn error_handling__Q23ipl9CdbBackupFv, global
/* 8135B0F0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B0F4 | 7C 08 02 A6 */	mflr r0
/* 8135B0F8 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B0FC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B100 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B104 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135B108 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135B10C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B110 | 41 82 00 0C */	beq .L_8135B11C
/* 8135B114 | 38 60 00 00 */	li r3, 0x0
/* 8135B118 | 48 00 00 08 */	b .L_8135B120
.L_8135B11C:
/* 8135B11C | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135B120:
/* 8135B120 | 38 63 00 18 */	addi r3, r3, 0x18
/* 8135B124 | 48 00 3E F5 */	bl get_async_result__Q23ipl10SDVFWorkerFv
/* 8135B128 | 2C 03 FF FB */	cmpwi r3, -0x5
/* 8135B12C | 41 82 00 5C */	beq .L_8135B188
/* 8135B130 | 40 80 00 7C */	bge .L_8135B1AC
/* 8135B134 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 8135B138 | 41 82 00 08 */	beq .L_8135B140
/* 8135B13C | 48 00 00 70 */	b .L_8135B1AC
.L_8135B140:
/* 8135B140 | 3F E0 81 09 */	lis r31, smArg__Q23ipl6System@ha
/* 8135B144 | 3C 80 81 64 */	lis r4, lbl_816392BC@ha
/* 8135B148 | 3B FF 90 08 */	addi r31, r31, smArg__Q23ipl6System@l
/* 8135B14C | 3C C0 81 64 */	lis r6, lbl_816392C7@ha
/* 8135B150 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8135B154 | 38 84 92 BC */	addi r4, r4, lbl_816392BC@l
/* 8135B158 | 38 C6 92 C7 */	addi r6, r6, lbl_816392C7@l
/* 8135B15C | 38 A0 FF F8 */	li r5, -0x8
/* 8135B160 | 38 E0 02 50 */	li r7, 0x250
/* 8135B164 | 4B FF B5 95 */	bl log__Q23ipl12ErrorHandlerFPCciPCci
/* 8135B168 | 80 7F 00 98 */	lwz r3, 0x98(r31)
/* 8135B16C | 38 80 00 01 */	li r4, 0x1
/* 8135B170 | 38 A0 00 02 */	li r5, 0x2
/* 8135B174 | 38 C0 00 00 */	li r6, 0x0
/* 8135B178 | 38 E0 00 00 */	li r7, 0x0
/* 8135B17C | 39 00 FF FF */	li r8, -0x1
/* 8135B180 | 4B FF B3 95 */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
/* 8135B184 | 48 00 00 28 */	b .L_8135B1AC
.L_8135B188:
/* 8135B188 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B18C | 38 80 00 01 */	li r4, 0x1
/* 8135B190 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B194 | 38 A0 00 01 */	li r5, 0x1
/* 8135B198 | 80 63 00 98 */	lwz r3, 0x98(r3)
/* 8135B19C | 38 C0 00 00 */	li r6, 0x0
/* 8135B1A0 | 38 E0 00 00 */	li r7, 0x0
/* 8135B1A4 | 39 00 FF FF */	li r8, -0x1
/* 8135B1A8 | 4B FF B3 6D */	bl set__Q23ipl12ErrorHandlerFQ33ipl12ErrorHandler4TypeUlPCcii
.L_8135B1AC:
/* 8135B1AC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B1B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135B1B4 | 7C 08 03 A6 */	mtlr r0
/* 8135B1B8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B1BC | 4E 80 00 20 */	blr
.endfn error_handling__Q23ipl9CdbBackupFv

# .text:0xC30 | 0x8135B1C0 | size: 0x28
# ipl::cdb_backup_delete_task_(void*)
.fn cdb_backup_delete_task___3iplFPv, global
/* 8135B1C0 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 8135B1C4 | 3C 00 01 40 */	lis r0, 0x140
/* 8135B1C8 | 80 83 00 0C */	lwz r4, 0xc(r3)
/* 8135B1CC | 80 6D A6 B0 */	lwz r3, lbl_816986F0@sda21(r0)
/* 8135B1D0 | 7C 85 20 50 */	subf r4, r5, r4
/* 8135B1D4 | 7C 03 00 50 */	subf r0, r3, r0
/* 8135B1D8 | 1C 64 00 64 */	mulli r3, r4, 0x64
/* 8135B1DC | 7C 05 00 50 */	subf r0, r5, r0
/* 8135B1E0 | 7C 63 03 D6 */	divw r3, r3, r0
/* 8135B1E4 | 4E 80 00 20 */	blr
.endfn cdb_backup_delete_task___3iplFPv

# .text:0xC58 | 0x8135B1E8 | size: 0x8C
# ipl::cdb_backup_move_task_(void*)
.fn cdb_backup_move_task___3iplFPv, global
/* 8135B1E8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8135B1EC | 7C 08 02 A6 */	mflr r0
/* 8135B1F0 | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B1F4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 8135B1F8 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B1FC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 8135B200 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 8135B204 | 3B C0 00 01 */	li r30, 0x1
/* 8135B208 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135B20C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B210 | 41 82 00 0C */	beq .L_8135B21C
/* 8135B214 | 3B E0 00 00 */	li r31, 0x0
/* 8135B218 | 48 00 00 08 */	b .L_8135B220
.L_8135B21C:
/* 8135B21C | 83 E3 00 7C */	lwz r31, 0x7c(r3)
.L_8135B220:
/* 8135B220 | 7F E3 FB 78 */	mr r3, r31
/* 8135B224 | 4B FE 4C C5 */	bl remove__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8135B228 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B22C | 41 82 00 28 */	beq .L_8135B254
/* 8135B230 | 7F E3 FB 78 */	mr r3, r31
/* 8135B234 | 38 80 00 00 */	li r4, 0x0
/* 8135B238 | 4B FE 51 21 */	bl getFreeSize__Q33ipl3cdb7ManagerFv
/* 8135B23C | 7F E3 FB 78 */	mr r3, r31
/* 8135B240 | 4B FE 48 4D */	bl isUnderFlow__Q33ipl3cdb7ManagerCFv
/* 8135B244 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B248 | 41 82 00 10 */	beq .L_8135B258
/* 8135B24C | 3B C0 00 00 */	li r30, 0x0
/* 8135B250 | 48 00 00 08 */	b .L_8135B258
.L_8135B254:
/* 8135B254 | 3B C0 00 00 */	li r30, 0x0
.L_8135B258:
/* 8135B258 | 7F C3 F3 78 */	mr r3, r30
/* 8135B25C | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8135B260 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8135B264 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135B268 | 7C 08 03 A6 */	mtlr r0
/* 8135B26C | 38 21 00 10 */	addi r1, r1, 0x10
/* 8135B270 | 4E 80 00 20 */	blr
.endfn cdb_backup_move_task___3iplFPv

# .text:0xCE4 | 0x8135B274 | size: 0xDC
.fn iplCdbBack_8135B274, local
/* 8135B274 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135B278 | 7C 08 02 A6 */	mflr r0
/* 8135B27C | 38 80 00 00 */	li r4, 0x0
/* 8135B280 | 38 A0 00 01 */	li r5, 0x1
/* 8135B284 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135B288 | 38 C0 00 00 */	li r6, 0x0
/* 8135B28C | 38 E0 00 00 */	li r7, 0x0
/* 8135B290 | 39 00 00 00 */	li r8, 0x0
/* 8135B294 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8135B298 | 7C 7F 1B 78 */	mr r31, r3
/* 8135B29C | 38 60 07 D0 */	li r3, 0x7d0
/* 8135B2A0 | 48 12 B0 49 */	bl fn_814862E8
/* 8135B2A4 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8135B2A8 | 38 60 07 F3 */	li r3, 0x7f3
/* 8135B2AC | 38 80 00 0C */	li r4, 0xc
/* 8135B2B0 | 38 A0 00 1F */	li r5, 0x1f
/* 8135B2B4 | 38 C0 00 17 */	li r6, 0x17
/* 8135B2B8 | 38 E0 00 3B */	li r7, 0x3b
/* 8135B2BC | 39 00 00 3B */	li r8, 0x3b
/* 8135B2C0 | 48 12 B0 29 */	bl fn_814862E8
/* 8135B2C4 | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135B2C8 | 90 61 00 08 */	stw r3, 0x8(r1)
/* 8135B2CC | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135B2D0 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135B2D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B2D8 | 41 82 00 0C */	beq .L_8135B2E4
/* 8135B2DC | 38 60 00 00 */	li r3, 0x0
/* 8135B2E0 | 48 00 00 08 */	b .L_8135B2E8
.L_8135B2E4:
/* 8135B2E4 | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135B2E8:
/* 8135B2E8 | 3D 20 81 36 */	lis r9, cdb_backup_move_task___3iplFPv@ha
/* 8135B2EC | 7F EA FB 78 */	mr r10, r31
/* 8135B2F0 | 38 81 00 0C */	addi r4, r1, 0xc
/* 8135B2F4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 8135B2F8 | 39 29 B1 E8 */	addi r9, r9, cdb_backup_move_task___3iplFPv@l
/* 8135B2FC | 38 C0 00 01 */	li r6, 0x1
/* 8135B300 | 38 E0 00 01 */	li r7, 0x1
/* 8135B304 | 39 00 00 00 */	li r8, 0x0
/* 8135B308 | 4B FE 4A 59 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 8135B30C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B310 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B314 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135B318 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B31C | 41 82 00 0C */	beq .L_8135B328
/* 8135B320 | 38 60 00 00 */	li r3, 0x0
/* 8135B324 | 48 00 00 08 */	b .L_8135B32C
.L_8135B328:
/* 8135B328 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135B32C:
/* 8135B32C | 38 80 00 01 */	li r4, 0x1
/* 8135B330 | 4B FE 4F BD */	bl cleanUpEmptyDirectories__Q33ipl3cdb7ManagerF17CDBRecordLocation
/* 8135B334 | 38 00 00 01 */	li r0, 0x1
/* 8135B338 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8135B33C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135B340 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8135B344 | 7C 08 03 A6 */	mtlr r0
/* 8135B348 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135B34C | 4E 80 00 20 */	blr
.endfn iplCdbBack_8135B274

# .text:0xDC0 | 0x8135B350 | size: 0xBC
.fn iplCdbBack_8135B350, local
/* 8135B350 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135B354 | 7C 08 02 A6 */	mflr r0
/* 8135B358 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135B35C | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135B360 | 48 29 E1 65 */	bl _savegpr_28
/* 8135B364 | 3C A0 81 09 */	lis r5, smArg__Q23ipl6System@ha
/* 8135B368 | 7C 7C 1B 78 */	mr r28, r3
/* 8135B36C | 38 A5 90 08 */	addi r5, r5, smArg__Q23ipl6System@l
/* 8135B370 | 7C 9D 23 78 */	mr r29, r4
/* 8135B374 | 88 05 02 BC */	lbz r0, 0x2bc(r5)
/* 8135B378 | 3B C0 00 01 */	li r30, 0x1
/* 8135B37C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B380 | 41 82 00 0C */	beq .L_8135B38C
/* 8135B384 | 3B E0 00 00 */	li r31, 0x0
/* 8135B388 | 48 00 00 08 */	b .L_8135B390
.L_8135B38C:
/* 8135B38C | 83 E5 00 7C */	lwz r31, 0x7c(r5)
.L_8135B390:
/* 8135B390 | 38 00 00 00 */	li r0, 0x0
/* 8135B394 | 7F E3 FB 78 */	mr r3, r31
/* 8135B398 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 8135B39C | 7F A4 EB 78 */	mr r4, r29
/* 8135B3A0 | 4B FE 4E E5 */	bl backupToSD__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8135B3A4 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 8135B3A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B3AC | 90 1C 00 04 */	stw r0, 0x4(r28)
/* 8135B3B0 | 41 82 00 30 */	beq .L_8135B3E0
/* 8135B3B4 | 7F E3 FB 78 */	mr r3, r31
/* 8135B3B8 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135B3BC | 4B FE 4F 9D */	bl getFreeSize__Q33ipl3cdb7ManagerFv
/* 8135B3C0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8135B3C4 | 7F E3 FB 78 */	mr r3, r31
/* 8135B3C8 | 90 1C 00 0C */	stw r0, 0xc(r28)
/* 8135B3CC | 4B FE 46 C1 */	bl isUnderFlow__Q33ipl3cdb7ManagerCFv
/* 8135B3D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 8135B3D4 | 41 82 00 10 */	beq .L_8135B3E4
/* 8135B3D8 | 3B C0 00 00 */	li r30, 0x0
/* 8135B3DC | 48 00 00 08 */	b .L_8135B3E4
.L_8135B3E0:
/* 8135B3E0 | 3B C0 00 00 */	li r30, 0x0
.L_8135B3E4:
/* 8135B3E4 | 7F E3 FB 78 */	mr r3, r31
/* 8135B3E8 | 7F A4 EB 78 */	mr r4, r29
/* 8135B3EC | 4B FE 4D 39 */	bl close__Q33ipl3cdb7ManagerFP10_CDBRecord
/* 8135B3F0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 8135B3F4 | 7F C3 F3 78 */	mr r3, r30
/* 8135B3F8 | 48 29 E1 19 */	bl _restgpr_28
/* 8135B3FC | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135B400 | 7C 08 03 A6 */	mtlr r0
/* 8135B404 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135B408 | 4E 80 00 20 */	blr
.endfn iplCdbBack_8135B350

# .text:0xE7C | 0x8135B40C | size: 0x114
.fn iplCdbBack_8135B40C, local
/* 8135B40C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8135B410 | 7C 08 02 A6 */	mflr r0
/* 8135B414 | 38 80 00 00 */	li r4, 0x0
/* 8135B418 | 38 A0 00 01 */	li r5, 0x1
/* 8135B41C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 8135B420 | 38 C0 00 00 */	li r6, 0x0
/* 8135B424 | 38 E0 00 00 */	li r7, 0x0
/* 8135B428 | 39 00 00 00 */	li r8, 0x0
/* 8135B42C | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8135B430 | 7C 7F 1B 78 */	mr r31, r3
/* 8135B434 | 38 60 07 D0 */	li r3, 0x7d0
/* 8135B438 | 48 12 AE B1 */	bl fn_814862E8
/* 8135B43C | 90 61 00 10 */	stw r3, 0x10(r1)
/* 8135B440 | 38 60 07 F3 */	li r3, 0x7f3
/* 8135B444 | 38 80 00 0C */	li r4, 0xc
/* 8135B448 | 38 A0 00 1F */	li r5, 0x1f
/* 8135B44C | 38 C0 00 17 */	li r6, 0x17
/* 8135B450 | 38 E0 00 3B */	li r7, 0x3b
/* 8135B454 | 39 00 00 3B */	li r8, 0x3b
/* 8135B458 | 48 12 AE 91 */	bl fn_814862E8
/* 8135B45C | 3C 80 81 09 */	lis r4, smArg__Q23ipl6System@ha
/* 8135B460 | 90 61 00 0C */	stw r3, 0xc(r1)
/* 8135B464 | 38 84 90 08 */	addi r4, r4, smArg__Q23ipl6System@l
/* 8135B468 | 88 04 02 BC */	lbz r0, 0x2bc(r4)
/* 8135B46C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B470 | 41 82 00 0C */	beq .L_8135B47C
/* 8135B474 | 38 60 00 00 */	li r3, 0x0
/* 8135B478 | 48 00 00 08 */	b .L_8135B480
.L_8135B47C:
/* 8135B47C | 80 64 00 7C */	lwz r3, 0x7c(r4)
.L_8135B480:
/* 8135B480 | 38 81 00 08 */	addi r4, r1, 0x8
/* 8135B484 | 4B FE 4E D5 */	bl getFreeSize__Q33ipl3cdb7ManagerFv
/* 8135B488 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8135B48C | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B490 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B494 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 8135B498 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 8135B49C | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 8135B4A0 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135B4A4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B4A8 | 41 82 00 0C */	beq .L_8135B4B4
/* 8135B4AC | 38 60 00 00 */	li r3, 0x0
/* 8135B4B0 | 48 00 00 08 */	b .L_8135B4B8
.L_8135B4B4:
/* 8135B4B4 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135B4B8:
/* 8135B4B8 | 3D 20 81 36 */	lis r9, iplCdbBack_8135B350@ha
/* 8135B4BC | 7F EA FB 78 */	mr r10, r31
/* 8135B4C0 | 38 81 00 10 */	addi r4, r1, 0x10
/* 8135B4C4 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 8135B4C8 | 39 29 B3 50 */	addi r9, r9, iplCdbBack_8135B350@l
/* 8135B4CC | 38 C0 00 01 */	li r6, 0x1
/* 8135B4D0 | 38 E0 00 01 */	li r7, 0x1
/* 8135B4D4 | 39 00 00 01 */	li r8, 0x1
/* 8135B4D8 | 4B FE 48 89 */	bl search__Q33ipl3cdb7ManagerFRCUlRCUl18CDBSearchDirection17CDBRecordLocationiPFPvP10_CDBRecord_iPv
/* 8135B4DC | 3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 8135B4E0 | 38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 8135B4E4 | 88 03 02 BC */	lbz r0, 0x2bc(r3)
/* 8135B4E8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 8135B4EC | 41 82 00 0C */	beq .L_8135B4F8
/* 8135B4F0 | 38 60 00 00 */	li r3, 0x0
/* 8135B4F4 | 48 00 00 08 */	b .L_8135B4FC
.L_8135B4F8:
/* 8135B4F8 | 80 63 00 7C */	lwz r3, 0x7c(r3)
.L_8135B4FC:
/* 8135B4FC | 38 80 00 01 */	li r4, 0x1
/* 8135B500 | 4B FE 4D ED */	bl cleanUpEmptyDirectories__Q33ipl3cdb7ManagerF17CDBRecordLocation
/* 8135B504 | 38 00 00 01 */	li r0, 0x1
/* 8135B508 | 98 1F 00 00 */	stb r0, 0x0(r31)
/* 8135B50C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 8135B510 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8135B514 | 7C 08 03 A6 */	mtlr r0
/* 8135B518 | 38 21 00 20 */	addi r1, r1, 0x20
/* 8135B51C | 4E 80 00 20 */	blr
.endfn iplCdbBack_8135B40C

# .text:0xF90 | 0x8135B520 | size: 0x1C
.fn "__sinit_\\iplCdbBackup_cpp", local
/* 8135B520 | 80 82 80 98 */	lwz r4, lbl_81694498@sda21(r0)
/* 8135B524 | 3C 60 01 40 */	lis r3, 0x140
/* 8135B528 | 38 00 00 64 */	li r0, 0x64
/* 8135B52C | 7C 64 19 D6 */	mullw r3, r4, r3
/* 8135B530 | 7C 03 03 D6 */	divw r0, r3, r0
/* 8135B534 | 90 0D A6 B0 */	stw r0, lbl_816986F0@sda21(r0)
/* 8135B538 | 4E 80 00 20 */	blr
.endfn "__sinit_\\iplCdbBackup_cpp"

# 0x8160D1D0..0x8160D1D4 | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\iplCdbBackup_cpp"

# 0x81639278..0x816392D8 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x81639278 | size: 0x44
.obj jumptable_81639278, local
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6B8
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6BC
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6C0
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6C4
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6C8
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6CC
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6D0
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6D4
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6D8
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6DC
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6E0
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6E4
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6E8
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6F4
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6F8
	.rel update__Q23ipl9CdbBackupFv, .L_8135A6FC
	.rel update__Q23ipl9CdbBackupFv, .L_8135A700
.endobj jumptable_81639278

# .data:0x44 | 0x816392BC | size: 0xB
.obj lbl_816392BC, global
	.string "SDVFWorker"
.endobj lbl_816392BC

# .data:0x4F | 0x816392C7 | size: 0x11
.obj lbl_816392C7, global
	.string "iplCdbBackup.cpp"
.endobj lbl_816392C7

# 0x816986F0..0x816986F8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x816986F0 | size: 0x8
.obj lbl_816986F0, global
	.skip 0x8
.endobj lbl_816986F0
