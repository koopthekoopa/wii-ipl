.include "macros.inc"
.file "d_vf_sys.c"

# 0x810F5558..0x810F5690 | size: 0x138
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x810F5558 | size: 0x68
.obj l_vfsys_dev_table, local
	.skip 0x68
.endobj l_vfsys_dev_table

# .bss:0x68 | 0x810F55C0 | size: 0xD0
.obj l_dev_init_info_table, local
	.skip 0xD0
.endobj l_dev_init_info_table

# 0x814D15C0..0x814D46D8 | size: 0x3118
.text
.balign 4

# .text:0x0 | 0x814D15C0 | size: 0x184
.fn VFSysInit, global
/* 814D15C0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D15C4 | 7C 08 02 A6 */	mflr r0
/* 814D15C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D15CC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D15D0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D15D4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D15D8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D15DC | 54 9D 93 BE */	srwi r29, r4, 14
/* 814D15E0 | 41 82 00 24 */	beq .L_814D1604
/* 814D15E4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D15E8 | 41 82 00 1C */	beq .L_814D1604
/* 814D15EC | 80 0D AE 48 */	lwz r0, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D15F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D15F4 | 40 82 00 10 */	bne .L_814D1604
/* 814D15F8 | 38 A0 00 00 */	li r5, 0x0
/* 814D15FC | 48 08 90 79 */	bl fn_8155A674
/* 814D1600 | 90 6D AE 48 */	stw r3, l_vfsys_exp_heap_handle@sda21(r0)
.L_814D1604:
/* 814D1604 | 28 1D 00 1A */	cmplwi r29, 0x1a
/* 814D1608 | 38 80 00 1A */	li r4, 0x1a
/* 814D160C | 41 81 00 08 */	bgt .L_814D1614
/* 814D1610 | 7F A4 EB 78 */	mr r4, r29
.L_814D1614:
/* 814D1614 | 80 0D AE 50 */	lwz r0, l_sys_handle_table_p@sda21(r0)
/* 814D1618 | 90 8D AE 40 */	stw r4, l_vfsys_vol_max@sda21(r0)
/* 814D161C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1620 | 40 82 00 28 */	bne .L_814D1648
/* 814D1624 | 80 6D AE 48 */	lwz r3, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D1628 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D162C | 40 82 00 0C */	bne .L_814D1638
/* 814D1630 | 38 60 00 00 */	li r3, 0x0
/* 814D1634 | 48 00 00 10 */	b .L_814D1644
.L_814D1638:
/* 814D1638 | 1C 84 01 40 */	mulli r4, r4, 0x140
/* 814D163C | 38 A0 00 20 */	li r5, 0x20
/* 814D1640 | 48 08 91 15 */	bl fn_8155A754
.L_814D1644:
/* 814D1644 | 90 6D AE 50 */	stw r3, l_sys_handle_table_p@sda21(r0)
.L_814D1648:
/* 814D1648 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D164C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1650 | 41 82 00 14 */	beq .L_814D1664
/* 814D1654 | 83 AD AE 50 */	lwz r29, l_sys_handle_table_p@sda21(r0)
/* 814D1658 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D165C | 41 82 00 08 */	beq .L_814D1664
/* 814D1660 | 48 00 00 08 */	b .L_814D1668
.L_814D1664:
/* 814D1664 | 3B A0 00 00 */	li r29, 0x0
.L_814D1668:
/* 814D1668 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D166C | 3B E0 00 00 */	li r31, 0x0
/* 814D1670 | 7F DD 02 14 */	add r30, r29, r0
/* 814D1674 | 48 00 00 30 */	b .L_814D16A4
.L_814D1678:
/* 814D1678 | 7F A3 EB 78 */	mr r3, r29
/* 814D167C | 38 80 00 00 */	li r4, 0x0
/* 814D1680 | 38 A0 01 40 */	li r5, 0x140
/* 814D1684 | 4B FE 42 85 */	bl VFipf_memset
/* 814D1688 | 34 1D 00 1C */	addic. r0, r29, 0x1c
/* 814D168C | 41 82 00 14 */	beq .L_814D16A0
/* 814D1690 | 93 FD 00 1C */	stw r31, 0x1c(r29)
/* 814D1694 | 93 FD 00 20 */	stw r31, 0x20(r29)
/* 814D1698 | 93 FD 00 24 */	stw r31, 0x24(r29)
/* 814D169C | 93 FD 00 28 */	stw r31, 0x28(r29)
.L_814D16A0:
/* 814D16A0 | 3B BD 01 40 */	addi r29, r29, 0x140
.L_814D16A4:
/* 814D16A4 | 7C 1D F0 40 */	cmplw r29, r30
/* 814D16A8 | 40 82 FF D0 */	bne .L_814D1678
/* 814D16AC | 80 0D AE 4C */	lwz r0, l_vfsys_dev_table_init@sda21(r0)
/* 814D16B0 | 83 CD AE 40 */	lwz r30, l_vfsys_vol_max@sda21(r0)
/* 814D16B4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D16B8 | 40 82 00 50 */	bne .L_814D1708
/* 814D16BC | 3F A0 81 0F */	lis r29, l_vfsys_dev_table@ha
/* 814D16C0 | 3B E0 00 00 */	li r31, 0x0
/* 814D16C4 | 3B BD 55 58 */	addi r29, r29, l_vfsys_dev_table@l
/* 814D16C8 | 48 00 00 30 */	b .L_814D16F8
.L_814D16CC:
/* 814D16CC | 80 6D AE 48 */	lwz r3, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D16D0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D16D4 | 40 82 00 0C */	bne .L_814D16E0
/* 814D16D8 | 38 60 00 00 */	li r3, 0x0
/* 814D16DC | 48 00 00 10 */	b .L_814D16EC
.L_814D16E0:
/* 814D16E0 | 38 80 00 A0 */	li r4, 0xa0
/* 814D16E4 | 38 A0 00 20 */	li r5, 0x20
/* 814D16E8 | 48 08 90 6D */	bl fn_8155A754
.L_814D16EC:
/* 814D16EC | 90 7D 00 00 */	stw r3, 0x0(r29)
/* 814D16F0 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814D16F4 | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814D16F8:
/* 814D16F8 | 7C 1F F0 40 */	cmplw r31, r30
/* 814D16FC | 41 80 FF D0 */	blt .L_814D16CC
/* 814D1700 | 38 00 00 01 */	li r0, 0x1
/* 814D1704 | 90 0D AE 4C */	stw r0, l_vfsys_dev_table_init@sda21(r0)
.L_814D1708:
/* 814D1708 | 48 00 3E B1 */	bl dCommon_initDriveInfo
/* 814D170C | 38 80 00 00 */	li r4, 0x0
/* 814D1710 | 38 60 00 02 */	li r3, 0x2
/* 814D1714 | 38 00 00 08 */	li r0, 0x8
/* 814D1718 | 90 8D AE 44 */	stw r4, l_vfsys_last_err@sda21(r0)
/* 814D171C | 90 6D AE 64 */	stw r3, VF_nand_sleep_msec_81698EA4@sda21(r0)
/* 814D1720 | 90 0D AE 60 */	stw r0, VF_nand_retry_max_81698EA0@sda21(r0)
/* 814D1724 | 48 00 72 A1 */	bl VFi_InitSDWrok
/* 814D1728 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D172C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D1730 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D1734 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D1738 | 7C 08 03 A6 */	mtlr r0
/* 814D173C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D1740 | 4E 80 00 20 */	blr
.endfn VFSysInit

# .text:0x184 | 0x814D1744 | size: 0x4
.fn VFSysSetNandFuncNormal, global
/* 814D1744 | 48 00 4D 30 */	b VFi_NandSetNANDFuncNormal
.endfn VFSysSetNandFuncNormal

# .text:0x188 | 0x814D1748 | size: 0x4
.fn VFSysSetNandFuncEx, global
/* 814D1748 | 48 00 4D 78 */	b VFi_NandSetNANDFuncEx
.endfn VFSysSetNandFuncEx

# .text:0x18C | 0x814D174C | size: 0xC4
.fn VFSysCreatePrfFileNANDFlashEx, global
/* 814D174C | 94 21 FE E0 */	stwu r1, -0x120(r1)
/* 814D1750 | 7C 08 02 A6 */	mflr r0
/* 814D1754 | 38 A0 00 FF */	li r5, 0xff
/* 814D1758 | 90 01 01 24 */	stw r0, 0x124(r1)
/* 814D175C | 93 E1 01 1C */	stw r31, 0x11c(r1)
/* 814D1760 | 3B E1 00 08 */	addi r31, r1, 0x8
/* 814D1764 | 93 C1 01 18 */	stw r30, 0x118(r1)
/* 814D1768 | 7C 7E 1B 78 */	mr r30, r3
/* 814D176C | 7F E3 FB 78 */	mr r3, r31
/* 814D1770 | 93 A1 01 14 */	stw r29, 0x114(r1)
/* 814D1774 | 7C 9D 23 78 */	mr r29, r4
/* 814D1778 | 38 80 00 00 */	li r4, 0x0
/* 814D177C | 4B FE 41 8D */	bl VFipf_memset
/* 814D1780 | 38 80 00 00 */	li r4, 0x0
/* 814D1784 | 38 60 00 2F */	li r3, 0x2f
/* 814D1788 | 48 00 00 28 */	b .L_814D17B0
.L_814D178C:
/* 814D178C | 7C A0 07 74 */	extsb r0, r5
/* 814D1790 | 2C 00 00 5C */	cmpwi r0, 0x5c
/* 814D1794 | 40 82 00 0C */	bne .L_814D17A0
/* 814D1798 | 98 7F 00 00 */	stb r3, 0x0(r31)
/* 814D179C | 48 00 00 08 */	b .L_814D17A4
.L_814D17A0:
/* 814D17A0 | 98 BF 00 00 */	stb r5, 0x0(r31)
.L_814D17A4:
/* 814D17A4 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814D17A8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814D17AC | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D17B0:
/* 814D17B0 | 2C 04 00 FF */	cmpwi r4, 0xff
/* 814D17B4 | 40 80 00 10 */	bge .L_814D17C4
/* 814D17B8 | 88 BE 00 00 */	lbz r5, 0x0(r30)
/* 814D17BC | 7C A0 07 75 */	extsb. r0, r5
/* 814D17C0 | 40 82 FF CC */	bne .L_814D178C
.L_814D17C4:
/* 814D17C4 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814D17C8 | 38 80 FF F5 */	li r4, -0xb
/* 814D17CC | 48 00 00 D9 */	bl VFiSysCheckExistPrfFileNANDFlashCommon
/* 814D17D0 | 3C 03 00 00 */	addis r0, r3, 0x0
/* 814D17D4 | 28 00 B0 01 */	cmplwi r0, 0xb001
/* 814D17D8 | 40 82 00 18 */	bne .L_814D17F0
/* 814D17DC | 7F A3 EB 78 */	mr r3, r29
/* 814D17E0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D17E4 | 38 A0 01 00 */	li r5, 0x100
/* 814D17E8 | 48 00 60 A9 */	bl NAND_CreatePrfFileEx
/* 814D17EC | 48 00 00 08 */	b .L_814D17F4
.L_814D17F0:
/* 814D17F0 | 38 60 00 00 */	li r3, 0x0
.L_814D17F4:
/* 814D17F4 | 80 01 01 24 */	lwz r0, 0x124(r1)
/* 814D17F8 | 83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 814D17FC | 83 C1 01 18 */	lwz r30, 0x118(r1)
/* 814D1800 | 83 A1 01 14 */	lwz r29, 0x114(r1)
/* 814D1804 | 7C 08 03 A6 */	mtlr r0
/* 814D1808 | 38 21 01 20 */	addi r1, r1, 0x120
/* 814D180C | 4E 80 00 20 */	blr
.endfn VFSysCreatePrfFileNANDFlashEx

# .text:0x250 | 0x814D1810 | size: 0x88
.fn VFSysCheckExistPrfFile, global
/* 814D1810 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1814 | 7C 66 1B 78 */	mr r6, r3
/* 814D1818 | 7C 03 00 40 */	cmplw r3, r0
/* 814D181C | 40 80 00 1C */	bge .L_814D1838
/* 814D1820 | 80 ED AE 50 */	lwz r7, l_sys_handle_table_p@sda21(r0)
/* 814D1824 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814D1828 | 41 82 00 10 */	beq .L_814D1838
/* 814D182C | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D1830 | 7C 67 02 14 */	add r3, r7, r0
/* 814D1834 | 48 00 00 08 */	b .L_814D183C
.L_814D1838:
/* 814D1838 | 38 60 00 00 */	li r3, 0x0
.L_814D183C:
/* 814D183C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1840 | 41 82 00 10 */	beq .L_814D1850
/* 814D1844 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1848 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D184C | 40 82 00 10 */	bne .L_814D185C
.L_814D1850:
/* 814D1850 | 3C 60 00 01 */	lis r3, 0x1
/* 814D1854 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D1858 | 4E 80 00 20 */	blr
.L_814D185C:
/* 814D185C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1860 | 28 00 00 04 */	cmplwi r0, 0x4
/* 814D1864 | 40 80 00 2C */	bge .L_814D1890
/* 814D1868 | 3C E0 81 67 */	lis r7, l_check_exist_file@ha
/* 814D186C | 54 00 10 3A */	slwi r0, r0, 2
/* 814D1870 | 38 E7 E9 70 */	addi r7, r7, l_check_exist_file@l
/* 814D1874 | 7D 87 00 2E */	lwzx r12, r7, r0
/* 814D1878 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814D187C | 41 82 00 0C */	beq .L_814D1888
/* 814D1880 | 7D 89 03 A6 */	mtctr r12
/* 814D1884 | 4E 80 04 20 */	bctr
.L_814D1888:
/* 814D1888 | 38 60 00 00 */	li r3, 0x0
/* 814D188C | 4E 80 00 20 */	blr
.L_814D1890:
/* 814D1890 | 38 60 FF FF */	li r3, -0x1
/* 814D1894 | 4E 80 00 20 */	blr
.endfn VFSysCheckExistPrfFile

# .text:0x2D8 | 0x814D1898 | size: 0xC
.fn VFiSysCheckExistPrfFileNandFlash, global
/* 814D1898 | 7C 83 23 78 */	mr r3, r4
/* 814D189C | 7C C4 33 78 */	mr r4, r6
/* 814D18A0 | 48 00 00 04 */	b VFiSysCheckExistPrfFileNANDFlashCommon
.endfn VFiSysCheckExistPrfFileNandFlash

# .text:0x2E4 | 0x814D18A4 | size: 0x160
.fn VFiSysCheckExistPrfFileNANDFlashCommon, global
/* 814D18A4 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814D18A8 | 7C 2C 0B 78 */	mr r12, r1
/* 814D18AC | 21 6B FD E0 */	subfic r11, r11, -0x220
/* 814D18B0 | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D18B4 | 7C 08 02 A6 */	mflr r0
/* 814D18B8 | 3C A0 00 01 */	lis r5, 0x1
/* 814D18BC | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D18C0 | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814D18C4 | 3B E1 00 60 */	addi r31, r1, 0x60
/* 814D18C8 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814D18CC | 7C 7E 1B 78 */	mr r30, r3
/* 814D18D0 | 7F E3 FB 78 */	mr r3, r31
/* 814D18D4 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814D18D8 | 3B A5 B0 01 */	subi r29, r5, 0x4fff
/* 814D18DC | 38 A0 00 FF */	li r5, 0xff
/* 814D18E0 | 93 8C FF F0 */	stw r28, -0x10(r12)
/* 814D18E4 | 7C 9C 23 78 */	mr r28, r4
/* 814D18E8 | 38 80 00 00 */	li r4, 0x0
/* 814D18EC | 4B FE 40 1D */	bl VFipf_memset
/* 814D18F0 | 38 A0 00 00 */	li r5, 0x0
/* 814D18F4 | 38 60 00 2F */	li r3, 0x2f
/* 814D18F8 | 48 00 00 28 */	b .L_814D1920
.L_814D18FC:
/* 814D18FC | 88 9E 00 00 */	lbz r4, 0x0(r30)
/* 814D1900 | 2C 04 00 5C */	cmpwi r4, 0x5c
/* 814D1904 | 40 82 00 0C */	bne .L_814D1910
/* 814D1908 | 98 7F 00 00 */	stb r3, 0x0(r31)
/* 814D190C | 48 00 00 08 */	b .L_814D1914
.L_814D1910:
/* 814D1910 | 98 9F 00 00 */	stb r4, 0x0(r31)
.L_814D1914:
/* 814D1914 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814D1918 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814D191C | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814D1920:
/* 814D1920 | 2C 05 00 FF */	cmpwi r5, 0xff
/* 814D1924 | 40 80 00 10 */	bge .L_814D1934
/* 814D1928 | 88 1E 00 00 */	lbz r0, 0x0(r30)
/* 814D192C | 7C 00 07 75 */	extsb. r0, r0
/* 814D1930 | 40 82 FF CC */	bne .L_814D18FC
.L_814D1934:
/* 814D1934 | 7F 86 E3 78 */	mr r6, r28
/* 814D1938 | 38 61 00 60 */	addi r3, r1, 0x60
/* 814D193C | 38 81 01 60 */	addi r4, r1, 0x160
/* 814D1940 | 38 A0 00 01 */	li r5, 0x1
/* 814D1944 | 48 00 49 19 */	bl VFi_NandOpenSp
/* 814D1948 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D194C | 40 82 00 90 */	bne .L_814D19DC
/* 814D1950 | 38 00 00 00 */	li r0, 0x0
/* 814D1954 | 38 61 01 60 */	addi r3, r1, 0x160
/* 814D1958 | 90 01 00 20 */	stw r0, 0x20(r1)
/* 814D195C | 38 81 00 20 */	addi r4, r1, 0x20
/* 814D1960 | 48 00 48 45 */	bl VFi_NandGetLength
/* 814D1964 | 7C 7F 1B 78 */	mr r31, r3
/* 814D1968 | 38 61 01 60 */	addi r3, r1, 0x160
/* 814D196C | 38 81 00 40 */	addi r4, r1, 0x40
/* 814D1970 | 38 A0 00 20 */	li r5, 0x20
/* 814D1974 | 48 00 45 F1 */	bl VFi_NandRead
/* 814D1978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D197C | 41 80 00 50 */	blt .L_814D19CC
/* 814D1980 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D1984 | 41 80 00 48 */	blt .L_814D19CC
/* 814D1988 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D198C | 48 00 35 15 */	bl dCommon_IsPrfFile
/* 814D1990 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1994 | 41 82 00 38 */	beq .L_814D19CC
/* 814D1998 | 88 01 00 49 */	lbz r0, 0x49(r1)
/* 814D199C | 88 A1 00 4A */	lbz r5, 0x4a(r1)
/* 814D19A0 | 88 81 00 4B */	lbz r4, 0x4b(r1)
/* 814D19A4 | 54 00 80 1E */	slwi r0, r0, 16
/* 814D19A8 | 88 61 00 48 */	lbz r3, 0x48(r1)
/* 814D19AC | 50 A4 44 2E */	rlwimi r4, r5, 8, 16, 23
/* 814D19B0 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 814D19B4 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814D19B8 | 7C 80 03 78 */	or r0, r4, r0
/* 814D19BC | 7C 05 00 40 */	cmplw r5, r0
/* 814D19C0 | 40 82 00 0C */	bne .L_814D19CC
/* 814D19C4 | 3B A0 00 00 */	li r29, 0x0
/* 814D19C8 | 48 00 00 0C */	b .L_814D19D4
.L_814D19CC:
/* 814D19CC | 3C 60 00 01 */	lis r3, 0x1
/* 814D19D0 | 3B A3 B0 06 */	subi r29, r3, 0x4ffa
.L_814D19D4:
/* 814D19D4 | 38 61 01 60 */	addi r3, r1, 0x160
/* 814D19D8 | 48 00 43 5D */	bl VFi_NandClose
.L_814D19DC:
/* 814D19DC | 7F A3 EB 78 */	mr r3, r29
/* 814D19E0 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D19E4 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814D19E8 | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814D19EC | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814D19F0 | 83 8A FF F0 */	lwz r28, -0x10(r10)
/* 814D19F4 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D19F8 | 7C 08 03 A6 */	mtlr r0
/* 814D19FC | 7D 41 53 78 */	mr r1, r10
/* 814D1A00 | 4E 80 00 20 */	blr
.endfn VFiSysCheckExistPrfFileNANDFlashCommon

# .text:0x444 | 0x814D1A04 | size: 0x3C
.fn VFiSysCheckExistPrfFileRam, global
/* 814D1A04 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D1A08 | 7C 08 02 A6 */	mflr r0
/* 814D1A0C | 7C A3 2B 78 */	mr r3, r5
/* 814D1A10 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D1A14 | 48 00 34 8D */	bl dCommon_IsPrfFile
/* 814D1A18 | 7C 03 00 D0 */	neg r0, r3
/* 814D1A1C | 3C 80 00 01 */	lis r4, 0x1
/* 814D1A20 | 7C 00 1B 78 */	or r0, r0, r3
/* 814D1A24 | 7C 03 FE 70 */	srawi r3, r0, 31
/* 814D1A28 | 38 04 B0 06 */	subi r0, r4, 0x4ffa
/* 814D1A2C | 7C 03 18 78 */	andc r3, r0, r3
/* 814D1A30 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D1A34 | 7C 08 03 A6 */	mtlr r0
/* 814D1A38 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D1A3C | 4E 80 00 20 */	blr
.endfn VFiSysCheckExistPrfFileRam

# .text:0x480 | 0x814D1A40 | size: 0x134
.fn VFiSysCheckExistPrfFileDVD, global
/* 814D1A40 | 54 2B 06 FE */	clrlwi r11, r1, 27
/* 814D1A44 | 7C 2C 0B 78 */	mr r12, r1
/* 814D1A48 | 21 6B FE 60 */	subfic r11, r11, -0x1a0
/* 814D1A4C | 7C 21 59 6E */	stwux r1, r1, r11
/* 814D1A50 | 7C 08 02 A6 */	mflr r0
/* 814D1A54 | 3C A0 00 01 */	lis r5, 0x1
/* 814D1A58 | 90 0C 00 04 */	stw r0, 0x4(r12)
/* 814D1A5C | 93 EC FF FC */	stw r31, -0x4(r12)
/* 814D1A60 | 7C 9F 23 78 */	mr r31, r4
/* 814D1A64 | 38 80 00 00 */	li r4, 0x0
/* 814D1A68 | 93 CC FF F8 */	stw r30, -0x8(r12)
/* 814D1A6C | 3B C1 00 7C */	addi r30, r1, 0x7c
/* 814D1A70 | 7F C3 F3 78 */	mr r3, r30
/* 814D1A74 | 93 AC FF F4 */	stw r29, -0xc(r12)
/* 814D1A78 | 3B A5 B0 01 */	subi r29, r5, 0x4fff
/* 814D1A7C | 38 A0 00 FF */	li r5, 0xff
/* 814D1A80 | 4B FE 3E 89 */	bl VFipf_memset
/* 814D1A84 | 38 A0 00 00 */	li r5, 0x0
/* 814D1A88 | 38 60 00 5C */	li r3, 0x5c
/* 814D1A8C | 48 00 00 28 */	b .L_814D1AB4
.L_814D1A90:
/* 814D1A90 | 88 9F 00 00 */	lbz r4, 0x0(r31)
/* 814D1A94 | 2C 04 00 2F */	cmpwi r4, 0x2f
/* 814D1A98 | 40 82 00 0C */	bne .L_814D1AA4
/* 814D1A9C | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 814D1AA0 | 48 00 00 08 */	b .L_814D1AA8
.L_814D1AA4:
/* 814D1AA4 | 98 9E 00 00 */	stb r4, 0x0(r30)
.L_814D1AA8:
/* 814D1AA8 | 3B FF 00 01 */	addi r31, r31, 0x1
/* 814D1AAC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814D1AB0 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814D1AB4:
/* 814D1AB4 | 2C 05 00 FF */	cmpwi r5, 0xff
/* 814D1AB8 | 40 80 00 10 */	bge .L_814D1AC8
/* 814D1ABC | 88 1F 00 00 */	lbz r0, 0x0(r31)
/* 814D1AC0 | 7C 00 07 75 */	extsb. r0, r0
/* 814D1AC4 | 40 82 FF CC */	bne .L_814D1A90
.L_814D1AC8:
/* 814D1AC8 | 38 61 00 7C */	addi r3, r1, 0x7c
/* 814D1ACC | 38 81 00 40 */	addi r4, r1, 0x40
/* 814D1AD0 | 48 07 72 71 */	bl fn_81548D40
/* 814D1AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1AD8 | 41 82 00 78 */	beq .L_814D1B50
/* 814D1ADC | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D1AE0 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814D1AE4 | 38 A0 00 20 */	li r5, 0x20
/* 814D1AE8 | 38 C0 00 00 */	li r6, 0x0
/* 814D1AEC | 38 E0 00 02 */	li r7, 0x2
/* 814D1AF0 | 48 07 77 C9 */	bl DVDReadPrio
/* 814D1AF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1AF8 | 83 C1 00 74 */	lwz r30, 0x74(r1)
/* 814D1AFC | 41 82 00 44 */	beq .L_814D1B40
/* 814D1B00 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814D1B04 | 48 00 33 9D */	bl dCommon_IsPrfFile
/* 814D1B08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1B0C | 41 82 00 34 */	beq .L_814D1B40
/* 814D1B10 | 88 01 00 29 */	lbz r0, 0x29(r1)
/* 814D1B14 | 88 A1 00 2A */	lbz r5, 0x2a(r1)
/* 814D1B18 | 88 81 00 2B */	lbz r4, 0x2b(r1)
/* 814D1B1C | 54 00 80 1E */	slwi r0, r0, 16
/* 814D1B20 | 88 61 00 28 */	lbz r3, 0x28(r1)
/* 814D1B24 | 50 A4 44 2E */	rlwimi r4, r5, 8, 16, 23
/* 814D1B28 | 50 60 C0 0E */	rlwimi r0, r3, 24, 0, 7
/* 814D1B2C | 7C 80 03 78 */	or r0, r4, r0
/* 814D1B30 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D1B34 | 40 82 00 0C */	bne .L_814D1B40
/* 814D1B38 | 3B A0 00 00 */	li r29, 0x0
/* 814D1B3C | 48 00 00 0C */	b .L_814D1B48
.L_814D1B40:
/* 814D1B40 | 3C 60 00 01 */	lis r3, 0x1
/* 814D1B44 | 3B A3 B0 06 */	subi r29, r3, 0x4ffa
.L_814D1B48:
/* 814D1B48 | 38 61 00 40 */	addi r3, r1, 0x40
/* 814D1B4C | 48 07 74 A1 */	bl DVDClose
.L_814D1B50:
/* 814D1B50 | 7F A3 EB 78 */	mr r3, r29
/* 814D1B54 | 81 41 00 00 */	lwz r10, 0x0(r1)
/* 814D1B58 | 83 EA FF FC */	lwz r31, -0x4(r10)
/* 814D1B5C | 83 CA FF F8 */	lwz r30, -0x8(r10)
/* 814D1B60 | 83 AA FF F4 */	lwz r29, -0xc(r10)
/* 814D1B64 | 80 0A 00 04 */	lwz r0, 0x4(r10)
/* 814D1B68 | 7C 08 03 A6 */	mtlr r0
/* 814D1B6C | 7D 41 53 78 */	mr r1, r10
/* 814D1B70 | 4E 80 00 20 */	blr
.endfn VFiSysCheckExistPrfFileDVD

# .text:0x5B4 | 0x814D1B74 | size: 0x144
.fn VFiSysCreateCache, global
/* 814D1B74 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D1B78 | 7C 08 02 A6 */	mflr r0
/* 814D1B7C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D1B80 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D1B84 | 48 12 79 3D */	bl _savegpr_27
/* 814D1B88 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1B8C | 7C 9B 23 78 */	mr r27, r4
/* 814D1B90 | 7C BC 2B 78 */	mr r28, r5
/* 814D1B94 | 41 82 01 0C */	beq .L_814D1CA0
/* 814D1B98 | 3B E3 00 1C */	addi r31, r3, 0x1c
/* 814D1B9C | 54 83 08 3C */	slwi r3, r4, 1
/* 814D1BA0 | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814D1BA4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1BA8 | 40 82 00 F8 */	bne .L_814D1CA0
/* 814D1BAC | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814D1BB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1BB4 | 40 82 00 EC */	bne .L_814D1CA0
/* 814D1BB8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D1BBC | 54 7D 48 2C */	slwi r29, r3, 9
/* 814D1BC0 | 1F C3 00 28 */	mulli r30, r3, 0x28
/* 814D1BC4 | 40 82 00 0C */	bne .L_814D1BD0
/* 814D1BC8 | 38 60 00 00 */	li r3, 0x0
/* 814D1BCC | 48 00 00 14 */	b .L_814D1BE0
.L_814D1BD0:
/* 814D1BD0 | 7F 83 E3 78 */	mr r3, r28
/* 814D1BD4 | 7F C4 F3 78 */	mr r4, r30
/* 814D1BD8 | 38 A0 00 04 */	li r5, 0x4
/* 814D1BDC | 48 08 8B 79 */	bl fn_8155A754
.L_814D1BE0:
/* 814D1BE0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D1BE4 | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 814D1BE8 | 40 82 00 0C */	bne .L_814D1BF4
/* 814D1BEC | 38 60 00 00 */	li r3, 0x0
/* 814D1BF0 | 48 00 00 14 */	b .L_814D1C04
.L_814D1BF4:
/* 814D1BF4 | 7F 83 E3 78 */	mr r3, r28
/* 814D1BF8 | 7F A4 EB 78 */	mr r4, r29
/* 814D1BFC | 38 A0 00 04 */	li r5, 0x4
/* 814D1C00 | 48 08 8B 55 */	bl fn_8155A754
.L_814D1C04:
/* 814D1C04 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814D1C08 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814D1C0C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D1C10 | 41 82 00 38 */	beq .L_814D1C48
/* 814D1C14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1C18 | 41 82 00 30 */	beq .L_814D1C48
/* 814D1C1C | 7C 83 23 78 */	mr r3, r4
/* 814D1C20 | 7F C5 F3 78 */	mr r5, r30
/* 814D1C24 | 38 80 00 00 */	li r4, 0x0
/* 814D1C28 | 4B FE 3C E1 */	bl VFipf_memset
/* 814D1C2C | 80 7F 00 0C */	lwz r3, 0xc(r31)
/* 814D1C30 | 7F A5 EB 78 */	mr r5, r29
/* 814D1C34 | 38 80 00 00 */	li r4, 0x0
/* 814D1C38 | 4B FE 3C D1 */	bl VFipf_memset
/* 814D1C3C | 93 9F 00 00 */	stw r28, 0x0(r31)
/* 814D1C40 | 93 7F 00 04 */	stw r27, 0x4(r31)
/* 814D1C44 | 48 00 00 5C */	b .L_814D1CA0
.L_814D1C48:
/* 814D1C48 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D1C4C | 41 82 00 54 */	beq .L_814D1CA0
/* 814D1C50 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D1C54 | 41 82 00 14 */	beq .L_814D1C68
/* 814D1C58 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814D1C5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1C60 | 41 82 00 08 */	beq .L_814D1C68
/* 814D1C64 | 48 08 8D A1 */	bl fn_8155AA04
.L_814D1C68:
/* 814D1C68 | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814D1C6C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D1C70 | 41 82 00 14 */	beq .L_814D1C84
/* 814D1C74 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814D1C78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1C7C | 41 82 00 08 */	beq .L_814D1C84
/* 814D1C80 | 48 08 8D 85 */	bl fn_8155AA04
.L_814D1C84:
/* 814D1C84 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D1C88 | 41 82 00 18 */	beq .L_814D1CA0
/* 814D1C8C | 38 00 00 00 */	li r0, 0x0
/* 814D1C90 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D1C94 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814D1C98 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814D1C9C | 90 1F 00 0C */	stw r0, 0xc(r31)
.L_814D1CA0:
/* 814D1CA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D1CA4 | 48 12 78 69 */	bl _restgpr_27
/* 814D1CA8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D1CAC | 7C 08 03 A6 */	mtlr r0
/* 814D1CB0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D1CB4 | 4E 80 00 20 */	blr
.endfn VFiSysCreateCache

# .text:0x6F8 | 0x814D1CB8 | size: 0xA0
.fn VFiSysAllocCache, global
/* 814D1CB8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D1CBC | 7C 08 02 A6 */	mflr r0
/* 814D1CC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1CC4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D1CC8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D1CCC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D1CD0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D1CD4 | 7C BD 2B 78 */	mr r29, r5
/* 814D1CD8 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D1CDC | 7C 7C 1B 78 */	mr r28, r3
/* 814D1CE0 | 41 82 00 58 */	beq .L_814D1D38
/* 814D1CE4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D1CE8 | 83 CD AE 48 */	lwz r30, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D1CEC | 3B E0 00 08 */	li r31, 0x8
/* 814D1CF0 | 41 82 00 38 */	beq .L_814D1D28
/* 814D1CF4 | 28 05 28 00 */	cmplwi r5, 0x2800
/* 814D1CF8 | 40 81 00 30 */	ble .L_814D1D28
/* 814D1CFC | 7C 83 23 78 */	mr r3, r4
/* 814D1D00 | 7F A4 EB 78 */	mr r4, r29
/* 814D1D04 | 38 A0 00 00 */	li r5, 0x0
/* 814D1D08 | 48 08 89 6D */	bl fn_8155A674
/* 814D1D0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1D10 | 41 82 00 18 */	beq .L_814D1D28
/* 814D1D14 | 3C 80 CC CD */	lis r4, 0xcccd
/* 814D1D18 | 7C 7E 1B 78 */	mr r30, r3
/* 814D1D1C | 38 04 CC CD */	subi r0, r4, 0x3333
/* 814D1D20 | 7C 00 E8 16 */	mulhwu r0, r0, r29
/* 814D1D24 | 54 1F B2 BE */	srwi r31, r0, 10
.L_814D1D28:
/* 814D1D28 | 7F 83 E3 78 */	mr r3, r28
/* 814D1D2C | 7F E4 FB 78 */	mr r4, r31
/* 814D1D30 | 7F C5 F3 78 */	mr r5, r30
/* 814D1D34 | 4B FF FE 41 */	bl VFiSysCreateCache
.L_814D1D38:
/* 814D1D38 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D1D3C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D1D40 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D1D44 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D1D48 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D1D4C | 7C 08 03 A6 */	mtlr r0
/* 814D1D50 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D1D54 | 4E 80 00 20 */	blr
.endfn VFiSysAllocCache

# .text:0x798 | 0x814D1D58 | size: 0x33C
.fn VFSysSync, global
/* 814D1D58 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D1D5C | 7C 08 02 A6 */	mflr r0
/* 814D1D60 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D1D64 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D1D68 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D1D6C | 7C 9E 23 78 */	mr r30, r4
/* 814D1D70 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D1D74 | 7C 7D 1B 78 */	mr r29, r3
/* 814D1D78 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D1D7C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1D80 | 7C 03 00 40 */	cmplw r3, r0
/* 814D1D84 | 40 80 00 1C */	bge .L_814D1DA0
/* 814D1D88 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D1D8C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D1D90 | 41 82 00 10 */	beq .L_814D1DA0
/* 814D1D94 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D1D98 | 7F 84 02 14 */	add r28, r4, r0
/* 814D1D9C | 48 00 00 08 */	b .L_814D1DA4
.L_814D1DA0:
/* 814D1DA0 | 3B 80 00 00 */	li r28, 0x0
.L_814D1DA4:
/* 814D1DA4 | 2C 9C 00 00 */	cmpwi cr1, r28, 0x0
/* 814D1DA8 | 41 86 00 10 */	beq cr1, .L_814D1DB8
/* 814D1DAC | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814D1DB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1DB4 | 40 82 00 10 */	bne .L_814D1DC4
.L_814D1DB8:
/* 814D1DB8 | 3C 60 00 01 */	lis r3, 0x1
/* 814D1DBC | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D1DC0 | 48 00 02 B4 */	b .L_814D2074
.L_814D1DC4:
/* 814D1DC4 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814D1DC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1DCC | 40 82 00 10 */	bne .L_814D1DDC
/* 814D1DD0 | 3C 60 00 01 */	lis r3, 0x1
/* 814D1DD4 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D1DD8 | 48 00 02 9C */	b .L_814D2074
.L_814D1DDC:
/* 814D1DDC | 41 86 00 10 */	beq cr1, .L_814D1DEC
/* 814D1DE0 | 41 82 00 0C */	beq .L_814D1DEC
/* 814D1DE4 | 38 80 00 00 */	li r4, 0x0
/* 814D1DE8 | 48 00 39 BD */	bl dCommon_setLastDeviceErrorToDisk
.L_814D1DEC:
/* 814D1DEC | 80 8D AE 40 */	lwz r4, l_vfsys_vol_max@sda21(r0)
/* 814D1DF0 | 7C 1D 20 40 */	cmplw r29, r4
/* 814D1DF4 | 40 80 00 1C */	bge .L_814D1E10
/* 814D1DF8 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E00 | 41 82 00 10 */	beq .L_814D1E10
/* 814D1E04 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1E08 | 7C 63 02 14 */	add r3, r3, r0
/* 814D1E0C | 48 00 00 08 */	b .L_814D1E14
.L_814D1E10:
/* 814D1E10 | 38 60 00 00 */	li r3, 0x0
.L_814D1E14:
/* 814D1E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E18 | 41 82 00 1C */	beq .L_814D1E34
/* 814D1E1C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1E20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1E24 | 41 82 00 10 */	beq .L_814D1E34
/* 814D1E28 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1E2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E30 | 40 82 00 0C */	bne .L_814D1E3C
.L_814D1E34:
/* 814D1E34 | 3B E0 00 00 */	li r31, 0x0
/* 814D1E38 | 48 00 00 08 */	b .L_814D1E40
.L_814D1E3C:
/* 814D1E3C | 83 E3 00 0C */	lwz r31, 0xc(r3)
.L_814D1E40:
/* 814D1E40 | 7C 1D 20 40 */	cmplw r29, r4
/* 814D1E44 | 40 80 00 1C */	bge .L_814D1E60
/* 814D1E48 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1E4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E50 | 41 82 00 10 */	beq .L_814D1E60
/* 814D1E54 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1E58 | 7C 63 02 14 */	add r3, r3, r0
/* 814D1E5C | 48 00 00 08 */	b .L_814D1E64
.L_814D1E60:
/* 814D1E60 | 38 60 00 00 */	li r3, 0x0
.L_814D1E64:
/* 814D1E64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E68 | 41 82 00 24 */	beq .L_814D1E8C
/* 814D1E6C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1E70 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1E74 | 41 82 00 18 */	beq .L_814D1E8C
/* 814D1E78 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1E7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1E80 | 41 82 00 0C */	beq .L_814D1E8C
/* 814D1E84 | 38 00 00 01 */	li r0, 0x1
/* 814D1E88 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D1E8C:
/* 814D1E8C | 88 1C 00 14 */	lbz r0, 0x14(r28)
/* 814D1E90 | 7F C4 F3 78 */	mr r4, r30
/* 814D1E94 | 7C 03 07 74 */	extsb r3, r0
/* 814D1E98 | 4B FF DD C5 */	bl VFipf2_sync
/* 814D1E9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1EA0 | 40 82 01 20 */	bne .L_814D1FC0
/* 814D1EA4 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1EA8 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D1EAC | 40 80 00 1C */	bge .L_814D1EC8
/* 814D1EB0 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1EB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1EB8 | 41 82 00 10 */	beq .L_814D1EC8
/* 814D1EBC | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1EC0 | 7C 63 02 14 */	add r3, r3, r0
/* 814D1EC4 | 48 00 00 08 */	b .L_814D1ECC
.L_814D1EC8:
/* 814D1EC8 | 38 60 00 00 */	li r3, 0x0
.L_814D1ECC:
/* 814D1ECC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1ED0 | 41 82 00 24 */	beq .L_814D1EF4
/* 814D1ED4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1ED8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1EDC | 41 82 00 18 */	beq .L_814D1EF4
/* 814D1EE0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1EE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1EE8 | 41 82 00 0C */	beq .L_814D1EF4
/* 814D1EEC | 38 00 00 00 */	li r0, 0x0
/* 814D1EF0 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D1EF4:
/* 814D1EF4 | 7F A3 EB 78 */	mr r3, r29
/* 814D1EF8 | 38 80 00 01 */	li r4, 0x1
/* 814D1EFC | 48 00 3A DD */	bl dCommon_FlushFromHandleIdx
/* 814D1F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F04 | 40 82 00 60 */	bne .L_814D1F64
/* 814D1F08 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1F0C | 7C 1D 00 40 */	cmplw r29, r0
/* 814D1F10 | 40 80 00 1C */	bge .L_814D1F2C
/* 814D1F14 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F1C | 41 82 00 10 */	beq .L_814D1F2C
/* 814D1F20 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1F24 | 7C 63 02 14 */	add r3, r3, r0
/* 814D1F28 | 48 00 00 08 */	b .L_814D1F30
.L_814D1F2C:
/* 814D1F2C | 38 60 00 00 */	li r3, 0x0
.L_814D1F30:
/* 814D1F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F34 | 41 82 00 28 */	beq .L_814D1F5C
/* 814D1F38 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1F3C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1F40 | 41 82 00 1C */	beq .L_814D1F5C
/* 814D1F44 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1F48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F4C | 41 82 00 10 */	beq .L_814D1F5C
/* 814D1F50 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D1F54 | 41 81 00 08 */	bgt .L_814D1F5C
/* 814D1F58 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D1F5C:
/* 814D1F5C | 38 60 00 00 */	li r3, 0x0
/* 814D1F60 | 48 00 01 14 */	b .L_814D2074
.L_814D1F64:
/* 814D1F64 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1F68 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D1F6C | 40 80 00 1C */	bge .L_814D1F88
/* 814D1F70 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1F74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F78 | 41 82 00 10 */	beq .L_814D1F88
/* 814D1F7C | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1F80 | 7C 63 02 14 */	add r3, r3, r0
/* 814D1F84 | 48 00 00 08 */	b .L_814D1F8C
.L_814D1F88:
/* 814D1F88 | 38 60 00 00 */	li r3, 0x0
.L_814D1F8C:
/* 814D1F8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1F90 | 41 82 00 28 */	beq .L_814D1FB8
/* 814D1F94 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1F98 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1F9C | 41 82 00 1C */	beq .L_814D1FB8
/* 814D1FA0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D1FA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1FA8 | 41 82 00 10 */	beq .L_814D1FB8
/* 814D1FAC | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D1FB0 | 41 81 00 08 */	bgt .L_814D1FB8
/* 814D1FB4 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D1FB8:
/* 814D1FB8 | 38 60 00 05 */	li r3, 0x5
/* 814D1FBC | 48 00 00 B8 */	b .L_814D2074
.L_814D1FC0:
/* 814D1FC0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D1FC4 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D1FC8 | 40 80 00 1C */	bge .L_814D1FE4
/* 814D1FCC | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D1FD0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1FD4 | 41 82 00 10 */	beq .L_814D1FE4
/* 814D1FD8 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D1FDC | 7C 63 02 14 */	add r3, r3, r0
/* 814D1FE0 | 48 00 00 08 */	b .L_814D1FE8
.L_814D1FE4:
/* 814D1FE4 | 38 60 00 00 */	li r3, 0x0
.L_814D1FE8:
/* 814D1FE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D1FEC | 41 82 00 24 */	beq .L_814D2010
/* 814D1FF0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D1FF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D1FF8 | 41 82 00 18 */	beq .L_814D2010
/* 814D1FFC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2004 | 41 82 00 0C */	beq .L_814D2010
/* 814D2008 | 38 00 00 00 */	li r0, 0x0
/* 814D200C | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D2010:
/* 814D2010 | 7F A3 EB 78 */	mr r3, r29
/* 814D2014 | 38 80 00 01 */	li r4, 0x1
/* 814D2018 | 48 00 39 C1 */	bl dCommon_FlushFromHandleIdx
/* 814D201C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2020 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D2024 | 40 80 00 1C */	bge .L_814D2040
/* 814D2028 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D202C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2030 | 41 82 00 10 */	beq .L_814D2040
/* 814D2034 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D2038 | 7C 63 02 14 */	add r3, r3, r0
/* 814D203C | 48 00 00 08 */	b .L_814D2044
.L_814D2040:
/* 814D2040 | 38 60 00 00 */	li r3, 0x0
.L_814D2044:
/* 814D2044 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2048 | 41 82 00 28 */	beq .L_814D2070
/* 814D204C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2050 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2054 | 41 82 00 1C */	beq .L_814D2070
/* 814D2058 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D205C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2060 | 41 82 00 10 */	beq .L_814D2070
/* 814D2064 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D2068 | 41 81 00 08 */	bgt .L_814D2070
/* 814D206C | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D2070:
/* 814D2070 | 4B FF D8 49 */	bl VFipf2_errnum
.L_814D2074:
/* 814D2074 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D2078 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D207C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D2080 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D2084 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D2088 | 7C 08 03 A6 */	mtlr r0
/* 814D208C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D2090 | 4E 80 00 20 */	blr
.endfn VFSysSync

# .text:0xAD4 | 0x814D2094 | size: 0x70
.fn VFSysSetSyncMode, global
/* 814D2094 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2098 | 7C 03 00 40 */	cmplw r3, r0
/* 814D209C | 40 80 00 1C */	bge .L_814D20B8
/* 814D20A0 | 80 AD AE 50 */	lwz r5, l_sys_handle_table_p@sda21(r0)
/* 814D20A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D20A8 | 41 82 00 10 */	beq .L_814D20B8
/* 814D20AC | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D20B0 | 7C 65 02 14 */	add r3, r5, r0
/* 814D20B4 | 48 00 00 08 */	b .L_814D20BC
.L_814D20B8:
/* 814D20B8 | 38 60 00 00 */	li r3, 0x0
.L_814D20BC:
/* 814D20BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D20C0 | 41 82 00 1C */	beq .L_814D20DC
/* 814D20C4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D20C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D20CC | 41 82 00 10 */	beq .L_814D20DC
/* 814D20D0 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D20D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D20D8 | 40 82 00 10 */	bne .L_814D20E8
.L_814D20DC:
/* 814D20DC | 3C 60 00 01 */	lis r3, 0x1
/* 814D20E0 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D20E4 | 4E 80 00 20 */	blr
.L_814D20E8:
/* 814D20E8 | 28 04 00 01 */	cmplwi r4, 0x1
/* 814D20EC | 41 81 00 10 */	bgt .L_814D20FC
/* 814D20F0 | 90 83 00 0C */	stw r4, 0xc(r3)
/* 814D20F4 | 38 60 00 00 */	li r3, 0x0
/* 814D20F8 | 4E 80 00 20 */	blr
.L_814D20FC:
/* 814D20FC | 38 60 FF FF */	li r3, -0x1
/* 814D2100 | 4E 80 00 20 */	blr
.endfn VFSysSetSyncMode

# .text:0xB44 | 0x814D2104 | size: 0x2C0
.fn VFSysMountDrv, global
/* 814D2104 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D2108 | 7C 08 02 A6 */	mflr r0
/* 814D210C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D2110 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D2114 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D2118 | 7C BE 2B 78 */	mr r30, r5
/* 814D211C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D2120 | 7C 9D 23 78 */	mr r29, r4
/* 814D2124 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D2128 | 7C 7C 1B 78 */	mr r28, r3
/* 814D212C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2130 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2134 | 40 80 00 1C */	bge .L_814D2150
/* 814D2138 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D213C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2140 | 41 82 00 10 */	beq .L_814D2150
/* 814D2144 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2148 | 7F E4 02 14 */	add r31, r4, r0
/* 814D214C | 48 00 00 08 */	b .L_814D2154
.L_814D2150:
/* 814D2150 | 3B E0 00 00 */	li r31, 0x0
.L_814D2154:
/* 814D2154 | 2F 1F 00 00 */	cmpwi cr6, r31, 0x0
/* 814D2158 | 41 9A 00 10 */	beq cr6, .L_814D2168
/* 814D215C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814D2160 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2164 | 40 82 00 10 */	bne .L_814D2174
.L_814D2168:
/* 814D2168 | 3C 60 00 01 */	lis r3, 0x1
/* 814D216C | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2170 | 48 00 02 34 */	b .L_814D23A4
.L_814D2174:
/* 814D2174 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2178 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814D217C | 40 86 00 10 */	bne cr1, .L_814D218C
/* 814D2180 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2184 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2188 | 48 00 02 1C */	b .L_814D23A4
.L_814D218C:
/* 814D218C | 80 1F 00 10 */	lwz r0, 0x10(r31)
/* 814D2190 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2194 | 41 82 00 10 */	beq .L_814D21A4
/* 814D2198 | 3C 60 00 01 */	lis r3, 0x1
/* 814D219C | 38 63 B0 05 */	subi r3, r3, 0x4ffb
/* 814D21A0 | 48 00 02 04 */	b .L_814D23A4
.L_814D21A4:
/* 814D21A4 | 41 9A 00 10 */	beq cr6, .L_814D21B4
/* 814D21A8 | 41 86 00 0C */	beq cr1, .L_814D21B4
/* 814D21AC | 38 80 00 00 */	li r4, 0x0
/* 814D21B0 | 48 00 35 F5 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D21B4:
/* 814D21B4 | 80 7F 00 24 */	lwz r3, 0x24(r31)
/* 814D21B8 | 38 00 00 01 */	li r0, 0x1
/* 814D21BC | 38 BF 00 18 */	addi r5, r31, 0x18
/* 814D21C0 | 38 80 00 00 */	li r4, 0x0
/* 814D21C4 | 90 7F 00 2C */	stw r3, 0x2c(r31)
/* 814D21C8 | 80 7F 00 28 */	lwz r3, 0x28(r31)
/* 814D21CC | 90 7F 00 30 */	stw r3, 0x30(r31)
/* 814D21D0 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814D21D4 | B0 7F 00 34 */	sth r3, 0x34(r31)
/* 814D21D8 | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814D21DC | B0 7F 00 36 */	sth r3, 0x36(r31)
/* 814D21E0 | 90 1F 00 38 */	stw r0, 0x38(r31)
/* 814D21E4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D21E8 | 4B FE 89 15 */	bl VFipdm_open_partition
/* 814D21EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D21F0 | 40 82 01 B0 */	bne .L_814D23A0
/* 814D21F4 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814D21F8 | 38 1F 00 2C */	addi r0, r31, 0x2c
/* 814D21FC | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814D2200 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814D2204 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814D2208 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D220C | 2C 00 00 02 */	cmpwi r0, 0x2
/* 814D2210 | 41 82 00 A0 */	beq .L_814D22B0
/* 814D2214 | 40 80 00 14 */	bge .L_814D2228
/* 814D2218 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D221C | 41 82 00 20 */	beq .L_814D223C
/* 814D2220 | 40 80 00 14 */	bge .L_814D2234
/* 814D2224 | 48 00 01 00 */	b .L_814D2324
.L_814D2228:
/* 814D2228 | 2C 00 00 04 */	cmpwi r0, 0x4
/* 814D222C | 40 80 00 F8 */	bge .L_814D2324
/* 814D2230 | 48 00 01 4C */	b .L_814D237C
.L_814D2234:
/* 814D2234 | 93 DF 00 04 */	stw r30, 0x4(r31)
/* 814D2238 | 48 00 01 44 */	b .L_814D237C
.L_814D223C:
/* 814D223C | 3C 80 81 0F */	lis r4, l_vfsys_dev_table@ha
/* 814D2240 | 3B DF 00 40 */	addi r30, r31, 0x40
/* 814D2244 | 57 80 10 3A */	slwi r0, r28, 2
/* 814D2248 | 38 A0 00 FF */	li r5, 0xff
/* 814D224C | 38 84 55 58 */	addi r4, r4, l_vfsys_dev_table@l
/* 814D2250 | 7F C3 F3 78 */	mr r3, r30
/* 814D2254 | 7C C4 00 2E */	lwzx r6, r4, r0
/* 814D2258 | 38 80 00 00 */	li r4, 0x0
/* 814D225C | 38 06 00 10 */	addi r0, r6, 0x10
/* 814D2260 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814D2264 | 4B FE 36 A5 */	bl VFipf_memset
/* 814D2268 | 38 80 00 00 */	li r4, 0x0
/* 814D226C | 38 60 00 2F */	li r3, 0x2f
/* 814D2270 | 48 00 00 28 */	b .L_814D2298
.L_814D2274:
/* 814D2274 | 7C A0 07 74 */	extsb r0, r5
/* 814D2278 | 2C 00 00 5C */	cmpwi r0, 0x5c
/* 814D227C | 40 82 00 0C */	bne .L_814D2288
/* 814D2280 | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 814D2284 | 48 00 00 08 */	b .L_814D228C
.L_814D2288:
/* 814D2288 | 98 BE 00 00 */	stb r5, 0x0(r30)
.L_814D228C:
/* 814D228C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814D2290 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814D2294 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D2298:
/* 814D2298 | 2C 04 00 FF */	cmpwi r4, 0xff
/* 814D229C | 40 80 00 E0 */	bge .L_814D237C
/* 814D22A0 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 814D22A4 | 7C A0 07 75 */	extsb. r0, r5
/* 814D22A8 | 40 82 FF CC */	bne .L_814D2274
/* 814D22AC | 48 00 00 D0 */	b .L_814D237C
.L_814D22B0:
/* 814D22B0 | 3C 80 81 0F */	lis r4, l_vfsys_dev_table@ha
/* 814D22B4 | 3B DF 00 40 */	addi r30, r31, 0x40
/* 814D22B8 | 57 80 10 3A */	slwi r0, r28, 2
/* 814D22BC | 38 A0 00 FF */	li r5, 0xff
/* 814D22C0 | 38 84 55 58 */	addi r4, r4, l_vfsys_dev_table@l
/* 814D22C4 | 7F C3 F3 78 */	mr r3, r30
/* 814D22C8 | 7C C4 00 2E */	lwzx r6, r4, r0
/* 814D22CC | 38 80 00 00 */	li r4, 0x0
/* 814D22D0 | 38 06 00 10 */	addi r0, r6, 0x10
/* 814D22D4 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814D22D8 | 4B FE 36 31 */	bl VFipf_memset
/* 814D22DC | 38 80 00 00 */	li r4, 0x0
/* 814D22E0 | 38 60 00 5C */	li r3, 0x5c
/* 814D22E4 | 48 00 00 28 */	b .L_814D230C
.L_814D22E8:
/* 814D22E8 | 7C A0 07 74 */	extsb r0, r5
/* 814D22EC | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814D22F0 | 40 82 00 0C */	bne .L_814D22FC
/* 814D22F4 | 98 7E 00 00 */	stb r3, 0x0(r30)
/* 814D22F8 | 48 00 00 08 */	b .L_814D2300
.L_814D22FC:
/* 814D22FC | 98 BE 00 00 */	stb r5, 0x0(r30)
.L_814D2300:
/* 814D2300 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814D2304 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814D2308 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D230C:
/* 814D230C | 2C 04 00 FF */	cmpwi r4, 0xff
/* 814D2310 | 40 80 00 6C */	bge .L_814D237C
/* 814D2314 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 814D2318 | 7C A0 07 75 */	extsb. r0, r5
/* 814D231C | 40 82 FF CC */	bne .L_814D22E8
/* 814D2320 | 48 00 00 5C */	b .L_814D237C
.L_814D2324:
/* 814D2324 | 3B 9F 00 40 */	addi r28, r31, 0x40
/* 814D2328 | 38 80 00 00 */	li r4, 0x0
/* 814D232C | 7F 83 E3 78 */	mr r3, r28
/* 814D2330 | 38 A0 00 FF */	li r5, 0xff
/* 814D2334 | 4B FE 35 D5 */	bl VFipf_memset
/* 814D2338 | 38 80 00 00 */	li r4, 0x0
/* 814D233C | 38 60 00 5C */	li r3, 0x5c
/* 814D2340 | 48 00 00 28 */	b .L_814D2368
.L_814D2344:
/* 814D2344 | 7C A0 07 74 */	extsb r0, r5
/* 814D2348 | 2C 00 00 2F */	cmpwi r0, 0x2f
/* 814D234C | 40 82 00 0C */	bne .L_814D2358
/* 814D2350 | 98 7C 00 00 */	stb r3, 0x0(r28)
/* 814D2354 | 48 00 00 08 */	b .L_814D235C
.L_814D2358:
/* 814D2358 | 98 BC 00 00 */	stb r5, 0x0(r28)
.L_814D235C:
/* 814D235C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814D2360 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814D2364 | 38 84 00 01 */	addi r4, r4, 0x1
.L_814D2368:
/* 814D2368 | 2C 04 00 FF */	cmpwi r4, 0xff
/* 814D236C | 40 80 00 10 */	bge .L_814D237C
/* 814D2370 | 88 BD 00 00 */	lbz r5, 0x0(r29)
/* 814D2374 | 7C A0 07 75 */	extsb. r0, r5
/* 814D2378 | 40 82 FF CC */	bne .L_814D2344
.L_814D237C:
/* 814D237C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2380 | 38 80 00 00 */	li r4, 0x0
/* 814D2384 | 48 00 34 21 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D2388 | 3C 80 00 02 */	lis r4, 0x2
/* 814D238C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2390 | 38 84 90 00 */	subi r4, r4, 0x7000
/* 814D2394 | 48 00 33 65 */	bl dCommon_setFileSizeToDisk
/* 814D2398 | 38 60 00 00 */	li r3, 0x0
/* 814D239C | 48 00 00 08 */	b .L_814D23A4
.L_814D23A0:
/* 814D23A0 | 4B FF D5 19 */	bl VFipf2_errnum
.L_814D23A4:
/* 814D23A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D23A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D23AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D23B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D23B4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D23B8 | 7C 08 03 A6 */	mtlr r0
/* 814D23BC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D23C0 | 4E 80 00 20 */	blr
.endfn VFSysMountDrv

# .text:0xE04 | 0x814D23C4 | size: 0x150
.fn VFSysUnmountDrv, global
/* 814D23C4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D23C8 | 7C 08 02 A6 */	mflr r0
/* 814D23CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D23D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D23D4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D23D8 | 7C 9E 23 78 */	mr r30, r4
/* 814D23DC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D23E0 | 7C 03 00 40 */	cmplw r3, r0
/* 814D23E4 | 40 80 00 1C */	bge .L_814D2400
/* 814D23E8 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D23EC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D23F0 | 41 82 00 10 */	beq .L_814D2400
/* 814D23F4 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D23F8 | 7F E4 02 14 */	add r31, r4, r0
/* 814D23FC | 48 00 00 08 */	b .L_814D2404
.L_814D2400:
/* 814D2400 | 3B E0 00 00 */	li r31, 0x0
.L_814D2404:
/* 814D2404 | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814D2408 | 41 86 00 10 */	beq cr1, .L_814D2418
/* 814D240C | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814D2410 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2414 | 40 82 00 10 */	bne .L_814D2424
.L_814D2418:
/* 814D2418 | 3C 60 00 01 */	lis r3, 0x1
/* 814D241C | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2420 | 48 00 00 DC */	b .L_814D24FC
.L_814D2424:
/* 814D2424 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D242C | 40 82 00 10 */	bne .L_814D243C
/* 814D2430 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2434 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2438 | 48 00 00 C4 */	b .L_814D24FC
.L_814D243C:
/* 814D243C | 41 86 00 10 */	beq cr1, .L_814D244C
/* 814D2440 | 41 82 00 0C */	beq .L_814D244C
/* 814D2444 | 38 80 00 00 */	li r4, 0x0
/* 814D2448 | 48 00 33 5D */	bl dCommon_setLastDeviceErrorToDisk
.L_814D244C:
/* 814D244C | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 814D2450 | 7F C4 F3 78 */	mr r4, r30
/* 814D2454 | 7C 03 07 74 */	extsb r3, r0
/* 814D2458 | 4B FF D8 2D */	bl VFipf2_unmount
/* 814D245C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D2460 | 40 82 00 0C */	bne .L_814D246C
/* 814D2464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2468 | 40 82 00 1C */	bne .L_814D2484
.L_814D246C:
/* 814D246C | 28 1E 00 01 */	cmplwi r30, 0x1
/* 814D2470 | 40 82 00 1C */	bne .L_814D248C
/* 814D2474 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2478 | 41 82 00 14 */	beq .L_814D248C
/* 814D247C | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814D2480 | 41 82 00 0C */	beq .L_814D248C
.L_814D2484:
/* 814D2484 | 4B FF D4 35 */	bl VFipf2_errnum
/* 814D2488 | 48 00 00 74 */	b .L_814D24FC
.L_814D248C:
/* 814D248C | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 814D2490 | 7C 03 07 74 */	extsb r3, r0
/* 814D2494 | 4B FF D3 FD */	bl VFipf2_detach
/* 814D2498 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D249C | 41 82 00 0C */	beq .L_814D24A8
/* 814D24A0 | 4B FF D4 19 */	bl VFipf2_errnum
/* 814D24A4 | 48 00 00 58 */	b .L_814D24FC
.L_814D24A8:
/* 814D24A8 | 80 7F 00 18 */	lwz r3, 0x18(r31)
/* 814D24AC | 4B FE 86 AD */	bl VFipdm_close_partition
/* 814D24B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D24B4 | 40 82 00 44 */	bne .L_814D24F8
/* 814D24B8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D24BC | 38 80 00 00 */	li r4, 0x0
/* 814D24C0 | 48 00 32 39 */	bl dCommon_setFileSizeToDisk
/* 814D24C4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D24C8 | 38 80 00 00 */	li r4, 0x0
/* 814D24CC | 48 00 32 D9 */	bl dCommon_setLastDeviceErrorToDisk
/* 814D24D0 | 38 00 00 00 */	li r0, 0x0
/* 814D24D4 | 38 7F 00 40 */	addi r3, r31, 0x40
/* 814D24D8 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814D24DC | 38 80 00 00 */	li r4, 0x0
/* 814D24E0 | 38 A0 00 FF */	li r5, 0xff
/* 814D24E4 | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814D24E8 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814D24EC | 4B FE 34 1D */	bl VFipf_memset
/* 814D24F0 | 38 60 00 00 */	li r3, 0x0
/* 814D24F4 | 48 00 00 08 */	b .L_814D24FC
.L_814D24F8:
/* 814D24F8 | 4B FF D3 C1 */	bl VFipf2_errnum
.L_814D24FC:
/* 814D24FC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D2500 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D2504 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D2508 | 7C 08 03 A6 */	mtlr r0
/* 814D250C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D2510 | 4E 80 00 20 */	blr
.endfn VFSysUnmountDrv

# .text:0xF54 | 0x814D2514 | size: 0x50
.fn VFiSysClearHandle, global
/* 814D2514 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D2518 | 7C 08 02 A6 */	mflr r0
/* 814D251C | 38 80 00 00 */	li r4, 0x0
/* 814D2520 | 38 A0 01 40 */	li r5, 0x140
/* 814D2524 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D2528 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D252C | 7C 7F 1B 78 */	mr r31, r3
/* 814D2530 | 4B FE 33 D9 */	bl VFipf_memset
/* 814D2534 | 34 1F 00 1C */	addic. r0, r31, 0x1c
/* 814D2538 | 41 82 00 18 */	beq .L_814D2550
/* 814D253C | 38 00 00 00 */	li r0, 0x0
/* 814D2540 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814D2544 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814D2548 | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 814D254C | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_814D2550:
/* 814D2550 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D2554 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D2558 | 7C 08 03 A6 */	mtlr r0
/* 814D255C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D2560 | 4E 80 00 20 */	blr
.endfn VFiSysClearHandle

# .text:0xFA4 | 0x814D2564 | size: 0x54
.fn VFiSysGetFreeHandleIdx, global
/* 814D2564 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2568 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D256C | 41 82 00 14 */	beq .L_814D2580
/* 814D2570 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2574 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2578 | 41 82 00 08 */	beq .L_814D2580
/* 814D257C | 48 00 00 08 */	b .L_814D2584
.L_814D2580:
/* 814D2580 | 38 80 00 00 */	li r4, 0x0
.L_814D2584:
/* 814D2584 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D2588 | 38 60 00 00 */	li r3, 0x0
/* 814D258C | 7C A4 02 14 */	add r5, r4, r0
/* 814D2590 | 48 00 00 18 */	b .L_814D25A8
.L_814D2594:
/* 814D2594 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814D2598 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D259C | 4D 82 00 20 */	beqlr
/* 814D25A0 | 38 84 01 40 */	addi r4, r4, 0x140
/* 814D25A4 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814D25A8:
/* 814D25A8 | 7C 04 28 40 */	cmplw r4, r5
/* 814D25AC | 40 82 FF E8 */	bne .L_814D2594
/* 814D25B0 | 38 60 FF FF */	li r3, -0x1
/* 814D25B4 | 4E 80 00 20 */	blr
.endfn VFiSysGetFreeHandleIdx

# .text:0xFF8 | 0x814D25B8 | size: 0x2C
.fn VFSysGetHandleP, global
/* 814D25B8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D25BC | 7C 03 00 40 */	cmplw r3, r0
/* 814D25C0 | 40 80 00 1C */	bge .L_814D25DC
/* 814D25C4 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D25C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D25CC | 41 82 00 10 */	beq .L_814D25DC
/* 814D25D0 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D25D4 | 7C 64 02 14 */	add r3, r4, r0
/* 814D25D8 | 4E 80 00 20 */	blr
.L_814D25DC:
/* 814D25DC | 38 60 00 00 */	li r3, 0x0
/* 814D25E0 | 4E 80 00 20 */	blr
.endfn VFSysGetHandleP

# .text:0x1024 | 0x814D25E4 | size: 0x60
.fn VFSysHandleP2Idx, global
/* 814D25E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D25E8 | 41 82 00 54 */	beq .L_814D263C
/* 814D25EC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D25F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D25F4 | 41 82 00 14 */	beq .L_814D2608
/* 814D25F8 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D25FC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2600 | 41 82 00 08 */	beq .L_814D2608
/* 814D2604 | 48 00 00 08 */	b .L_814D260C
.L_814D2608:
/* 814D2608 | 38 80 00 00 */	li r4, 0x0
.L_814D260C:
/* 814D260C | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D2610 | 38 A0 00 00 */	li r5, 0x0
/* 814D2614 | 7C 04 02 14 */	add r0, r4, r0
/* 814D2618 | 48 00 00 1C */	b .L_814D2634
.L_814D261C:
/* 814D261C | 7C 03 20 40 */	cmplw r3, r4
/* 814D2620 | 40 82 00 0C */	bne .L_814D262C
/* 814D2624 | 7C A3 2B 78 */	mr r3, r5
/* 814D2628 | 4E 80 00 20 */	blr
.L_814D262C:
/* 814D262C | 38 84 01 40 */	addi r4, r4, 0x140
/* 814D2630 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814D2634:
/* 814D2634 | 7C 04 00 40 */	cmplw r4, r0
/* 814D2638 | 40 82 FF E4 */	bne .L_814D261C
.L_814D263C:
/* 814D263C | 38 60 FF FF */	li r3, -0x1
/* 814D2640 | 4E 80 00 20 */	blr
.endfn VFSysHandleP2Idx

# .text:0x1084 | 0x814D2644 | size: 0x64
.fn VFSysPDMDisk2HandleIdx, global
/* 814D2644 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2648 | 38 80 FF FF */	li r4, -0x1
/* 814D264C | 41 82 00 54 */	beq .L_814D26A0
/* 814D2650 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2654 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2658 | 41 82 00 14 */	beq .L_814D266C
/* 814D265C | 80 AD AE 50 */	lwz r5, l_sys_handle_table_p@sda21(r0)
/* 814D2660 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D2664 | 41 82 00 08 */	beq .L_814D266C
/* 814D2668 | 48 00 00 08 */	b .L_814D2670
.L_814D266C:
/* 814D266C | 38 A0 00 00 */	li r5, 0x0
.L_814D2670:
/* 814D2670 | 38 C0 00 00 */	li r6, 0x0
/* 814D2674 | 7C 09 03 A6 */	mtctr r0
/* 814D2678 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814D267C | 40 81 00 24 */	ble .L_814D26A0
.L_814D2680:
/* 814D2680 | 80 05 00 08 */	lwz r0, 0x8(r5)
/* 814D2684 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2688 | 40 82 00 0C */	bne .L_814D2694
/* 814D268C | 7C C4 33 78 */	mr r4, r6
/* 814D2690 | 48 00 00 10 */	b .L_814D26A0
.L_814D2694:
/* 814D2694 | 38 A5 01 40 */	addi r5, r5, 0x140
/* 814D2698 | 38 C6 00 01 */	addi r6, r6, 0x1
/* 814D269C | 42 00 FF E4 */	bdnz .L_814D2680
.L_814D26A0:
/* 814D26A0 | 7C 83 23 78 */	mr r3, r4
/* 814D26A4 | 4E 80 00 20 */	blr
.endfn VFSysPDMDisk2HandleIdx

# .text:0x10E8 | 0x814D26A8 | size: 0x1EC
.fn VFSysSetDeviceNANDFlash, global
/* 814D26A8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D26AC | 7C 08 02 A6 */	mflr r0
/* 814D26B0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D26B4 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D26B8 | 48 12 6E 05 */	bl _savegpr_26
/* 814D26BC | 80 CD AE 40 */	lwz r6, l_vfsys_vol_max@sda21(r0)
/* 814D26C0 | 7C 7D 1B 78 */	mr r29, r3
/* 814D26C4 | 7C 9E 23 78 */	mr r30, r4
/* 814D26C8 | 7C BF 2B 78 */	mr r31, r5
/* 814D26CC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D26D0 | 41 82 00 14 */	beq .L_814D26E4
/* 814D26D4 | 80 AD AE 50 */	lwz r5, l_sys_handle_table_p@sda21(r0)
/* 814D26D8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D26DC | 41 82 00 08 */	beq .L_814D26E4
/* 814D26E0 | 48 00 00 08 */	b .L_814D26E8
.L_814D26E4:
/* 814D26E4 | 38 A0 00 00 */	li r5, 0x0
.L_814D26E8:
/* 814D26E8 | 1C 06 01 40 */	mulli r0, r6, 0x140
/* 814D26EC | 3B 80 00 00 */	li r28, 0x0
/* 814D26F0 | 7C 85 02 14 */	add r4, r5, r0
/* 814D26F4 | 48 00 00 1C */	b .L_814D2710
.L_814D26F8:
/* 814D26F8 | 80 05 00 00 */	lwz r0, 0x0(r5)
/* 814D26FC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2700 | 40 82 00 08 */	bne .L_814D2708
/* 814D2704 | 48 00 00 18 */	b .L_814D271C
.L_814D2708:
/* 814D2708 | 38 A5 01 40 */	addi r5, r5, 0x140
/* 814D270C | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814D2710:
/* 814D2710 | 7C 05 20 40 */	cmplw r5, r4
/* 814D2714 | 40 82 FF E4 */	bne .L_814D26F8
/* 814D2718 | 3B 80 FF FF */	li r28, -0x1
.L_814D271C:
/* 814D271C | 7C 1C 30 40 */	cmplw r28, r6
/* 814D2720 | 40 80 00 1C */	bge .L_814D273C
/* 814D2724 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2728 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D272C | 41 82 00 10 */	beq .L_814D273C
/* 814D2730 | 1C 1C 01 40 */	mulli r0, r28, 0x140
/* 814D2734 | 7F 64 02 14 */	add r27, r4, r0
/* 814D2738 | 48 00 00 08 */	b .L_814D2740
.L_814D273C:
/* 814D273C | 3B 60 00 00 */	li r27, 0x0
.L_814D2740:
/* 814D2740 | 38 00 FF FF */	li r0, -0x1
/* 814D2744 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D2748 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D274C | 40 82 00 10 */	bne .L_814D275C
/* 814D2750 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2754 | 38 63 B0 02 */	subi r3, r3, 0x4ffe
/* 814D2758 | 48 00 01 24 */	b .L_814D287C
.L_814D275C:
/* 814D275C | 3C 60 81 0F */	lis r3, l_dev_init_info_table@ha
/* 814D2760 | 57 80 18 38 */	slwi r0, r28, 3
/* 814D2764 | 38 63 55 C0 */	addi r3, r3, l_dev_init_info_table@l
/* 814D2768 | 38 8D 9D 20 */	li r4, l_dev_nandflash_init_info@sda21
/* 814D276C | 7F 43 02 14 */	add r26, r3, r0
/* 814D2770 | 38 A0 00 08 */	li r5, 0x8
/* 814D2774 | 7F 43 D3 78 */	mr r3, r26
/* 814D2778 | 4B FE 30 69 */	bl VFipf_memcpy
/* 814D277C | 93 9A 00 04 */	stw r28, 0x4(r26)
/* 814D2780 | 7F 43 D3 78 */	mr r3, r26
/* 814D2784 | 38 9B 00 08 */	addi r4, r27, 0x8
/* 814D2788 | 4B FE 83 15 */	bl VFipdm_open_disk
/* 814D278C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2790 | 40 82 00 BC */	bne .L_814D284C
/* 814D2794 | 3C 60 81 0F */	lis r3, l_vfsys_dev_table@ha
/* 814D2798 | 57 80 10 3A */	slwi r0, r28, 2
/* 814D279C | 38 63 55 58 */	addi r3, r3, l_vfsys_dev_table@l
/* 814D27A0 | 38 80 00 00 */	li r4, 0x0
/* 814D27A4 | 7F 43 00 2E */	lwzx r26, r3, r0
/* 814D27A8 | 38 A0 00 10 */	li r5, 0x10
/* 814D27AC | 7F 43 D3 78 */	mr r3, r26
/* 814D27B0 | 4B FE 31 59 */	bl VFipf_memset
/* 814D27B4 | 38 00 00 00 */	li r0, 0x0
/* 814D27B8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D27BC | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814D27C0 | 90 1A 00 0C */	stw r0, 0xc(r26)
/* 814D27C4 | 90 1A 00 08 */	stw r0, 0x8(r26)
/* 814D27C8 | 93 5B 00 00 */	stw r26, 0x0(r27)
/* 814D27CC | 93 9D 00 00 */	stw r28, 0x0(r29)
/* 814D27D0 | 41 82 00 18 */	beq .L_814D27E8
/* 814D27D4 | 80 7B 00 08 */	lwz r3, 0x8(r27)
/* 814D27D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D27DC | 41 82 00 0C */	beq .L_814D27E8
/* 814D27E0 | 38 80 00 00 */	li r4, 0x0
/* 814D27E4 | 48 00 2F C1 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D27E8:
/* 814D27E8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814D27EC | 41 82 00 58 */	beq .L_814D2844
/* 814D27F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D27F4 | 83 8D AE 48 */	lwz r28, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D27F8 | 3B A0 00 08 */	li r29, 0x8
/* 814D27FC | 41 82 00 38 */	beq .L_814D2834
/* 814D2800 | 28 1F 28 00 */	cmplwi r31, 0x2800
/* 814D2804 | 40 81 00 30 */	ble .L_814D2834
/* 814D2808 | 7F C3 F3 78 */	mr r3, r30
/* 814D280C | 7F E4 FB 78 */	mr r4, r31
/* 814D2810 | 38 A0 00 00 */	li r5, 0x0
/* 814D2814 | 48 08 7E 61 */	bl fn_8155A674
/* 814D2818 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D281C | 41 82 00 18 */	beq .L_814D2834
/* 814D2820 | 3C 80 CC CD */	lis r4, 0xcccd
/* 814D2824 | 7C 7C 1B 78 */	mr r28, r3
/* 814D2828 | 38 04 CC CD */	subi r0, r4, 0x3333
/* 814D282C | 7C 00 F8 16 */	mulhwu r0, r0, r31
/* 814D2830 | 54 1D B2 BE */	srwi r29, r0, 10
.L_814D2834:
/* 814D2834 | 7F 63 DB 78 */	mr r3, r27
/* 814D2838 | 7F A4 EB 78 */	mr r4, r29
/* 814D283C | 7F 85 E3 78 */	mr r5, r28
/* 814D2840 | 4B FF F3 35 */	bl VFiSysCreateCache
.L_814D2844:
/* 814D2844 | 38 60 00 00 */	li r3, 0x0
/* 814D2848 | 48 00 00 34 */	b .L_814D287C
.L_814D284C:
/* 814D284C | 7F 63 DB 78 */	mr r3, r27
/* 814D2850 | 38 80 00 00 */	li r4, 0x0
/* 814D2854 | 38 A0 01 40 */	li r5, 0x140
/* 814D2858 | 4B FE 30 B1 */	bl VFipf_memset
/* 814D285C | 34 1B 00 1C */	addic. r0, r27, 0x1c
/* 814D2860 | 41 82 00 18 */	beq .L_814D2878
/* 814D2864 | 38 00 00 00 */	li r0, 0x0
/* 814D2868 | 90 1B 00 1C */	stw r0, 0x1c(r27)
/* 814D286C | 90 1B 00 20 */	stw r0, 0x20(r27)
/* 814D2870 | 90 1B 00 24 */	stw r0, 0x24(r27)
/* 814D2874 | 90 1B 00 28 */	stw r0, 0x28(r27)
.L_814D2878:
/* 814D2878 | 4B FF D0 41 */	bl VFipf2_errnum
.L_814D287C:
/* 814D287C | 39 61 00 20 */	addi r11, r1, 0x20
/* 814D2880 | 48 12 6C 89 */	bl _restgpr_26
/* 814D2884 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D2888 | 7C 08 03 A6 */	mtlr r0
/* 814D288C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D2890 | 4E 80 00 20 */	blr
.endfn VFSysSetDeviceNANDFlash

# .text:0x12D4 | 0x814D2894 | size: 0x124
.fn VFSysSetDeviceSDDirect, global
/* 814D2894 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D2898 | 7C 08 02 A6 */	mflr r0
/* 814D289C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D28A0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D28A4 | 48 12 6C 11 */	bl _savegpr_24
/* 814D28A8 | 7C 78 1B 78 */	mr r24, r3
/* 814D28AC | 7C 99 23 78 */	mr r25, r4
/* 814D28B0 | 7C BA 2B 78 */	mr r26, r5
/* 814D28B4 | 7C DB 33 78 */	mr r27, r6
/* 814D28B8 | 7C FC 3B 78 */	mr r28, r7
/* 814D28BC | 4B FF FC A9 */	bl VFiSysGetFreeHandleIdx
/* 814D28C0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D28C4 | 4B FF FC F5 */	bl VFSysGetHandleP
/* 814D28C8 | 38 00 FF FF */	li r0, -0x1
/* 814D28CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D28D0 | 90 18 00 00 */	stw r0, 0x0(r24)
/* 814D28D4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D28D8 | 40 82 00 10 */	bne .L_814D28E8
/* 814D28DC | 3C 60 00 01 */	lis r3, 0x1
/* 814D28E0 | 38 63 B0 02 */	subi r3, r3, 0x4ffe
/* 814D28E4 | 48 00 00 BC */	b .L_814D29A0
.L_814D28E8:
/* 814D28E8 | 88 0D AE 54 */	lbz r0, l_vfsys_sddirect_init@sda21(r0)
/* 814D28EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D28F0 | 40 82 00 10 */	bne .L_814D2900
/* 814D28F4 | 48 11 C7 71 */	bl fn_815EF064
/* 814D28F8 | 38 00 00 01 */	li r0, 0x1
/* 814D28FC | 98 0D AE 54 */	stb r0, l_vfsys_sddirect_init@sda21(r0)
.L_814D2900:
/* 814D2900 | 2C 1F FF FF */	cmpwi r31, -0x1
/* 814D2904 | 41 82 00 30 */	beq .L_814D2934
/* 814D2908 | 3C 60 81 0F */	lis r3, l_vfsys_dev_table@ha
/* 814D290C | 57 E0 10 3A */	slwi r0, r31, 2
/* 814D2910 | 38 63 55 58 */	addi r3, r3, l_vfsys_dev_table@l
/* 814D2914 | 7F A3 00 2E */	lwzx r29, r3, r0
/* 814D2918 | 7F A3 EB 78 */	mr r3, r29
/* 814D291C | 48 00 02 49 */	bl VFiSysClearDeviceSDDirect
/* 814D2920 | 38 00 00 03 */	li r0, 0x3
/* 814D2924 | 90 1D 00 08 */	stw r0, 0x8(r29)
/* 814D2928 | 93 3D 00 4C */	stw r25, 0x4c(r29)
/* 814D292C | 93 9D 00 48 */	stw r28, 0x48(r29)
/* 814D2930 | 93 BE 00 00 */	stw r29, 0x0(r30)
.L_814D2934:
/* 814D2934 | 3C 60 81 0F */	lis r3, l_dev_init_info_table@ha
/* 814D2938 | 57 E0 18 38 */	slwi r0, r31, 3
/* 814D293C | 38 63 55 C0 */	addi r3, r3, l_dev_init_info_table@l
/* 814D2940 | 38 8D 9D 28 */	li r4, l_dev_sd_direct_init_info@sda21
/* 814D2944 | 7F A3 02 14 */	add r29, r3, r0
/* 814D2948 | 38 A0 00 08 */	li r5, 0x8
/* 814D294C | 7F A3 EB 78 */	mr r3, r29
/* 814D2950 | 4B FE 2E 91 */	bl VFipf_memcpy
/* 814D2954 | 93 FD 00 04 */	stw r31, 0x4(r29)
/* 814D2958 | 7F A3 EB 78 */	mr r3, r29
/* 814D295C | 38 9E 00 08 */	addi r4, r30, 0x8
/* 814D2960 | 4B FE 81 3D */	bl VFipdm_open_disk
/* 814D2964 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2968 | 40 82 00 2C */	bne .L_814D2994
/* 814D296C | 93 F8 00 00 */	stw r31, 0x0(r24)
/* 814D2970 | 7F C3 F3 78 */	mr r3, r30
/* 814D2974 | 38 80 00 00 */	li r4, 0x0
/* 814D2978 | 48 00 1D 2D */	bl VFiSysSetDeviceErrInfo
/* 814D297C | 7F C3 F3 78 */	mr r3, r30
/* 814D2980 | 7F 44 D3 78 */	mr r4, r26
/* 814D2984 | 7F 65 DB 78 */	mr r5, r27
/* 814D2988 | 4B FF F3 31 */	bl VFiSysAllocCache
/* 814D298C | 38 60 00 00 */	li r3, 0x0
/* 814D2990 | 48 00 00 10 */	b .L_814D29A0
.L_814D2994:
/* 814D2994 | 7F C3 F3 78 */	mr r3, r30
/* 814D2998 | 4B FF FB 7D */	bl VFiSysClearHandle
/* 814D299C | 4B FF CF 1D */	bl VFipf2_errnum
.L_814D29A0:
/* 814D29A0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814D29A4 | 48 12 6B 5D */	bl _restgpr_24
/* 814D29A8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D29AC | 7C 08 03 A6 */	mtlr r0
/* 814D29B0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D29B4 | 4E 80 00 20 */	blr
.endfn VFSysSetDeviceSDDirect

# .text:0x13F8 | 0x814D29B8 | size: 0x54
.fn VFSysGetSlotNoSDDirect, global
/* 814D29B8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D29BC | 7C 03 00 40 */	cmplw r3, r0
/* 814D29C0 | 40 80 00 1C */	bge .L_814D29DC
/* 814D29C4 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D29C8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D29CC | 41 82 00 10 */	beq .L_814D29DC
/* 814D29D0 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D29D4 | 7C 84 02 14 */	add r4, r4, r0
/* 814D29D8 | 48 00 00 08 */	b .L_814D29E0
.L_814D29DC:
/* 814D29DC | 38 80 00 00 */	li r4, 0x0
.L_814D29E0:
/* 814D29E0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D29E4 | 38 60 FF FF */	li r3, -0x1
/* 814D29E8 | 4D 82 00 20 */	beqlr
/* 814D29EC | 80 84 00 00 */	lwz r4, 0x0(r4)
/* 814D29F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D29F4 | 4D 82 00 20 */	beqlr
/* 814D29F8 | 80 04 00 08 */	lwz r0, 0x8(r4)
/* 814D29FC | 28 00 00 03 */	cmplwi r0, 0x3
/* 814D2A00 | 4C 82 00 20 */	bnelr
/* 814D2A04 | 80 64 00 4C */	lwz r3, 0x4c(r4)
/* 814D2A08 | 4E 80 00 20 */	blr
.endfn VFSysGetSlotNoSDDirect

# .text:0x144C | 0x814D2A0C | size: 0x158
.fn VFSysUnsetDevice, global
/* 814D2A0C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D2A10 | 7C 08 02 A6 */	mflr r0
/* 814D2A14 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D2A18 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D2A1C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D2A20 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D2A24 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2A28 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2A2C | 40 80 00 1C */	bge .L_814D2A48
/* 814D2A30 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2A34 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2A38 | 41 82 00 10 */	beq .L_814D2A48
/* 814D2A3C | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2A40 | 7F E4 02 14 */	add r31, r4, r0
/* 814D2A44 | 48 00 00 08 */	b .L_814D2A4C
.L_814D2A48:
/* 814D2A48 | 3B E0 00 00 */	li r31, 0x0
.L_814D2A4C:
/* 814D2A4C | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814D2A50 | 41 86 00 10 */	beq cr1, .L_814D2A60
/* 814D2A54 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2A58 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2A5C | 40 82 00 10 */	bne .L_814D2A6C
.L_814D2A60:
/* 814D2A60 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2A64 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2A68 | 48 00 00 E0 */	b .L_814D2B48
.L_814D2A6C:
/* 814D2A6C | 41 86 00 10 */	beq cr1, .L_814D2A7C
/* 814D2A70 | 41 82 00 0C */	beq .L_814D2A7C
/* 814D2A74 | 38 80 00 00 */	li r4, 0x0
/* 814D2A78 | 48 00 2D 2D */	bl dCommon_setLastDeviceErrorToDisk
.L_814D2A7C:
/* 814D2A7C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2A80 | 4B FE 80 65 */	bl VFipdm_close_disk
/* 814D2A84 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2A88 | 41 82 00 0C */	beq .L_814D2A94
/* 814D2A8C | 4B FF CE 2D */	bl VFipf2_errnum
/* 814D2A90 | 48 00 00 B8 */	b .L_814D2B48
.L_814D2A94:
/* 814D2A94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D2A98 | 41 82 00 80 */	beq .L_814D2B18
/* 814D2A9C | 37 DF 00 1C */	addic. r30, r31, 0x1c
/* 814D2AA0 | 83 BE 00 00 */	lwz r29, 0x0(r30)
/* 814D2AA4 | 41 82 00 58 */	beq .L_814D2AFC
/* 814D2AA8 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814D2AAC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2AB0 | 41 82 00 14 */	beq .L_814D2AC4
/* 814D2AB4 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D2AB8 | 41 82 00 0C */	beq .L_814D2AC4
/* 814D2ABC | 7F A3 EB 78 */	mr r3, r29
/* 814D2AC0 | 48 08 7F 45 */	bl fn_8155AA04
.L_814D2AC4:
/* 814D2AC4 | 80 9E 00 0C */	lwz r4, 0xc(r30)
/* 814D2AC8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2ACC | 41 82 00 14 */	beq .L_814D2AE0
/* 814D2AD0 | 80 7E 00 00 */	lwz r3, 0x0(r30)
/* 814D2AD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2AD8 | 41 82 00 08 */	beq .L_814D2AE0
/* 814D2ADC | 48 08 7F 29 */	bl fn_8155AA04
.L_814D2AE0:
/* 814D2AE0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D2AE4 | 41 82 00 18 */	beq .L_814D2AFC
/* 814D2AE8 | 38 00 00 00 */	li r0, 0x0
/* 814D2AEC | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814D2AF0 | 90 1E 00 04 */	stw r0, 0x4(r30)
/* 814D2AF4 | 90 1E 00 08 */	stw r0, 0x8(r30)
/* 814D2AF8 | 90 1E 00 0C */	stw r0, 0xc(r30)
.L_814D2AFC:
/* 814D2AFC | 80 0D AE 48 */	lwz r0, l_vfsys_exp_heap_handle@sda21(r0)
/* 814D2B00 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D2B04 | 41 82 00 14 */	beq .L_814D2B18
/* 814D2B08 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814D2B0C | 41 82 00 0C */	beq .L_814D2B18
/* 814D2B10 | 7F A3 EB 78 */	mr r3, r29
/* 814D2B14 | 48 08 7C 11 */	bl fn_8155A724
.L_814D2B18:
/* 814D2B18 | 7F E3 FB 78 */	mr r3, r31
/* 814D2B1C | 38 80 00 00 */	li r4, 0x0
/* 814D2B20 | 38 A0 01 40 */	li r5, 0x140
/* 814D2B24 | 4B FE 2D E5 */	bl VFipf_memset
/* 814D2B28 | 34 1F 00 1C */	addic. r0, r31, 0x1c
/* 814D2B2C | 41 82 00 18 */	beq .L_814D2B44
/* 814D2B30 | 38 00 00 00 */	li r0, 0x0
/* 814D2B34 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814D2B38 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814D2B3C | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 814D2B40 | 90 1F 00 28 */	stw r0, 0x28(r31)
.L_814D2B44:
/* 814D2B44 | 38 60 00 00 */	li r3, 0x0
.L_814D2B48:
/* 814D2B48 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D2B4C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D2B50 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D2B54 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D2B58 | 7C 08 03 A6 */	mtlr r0
/* 814D2B5C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D2B60 | 4E 80 00 20 */	blr
.endfn VFSysUnsetDevice

# .text:0x15A4 | 0x814D2B64 | size: 0x48
.fn VFiSysClearDeviceSDDirect, global
/* 814D2B64 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D2B68 | 7C 08 02 A6 */	mflr r0
/* 814D2B6C | 38 80 00 00 */	li r4, 0x0
/* 814D2B70 | 38 A0 00 10 */	li r5, 0x10
/* 814D2B74 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D2B78 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D2B7C | 7C 7F 1B 78 */	mr r31, r3
/* 814D2B80 | 4B FE 2D 89 */	bl VFipf_memset
/* 814D2B84 | 38 60 00 00 */	li r3, 0x0
/* 814D2B88 | 38 00 FF FF */	li r0, -0x1
/* 814D2B8C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814D2B90 | 90 7F 00 0C */	stw r3, 0xc(r31)
/* 814D2B94 | 90 1F 00 4C */	stw r0, 0x4c(r31)
/* 814D2B98 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D2B9C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D2BA0 | 7C 08 03 A6 */	mtlr r0
/* 814D2BA4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D2BA8 | 4E 80 00 20 */	blr
.endfn VFiSysClearDeviceSDDirect

# .text:0x15EC | 0x814D2BAC | size: 0x6C
.fn VFSysPDMDisk2DeviceP, global
/* 814D2BAC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D2BB0 | 7C 08 02 A6 */	mflr r0
/* 814D2BB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2BB8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D2BBC | 41 82 00 48 */	beq .L_814D2C04
/* 814D2BC0 | 48 00 2C 65 */	bl dCommon_getHandleIdxFromDisk
/* 814D2BC4 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2BC8 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2BCC | 40 80 00 1C */	bge .L_814D2BE8
/* 814D2BD0 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2BD4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2BD8 | 41 82 00 10 */	beq .L_814D2BE8
/* 814D2BDC | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2BE0 | 7C 64 02 14 */	add r3, r4, r0
/* 814D2BE4 | 48 00 00 08 */	b .L_814D2BEC
.L_814D2BE8:
/* 814D2BE8 | 38 60 00 00 */	li r3, 0x0
.L_814D2BEC:
/* 814D2BEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2BF0 | 41 82 00 0C */	beq .L_814D2BFC
/* 814D2BF4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2BF8 | 48 00 00 10 */	b .L_814D2C08
.L_814D2BFC:
/* 814D2BFC | 38 60 00 00 */	li r3, 0x0
/* 814D2C00 | 48 00 00 08 */	b .L_814D2C08
.L_814D2C04:
/* 814D2C04 | 38 60 00 00 */	li r3, 0x0
.L_814D2C08:
/* 814D2C08 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D2C0C | 7C 08 03 A6 */	mtlr r0
/* 814D2C10 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D2C14 | 4E 80 00 20 */	blr
.endfn VFSysPDMDisk2DeviceP

# .text:0x1658 | 0x814D2C18 | size: 0x40
.fn VFSysGetDriveP, global
/* 814D2C18 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2C1C | 7C 03 00 40 */	cmplw r3, r0
/* 814D2C20 | 40 80 00 1C */	bge .L_814D2C3C
/* 814D2C24 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2C28 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2C2C | 41 82 00 10 */	beq .L_814D2C3C
/* 814D2C30 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2C34 | 7C 64 02 14 */	add r3, r4, r0
/* 814D2C38 | 48 00 00 08 */	b .L_814D2C40
.L_814D2C3C:
/* 814D2C3C | 38 60 00 00 */	li r3, 0x0
.L_814D2C40:
/* 814D2C40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2C44 | 41 82 00 0C */	beq .L_814D2C50
/* 814D2C48 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814D2C4C | 4E 80 00 20 */	blr
.L_814D2C50:
/* 814D2C50 | 38 60 00 00 */	li r3, 0x0
/* 814D2C54 | 4E 80 00 20 */	blr
.endfn VFSysGetDriveP

# .text:0x1698 | 0x814D2C58 | size: 0x6C
.fn VFSysPDMDisk2DriveP, global
/* 814D2C58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D2C5C | 7C 08 02 A6 */	mflr r0
/* 814D2C60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2C64 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D2C68 | 41 82 00 48 */	beq .L_814D2CB0
/* 814D2C6C | 48 00 2B B9 */	bl dCommon_getHandleIdxFromDisk
/* 814D2C70 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2C74 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2C78 | 40 80 00 1C */	bge .L_814D2C94
/* 814D2C7C | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2C80 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2C84 | 41 82 00 10 */	beq .L_814D2C94
/* 814D2C88 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2C8C | 7C 64 02 14 */	add r3, r4, r0
/* 814D2C90 | 48 00 00 08 */	b .L_814D2C98
.L_814D2C94:
/* 814D2C94 | 38 60 00 00 */	li r3, 0x0
.L_814D2C98:
/* 814D2C98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2C9C | 41 82 00 0C */	beq .L_814D2CA8
/* 814D2CA0 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814D2CA4 | 48 00 00 10 */	b .L_814D2CB4
.L_814D2CA8:
/* 814D2CA8 | 38 60 00 00 */	li r3, 0x0
/* 814D2CAC | 48 00 00 08 */	b .L_814D2CB4
.L_814D2CB0:
/* 814D2CB0 | 38 60 00 00 */	li r3, 0x0
.L_814D2CB4:
/* 814D2CB4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D2CB8 | 7C 08 03 A6 */	mtlr r0
/* 814D2CBC | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D2CC0 | 4E 80 00 20 */	blr
.endfn VFSysPDMDisk2DriveP

# .text:0x1704 | 0x814D2CC4 | size: 0xE8
.fn VFSysGetSDDirectStatus, global
/* 814D2CC4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D2CC8 | 7C 08 02 A6 */	mflr r0
/* 814D2CCC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D2CD0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D2CD4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D2CD8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D2CDC | 7C 9D 23 78 */	mr r29, r4
/* 814D2CE0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2CE4 | 7C 03 00 40 */	cmplw r3, r0
/* 814D2CE8 | 40 80 00 1C */	bge .L_814D2D04
/* 814D2CEC | 80 AD AE 50 */	lwz r5, l_sys_handle_table_p@sda21(r0)
/* 814D2CF0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D2CF4 | 41 82 00 10 */	beq .L_814D2D04
/* 814D2CF8 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2CFC | 7F E5 02 14 */	add r31, r5, r0
/* 814D2D00 | 48 00 00 08 */	b .L_814D2D08
.L_814D2D04:
/* 814D2D04 | 3B E0 00 00 */	li r31, 0x0
.L_814D2D08:
/* 814D2D08 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2D0C | 40 82 00 0C */	bne .L_814D2D18
/* 814D2D10 | 38 60 00 16 */	li r3, 0x16
/* 814D2D14 | 48 00 00 7C */	b .L_814D2D90
.L_814D2D18:
/* 814D2D18 | 2F 1F 00 00 */	cmpwi cr6, r31, 0x0
/* 814D2D1C | 41 9A 00 1C */	beq cr6, .L_814D2D38
/* 814D2D20 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2D24 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814D2D28 | 41 86 00 10 */	beq cr1, .L_814D2D38
/* 814D2D2C | 83 DF 00 00 */	lwz r30, 0x0(r31)
/* 814D2D30 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D2D34 | 40 82 00 10 */	bne .L_814D2D44
.L_814D2D38:
/* 814D2D38 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2D3C | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2D40 | 48 00 00 50 */	b .L_814D2D90
.L_814D2D44:
/* 814D2D44 | 41 9A 00 10 */	beq cr6, .L_814D2D54
/* 814D2D48 | 41 86 00 0C */	beq cr1, .L_814D2D54
/* 814D2D4C | 38 80 00 00 */	li r4, 0x0
/* 814D2D50 | 48 00 2A 55 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D2D54:
/* 814D2D54 | 7F A4 EB 78 */	mr r4, r29
/* 814D2D58 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814D2D5C | 48 11 B6 49 */	bl fn_815EE3A4
/* 814D2D60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2D64 | 7C 64 1B 78 */	mr r4, r3
/* 814D2D68 | 41 82 00 24 */	beq .L_814D2D8C
/* 814D2D6C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D2D70 | 41 82 00 14 */	beq .L_814D2D84
/* 814D2D74 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D2D78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2D7C | 41 82 00 08 */	beq .L_814D2D84
/* 814D2D80 | 48 00 2A 25 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D2D84:
/* 814D2D84 | 38 60 00 05 */	li r3, 0x5
/* 814D2D88 | 48 00 00 08 */	b .L_814D2D90
.L_814D2D8C:
/* 814D2D8C | 38 60 00 00 */	li r3, 0x0
.L_814D2D90:
/* 814D2D90 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D2D94 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D2D98 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D2D9C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D2DA0 | 7C 08 03 A6 */	mtlr r0
/* 814D2DA4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D2DA8 | 4E 80 00 20 */	blr
.endfn VFSysGetSDDirectStatus

# .text:0x17EC | 0x814D2DAC | size: 0x330
.fn VFSysFormatDrive, global
/* 814D2DAC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D2DB0 | 7C 08 02 A6 */	mflr r0
/* 814D2DB4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D2DB8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D2DBC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D2DC0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D2DC4 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D2DC8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2DCC | 7C 03 00 40 */	cmplw r3, r0
/* 814D2DD0 | 40 80 00 1C */	bge .L_814D2DEC
/* 814D2DD4 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D2DD8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D2DDC | 41 82 00 10 */	beq .L_814D2DEC
/* 814D2DE0 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D2DE4 | 7F A4 02 14 */	add r29, r4, r0
/* 814D2DE8 | 48 00 00 08 */	b .L_814D2DF0
.L_814D2DEC:
/* 814D2DEC | 3B A0 00 00 */	li r29, 0x0
.L_814D2DF0:
/* 814D2DF0 | 2C 9D 00 00 */	cmpwi cr1, r29, 0x0
/* 814D2DF4 | 41 86 00 10 */	beq cr1, .L_814D2E04
/* 814D2DF8 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814D2DFC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2E00 | 40 82 00 10 */	bne .L_814D2E10
.L_814D2E04:
/* 814D2E04 | 3C 60 00 01 */	lis r3, 0x1
/* 814D2E08 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2E0C | 48 00 02 B4 */	b .L_814D30C0
.L_814D2E10:
/* 814D2E10 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814D2E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2E18 | 40 82 00 10 */	bne .L_814D2E28
/* 814D2E1C | 3C 60 00 01 */	lis r3, 0x1
/* 814D2E20 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D2E24 | 48 00 02 9C */	b .L_814D30C0
.L_814D2E28:
/* 814D2E28 | 41 86 00 10 */	beq cr1, .L_814D2E38
/* 814D2E2C | 41 82 00 0C */	beq .L_814D2E38
/* 814D2E30 | 38 80 00 00 */	li r4, 0x0
/* 814D2E34 | 48 00 29 71 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D2E38:
/* 814D2E38 | 80 8D AE 40 */	lwz r4, l_vfsys_vol_max@sda21(r0)
/* 814D2E3C | 7C 1E 20 40 */	cmplw r30, r4
/* 814D2E40 | 40 80 00 1C */	bge .L_814D2E5C
/* 814D2E44 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D2E48 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2E4C | 41 82 00 10 */	beq .L_814D2E5C
/* 814D2E50 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D2E54 | 7C 63 02 14 */	add r3, r3, r0
/* 814D2E58 | 48 00 00 08 */	b .L_814D2E60
.L_814D2E5C:
/* 814D2E5C | 38 60 00 00 */	li r3, 0x0
.L_814D2E60:
/* 814D2E60 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2E64 | 41 82 00 1C */	beq .L_814D2E80
/* 814D2E68 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2E6C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2E70 | 41 82 00 10 */	beq .L_814D2E80
/* 814D2E74 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2E78 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2E7C | 40 82 00 0C */	bne .L_814D2E88
.L_814D2E80:
/* 814D2E80 | 3B E0 00 00 */	li r31, 0x0
/* 814D2E84 | 48 00 00 08 */	b .L_814D2E8C
.L_814D2E88:
/* 814D2E88 | 83 E3 00 0C */	lwz r31, 0xc(r3)
.L_814D2E8C:
/* 814D2E8C | 7C 1E 20 40 */	cmplw r30, r4
/* 814D2E90 | 40 80 00 1C */	bge .L_814D2EAC
/* 814D2E94 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D2E98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2E9C | 41 82 00 10 */	beq .L_814D2EAC
/* 814D2EA0 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D2EA4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D2EA8 | 48 00 00 08 */	b .L_814D2EB0
.L_814D2EAC:
/* 814D2EAC | 38 60 00 00 */	li r3, 0x0
.L_814D2EB0:
/* 814D2EB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2EB4 | 41 82 00 24 */	beq .L_814D2ED8
/* 814D2EB8 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2EBC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2EC0 | 41 82 00 18 */	beq .L_814D2ED8
/* 814D2EC4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2EC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2ECC | 41 82 00 0C */	beq .L_814D2ED8
/* 814D2ED0 | 38 00 00 01 */	li r0, 0x1
/* 814D2ED4 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D2ED8:
/* 814D2ED8 | 88 1D 00 14 */	lbz r0, 0x14(r29)
/* 814D2EDC | 38 80 00 00 */	li r4, 0x0
/* 814D2EE0 | 7C 03 07 74 */	extsb r3, r0
/* 814D2EE4 | 4B FF CA ED */	bl VFipf2_format
/* 814D2EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2EEC | 40 82 01 20 */	bne .L_814D300C
/* 814D2EF0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2EF4 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D2EF8 | 40 80 00 1C */	bge .L_814D2F14
/* 814D2EFC | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D2F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F04 | 41 82 00 10 */	beq .L_814D2F14
/* 814D2F08 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D2F0C | 7C 63 02 14 */	add r3, r3, r0
/* 814D2F10 | 48 00 00 08 */	b .L_814D2F18
.L_814D2F14:
/* 814D2F14 | 38 60 00 00 */	li r3, 0x0
.L_814D2F18:
/* 814D2F18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F1C | 41 82 00 24 */	beq .L_814D2F40
/* 814D2F20 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2F24 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2F28 | 41 82 00 18 */	beq .L_814D2F40
/* 814D2F2C | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F34 | 41 82 00 0C */	beq .L_814D2F40
/* 814D2F38 | 38 00 00 00 */	li r0, 0x0
/* 814D2F3C | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D2F40:
/* 814D2F40 | 7F C3 F3 78 */	mr r3, r30
/* 814D2F44 | 38 80 00 01 */	li r4, 0x1
/* 814D2F48 | 48 00 2A 91 */	bl dCommon_FlushFromHandleIdx
/* 814D2F4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F50 | 40 82 00 60 */	bne .L_814D2FB0
/* 814D2F54 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2F58 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D2F5C | 40 80 00 1C */	bge .L_814D2F78
/* 814D2F60 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D2F64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F68 | 41 82 00 10 */	beq .L_814D2F78
/* 814D2F6C | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D2F70 | 7C 63 02 14 */	add r3, r3, r0
/* 814D2F74 | 48 00 00 08 */	b .L_814D2F7C
.L_814D2F78:
/* 814D2F78 | 38 60 00 00 */	li r3, 0x0
.L_814D2F7C:
/* 814D2F7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F80 | 41 82 00 28 */	beq .L_814D2FA8
/* 814D2F84 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2F88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2F8C | 41 82 00 1C */	beq .L_814D2FA8
/* 814D2F90 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2F94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2F98 | 41 82 00 10 */	beq .L_814D2FA8
/* 814D2F9C | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D2FA0 | 41 81 00 08 */	bgt .L_814D2FA8
/* 814D2FA4 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D2FA8:
/* 814D2FA8 | 38 60 00 00 */	li r3, 0x0
/* 814D2FAC | 48 00 01 14 */	b .L_814D30C0
.L_814D2FB0:
/* 814D2FB0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D2FB4 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D2FB8 | 40 80 00 1C */	bge .L_814D2FD4
/* 814D2FBC | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D2FC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2FC4 | 41 82 00 10 */	beq .L_814D2FD4
/* 814D2FC8 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D2FCC | 7C 63 02 14 */	add r3, r3, r0
/* 814D2FD0 | 48 00 00 08 */	b .L_814D2FD8
.L_814D2FD4:
/* 814D2FD4 | 38 60 00 00 */	li r3, 0x0
.L_814D2FD8:
/* 814D2FD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2FDC | 41 82 00 28 */	beq .L_814D3004
/* 814D2FE0 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D2FE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D2FE8 | 41 82 00 1C */	beq .L_814D3004
/* 814D2FEC | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D2FF0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D2FF4 | 41 82 00 10 */	beq .L_814D3004
/* 814D2FF8 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D2FFC | 41 81 00 08 */	bgt .L_814D3004
/* 814D3000 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D3004:
/* 814D3004 | 38 60 00 05 */	li r3, 0x5
/* 814D3008 | 48 00 00 B8 */	b .L_814D30C0
.L_814D300C:
/* 814D300C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3010 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3014 | 40 80 00 1C */	bge .L_814D3030
/* 814D3018 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D301C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3020 | 41 82 00 10 */	beq .L_814D3030
/* 814D3024 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3028 | 7C 63 02 14 */	add r3, r3, r0
/* 814D302C | 48 00 00 08 */	b .L_814D3034
.L_814D3030:
/* 814D3030 | 38 60 00 00 */	li r3, 0x0
.L_814D3034:
/* 814D3034 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3038 | 41 82 00 24 */	beq .L_814D305C
/* 814D303C | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D3040 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3044 | 41 82 00 18 */	beq .L_814D305C
/* 814D3048 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D304C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3050 | 41 82 00 0C */	beq .L_814D305C
/* 814D3054 | 38 00 00 00 */	li r0, 0x0
/* 814D3058 | 90 03 00 0C */	stw r0, 0xc(r3)
.L_814D305C:
/* 814D305C | 7F C3 F3 78 */	mr r3, r30
/* 814D3060 | 38 80 00 01 */	li r4, 0x1
/* 814D3064 | 48 00 29 75 */	bl dCommon_FlushFromHandleIdx
/* 814D3068 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D306C | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3070 | 40 80 00 1C */	bge .L_814D308C
/* 814D3074 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3078 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D307C | 41 82 00 10 */	beq .L_814D308C
/* 814D3080 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3084 | 7C 63 02 14 */	add r3, r3, r0
/* 814D3088 | 48 00 00 08 */	b .L_814D3090
.L_814D308C:
/* 814D308C | 38 60 00 00 */	li r3, 0x0
.L_814D3090:
/* 814D3090 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3094 | 41 82 00 28 */	beq .L_814D30BC
/* 814D3098 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814D309C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D30A0 | 41 82 00 1C */	beq .L_814D30BC
/* 814D30A4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814D30A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D30AC | 41 82 00 10 */	beq .L_814D30BC
/* 814D30B0 | 28 1F 00 01 */	cmplwi r31, 0x1
/* 814D30B4 | 41 81 00 08 */	bgt .L_814D30BC
/* 814D30B8 | 93 E3 00 0C */	stw r31, 0xc(r3)
.L_814D30BC:
/* 814D30BC | 4B FF C7 FD */	bl VFipf2_errnum
.L_814D30C0:
/* 814D30C0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D30C4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D30C8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D30CC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D30D0 | 7C 08 03 A6 */	mtlr r0
/* 814D30D4 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D30D8 | 4E 80 00 20 */	blr
.endfn VFSysFormatDrive

# .text:0x1B1C | 0x814D30DC | size: 0x130
.fn VFSysCreateFile, global
/* 814D30DC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D30E0 | 7C 08 02 A6 */	mflr r0
/* 814D30E4 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D30E8 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D30EC | 7C 9F 23 78 */	mr r31, r4
/* 814D30F0 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D30F4 | 7C 7E 1B 78 */	mr r30, r3
/* 814D30F8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D30FC | 7C 03 00 40 */	cmplw r3, r0
/* 814D3100 | 40 80 00 1C */	bge .L_814D311C
/* 814D3104 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D3108 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D310C | 41 82 00 10 */	beq .L_814D311C
/* 814D3110 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D3114 | 7C 64 02 14 */	add r3, r4, r0
/* 814D3118 | 48 00 00 08 */	b .L_814D3120
.L_814D311C:
/* 814D311C | 38 60 00 00 */	li r3, 0x0
.L_814D3120:
/* 814D3120 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3124 | 41 82 00 3C */	beq .L_814D3160
/* 814D3128 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D312C | 7C 03 07 74 */	extsb r3, r0
/* 814D3130 | 4B FF AE B9 */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D3134 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3138 | 41 82 00 10 */	beq .L_814D3148
/* 814D313C | 4B FF AC 0D */	bl VFiPFVOL_SetCurrentVolume
/* 814D3140 | 38 60 00 00 */	li r3, 0x0
/* 814D3144 | 48 00 00 24 */	b .L_814D3168
.L_814D3148:
/* 814D3148 | 4B FF C7 71 */	bl VFipf2_errnum
/* 814D314C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3150 | 40 82 00 18 */	bne .L_814D3168
/* 814D3154 | 38 60 FF FF */	li r3, -0x1
/* 814D3158 | 48 00 00 10 */	b .L_814D3168
/* 814D315C | 48 00 00 0C */	b .L_814D3168
.L_814D3160:
/* 814D3160 | 3C 60 00 01 */	lis r3, 0x1
/* 814D3164 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3168:
/* 814D3168 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D316C | 40 82 00 7C */	bne .L_814D31E8
/* 814D3170 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3174 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3178 | 40 80 00 1C */	bge .L_814D3194
/* 814D317C | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3184 | 41 82 00 10 */	beq .L_814D3194
/* 814D3188 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D318C | 7C 63 02 14 */	add r3, r3, r0
/* 814D3190 | 48 00 00 08 */	b .L_814D3198
.L_814D3194:
/* 814D3194 | 38 60 00 00 */	li r3, 0x0
.L_814D3198:
/* 814D3198 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D319C | 41 82 00 1C */	beq .L_814D31B8
/* 814D31A0 | 41 82 00 18 */	beq .L_814D31B8
/* 814D31A4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D31A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D31AC | 41 82 00 0C */	beq .L_814D31B8
/* 814D31B0 | 38 80 00 00 */	li r4, 0x0
/* 814D31B4 | 48 00 25 F1 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D31B8:
/* 814D31B8 | 7F E3 FB 78 */	mr r3, r31
/* 814D31BC | 38 80 00 00 */	li r4, 0x0
/* 814D31C0 | 4B FF C6 6D */	bl VFipf2_create
/* 814D31C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D31C8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D31CC | 40 82 00 14 */	bne .L_814D31E0
/* 814D31D0 | 4B FF C6 E9 */	bl VFipf2_errnum
/* 814D31D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D31D8 | 41 82 00 08 */	beq .L_814D31E0
/* 814D31DC | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D31E0:
/* 814D31E0 | 7F E3 FB 78 */	mr r3, r31
/* 814D31E4 | 48 00 00 10 */	b .L_814D31F4
.L_814D31E8:
/* 814D31E8 | 41 82 00 08 */	beq .L_814D31F0
/* 814D31EC | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D31F0:
/* 814D31F0 | 38 60 00 00 */	li r3, 0x0
.L_814D31F4:
/* 814D31F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D31F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D31FC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D3200 | 7C 08 03 A6 */	mtlr r0
/* 814D3204 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3208 | 4E 80 00 20 */	blr
.endfn VFSysCreateFile

# .text:0x1C4C | 0x814D320C | size: 0xE0
.fn VFSysCreateFile_current, global
/* 814D320C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3210 | 7C 08 02 A6 */	mflr r0
/* 814D3214 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3218 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D321C | 7C 7F 1B 78 */	mr r31, r3
/* 814D3220 | 4B FF AC 75 */	bl VFiPFVOL_GetCurrentVolume
/* 814D3224 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3228 | 41 82 00 64 */	beq .L_814D328C
/* 814D322C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3230 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3234 | 41 82 00 14 */	beq .L_814D3248
/* 814D3238 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D323C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3240 | 41 82 00 08 */	beq .L_814D3248
/* 814D3244 | 48 00 00 08 */	b .L_814D324C
.L_814D3248:
/* 814D3248 | 38 C0 00 00 */	li r6, 0x0
.L_814D324C:
/* 814D324C | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3250 | 7C A6 02 14 */	add r5, r6, r0
/* 814D3254 | 48 00 00 30 */	b .L_814D3284
.L_814D3258:
/* 814D3258 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D325C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3260 | 41 82 00 20 */	beq .L_814D3280
/* 814D3264 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D3268 | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D326C | 7C 84 07 74 */	extsb r4, r4
/* 814D3270 | 7C 00 07 74 */	extsb r0, r0
/* 814D3274 | 7C 04 00 00 */	cmpw r4, r0
/* 814D3278 | 40 82 00 08 */	bne .L_814D3280
/* 814D327C | 48 00 00 14 */	b .L_814D3290
.L_814D3280:
/* 814D3280 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D3284:
/* 814D3284 | 7C 06 28 40 */	cmplw r6, r5
/* 814D3288 | 40 82 FF D0 */	bne .L_814D3258
.L_814D328C:
/* 814D328C | 38 C0 00 00 */	li r6, 0x0
.L_814D3290:
/* 814D3290 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3294 | 41 82 00 18 */	beq .L_814D32AC
/* 814D3298 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D329C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D32A0 | 41 82 00 0C */	beq .L_814D32AC
/* 814D32A4 | 38 80 00 00 */	li r4, 0x0
/* 814D32A8 | 48 00 24 FD */	bl dCommon_setLastDeviceErrorToDisk
.L_814D32AC:
/* 814D32AC | 7F E3 FB 78 */	mr r3, r31
/* 814D32B0 | 38 80 00 00 */	li r4, 0x0
/* 814D32B4 | 4B FF C5 79 */	bl VFipf2_create
/* 814D32B8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D32BC | 7C 7F 1B 78 */	mr r31, r3
/* 814D32C0 | 40 82 00 14 */	bne .L_814D32D4
/* 814D32C4 | 4B FF C5 F5 */	bl VFipf2_errnum
/* 814D32C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D32CC | 41 82 00 08 */	beq .L_814D32D4
/* 814D32D0 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D32D4:
/* 814D32D4 | 7F E3 FB 78 */	mr r3, r31
/* 814D32D8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D32DC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D32E0 | 7C 08 03 A6 */	mtlr r0
/* 814D32E4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D32E8 | 4E 80 00 20 */	blr
.endfn VFSysCreateFile_current

# .text:0x1D2C | 0x814D32EC | size: 0x13C
.fn VFSysOpenFile, global
/* 814D32EC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D32F0 | 7C 08 02 A6 */	mflr r0
/* 814D32F4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D32F8 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D32FC | 7C BF 2B 78 */	mr r31, r5
/* 814D3300 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D3304 | 7C 9E 23 78 */	mr r30, r4
/* 814D3308 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D330C | 7C 7D 1B 78 */	mr r29, r3
/* 814D3310 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3314 | 7C 03 00 40 */	cmplw r3, r0
/* 814D3318 | 40 80 00 1C */	bge .L_814D3334
/* 814D331C | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D3320 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3324 | 41 82 00 10 */	beq .L_814D3334
/* 814D3328 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D332C | 7C 64 02 14 */	add r3, r4, r0
/* 814D3330 | 48 00 00 08 */	b .L_814D3338
.L_814D3334:
/* 814D3334 | 38 60 00 00 */	li r3, 0x0
.L_814D3338:
/* 814D3338 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D333C | 41 82 00 3C */	beq .L_814D3378
/* 814D3340 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D3344 | 7C 03 07 74 */	extsb r3, r0
/* 814D3348 | 4B FF AC A1 */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D334C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3350 | 41 82 00 10 */	beq .L_814D3360
/* 814D3354 | 4B FF A9 F5 */	bl VFiPFVOL_SetCurrentVolume
/* 814D3358 | 38 60 00 00 */	li r3, 0x0
/* 814D335C | 48 00 00 24 */	b .L_814D3380
.L_814D3360:
/* 814D3360 | 4B FF C5 59 */	bl VFipf2_errnum
/* 814D3364 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3368 | 40 82 00 18 */	bne .L_814D3380
/* 814D336C | 38 60 FF FF */	li r3, -0x1
/* 814D3370 | 48 00 00 10 */	b .L_814D3380
/* 814D3374 | 48 00 00 0C */	b .L_814D3380
.L_814D3378:
/* 814D3378 | 3C 60 00 01 */	lis r3, 0x1
/* 814D337C | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3380:
/* 814D3380 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3384 | 40 82 00 7C */	bne .L_814D3400
/* 814D3388 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D338C | 7C 1D 00 40 */	cmplw r29, r0
/* 814D3390 | 40 80 00 1C */	bge .L_814D33AC
/* 814D3394 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3398 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D339C | 41 82 00 10 */	beq .L_814D33AC
/* 814D33A0 | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D33A4 | 7C 63 02 14 */	add r3, r3, r0
/* 814D33A8 | 48 00 00 08 */	b .L_814D33B0
.L_814D33AC:
/* 814D33AC | 38 60 00 00 */	li r3, 0x0
.L_814D33B0:
/* 814D33B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D33B4 | 41 82 00 1C */	beq .L_814D33D0
/* 814D33B8 | 41 82 00 18 */	beq .L_814D33D0
/* 814D33BC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D33C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D33C4 | 41 82 00 0C */	beq .L_814D33D0
/* 814D33C8 | 38 80 00 00 */	li r4, 0x0
/* 814D33CC | 48 00 23 D9 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D33D0:
/* 814D33D0 | 7F C3 F3 78 */	mr r3, r30
/* 814D33D4 | 7F E4 FB 78 */	mr r4, r31
/* 814D33D8 | 4B FF C5 4D */	bl VFipf2_fopen
/* 814D33DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D33E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D33E4 | 40 82 00 14 */	bne .L_814D33F8
/* 814D33E8 | 4B FF C4 D1 */	bl VFipf2_errnum
/* 814D33EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D33F0 | 41 82 00 08 */	beq .L_814D33F8
/* 814D33F4 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D33F8:
/* 814D33F8 | 7F E3 FB 78 */	mr r3, r31
/* 814D33FC | 48 00 00 10 */	b .L_814D340C
.L_814D3400:
/* 814D3400 | 41 82 00 08 */	beq .L_814D3408
/* 814D3404 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D3408:
/* 814D3408 | 38 60 00 00 */	li r3, 0x0
.L_814D340C:
/* 814D340C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D3410 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D3414 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D3418 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D341C | 7C 08 03 A6 */	mtlr r0
/* 814D3420 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D3424 | 4E 80 00 20 */	blr
.endfn VFSysOpenFile

# .text:0x1E68 | 0x814D3428 | size: 0xEC
.fn VFSysOpenFile_current, global
/* 814D3428 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D342C | 7C 08 02 A6 */	mflr r0
/* 814D3430 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3434 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3438 | 7C 9F 23 78 */	mr r31, r4
/* 814D343C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D3440 | 7C 7E 1B 78 */	mr r30, r3
/* 814D3444 | 4B FF AA 51 */	bl VFiPFVOL_GetCurrentVolume
/* 814D3448 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D344C | 41 82 00 64 */	beq .L_814D34B0
/* 814D3450 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3454 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3458 | 41 82 00 14 */	beq .L_814D346C
/* 814D345C | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D3460 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3464 | 41 82 00 08 */	beq .L_814D346C
/* 814D3468 | 48 00 00 08 */	b .L_814D3470
.L_814D346C:
/* 814D346C | 38 C0 00 00 */	li r6, 0x0
.L_814D3470:
/* 814D3470 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3474 | 7C A6 02 14 */	add r5, r6, r0
/* 814D3478 | 48 00 00 30 */	b .L_814D34A8
.L_814D347C:
/* 814D347C | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D3480 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3484 | 41 82 00 20 */	beq .L_814D34A4
/* 814D3488 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D348C | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D3490 | 7C 84 07 74 */	extsb r4, r4
/* 814D3494 | 7C 00 07 74 */	extsb r0, r0
/* 814D3498 | 7C 04 00 00 */	cmpw r4, r0
/* 814D349C | 40 82 00 08 */	bne .L_814D34A4
/* 814D34A0 | 48 00 00 14 */	b .L_814D34B4
.L_814D34A4:
/* 814D34A4 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D34A8:
/* 814D34A8 | 7C 06 28 40 */	cmplw r6, r5
/* 814D34AC | 40 82 FF D0 */	bne .L_814D347C
.L_814D34B0:
/* 814D34B0 | 38 C0 00 00 */	li r6, 0x0
.L_814D34B4:
/* 814D34B4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D34B8 | 41 82 00 18 */	beq .L_814D34D0
/* 814D34BC | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D34C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D34C4 | 41 82 00 0C */	beq .L_814D34D0
/* 814D34C8 | 38 80 00 00 */	li r4, 0x0
/* 814D34CC | 48 00 22 D9 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D34D0:
/* 814D34D0 | 7F C3 F3 78 */	mr r3, r30
/* 814D34D4 | 7F E4 FB 78 */	mr r4, r31
/* 814D34D8 | 4B FF C4 4D */	bl VFipf2_fopen
/* 814D34DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D34E0 | 7C 7F 1B 78 */	mr r31, r3
/* 814D34E4 | 40 82 00 14 */	bne .L_814D34F8
/* 814D34E8 | 4B FF C3 D1 */	bl VFipf2_errnum
/* 814D34EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D34F0 | 41 82 00 08 */	beq .L_814D34F8
/* 814D34F4 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
.L_814D34F8:
/* 814D34F8 | 7F E3 FB 78 */	mr r3, r31
/* 814D34FC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3500 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D3504 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3508 | 7C 08 03 A6 */	mtlr r0
/* 814D350C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3510 | 4E 80 00 20 */	blr
.endfn VFSysOpenFile_current

# .text:0x1F54 | 0x814D3514 | size: 0xE8
.fn VFSysCloseFile, global
/* 814D3514 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3518 | 7C 08 02 A6 */	mflr r0
/* 814D351C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3520 | 38 C0 00 00 */	li r6, 0x0
/* 814D3524 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3528 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D352C | 7C 7F 1B 78 */	mr r31, r3
/* 814D3530 | 41 82 00 80 */	beq .L_814D35B0
/* 814D3534 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3538 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D353C | 41 82 00 74 */	beq .L_814D35B0
/* 814D3540 | 80 83 00 34 */	lwz r4, 0x34(r3)
/* 814D3544 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3548 | 41 82 00 64 */	beq .L_814D35AC
/* 814D354C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3550 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3554 | 41 82 00 14 */	beq .L_814D3568
/* 814D3558 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D355C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3560 | 41 82 00 08 */	beq .L_814D3568
/* 814D3564 | 48 00 00 08 */	b .L_814D356C
.L_814D3568:
/* 814D3568 | 38 C0 00 00 */	li r6, 0x0
.L_814D356C:
/* 814D356C | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3570 | 7C A6 02 14 */	add r5, r6, r0
/* 814D3574 | 48 00 00 30 */	b .L_814D35A4
.L_814D3578:
/* 814D3578 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D357C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3580 | 41 82 00 20 */	beq .L_814D35A0
/* 814D3584 | 88 66 00 14 */	lbz r3, 0x14(r6)
/* 814D3588 | 88 04 18 62 */	lbz r0, 0x1862(r4)
/* 814D358C | 7C 63 07 74 */	extsb r3, r3
/* 814D3590 | 7C 00 07 74 */	extsb r0, r0
/* 814D3594 | 7C 03 00 00 */	cmpw r3, r0
/* 814D3598 | 40 82 00 08 */	bne .L_814D35A0
/* 814D359C | 48 00 00 14 */	b .L_814D35B0
.L_814D35A0:
/* 814D35A0 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D35A4:
/* 814D35A4 | 7C 06 28 40 */	cmplw r6, r5
/* 814D35A8 | 40 82 FF D0 */	bne .L_814D3578
.L_814D35AC:
/* 814D35AC | 38 C0 00 00 */	li r6, 0x0
.L_814D35B0:
/* 814D35B0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D35B4 | 41 82 00 18 */	beq .L_814D35CC
/* 814D35B8 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D35BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D35C0 | 41 82 00 0C */	beq .L_814D35CC
/* 814D35C4 | 38 80 00 00 */	li r4, 0x0
/* 814D35C8 | 48 00 21 DD */	bl dCommon_setLastDeviceErrorToDisk
.L_814D35CC:
/* 814D35CC | 7F E3 FB 78 */	mr r3, r31
/* 814D35D0 | 4B FF C3 0D */	bl VFipf2_fclose
/* 814D35D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D35D8 | 40 82 00 0C */	bne .L_814D35E4
/* 814D35DC | 38 60 00 00 */	li r3, 0x0
/* 814D35E0 | 48 00 00 08 */	b .L_814D35E8
.L_814D35E4:
/* 814D35E4 | 4B FF C2 D5 */	bl VFipf2_errnum
.L_814D35E8:
/* 814D35E8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D35EC | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D35F0 | 7C 08 03 A6 */	mtlr r0
/* 814D35F4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D35F8 | 4E 80 00 20 */	blr
.endfn VFSysCloseFile

# .text:0x203C | 0x814D35FC | size: 0x108
.fn VFSysSeekFile, global
/* 814D35FC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D3600 | 7C 08 02 A6 */	mflr r0
/* 814D3604 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3608 | 38 C0 00 00 */	li r6, 0x0
/* 814D360C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D3610 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D3614 | 7C BF 2B 78 */	mr r31, r5
/* 814D3618 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D361C | 7C 9E 23 78 */	mr r30, r4
/* 814D3620 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D3624 | 7C 7D 1B 78 */	mr r29, r3
/* 814D3628 | 41 82 00 80 */	beq .L_814D36A8
/* 814D362C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3630 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3634 | 41 82 00 74 */	beq .L_814D36A8
/* 814D3638 | 80 83 00 34 */	lwz r4, 0x34(r3)
/* 814D363C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3640 | 41 82 00 64 */	beq .L_814D36A4
/* 814D3644 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3648 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D364C | 41 82 00 14 */	beq .L_814D3660
/* 814D3650 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D3654 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3658 | 41 82 00 08 */	beq .L_814D3660
/* 814D365C | 48 00 00 08 */	b .L_814D3664
.L_814D3660:
/* 814D3660 | 38 C0 00 00 */	li r6, 0x0
.L_814D3664:
/* 814D3664 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3668 | 7C A6 02 14 */	add r5, r6, r0
/* 814D366C | 48 00 00 30 */	b .L_814D369C
.L_814D3670:
/* 814D3670 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D3674 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3678 | 41 82 00 20 */	beq .L_814D3698
/* 814D367C | 88 66 00 14 */	lbz r3, 0x14(r6)
/* 814D3680 | 88 04 18 62 */	lbz r0, 0x1862(r4)
/* 814D3684 | 7C 63 07 74 */	extsb r3, r3
/* 814D3688 | 7C 00 07 74 */	extsb r0, r0
/* 814D368C | 7C 03 00 00 */	cmpw r3, r0
/* 814D3690 | 40 82 00 08 */	bne .L_814D3698
/* 814D3694 | 48 00 00 14 */	b .L_814D36A8
.L_814D3698:
/* 814D3698 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D369C:
/* 814D369C | 7C 06 28 40 */	cmplw r6, r5
/* 814D36A0 | 40 82 FF D0 */	bne .L_814D3670
.L_814D36A4:
/* 814D36A4 | 38 C0 00 00 */	li r6, 0x0
.L_814D36A8:
/* 814D36A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D36AC | 41 82 00 18 */	beq .L_814D36C4
/* 814D36B0 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D36B4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D36B8 | 41 82 00 0C */	beq .L_814D36C4
/* 814D36BC | 38 80 00 00 */	li r4, 0x0
/* 814D36C0 | 48 00 20 E5 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D36C4:
/* 814D36C4 | 7F A3 EB 78 */	mr r3, r29
/* 814D36C8 | 7F C4 F3 78 */	mr r4, r30
/* 814D36CC | 7F E5 FB 78 */	mr r5, r31
/* 814D36D0 | 4B FF C3 51 */	bl VFipf2_fseek
/* 814D36D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D36D8 | 40 82 00 0C */	bne .L_814D36E4
/* 814D36DC | 38 60 00 00 */	li r3, 0x0
/* 814D36E0 | 48 00 00 08 */	b .L_814D36E8
.L_814D36E4:
/* 814D36E4 | 4B FF C1 D5 */	bl VFipf2_errnum
.L_814D36E8:
/* 814D36E8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D36EC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D36F0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D36F4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D36F8 | 7C 08 03 A6 */	mtlr r0
/* 814D36FC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D3700 | 4E 80 00 20 */	blr
.endfn VFSysSeekFile

# .text:0x2144 | 0x814D3704 | size: 0x178
.fn VFSysReadFile, global
/* 814D3704 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814D3708 | 7C 08 02 A6 */	mflr r0
/* 814D370C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814D3710 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814D3714 | 48 12 5D AD */	bl _savegpr_27
/* 814D3718 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D371C | 7C 7C 1B 78 */	mr r28, r3
/* 814D3720 | 7C 9D 23 78 */	mr r29, r4
/* 814D3724 | 7C BE 2B 78 */	mr r30, r5
/* 814D3728 | 7C DF 33 78 */	mr r31, r6
/* 814D372C | 41 82 00 0C */	beq .L_814D3738
/* 814D3730 | 38 00 00 00 */	li r0, 0x0
/* 814D3734 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814D3738:
/* 814D3738 | 7F E3 FB 78 */	mr r3, r31
/* 814D373C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D3740 | 4B FF C1 C1 */	bl VFipf2_finfo
/* 814D3744 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3748 | 40 82 01 18 */	bne .L_814D3860
/* 814D374C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814D3750 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D3754 | 7F 63 00 50 */	subf r27, r3, r0
/* 814D3758 | 7C 1E D8 40 */	cmplw r30, r27
/* 814D375C | 40 81 00 18 */	ble .L_814D3774
/* 814D3760 | 7F A3 EB 78 */	mr r3, r29
/* 814D3764 | 7F C5 F3 78 */	mr r5, r30
/* 814D3768 | 38 80 00 00 */	li r4, 0x0
/* 814D376C | 4B FE 21 9D */	bl VFipf_memset
/* 814D3770 | 7F 7E DB 78 */	mr r30, r27
.L_814D3774:
/* 814D3774 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814D3778 | 38 C0 00 00 */	li r6, 0x0
/* 814D377C | 41 82 00 80 */	beq .L_814D37FC
/* 814D3780 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D3784 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3788 | 41 82 00 74 */	beq .L_814D37FC
/* 814D378C | 80 83 00 34 */	lwz r4, 0x34(r3)
/* 814D3790 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3794 | 41 82 00 64 */	beq .L_814D37F8
/* 814D3798 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D379C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D37A0 | 41 82 00 14 */	beq .L_814D37B4
/* 814D37A4 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D37A8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D37AC | 41 82 00 08 */	beq .L_814D37B4
/* 814D37B0 | 48 00 00 08 */	b .L_814D37B8
.L_814D37B4:
/* 814D37B4 | 38 C0 00 00 */	li r6, 0x0
.L_814D37B8:
/* 814D37B8 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D37BC | 7C A6 02 14 */	add r5, r6, r0
/* 814D37C0 | 48 00 00 30 */	b .L_814D37F0
.L_814D37C4:
/* 814D37C4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D37C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D37CC | 41 82 00 20 */	beq .L_814D37EC
/* 814D37D0 | 88 66 00 14 */	lbz r3, 0x14(r6)
/* 814D37D4 | 88 04 18 62 */	lbz r0, 0x1862(r4)
/* 814D37D8 | 7C 63 07 74 */	extsb r3, r3
/* 814D37DC | 7C 00 07 74 */	extsb r0, r0
/* 814D37E0 | 7C 03 00 00 */	cmpw r3, r0
/* 814D37E4 | 40 82 00 08 */	bne .L_814D37EC
/* 814D37E8 | 48 00 00 14 */	b .L_814D37FC
.L_814D37EC:
/* 814D37EC | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D37F0:
/* 814D37F0 | 7C 06 28 40 */	cmplw r6, r5
/* 814D37F4 | 40 82 FF D0 */	bne .L_814D37C4
.L_814D37F8:
/* 814D37F8 | 38 C0 00 00 */	li r6, 0x0
.L_814D37FC:
/* 814D37FC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3800 | 41 82 00 18 */	beq .L_814D3818
/* 814D3804 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D3808 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D380C | 41 82 00 0C */	beq .L_814D3818
/* 814D3810 | 38 80 00 00 */	li r4, 0x0
/* 814D3814 | 48 00 1F 91 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3818:
/* 814D3818 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814D381C | 41 82 00 3C */	beq .L_814D3858
/* 814D3820 | 7F A3 EB 78 */	mr r3, r29
/* 814D3824 | 7F C4 F3 78 */	mr r4, r30
/* 814D3828 | 7F E6 FB 78 */	mr r6, r31
/* 814D382C | 38 A0 00 01 */	li r5, 0x1
/* 814D3830 | 4B FF C1 C9 */	bl VFipf2_fread
/* 814D3834 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814D3838 | 40 82 00 18 */	bne .L_814D3850
/* 814D383C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814D3840 | 41 82 00 08 */	beq .L_814D3848
/* 814D3844 | 93 DC 00 00 */	stw r30, 0x0(r28)
.L_814D3848:
/* 814D3848 | 38 60 00 00 */	li r3, 0x0
/* 814D384C | 48 00 00 18 */	b .L_814D3864
.L_814D3850:
/* 814D3850 | 4B FF C0 69 */	bl VFipf2_errnum
/* 814D3854 | 48 00 00 10 */	b .L_814D3864
.L_814D3858:
/* 814D3858 | 38 60 00 00 */	li r3, 0x0
/* 814D385C | 48 00 00 08 */	b .L_814D3864
.L_814D3860:
/* 814D3860 | 4B FF C0 59 */	bl VFipf2_errnum
.L_814D3864:
/* 814D3864 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814D3868 | 48 12 5C A5 */	bl _restgpr_27
/* 814D386C | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814D3870 | 7C 08 03 A6 */	mtlr r0
/* 814D3874 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814D3878 | 4E 80 00 20 */	blr
.endfn VFSysReadFile

# .text:0x22BC | 0x814D387C | size: 0x10C
.fn VFSysWriteFile, global
/* 814D387C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D3880 | 7C 08 02 A6 */	mflr r0
/* 814D3884 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D3888 | 38 C0 00 00 */	li r6, 0x0
/* 814D388C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D3890 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D3894 | 7C BF 2B 78 */	mr r31, r5
/* 814D3898 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D389C | 7C 9E 23 78 */	mr r30, r4
/* 814D38A0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D38A4 | 7C 7D 1B 78 */	mr r29, r3
/* 814D38A8 | 41 82 00 80 */	beq .L_814D3928
/* 814D38AC | 80 65 00 08 */	lwz r3, 0x8(r5)
/* 814D38B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D38B4 | 41 82 00 74 */	beq .L_814D3928
/* 814D38B8 | 80 83 00 34 */	lwz r4, 0x34(r3)
/* 814D38BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D38C0 | 41 82 00 64 */	beq .L_814D3924
/* 814D38C4 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D38C8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D38CC | 41 82 00 14 */	beq .L_814D38E0
/* 814D38D0 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D38D4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D38D8 | 41 82 00 08 */	beq .L_814D38E0
/* 814D38DC | 48 00 00 08 */	b .L_814D38E4
.L_814D38E0:
/* 814D38E0 | 38 C0 00 00 */	li r6, 0x0
.L_814D38E4:
/* 814D38E4 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D38E8 | 7C A6 02 14 */	add r5, r6, r0
/* 814D38EC | 48 00 00 30 */	b .L_814D391C
.L_814D38F0:
/* 814D38F0 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D38F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D38F8 | 41 82 00 20 */	beq .L_814D3918
/* 814D38FC | 88 66 00 14 */	lbz r3, 0x14(r6)
/* 814D3900 | 88 04 18 62 */	lbz r0, 0x1862(r4)
/* 814D3904 | 7C 63 07 74 */	extsb r3, r3
/* 814D3908 | 7C 00 07 74 */	extsb r0, r0
/* 814D390C | 7C 03 00 00 */	cmpw r3, r0
/* 814D3910 | 40 82 00 08 */	bne .L_814D3918
/* 814D3914 | 48 00 00 14 */	b .L_814D3928
.L_814D3918:
/* 814D3918 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D391C:
/* 814D391C | 7C 06 28 40 */	cmplw r6, r5
/* 814D3920 | 40 82 FF D0 */	bne .L_814D38F0
.L_814D3924:
/* 814D3924 | 38 C0 00 00 */	li r6, 0x0
.L_814D3928:
/* 814D3928 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D392C | 41 82 00 18 */	beq .L_814D3944
/* 814D3930 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D3934 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3938 | 41 82 00 0C */	beq .L_814D3944
/* 814D393C | 38 80 00 00 */	li r4, 0x0
/* 814D3940 | 48 00 1E 65 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3944:
/* 814D3944 | 7F A3 EB 78 */	mr r3, r29
/* 814D3948 | 7F C4 F3 78 */	mr r4, r30
/* 814D394C | 7F E6 FB 78 */	mr r6, r31
/* 814D3950 | 38 A0 00 01 */	li r5, 0x1
/* 814D3954 | 4B FF C1 89 */	bl VFipf2_fwrite
/* 814D3958 | 28 03 00 01 */	cmplwi r3, 0x1
/* 814D395C | 40 82 00 0C */	bne .L_814D3968
/* 814D3960 | 38 60 00 00 */	li r3, 0x0
/* 814D3964 | 48 00 00 08 */	b .L_814D396C
.L_814D3968:
/* 814D3968 | 4B FF BF 51 */	bl VFipf2_errnum
.L_814D396C:
/* 814D396C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D3970 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D3974 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D3978 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D397C | 7C 08 03 A6 */	mtlr r0
/* 814D3980 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D3984 | 4E 80 00 20 */	blr
.endfn VFSysWriteFile

# .text:0x23C8 | 0x814D3988 | size: 0x110
.fn VFSysDeleteFile, global
/* 814D3988 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D398C | 7C 08 02 A6 */	mflr r0
/* 814D3990 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3994 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3998 | 7C 9F 23 78 */	mr r31, r4
/* 814D399C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D39A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814D39A4 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D39A8 | 7C 03 00 40 */	cmplw r3, r0
/* 814D39AC | 40 80 00 1C */	bge .L_814D39C8
/* 814D39B0 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D39B4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D39B8 | 41 82 00 10 */	beq .L_814D39C8
/* 814D39BC | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D39C0 | 7C 64 02 14 */	add r3, r4, r0
/* 814D39C4 | 48 00 00 08 */	b .L_814D39CC
.L_814D39C8:
/* 814D39C8 | 38 60 00 00 */	li r3, 0x0
.L_814D39CC:
/* 814D39CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D39D0 | 41 82 00 3C */	beq .L_814D3A0C
/* 814D39D4 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D39D8 | 7C 03 07 74 */	extsb r3, r0
/* 814D39DC | 4B FF A6 0D */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D39E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D39E4 | 41 82 00 10 */	beq .L_814D39F4
/* 814D39E8 | 4B FF A3 61 */	bl VFiPFVOL_SetCurrentVolume
/* 814D39EC | 38 60 00 00 */	li r3, 0x0
/* 814D39F0 | 48 00 00 24 */	b .L_814D3A14
.L_814D39F4:
/* 814D39F4 | 4B FF BE C5 */	bl VFipf2_errnum
/* 814D39F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D39FC | 40 82 00 18 */	bne .L_814D3A14
/* 814D3A00 | 38 60 FF FF */	li r3, -0x1
/* 814D3A04 | 48 00 00 10 */	b .L_814D3A14
/* 814D3A08 | 48 00 00 0C */	b .L_814D3A14
.L_814D3A0C:
/* 814D3A0C | 3C 60 00 01 */	lis r3, 0x1
/* 814D3A10 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3A14:
/* 814D3A14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3A18 | 40 82 00 68 */	bne .L_814D3A80
/* 814D3A1C | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3A20 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3A24 | 40 80 00 1C */	bge .L_814D3A40
/* 814D3A28 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3A2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3A30 | 41 82 00 10 */	beq .L_814D3A40
/* 814D3A34 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3A38 | 7C 63 02 14 */	add r3, r3, r0
/* 814D3A3C | 48 00 00 08 */	b .L_814D3A44
.L_814D3A40:
/* 814D3A40 | 38 60 00 00 */	li r3, 0x0
.L_814D3A44:
/* 814D3A44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3A48 | 41 82 00 1C */	beq .L_814D3A64
/* 814D3A4C | 41 82 00 18 */	beq .L_814D3A64
/* 814D3A50 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3A58 | 41 82 00 0C */	beq .L_814D3A64
/* 814D3A5C | 38 80 00 00 */	li r4, 0x0
/* 814D3A60 | 48 00 1D 45 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3A64:
/* 814D3A64 | 7F E3 FB 78 */	mr r3, r31
/* 814D3A68 | 4B FF C1 55 */	bl VFipf2_remove
/* 814D3A6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3A70 | 40 82 00 0C */	bne .L_814D3A7C
/* 814D3A74 | 38 60 00 00 */	li r3, 0x0
/* 814D3A78 | 48 00 00 08 */	b .L_814D3A80
.L_814D3A7C:
/* 814D3A7C | 4B FF BE 3D */	bl VFipf2_errnum
.L_814D3A80:
/* 814D3A80 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3A84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3A88 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D3A8C | 7C 08 03 A6 */	mtlr r0
/* 814D3A90 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3A94 | 4E 80 00 20 */	blr
.endfn VFSysDeleteFile

# .text:0x24D8 | 0x814D3A98 | size: 0xD0
.fn VFSysDeleteFile_current, global
/* 814D3A98 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3A9C | 7C 08 02 A6 */	mflr r0
/* 814D3AA0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3AA4 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3AA8 | 7C 7F 1B 78 */	mr r31, r3
/* 814D3AAC | 4B FF A3 E9 */	bl VFiPFVOL_GetCurrentVolume
/* 814D3AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3AB4 | 41 82 00 64 */	beq .L_814D3B18
/* 814D3AB8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3ABC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3AC0 | 41 82 00 14 */	beq .L_814D3AD4
/* 814D3AC4 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D3AC8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3ACC | 41 82 00 08 */	beq .L_814D3AD4
/* 814D3AD0 | 48 00 00 08 */	b .L_814D3AD8
.L_814D3AD4:
/* 814D3AD4 | 38 C0 00 00 */	li r6, 0x0
.L_814D3AD8:
/* 814D3AD8 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3ADC | 7C A6 02 14 */	add r5, r6, r0
/* 814D3AE0 | 48 00 00 30 */	b .L_814D3B10
.L_814D3AE4:
/* 814D3AE4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D3AE8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3AEC | 41 82 00 20 */	beq .L_814D3B0C
/* 814D3AF0 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D3AF4 | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D3AF8 | 7C 84 07 74 */	extsb r4, r4
/* 814D3AFC | 7C 00 07 74 */	extsb r0, r0
/* 814D3B00 | 7C 04 00 00 */	cmpw r4, r0
/* 814D3B04 | 40 82 00 08 */	bne .L_814D3B0C
/* 814D3B08 | 48 00 00 14 */	b .L_814D3B1C
.L_814D3B0C:
/* 814D3B0C | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D3B10:
/* 814D3B10 | 7C 06 28 40 */	cmplw r6, r5
/* 814D3B14 | 40 82 FF D0 */	bne .L_814D3AE4
.L_814D3B18:
/* 814D3B18 | 38 C0 00 00 */	li r6, 0x0
.L_814D3B1C:
/* 814D3B1C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3B20 | 41 82 00 18 */	beq .L_814D3B38
/* 814D3B24 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D3B28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3B2C | 41 82 00 0C */	beq .L_814D3B38
/* 814D3B30 | 38 80 00 00 */	li r4, 0x0
/* 814D3B34 | 48 00 1C 71 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3B38:
/* 814D3B38 | 7F E3 FB 78 */	mr r3, r31
/* 814D3B3C | 4B FF C0 81 */	bl VFipf2_remove
/* 814D3B40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3B44 | 40 82 00 0C */	bne .L_814D3B50
/* 814D3B48 | 38 60 00 00 */	li r3, 0x0
/* 814D3B4C | 48 00 00 08 */	b .L_814D3B54
.L_814D3B50:
/* 814D3B50 | 4B FF BD 69 */	bl VFipf2_errnum
.L_814D3B54:
/* 814D3B54 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3B58 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3B5C | 7C 08 03 A6 */	mtlr r0
/* 814D3B60 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3B64 | 4E 80 00 20 */	blr
.endfn VFSysDeleteFile_current

# .text:0x25A8 | 0x814D3B68 | size: 0x110
.fn VFSysCreateDir, global
/* 814D3B68 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3B6C | 7C 08 02 A6 */	mflr r0
/* 814D3B70 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3B74 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3B78 | 7C 9F 23 78 */	mr r31, r4
/* 814D3B7C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D3B80 | 7C 7E 1B 78 */	mr r30, r3
/* 814D3B84 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3B88 | 7C 03 00 40 */	cmplw r3, r0
/* 814D3B8C | 40 80 00 1C */	bge .L_814D3BA8
/* 814D3B90 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D3B94 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3B98 | 41 82 00 10 */	beq .L_814D3BA8
/* 814D3B9C | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D3BA0 | 7C 64 02 14 */	add r3, r4, r0
/* 814D3BA4 | 48 00 00 08 */	b .L_814D3BAC
.L_814D3BA8:
/* 814D3BA8 | 38 60 00 00 */	li r3, 0x0
.L_814D3BAC:
/* 814D3BAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3BB0 | 41 82 00 3C */	beq .L_814D3BEC
/* 814D3BB4 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D3BB8 | 7C 03 07 74 */	extsb r3, r0
/* 814D3BBC | 4B FF A4 2D */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D3BC0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3BC4 | 41 82 00 10 */	beq .L_814D3BD4
/* 814D3BC8 | 4B FF A1 81 */	bl VFiPFVOL_SetCurrentVolume
/* 814D3BCC | 38 60 00 00 */	li r3, 0x0
/* 814D3BD0 | 48 00 00 24 */	b .L_814D3BF4
.L_814D3BD4:
/* 814D3BD4 | 4B FF BC E5 */	bl VFipf2_errnum
/* 814D3BD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3BDC | 40 82 00 18 */	bne .L_814D3BF4
/* 814D3BE0 | 38 60 FF FF */	li r3, -0x1
/* 814D3BE4 | 48 00 00 10 */	b .L_814D3BF4
/* 814D3BE8 | 48 00 00 0C */	b .L_814D3BF4
.L_814D3BEC:
/* 814D3BEC | 3C 60 00 01 */	lis r3, 0x1
/* 814D3BF0 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3BF4:
/* 814D3BF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3BF8 | 40 82 00 68 */	bne .L_814D3C60
/* 814D3BFC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3C00 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3C04 | 40 80 00 1C */	bge .L_814D3C20
/* 814D3C08 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3C0C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3C10 | 41 82 00 10 */	beq .L_814D3C20
/* 814D3C14 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3C18 | 7C 63 02 14 */	add r3, r3, r0
/* 814D3C1C | 48 00 00 08 */	b .L_814D3C24
.L_814D3C20:
/* 814D3C20 | 38 60 00 00 */	li r3, 0x0
.L_814D3C24:
/* 814D3C24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3C28 | 41 82 00 1C */	beq .L_814D3C44
/* 814D3C2C | 41 82 00 18 */	beq .L_814D3C44
/* 814D3C30 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3C34 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3C38 | 41 82 00 0C */	beq .L_814D3C44
/* 814D3C3C | 38 80 00 00 */	li r4, 0x0
/* 814D3C40 | 48 00 1B 65 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3C44:
/* 814D3C44 | 7F E3 FB 78 */	mr r3, r31
/* 814D3C48 | 4B FF BF 25 */	bl VFipf2_mkdir
/* 814D3C4C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3C50 | 40 82 00 0C */	bne .L_814D3C5C
/* 814D3C54 | 38 60 00 00 */	li r3, 0x0
/* 814D3C58 | 48 00 00 08 */	b .L_814D3C60
.L_814D3C5C:
/* 814D3C5C | 4B FF BC 5D */	bl VFipf2_errnum
.L_814D3C60:
/* 814D3C60 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3C64 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3C68 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D3C6C | 7C 08 03 A6 */	mtlr r0
/* 814D3C70 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3C74 | 4E 80 00 20 */	blr
.endfn VFSysCreateDir

# .text:0x26B8 | 0x814D3C78 | size: 0xD0
.fn VFSysCreateDir_current, global
/* 814D3C78 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3C7C | 7C 08 02 A6 */	mflr r0
/* 814D3C80 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3C84 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3C88 | 7C 7F 1B 78 */	mr r31, r3
/* 814D3C8C | 4B FF A2 09 */	bl VFiPFVOL_GetCurrentVolume
/* 814D3C90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3C94 | 41 82 00 64 */	beq .L_814D3CF8
/* 814D3C98 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3C9C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3CA0 | 41 82 00 14 */	beq .L_814D3CB4
/* 814D3CA4 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D3CA8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3CAC | 41 82 00 08 */	beq .L_814D3CB4
/* 814D3CB0 | 48 00 00 08 */	b .L_814D3CB8
.L_814D3CB4:
/* 814D3CB4 | 38 C0 00 00 */	li r6, 0x0
.L_814D3CB8:
/* 814D3CB8 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3CBC | 7C A6 02 14 */	add r5, r6, r0
/* 814D3CC0 | 48 00 00 30 */	b .L_814D3CF0
.L_814D3CC4:
/* 814D3CC4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D3CC8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3CCC | 41 82 00 20 */	beq .L_814D3CEC
/* 814D3CD0 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D3CD4 | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D3CD8 | 7C 84 07 74 */	extsb r4, r4
/* 814D3CDC | 7C 00 07 74 */	extsb r0, r0
/* 814D3CE0 | 7C 04 00 00 */	cmpw r4, r0
/* 814D3CE4 | 40 82 00 08 */	bne .L_814D3CEC
/* 814D3CE8 | 48 00 00 14 */	b .L_814D3CFC
.L_814D3CEC:
/* 814D3CEC | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D3CF0:
/* 814D3CF0 | 7C 06 28 40 */	cmplw r6, r5
/* 814D3CF4 | 40 82 FF D0 */	bne .L_814D3CC4
.L_814D3CF8:
/* 814D3CF8 | 38 C0 00 00 */	li r6, 0x0
.L_814D3CFC:
/* 814D3CFC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3D00 | 41 82 00 18 */	beq .L_814D3D18
/* 814D3D04 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D3D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3D0C | 41 82 00 0C */	beq .L_814D3D18
/* 814D3D10 | 38 80 00 00 */	li r4, 0x0
/* 814D3D14 | 48 00 1A 91 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3D18:
/* 814D3D18 | 7F E3 FB 78 */	mr r3, r31
/* 814D3D1C | 4B FF BE 51 */	bl VFipf2_mkdir
/* 814D3D20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3D24 | 40 82 00 0C */	bne .L_814D3D30
/* 814D3D28 | 38 60 00 00 */	li r3, 0x0
/* 814D3D2C | 48 00 00 08 */	b .L_814D3D34
.L_814D3D30:
/* 814D3D30 | 4B FF BB 89 */	bl VFipf2_errnum
.L_814D3D34:
/* 814D3D34 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3D38 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3D3C | 7C 08 03 A6 */	mtlr r0
/* 814D3D40 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3D44 | 4E 80 00 20 */	blr
.endfn VFSysCreateDir_current

# .text:0x2788 | 0x814D3D48 | size: 0x110
.fn VFSysChangeDir, global
/* 814D3D48 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3D4C | 7C 08 02 A6 */	mflr r0
/* 814D3D50 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3D54 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3D58 | 7C 9F 23 78 */	mr r31, r4
/* 814D3D5C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D3D60 | 7C 7E 1B 78 */	mr r30, r3
/* 814D3D64 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3D68 | 7C 03 00 40 */	cmplw r3, r0
/* 814D3D6C | 40 80 00 1C */	bge .L_814D3D88
/* 814D3D70 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D3D74 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3D78 | 41 82 00 10 */	beq .L_814D3D88
/* 814D3D7C | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D3D80 | 7C 64 02 14 */	add r3, r4, r0
/* 814D3D84 | 48 00 00 08 */	b .L_814D3D8C
.L_814D3D88:
/* 814D3D88 | 38 60 00 00 */	li r3, 0x0
.L_814D3D8C:
/* 814D3D8C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3D90 | 41 82 00 3C */	beq .L_814D3DCC
/* 814D3D94 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D3D98 | 7C 03 07 74 */	extsb r3, r0
/* 814D3D9C | 4B FF A2 4D */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D3DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3DA4 | 41 82 00 10 */	beq .L_814D3DB4
/* 814D3DA8 | 4B FF 9F A1 */	bl VFiPFVOL_SetCurrentVolume
/* 814D3DAC | 38 60 00 00 */	li r3, 0x0
/* 814D3DB0 | 48 00 00 24 */	b .L_814D3DD4
.L_814D3DB4:
/* 814D3DB4 | 4B FF BB 05 */	bl VFipf2_errnum
/* 814D3DB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3DBC | 40 82 00 18 */	bne .L_814D3DD4
/* 814D3DC0 | 38 60 FF FF */	li r3, -0x1
/* 814D3DC4 | 48 00 00 10 */	b .L_814D3DD4
/* 814D3DC8 | 48 00 00 0C */	b .L_814D3DD4
.L_814D3DCC:
/* 814D3DCC | 3C 60 00 01 */	lis r3, 0x1
/* 814D3DD0 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3DD4:
/* 814D3DD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3DD8 | 40 82 00 68 */	bne .L_814D3E40
/* 814D3DDC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3DE0 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3DE4 | 40 80 00 1C */	bge .L_814D3E00
/* 814D3DE8 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3DEC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3DF0 | 41 82 00 10 */	beq .L_814D3E00
/* 814D3DF4 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3DF8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D3DFC | 48 00 00 08 */	b .L_814D3E04
.L_814D3E00:
/* 814D3E00 | 38 60 00 00 */	li r3, 0x0
.L_814D3E04:
/* 814D3E04 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3E08 | 41 82 00 1C */	beq .L_814D3E24
/* 814D3E0C | 41 82 00 18 */	beq .L_814D3E24
/* 814D3E10 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3E14 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3E18 | 41 82 00 0C */	beq .L_814D3E24
/* 814D3E1C | 38 80 00 00 */	li r4, 0x0
/* 814D3E20 | 48 00 19 85 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3E24:
/* 814D3E24 | 7F E3 FB 78 */	mr r3, r31
/* 814D3E28 | 4B FF B9 B5 */	bl VFipf2_chdir
/* 814D3E2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3E30 | 40 82 00 0C */	bne .L_814D3E3C
/* 814D3E34 | 38 60 00 00 */	li r3, 0x0
/* 814D3E38 | 48 00 00 08 */	b .L_814D3E40
.L_814D3E3C:
/* 814D3E3C | 4B FF BA 7D */	bl VFipf2_errnum
.L_814D3E40:
/* 814D3E40 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3E44 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3E48 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D3E4C | 7C 08 03 A6 */	mtlr r0
/* 814D3E50 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3E54 | 4E 80 00 20 */	blr
.endfn VFSysChangeDir

# .text:0x2898 | 0x814D3E58 | size: 0xD0
.fn VFSysChangeDir_current, global
/* 814D3E58 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3E5C | 7C 08 02 A6 */	mflr r0
/* 814D3E60 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3E64 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3E68 | 7C 7F 1B 78 */	mr r31, r3
/* 814D3E6C | 4B FF A0 29 */	bl VFiPFVOL_GetCurrentVolume
/* 814D3E70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3E74 | 41 82 00 64 */	beq .L_814D3ED8
/* 814D3E78 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3E7C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3E80 | 41 82 00 14 */	beq .L_814D3E94
/* 814D3E84 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D3E88 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3E8C | 41 82 00 08 */	beq .L_814D3E94
/* 814D3E90 | 48 00 00 08 */	b .L_814D3E98
.L_814D3E94:
/* 814D3E94 | 38 C0 00 00 */	li r6, 0x0
.L_814D3E98:
/* 814D3E98 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D3E9C | 7C A6 02 14 */	add r5, r6, r0
/* 814D3EA0 | 48 00 00 30 */	b .L_814D3ED0
.L_814D3EA4:
/* 814D3EA4 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D3EA8 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D3EAC | 41 82 00 20 */	beq .L_814D3ECC
/* 814D3EB0 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D3EB4 | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D3EB8 | 7C 84 07 74 */	extsb r4, r4
/* 814D3EBC | 7C 00 07 74 */	extsb r0, r0
/* 814D3EC0 | 7C 04 00 00 */	cmpw r4, r0
/* 814D3EC4 | 40 82 00 08 */	bne .L_814D3ECC
/* 814D3EC8 | 48 00 00 14 */	b .L_814D3EDC
.L_814D3ECC:
/* 814D3ECC | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D3ED0:
/* 814D3ED0 | 7C 06 28 40 */	cmplw r6, r5
/* 814D3ED4 | 40 82 FF D0 */	bne .L_814D3EA4
.L_814D3ED8:
/* 814D3ED8 | 38 C0 00 00 */	li r6, 0x0
.L_814D3EDC:
/* 814D3EDC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D3EE0 | 41 82 00 18 */	beq .L_814D3EF8
/* 814D3EE4 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D3EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3EEC | 41 82 00 0C */	beq .L_814D3EF8
/* 814D3EF0 | 38 80 00 00 */	li r4, 0x0
/* 814D3EF4 | 48 00 18 B1 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D3EF8:
/* 814D3EF8 | 7F E3 FB 78 */	mr r3, r31
/* 814D3EFC | 4B FF B8 E1 */	bl VFipf2_chdir
/* 814D3F00 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3F04 | 40 82 00 0C */	bne .L_814D3F10
/* 814D3F08 | 38 60 00 00 */	li r3, 0x0
/* 814D3F0C | 48 00 00 08 */	b .L_814D3F14
.L_814D3F10:
/* 814D3F10 | 4B FF B9 A9 */	bl VFipf2_errnum
.L_814D3F14:
/* 814D3F14 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D3F18 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D3F1C | 7C 08 03 A6 */	mtlr r0
/* 814D3F20 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D3F24 | 4E 80 00 20 */	blr
.endfn VFSysChangeDir_current

# .text:0x2968 | 0x814D3F28 | size: 0x110
.fn VFSysDeleteDir, global
/* 814D3F28 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D3F2C | 7C 08 02 A6 */	mflr r0
/* 814D3F30 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D3F34 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D3F38 | 7C 9F 23 78 */	mr r31, r4
/* 814D3F3C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814D3F40 | 7C 7E 1B 78 */	mr r30, r3
/* 814D3F44 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3F48 | 7C 03 00 40 */	cmplw r3, r0
/* 814D3F4C | 40 80 00 1C */	bge .L_814D3F68
/* 814D3F50 | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D3F54 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D3F58 | 41 82 00 10 */	beq .L_814D3F68
/* 814D3F5C | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D3F60 | 7C 64 02 14 */	add r3, r4, r0
/* 814D3F64 | 48 00 00 08 */	b .L_814D3F6C
.L_814D3F68:
/* 814D3F68 | 38 60 00 00 */	li r3, 0x0
.L_814D3F6C:
/* 814D3F6C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3F70 | 41 82 00 3C */	beq .L_814D3FAC
/* 814D3F74 | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D3F78 | 7C 03 07 74 */	extsb r3, r0
/* 814D3F7C | 4B FF A0 6D */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D3F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3F84 | 41 82 00 10 */	beq .L_814D3F94
/* 814D3F88 | 4B FF 9D C1 */	bl VFiPFVOL_SetCurrentVolume
/* 814D3F8C | 38 60 00 00 */	li r3, 0x0
/* 814D3F90 | 48 00 00 24 */	b .L_814D3FB4
.L_814D3F94:
/* 814D3F94 | 4B FF B9 25 */	bl VFipf2_errnum
/* 814D3F98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3F9C | 40 82 00 18 */	bne .L_814D3FB4
/* 814D3FA0 | 38 60 FF FF */	li r3, -0x1
/* 814D3FA4 | 48 00 00 10 */	b .L_814D3FB4
/* 814D3FA8 | 48 00 00 0C */	b .L_814D3FB4
.L_814D3FAC:
/* 814D3FAC | 3C 60 00 01 */	lis r3, 0x1
/* 814D3FB0 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D3FB4:
/* 814D3FB4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3FB8 | 40 82 00 68 */	bne .L_814D4020
/* 814D3FBC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D3FC0 | 7C 1E 00 40 */	cmplw r30, r0
/* 814D3FC4 | 40 80 00 1C */	bge .L_814D3FE0
/* 814D3FC8 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D3FCC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3FD0 | 41 82 00 10 */	beq .L_814D3FE0
/* 814D3FD4 | 1C 1E 01 40 */	mulli r0, r30, 0x140
/* 814D3FD8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D3FDC | 48 00 00 08 */	b .L_814D3FE4
.L_814D3FE0:
/* 814D3FE0 | 38 60 00 00 */	li r3, 0x0
.L_814D3FE4:
/* 814D3FE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3FE8 | 41 82 00 1C */	beq .L_814D4004
/* 814D3FEC | 41 82 00 18 */	beq .L_814D4004
/* 814D3FF0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D3FF4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D3FF8 | 41 82 00 0C */	beq .L_814D4004
/* 814D3FFC | 38 80 00 00 */	li r4, 0x0
/* 814D4000 | 48 00 17 A5 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D4004:
/* 814D4004 | 7F E3 FB 78 */	mr r3, r31
/* 814D4008 | 4B FF BC 05 */	bl VFipf2_rmdir
/* 814D400C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4010 | 40 82 00 0C */	bne .L_814D401C
/* 814D4014 | 38 60 00 00 */	li r3, 0x0
/* 814D4018 | 48 00 00 08 */	b .L_814D4020
.L_814D401C:
/* 814D401C | 4B FF B8 9D */	bl VFipf2_errnum
.L_814D4020:
/* 814D4020 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4024 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D4028 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814D402C | 7C 08 03 A6 */	mtlr r0
/* 814D4030 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4034 | 4E 80 00 20 */	blr
.endfn VFSysDeleteDir

# .text:0x2A78 | 0x814D4038 | size: 0xD0
.fn VFSysDeleteDir_current, global
/* 814D4038 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D403C | 7C 08 02 A6 */	mflr r0
/* 814D4040 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D4044 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D4048 | 7C 7F 1B 78 */	mr r31, r3
/* 814D404C | 4B FF 9E 49 */	bl VFiPFVOL_GetCurrentVolume
/* 814D4050 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4054 | 41 82 00 64 */	beq .L_814D40B8
/* 814D4058 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D405C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4060 | 41 82 00 14 */	beq .L_814D4074
/* 814D4064 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D4068 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D406C | 41 82 00 08 */	beq .L_814D4074
/* 814D4070 | 48 00 00 08 */	b .L_814D4078
.L_814D4074:
/* 814D4074 | 38 C0 00 00 */	li r6, 0x0
.L_814D4078:
/* 814D4078 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D407C | 7C A6 02 14 */	add r5, r6, r0
/* 814D4080 | 48 00 00 30 */	b .L_814D40B0
.L_814D4084:
/* 814D4084 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D4088 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D408C | 41 82 00 20 */	beq .L_814D40AC
/* 814D4090 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D4094 | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D4098 | 7C 84 07 74 */	extsb r4, r4
/* 814D409C | 7C 00 07 74 */	extsb r0, r0
/* 814D40A0 | 7C 04 00 00 */	cmpw r4, r0
/* 814D40A4 | 40 82 00 08 */	bne .L_814D40AC
/* 814D40A8 | 48 00 00 14 */	b .L_814D40BC
.L_814D40AC:
/* 814D40AC | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D40B0:
/* 814D40B0 | 7C 06 28 40 */	cmplw r6, r5
/* 814D40B4 | 40 82 FF D0 */	bne .L_814D4084
.L_814D40B8:
/* 814D40B8 | 38 C0 00 00 */	li r6, 0x0
.L_814D40BC:
/* 814D40BC | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D40C0 | 41 82 00 18 */	beq .L_814D40D8
/* 814D40C4 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D40C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D40CC | 41 82 00 0C */	beq .L_814D40D8
/* 814D40D0 | 38 80 00 00 */	li r4, 0x0
/* 814D40D4 | 48 00 16 D1 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D40D8:
/* 814D40D8 | 7F E3 FB 78 */	mr r3, r31
/* 814D40DC | 4B FF BB 31 */	bl VFipf2_rmdir
/* 814D40E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D40E4 | 40 82 00 0C */	bne .L_814D40F0
/* 814D40E8 | 38 60 00 00 */	li r3, 0x0
/* 814D40EC | 48 00 00 08 */	b .L_814D40F4
.L_814D40F0:
/* 814D40F0 | 4B FF B7 C9 */	bl VFipf2_errnum
.L_814D40F4:
/* 814D40F4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D40F8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D40FC | 7C 08 03 A6 */	mtlr r0
/* 814D4100 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4104 | 4E 80 00 20 */	blr
.endfn VFSysDeleteDir_current

# .text:0x2B48 | 0x814D4108 | size: 0x68
.fn VFSysGetFileSizeByFd, global
/* 814D4108 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D410C | 7C 08 02 A6 */	mflr r0
/* 814D4110 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D4114 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D4118 | 38 00 00 00 */	li r0, 0x0
/* 814D411C | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D4120 | 7C 7F 1B 78 */	mr r31, r3
/* 814D4124 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D4128 | 41 82 00 30 */	beq .L_814D4158
/* 814D412C | 7C 83 23 78 */	mr r3, r4
/* 814D4130 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D4134 | 4B FF B7 CD */	bl VFipf2_finfo
/* 814D4138 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D413C | 40 82 00 14 */	bne .L_814D4150
/* 814D4140 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814D4144 | 38 60 00 00 */	li r3, 0x0
/* 814D4148 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814D414C | 48 00 00 10 */	b .L_814D415C
.L_814D4150:
/* 814D4150 | 4B FF B7 69 */	bl VFipf2_errnum
/* 814D4154 | 48 00 00 08 */	b .L_814D415C
.L_814D4158:
/* 814D4158 | 38 60 FF FF */	li r3, -0x1
.L_814D415C:
/* 814D415C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D4160 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D4164 | 7C 08 03 A6 */	mtlr r0
/* 814D4168 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D416C | 4E 80 00 20 */	blr
.endfn VFSysGetFileSizeByFd

# .text:0x2BB0 | 0x814D4170 | size: 0x28
.fn VFSysGetOffsetByFd, global
/* 814D4170 | 38 00 00 00 */	li r0, 0x0
/* 814D4174 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D4178 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D417C | 41 82 00 14 */	beq .L_814D4190
/* 814D4180 | 80 04 00 20 */	lwz r0, 0x20(r4)
/* 814D4184 | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814D4188 | 38 60 00 00 */	li r3, 0x0
/* 814D418C | 4E 80 00 20 */	blr
.L_814D4190:
/* 814D4190 | 38 60 FF FF */	li r3, -0x1
/* 814D4194 | 4E 80 00 20 */	blr
.endfn VFSysGetOffsetByFd

# .text:0x2BD8 | 0x814D4198 | size: 0x108
.fn VFSysGetDriveFreeSize, global
/* 814D4198 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814D419C | 7C 08 02 A6 */	mflr r0
/* 814D41A0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814D41A4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814D41A8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814D41AC | 7C DE 33 78 */	mr r30, r6
/* 814D41B0 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814D41B4 | 7C BD 2B 78 */	mr r29, r5
/* 814D41B8 | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814D41BC | 7C 9C 23 78 */	mr r28, r4
/* 814D41C0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D41C4 | 7C 03 00 40 */	cmplw r3, r0
/* 814D41C8 | 40 80 00 1C */	bge .L_814D41E4
/* 814D41CC | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D41D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D41D4 | 41 82 00 10 */	beq .L_814D41E4
/* 814D41D8 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D41DC | 7F E4 02 14 */	add r31, r4, r0
/* 814D41E0 | 48 00 00 08 */	b .L_814D41E8
.L_814D41E4:
/* 814D41E4 | 3B E0 00 00 */	li r31, 0x0
.L_814D41E8:
/* 814D41E8 | 2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 814D41EC | 41 86 00 10 */	beq cr1, .L_814D41FC
/* 814D41F0 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814D41F4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D41F8 | 40 82 00 14 */	bne .L_814D420C
.L_814D41FC:
/* 814D41FC | 3C 60 00 01 */	lis r3, 0x1
/* 814D4200 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D4204 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
/* 814D4208 | 48 00 00 78 */	b .L_814D4280
.L_814D420C:
/* 814D420C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814D4210 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4214 | 40 82 00 14 */	bne .L_814D4228
/* 814D4218 | 3C 60 00 01 */	lis r3, 0x1
/* 814D421C | 38 63 B0 03 */	subi r3, r3, 0x4ffd
/* 814D4220 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
/* 814D4224 | 48 00 00 5C */	b .L_814D4280
.L_814D4228:
/* 814D4228 | 41 86 00 10 */	beq cr1, .L_814D4238
/* 814D422C | 41 82 00 0C */	beq .L_814D4238
/* 814D4230 | 38 80 00 00 */	li r4, 0x0
/* 814D4234 | 48 00 15 71 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D4238:
/* 814D4238 | 88 1F 00 14 */	lbz r0, 0x14(r31)
/* 814D423C | 38 81 00 08 */	addi r4, r1, 0x8
/* 814D4240 | 7C 03 07 74 */	extsb r3, r0
/* 814D4244 | 4B FF B8 C1 */	bl VFipf2_devinf
/* 814D4248 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D424C | 41 82 00 18 */	beq .L_814D4264
/* 814D4250 | 4B FF B6 69 */	bl VFipf2_errnum
/* 814D4254 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4258 | 41 82 00 28 */	beq .L_814D4280
/* 814D425C | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
/* 814D4260 | 48 00 00 20 */	b .L_814D4280
.L_814D4264:
/* 814D4264 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814D4268 | 38 60 00 00 */	li r3, 0x0
/* 814D426C | 90 1C 00 00 */	stw r0, 0x0(r28)
/* 814D4270 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4274 | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814D4278 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814D427C | 90 1E 00 00 */	stw r0, 0x0(r30)
.L_814D4280:
/* 814D4280 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814D4284 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814D4288 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814D428C | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814D4290 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814D4294 | 7C 08 03 A6 */	mtlr r0
/* 814D4298 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814D429C | 4E 80 00 20 */	blr
.endfn VFSysGetDriveFreeSize

# .text:0x2CE0 | 0x814D42A0 | size: 0x130
.fn VFSysFileSearchFirst, global
/* 814D42A0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D42A4 | 7C 08 02 A6 */	mflr r0
/* 814D42A8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D42AC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D42B0 | 7C DF 33 78 */	mr r31, r6
/* 814D42B4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D42B8 | 7C BE 2B 78 */	mr r30, r5
/* 814D42BC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D42C0 | 7C 9D 23 78 */	mr r29, r4
/* 814D42C4 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814D42C8 | 7C 7C 1B 78 */	mr r28, r3
/* 814D42CC | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D42D0 | 7C 04 00 40 */	cmplw r4, r0
/* 814D42D4 | 40 80 00 1C */	bge .L_814D42F0
/* 814D42D8 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D42DC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D42E0 | 41 82 00 10 */	beq .L_814D42F0
/* 814D42E4 | 1C 04 01 40 */	mulli r0, r4, 0x140
/* 814D42E8 | 7C 63 02 14 */	add r3, r3, r0
/* 814D42EC | 48 00 00 08 */	b .L_814D42F4
.L_814D42F0:
/* 814D42F0 | 38 60 00 00 */	li r3, 0x0
.L_814D42F4:
/* 814D42F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D42F8 | 41 82 00 3C */	beq .L_814D4334
/* 814D42FC | 88 03 00 14 */	lbz r0, 0x14(r3)
/* 814D4300 | 7C 03 07 74 */	extsb r3, r0
/* 814D4304 | 4B FF 9C E5 */	bl VFiPFVOL_GetVolumeFromDrvChar
/* 814D4308 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D430C | 41 82 00 10 */	beq .L_814D431C
/* 814D4310 | 4B FF 9A 39 */	bl VFiPFVOL_SetCurrentVolume
/* 814D4314 | 38 60 00 00 */	li r3, 0x0
/* 814D4318 | 48 00 00 24 */	b .L_814D433C
.L_814D431C:
/* 814D431C | 4B FF B5 9D */	bl VFipf2_errnum
/* 814D4320 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4324 | 40 82 00 18 */	bne .L_814D433C
/* 814D4328 | 38 60 FF FF */	li r3, -0x1
/* 814D432C | 48 00 00 10 */	b .L_814D433C
/* 814D4330 | 48 00 00 0C */	b .L_814D433C
.L_814D4334:
/* 814D4334 | 3C 60 00 01 */	lis r3, 0x1
/* 814D4338 | 38 63 B0 03 */	subi r3, r3, 0x4ffd
.L_814D433C:
/* 814D433C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4340 | 40 82 00 70 */	bne .L_814D43B0
/* 814D4344 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D4348 | 7C 1D 00 40 */	cmplw r29, r0
/* 814D434C | 40 80 00 1C */	bge .L_814D4368
/* 814D4350 | 80 6D AE 50 */	lwz r3, l_sys_handle_table_p@sda21(r0)
/* 814D4354 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4358 | 41 82 00 10 */	beq .L_814D4368
/* 814D435C | 1C 1D 01 40 */	mulli r0, r29, 0x140
/* 814D4360 | 7C 63 02 14 */	add r3, r3, r0
/* 814D4364 | 48 00 00 08 */	b .L_814D436C
.L_814D4368:
/* 814D4368 | 38 60 00 00 */	li r3, 0x0
.L_814D436C:
/* 814D436C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4370 | 41 82 00 1C */	beq .L_814D438C
/* 814D4374 | 41 82 00 18 */	beq .L_814D438C
/* 814D4378 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D437C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4380 | 41 82 00 0C */	beq .L_814D438C
/* 814D4384 | 38 80 00 00 */	li r4, 0x0
/* 814D4388 | 48 00 14 1D */	bl dCommon_setLastDeviceErrorToDisk
.L_814D438C:
/* 814D438C | 7F C3 F3 78 */	mr r3, r30
/* 814D4390 | 7F E4 FB 78 */	mr r4, r31
/* 814D4394 | 7F 85 E3 78 */	mr r5, r28
/* 814D4398 | 4B FF B6 AD */	bl VFipf2_fsfirst
/* 814D439C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D43A0 | 40 82 00 0C */	bne .L_814D43AC
/* 814D43A4 | 38 60 00 00 */	li r3, 0x0
/* 814D43A8 | 48 00 00 08 */	b .L_814D43B0
.L_814D43AC:
/* 814D43AC | 4B FF B5 0D */	bl VFipf2_errnum
.L_814D43B0:
/* 814D43B0 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D43B4 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D43B8 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D43BC | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D43C0 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814D43C4 | 7C 08 03 A6 */	mtlr r0
/* 814D43C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D43CC | 4E 80 00 20 */	blr
.endfn VFSysFileSearchFirst

# .text:0x2E10 | 0x814D43D0 | size: 0xF0
.fn VFSysFileSearchFirst_current, global
/* 814D43D0 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814D43D4 | 7C 08 02 A6 */	mflr r0
/* 814D43D8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814D43DC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814D43E0 | 7C BF 2B 78 */	mr r31, r5
/* 814D43E4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814D43E8 | 7C 9E 23 78 */	mr r30, r4
/* 814D43EC | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814D43F0 | 7C 7D 1B 78 */	mr r29, r3
/* 814D43F4 | 4B FF 9A A1 */	bl VFiPFVOL_GetCurrentVolume
/* 814D43F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D43FC | 41 82 00 64 */	beq .L_814D4460
/* 814D4400 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D4404 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4408 | 41 82 00 14 */	beq .L_814D441C
/* 814D440C | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D4410 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D4414 | 41 82 00 08 */	beq .L_814D441C
/* 814D4418 | 48 00 00 08 */	b .L_814D4420
.L_814D441C:
/* 814D441C | 38 C0 00 00 */	li r6, 0x0
.L_814D4420:
/* 814D4420 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D4424 | 7C A6 02 14 */	add r5, r6, r0
/* 814D4428 | 48 00 00 30 */	b .L_814D4458
.L_814D442C:
/* 814D442C | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D4430 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4434 | 41 82 00 20 */	beq .L_814D4454
/* 814D4438 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D443C | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D4440 | 7C 84 07 74 */	extsb r4, r4
/* 814D4444 | 7C 00 07 74 */	extsb r0, r0
/* 814D4448 | 7C 04 00 00 */	cmpw r4, r0
/* 814D444C | 40 82 00 08 */	bne .L_814D4454
/* 814D4450 | 48 00 00 14 */	b .L_814D4464
.L_814D4454:
/* 814D4454 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D4458:
/* 814D4458 | 7C 06 28 40 */	cmplw r6, r5
/* 814D445C | 40 82 FF D0 */	bne .L_814D442C
.L_814D4460:
/* 814D4460 | 38 C0 00 00 */	li r6, 0x0
.L_814D4464:
/* 814D4464 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D4468 | 41 82 00 18 */	beq .L_814D4480
/* 814D446C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D4470 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4474 | 41 82 00 0C */	beq .L_814D4480
/* 814D4478 | 38 80 00 00 */	li r4, 0x0
/* 814D447C | 48 00 13 29 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D4480:
/* 814D4480 | 7F C3 F3 78 */	mr r3, r30
/* 814D4484 | 7F E4 FB 78 */	mr r4, r31
/* 814D4488 | 7F A5 EB 78 */	mr r5, r29
/* 814D448C | 4B FF B5 B9 */	bl VFipf2_fsfirst
/* 814D4490 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4494 | 40 82 00 0C */	bne .L_814D44A0
/* 814D4498 | 38 60 00 00 */	li r3, 0x0
/* 814D449C | 48 00 00 08 */	b .L_814D44A4
.L_814D44A0:
/* 814D44A0 | 4B FF B4 19 */	bl VFipf2_errnum
.L_814D44A4:
/* 814D44A4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814D44A8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814D44AC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814D44B0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814D44B4 | 7C 08 03 A6 */	mtlr r0
/* 814D44B8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814D44BC | 4E 80 00 20 */	blr
.endfn VFSysFileSearchFirst_current

# .text:0x2F00 | 0x814D44C0 | size: 0xD8
.fn VFSysFileSearchNext, global
/* 814D44C0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D44C4 | 7C 08 02 A6 */	mflr r0
/* 814D44C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D44CC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D44D0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814D44D4 | 7C 7F 1B 78 */	mr r31, r3
/* 814D44D8 | 41 82 00 90 */	beq .L_814D4568
/* 814D44DC | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814D44E0 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814D44E4 | 41 82 00 64 */	beq .L_814D4548
/* 814D44E8 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D44EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D44F0 | 41 82 00 14 */	beq .L_814D4504
/* 814D44F4 | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D44F8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D44FC | 41 82 00 08 */	beq .L_814D4504
/* 814D4500 | 48 00 00 08 */	b .L_814D4508
.L_814D4504:
/* 814D4504 | 38 C0 00 00 */	li r6, 0x0
.L_814D4508:
/* 814D4508 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D450C | 7C 86 02 14 */	add r4, r6, r0
/* 814D4510 | 48 00 00 30 */	b .L_814D4540
.L_814D4514:
/* 814D4514 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D4518 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D451C | 41 82 00 20 */	beq .L_814D453C
/* 814D4520 | 88 66 00 14 */	lbz r3, 0x14(r6)
/* 814D4524 | 88 05 18 62 */	lbz r0, 0x1862(r5)
/* 814D4528 | 7C 63 07 74 */	extsb r3, r3
/* 814D452C | 7C 00 07 74 */	extsb r0, r0
/* 814D4530 | 7C 03 00 00 */	cmpw r3, r0
/* 814D4534 | 40 82 00 08 */	bne .L_814D453C
/* 814D4538 | 48 00 00 14 */	b .L_814D454C
.L_814D453C:
/* 814D453C | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D4540:
/* 814D4540 | 7C 06 20 40 */	cmplw r6, r4
/* 814D4544 | 40 82 FF D0 */	bne .L_814D4514
.L_814D4548:
/* 814D4548 | 38 C0 00 00 */	li r6, 0x0
.L_814D454C:
/* 814D454C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D4550 | 41 82 00 18 */	beq .L_814D4568
/* 814D4554 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D4558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D455C | 41 82 00 0C */	beq .L_814D4568
/* 814D4560 | 38 80 00 00 */	li r4, 0x0
/* 814D4564 | 48 00 12 41 */	bl dCommon_setLastDeviceErrorToDisk
.L_814D4568:
/* 814D4568 | 7F E3 FB 78 */	mr r3, r31
/* 814D456C | 4B FF B5 4D */	bl VFipf2_fsnext
/* 814D4570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4574 | 40 82 00 0C */	bne .L_814D4580
/* 814D4578 | 38 60 00 00 */	li r3, 0x0
/* 814D457C | 48 00 00 08 */	b .L_814D4584
.L_814D4580:
/* 814D4580 | 4B FF B3 39 */	bl VFipf2_errnum
.L_814D4584:
/* 814D4584 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4588 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814D458C | 7C 08 03 A6 */	mtlr r0
/* 814D4590 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D4594 | 4E 80 00 20 */	blr
.endfn VFSysFileSearchNext

# .text:0x2FD8 | 0x814D4598 | size: 0x10
.fn VFSysSetLastError, global
/* 814D4598 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D459C | 4D 82 00 20 */	beqlr
/* 814D45A0 | 90 6D AE 44 */	stw r3, l_vfsys_last_err@sda21(r0)
/* 814D45A4 | 4E 80 00 20 */	blr
.endfn VFSysSetLastError

# .text:0x2FE8 | 0x814D45A8 | size: 0x8
.fn VFSysGetLastError, global
/* 814D45A8 | 80 6D AE 44 */	lwz r3, l_vfsys_last_err@sda21(r0)
/* 814D45AC | 4E 80 00 20 */	blr
.endfn VFSysGetLastError

# .text:0x2FF0 | 0x814D45B0 | size: 0x48
.fn VFSysGetLastDeviceError, global
/* 814D45B0 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D45B4 | 7C 03 00 40 */	cmplw r3, r0
/* 814D45B8 | 40 80 00 1C */	bge .L_814D45D4
/* 814D45BC | 80 8D AE 50 */	lwz r4, l_sys_handle_table_p@sda21(r0)
/* 814D45C0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814D45C4 | 41 82 00 10 */	beq .L_814D45D4
/* 814D45C8 | 1C 03 01 40 */	mulli r0, r3, 0x140
/* 814D45CC | 7C 64 02 14 */	add r3, r4, r0
/* 814D45D0 | 48 00 00 08 */	b .L_814D45D8
.L_814D45D4:
/* 814D45D4 | 38 60 00 00 */	li r3, 0x0
.L_814D45D8:
/* 814D45D8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D45DC | 41 82 00 14 */	beq .L_814D45F0
/* 814D45E0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D45E4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D45E8 | 41 82 00 08 */	beq .L_814D45F0
/* 814D45EC | 48 00 11 64 */	b dCommon_getLastDeviceErrorFromDisk
.L_814D45F0:
/* 814D45F0 | 38 60 FF FF */	li r3, -0x1
/* 814D45F4 | 4E 80 00 20 */	blr
.endfn VFSysGetLastDeviceError

# .text:0x3038 | 0x814D45F8 | size: 0xAC
.fn VFSysGetLastDeviceError_current, global
/* 814D45F8 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814D45FC | 7C 08 02 A6 */	mflr r0
/* 814D4600 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814D4604 | 4B FF 98 91 */	bl VFiPFVOL_GetCurrentVolume
/* 814D4608 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D460C | 41 82 00 64 */	beq .L_814D4670
/* 814D4610 | 80 0D AE 40 */	lwz r0, l_vfsys_vol_max@sda21(r0)
/* 814D4614 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4618 | 41 82 00 14 */	beq .L_814D462C
/* 814D461C | 80 CD AE 50 */	lwz r6, l_sys_handle_table_p@sda21(r0)
/* 814D4620 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D4624 | 41 82 00 08 */	beq .L_814D462C
/* 814D4628 | 48 00 00 08 */	b .L_814D4630
.L_814D462C:
/* 814D462C | 38 C0 00 00 */	li r6, 0x0
.L_814D4630:
/* 814D4630 | 1C 00 01 40 */	mulli r0, r0, 0x140
/* 814D4634 | 7C A6 02 14 */	add r5, r6, r0
/* 814D4638 | 48 00 00 30 */	b .L_814D4668
.L_814D463C:
/* 814D463C | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814D4640 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814D4644 | 41 82 00 20 */	beq .L_814D4664
/* 814D4648 | 88 86 00 14 */	lbz r4, 0x14(r6)
/* 814D464C | 88 03 18 62 */	lbz r0, 0x1862(r3)
/* 814D4650 | 7C 84 07 74 */	extsb r4, r4
/* 814D4654 | 7C 00 07 74 */	extsb r0, r0
/* 814D4658 | 7C 04 00 00 */	cmpw r4, r0
/* 814D465C | 40 82 00 08 */	bne .L_814D4664
/* 814D4660 | 48 00 00 14 */	b .L_814D4674
.L_814D4664:
/* 814D4664 | 38 C6 01 40 */	addi r6, r6, 0x140
.L_814D4668:
/* 814D4668 | 7C 06 28 40 */	cmplw r6, r5
/* 814D466C | 40 82 FF D0 */	bne .L_814D463C
.L_814D4670:
/* 814D4670 | 38 C0 00 00 */	li r6, 0x0
.L_814D4674:
/* 814D4674 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814D4678 | 41 82 00 18 */	beq .L_814D4690
/* 814D467C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814D4680 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D4684 | 41 82 00 0C */	beq .L_814D4690
/* 814D4688 | 48 00 10 C9 */	bl dCommon_getLastDeviceErrorFromDisk
/* 814D468C | 48 00 00 08 */	b .L_814D4694
.L_814D4690:
/* 814D4690 | 38 60 FF FF */	li r3, -0x1
.L_814D4694:
/* 814D4694 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814D4698 | 7C 08 03 A6 */	mtlr r0
/* 814D469C | 38 21 00 10 */	addi r1, r1, 0x10
/* 814D46A0 | 4E 80 00 20 */	blr
.endfn VFSysGetLastDeviceError_current

# .text:0x30E4 | 0x814D46A4 | size: 0x1C
.fn VFiSysSetDeviceErrInfo, global
/* 814D46A4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D46A8 | 4D 82 00 20 */	beqlr
/* 814D46AC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814D46B0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814D46B4 | 4D 82 00 20 */	beqlr
/* 814D46B8 | 48 00 10 EC */	b dCommon_setLastDeviceErrorToDisk
/* 814D46BC | 4E 80 00 20 */	blr
.endfn VFiSysSetDeviceErrInfo

# .text:0x3100 | 0x814D46C0 | size: 0x10
.fn VFSysSetTimeStampCallback, global
/* 814D46C0 | 7C 60 1B 78 */	mr r0, r3
/* 814D46C4 | 80 6D AE 58 */	lwz r3, l_timeStampCallback@sda21(r0)
/* 814D46C8 | 90 0D AE 58 */	stw r0, l_timeStampCallback@sda21(r0)
/* 814D46CC | 4E 80 00 20 */	blr
.endfn VFSysSetTimeStampCallback

# .text:0x3110 | 0x814D46D0 | size: 0x8
.fn VFSysGetTimeStampCallback, global
/* 814D46D0 | 80 6D AE 58 */	lwz r3, l_timeStampCallback@sda21(r0)
/* 814D46D4 | 4E 80 00 20 */	blr
.endfn VFSysGetTimeStampCallback

# 0x8166E970..0x8166E980 | size: 0x10
.data
.balign 8

# .data:0x0 | 0x8166E970 | size: 0x10
.obj l_check_exist_file, local
	.4byte VFiSysCheckExistPrfFileNandFlash
	.4byte VFiSysCheckExistPrfFileRam
	.4byte VFiSysCheckExistPrfFileDVD
	.4byte 0x00000000
.endobj l_check_exist_file

# 0x81697D60..0x81697D70 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697D60 | size: 0x8
.obj l_dev_nandflash_init_info, local
	.4byte VFi_nanddrv_init_drv_tbl
	.4byte 0x00000000
.endobj l_dev_nandflash_init_info

# .sdata:0x8 | 0x81697D68 | size: 0x8
.obj l_dev_sd_direct_init_info, local
	.4byte VFi_sddrv_init_drv_tbl
	.4byte 0x00000000
.endobj l_dev_sd_direct_init_info

# 0x81698E80..0x81698EA0 | size: 0x20
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698E80 | size: 0x4
.obj l_vfsys_vol_max, local
	.skip 0x4
.endobj l_vfsys_vol_max

# .sbss:0x4 | 0x81698E84 | size: 0x4
.obj l_vfsys_last_err, local
	.skip 0x4
.endobj l_vfsys_last_err

# .sbss:0x8 | 0x81698E88 | size: 0x4
.obj l_vfsys_exp_heap_handle, local
	.skip 0x4
.endobj l_vfsys_exp_heap_handle

# .sbss:0xC | 0x81698E8C | size: 0x4
.obj l_vfsys_dev_table_init, local
	.skip 0x4
.endobj l_vfsys_dev_table_init

# .sbss:0x10 | 0x81698E90 | size: 0x4
.obj l_sys_handle_table_p, local
	.skip 0x4
.endobj l_sys_handle_table_p

# .sbss:0x14 | 0x81698E94 | size: 0x1
.obj l_vfsys_sddirect_init, local
	.skip 0x1
.endobj l_vfsys_sddirect_init

# .sbss:0x15 | 0x81698E95 | size: 0x3
.obj gap_12_81698E95_sbss, global
.hidden gap_12_81698E95_sbss
	.skip 0x3
.endobj gap_12_81698E95_sbss

# .sbss:0x18 | 0x81698E98 | size: 0x4
.obj l_timeStampCallback, local
	.skip 0x4
.endobj l_timeStampCallback

# .sbss:0x1C | 0x81698E9C | size: 0x4
.obj gap_12_81698E9C_sbss, global
.hidden gap_12_81698E9C_sbss
	.skip 0x4
.endobj gap_12_81698E9C_sbss
