.include "macros.inc"
.file "pf_file.c"

# 0x814C6740..0x814C9E24 | size: 0x36E4
.text
.balign 4

# .text:0x0 | 0x814C6740 | size: 0x11C
.fn VFiPFFILE_Cursor_AdvanceToRead, global
/* 814C6740 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C6744 | 7C 08 02 A6 */	mflr r0
/* 814C6748 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C674C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C6750 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814C6754 | 3B E0 00 01 */	li r31, 0x1
/* 814C6758 | 40 82 00 0C */	bne .L_814C6764
/* 814C675C | 39 20 00 00 */	li r9, 0x0
/* 814C6760 | 48 00 00 0C */	b .L_814C676C
.L_814C6764:
/* 814C6764 | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 814C6768 | 81 26 02 64 */	lwz r9, 0x264(r6)
.L_814C676C:
/* 814C676C | 80 C3 00 08 */	lwz r6, 0x8(r3)
/* 814C6770 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814C6774 | A1 03 00 2C */	lhz r8, 0x2c(r3)
/* 814C6778 | 81 46 02 60 */	lwz r10, 0x260(r6)
/* 814C677C | 7C 00 22 14 */	add r0, r0, r4
/* 814C6780 | 88 E9 00 20 */	lbz r7, 0x20(r9)
/* 814C6784 | 7D 08 22 14 */	add r8, r8, r4
/* 814C6788 | 7C 00 50 40 */	cmplw r0, r10
/* 814C678C | 7D 00 3C 30 */	srw r0, r8, r7
/* 814C6790 | 7C E5 02 14 */	add r7, r5, r0
/* 814C6794 | 40 80 00 34 */	bge .L_814C67C8
/* 814C6798 | A0 A9 00 00 */	lhz r5, 0x0(r9)
/* 814C679C | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C67A0 | 7C 00 40 39 */	and. r0, r0, r8
/* 814C67A4 | 41 82 00 0C */	beq .L_814C67B0
/* 814C67A8 | 90 E3 00 24 */	stw r7, 0x24(r3)
/* 814C67AC | 48 00 00 0C */	b .L_814C67B8
.L_814C67B0:
/* 814C67B0 | 38 00 FF FF */	li r0, -0x1
/* 814C67B4 | 90 03 00 24 */	stw r0, 0x24(r3)
.L_814C67B8:
/* 814C67B8 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814C67BC | 7C 00 22 14 */	add r0, r0, r4
/* 814C67C0 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814C67C4 | 48 00 00 40 */	b .L_814C6804
.L_814C67C8:
/* 814C67C8 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814C67CC | 40 82 00 24 */	bne .L_814C67F0
/* 814C67D0 | 38 A0 FF FF */	li r5, -0x1
/* 814C67D4 | 38 00 00 00 */	li r0, 0x0
/* 814C67D8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C67DC | 90 A3 00 24 */	stw r5, 0x24(r3)
/* 814C67E0 | 90 03 00 20 */	stw r0, 0x20(r3)
/* 814C67E4 | 41 82 00 20 */	beq .L_814C6804
/* 814C67E8 | 3B E0 00 00 */	li r31, 0x0
/* 814C67EC | 48 00 00 18 */	b .L_814C6804
.L_814C67F0:
/* 814C67F0 | 38 00 FF FF */	li r0, -0x1
/* 814C67F4 | 3B E0 00 00 */	li r31, 0x0
/* 814C67F8 | 90 03 00 24 */	stw r0, 0x24(r3)
/* 814C67FC | 80 06 02 60 */	lwz r0, 0x260(r6)
/* 814C6800 | 90 03 00 20 */	stw r0, 0x20(r3)
.L_814C6804:
/* 814C6804 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6808 | 40 82 00 0C */	bne .L_814C6814
/* 814C680C | 38 A0 00 00 */	li r5, 0x0
/* 814C6810 | 48 00 00 0C */	b .L_814C681C
.L_814C6814:
/* 814C6814 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814C6818 | 80 A4 02 64 */	lwz r5, 0x264(r4)
.L_814C681C:
/* 814C681C | 80 C3 00 20 */	lwz r6, 0x20(r3)
/* 814C6820 | 7C E4 3B 78 */	mr r4, r7
/* 814C6824 | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C6828 | 7C C0 04 30 */	srw r0, r6, r0
/* 814C682C | 90 03 00 28 */	stw r0, 0x28(r3)
/* 814C6830 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814C6834 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C6838 | 7C C0 00 38 */	and r0, r6, r0
/* 814C683C | B0 03 00 2C */	sth r0, 0x2c(r3)
/* 814C6840 | 4B FF 5F 55 */	bl VFiPFCLUSTER_UpdateLastAccessCluster
/* 814C6844 | 7F E3 FB 78 */	mr r3, r31
/* 814C6848 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814C684C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C6850 | 7C 08 03 A6 */	mtlr r0
/* 814C6854 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C6858 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_AdvanceToRead

# .text:0x11C | 0x814C685C | size: 0x298
.fn VFiPFFILE_Cursor_ReadHeadSector, global
/* 814C685C | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C6860 | 7C 08 02 A6 */	mflr r0
/* 814C6864 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C6868 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C686C | 48 13 2C 55 */	bl _savegpr_27
/* 814C6870 | 38 00 00 00 */	li r0, 0x0
/* 814C6874 | 7C BD 2B 78 */	mr r29, r5
/* 814C6878 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C687C | 7C 7B 1B 78 */	mr r27, r3
/* 814C6880 | 7C 9C 23 78 */	mr r28, r4
/* 814C6884 | 7C DE 33 78 */	mr r30, r6
/* 814C6888 | A0 A4 00 2C */	lhz r5, 0x2c(r4)
/* 814C688C | 7C FF 3B 78 */	mr r31, r7
/* 814C6890 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C6894 | 40 82 00 0C */	bne .L_814C68A0
/* 814C6898 | 38 60 00 00 */	li r3, 0x0
/* 814C689C | 48 00 02 40 */	b .L_814C6ADC
.L_814C68A0:
/* 814C68A0 | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814C68A4 | 7C E5 00 50 */	subf r7, r5, r0
/* 814C68A8 | 7C 06 38 40 */	cmplw r6, r7
/* 814C68AC | 40 81 00 08 */	ble .L_814C68B4
/* 814C68B0 | 7C FE 3B 78 */	mr r30, r7
.L_814C68B4:
/* 814C68B4 | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 814C68B8 | 80 64 00 20 */	lwz r3, 0x20(r4)
/* 814C68BC | 80 A6 02 60 */	lwz r5, 0x260(r6)
/* 814C68C0 | 7C 03 F2 14 */	add r0, r3, r30
/* 814C68C4 | 7C 00 28 40 */	cmplw r0, r5
/* 814C68C8 | 40 81 00 18 */	ble .L_814C68E0
/* 814C68CC | 7F C3 28 50 */	subf r30, r3, r5
/* 814C68D0 | 7C 1E 38 40 */	cmplw r30, r7
/* 814C68D4 | 40 80 00 0C */	bge .L_814C68E0
/* 814C68D8 | 38 60 00 00 */	li r3, 0x0
/* 814C68DC | 48 00 02 00 */	b .L_814C6ADC
.L_814C68E0:
/* 814C68E0 | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814C68E4 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C68E8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C68EC | 40 82 01 A0 */	bne .L_814C6A8C
/* 814C68F0 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C68F4 | 38 66 00 04 */	addi r3, r6, 0x4
/* 814C68F8 | 38 DC 00 24 */	addi r6, r28, 0x24
/* 814C68FC | 38 A0 00 00 */	li r5, 0x0
/* 814C6900 | 4B FF D1 B5 */	bl VFiPFFAT_GetSectorSpecified
/* 814C6904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6908 | 41 82 00 08 */	beq .L_814C6910
/* 814C690C | 48 00 01 D0 */	b .L_814C6ADC
.L_814C6910:
/* 814C6910 | 80 BC 00 24 */	lwz r5, 0x24(r28)
/* 814C6914 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C6918 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C691C | 40 82 00 B4 */	bne .L_814C69D0
/* 814C6920 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C6924 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C6928 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C692C | 40 82 00 0C */	bne .L_814C6938
/* 814C6930 | 38 80 00 00 */	li r4, 0x0
/* 814C6934 | 48 00 00 08 */	b .L_814C693C
.L_814C6938:
/* 814C6938 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C693C:
/* 814C693C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C6940 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814C6944 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C6948 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C694C | 7C 07 18 38 */	and r7, r0, r3
/* 814C6950 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C6954 | 7D 03 18 38 */	and r3, r8, r3
/* 814C6958 | 7C C7 00 D0 */	neg r6, r7
/* 814C695C | 7D 04 24 30 */	srw r4, r8, r4
/* 814C6960 | 7C 03 00 D0 */	neg r0, r3
/* 814C6964 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C6968 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C696C | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C6970 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C6974 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C6978 | 7C 04 02 14 */	add r0, r4, r0
/* 814C697C | 7C 03 00 40 */	cmplw r3, r0
/* 814C6980 | 41 82 00 0C */	beq .L_814C698C
/* 814C6984 | 38 00 FF FF */	li r0, -0x1
/* 814C6988 | 90 1C 00 24 */	stw r0, 0x24(r28)
.L_814C698C:
/* 814C698C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C6990 | 91 1C 00 20 */	stw r8, 0x20(r28)
/* 814C6994 | 40 82 00 0C */	bne .L_814C69A0
/* 814C6998 | 38 80 00 00 */	li r4, 0x0
/* 814C699C | 48 00 00 0C */	b .L_814C69A8
.L_814C69A0:
/* 814C69A0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C69A4 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C69A8:
/* 814C69A8 | 80 BC 00 20 */	lwz r5, 0x20(r28)
/* 814C69AC | 38 60 00 1C */	li r3, 0x1c
/* 814C69B0 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C69B4 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C69B8 | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 814C69BC | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C69C0 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C69C4 | 7C A0 00 38 */	and r0, r5, r0
/* 814C69C8 | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814C69CC | 48 00 01 10 */	b .L_814C6ADC
.L_814C69D0:
/* 814C69D0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C69D4 | 80 DC 00 20 */	lwz r6, 0x20(r28)
/* 814C69D8 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C69DC | 7C 06 F2 14 */	add r0, r6, r30
/* 814C69E0 | 7C 00 40 40 */	cmplw r0, r8
/* 814C69E4 | 40 81 00 A8 */	ble .L_814C6A8C
/* 814C69E8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C69EC | 40 82 00 0C */	bne .L_814C69F8
/* 814C69F0 | 38 80 00 00 */	li r4, 0x0
/* 814C69F4 | 48 00 00 08 */	b .L_814C69FC
.L_814C69F8:
/* 814C69F8 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C69FC:
/* 814C69FC | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C6A00 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C6A04 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C6A08 | 7C C7 00 38 */	and r7, r6, r0
/* 814C6A0C | 7C C5 24 30 */	srw r5, r6, r4
/* 814C6A10 | 7D 03 00 38 */	and r3, r8, r0
/* 814C6A14 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C6A18 | 7C C7 00 D0 */	neg r6, r7
/* 814C6A1C | 7C 03 00 D0 */	neg r0, r3
/* 814C6A20 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C6A24 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C6A28 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C6A2C | 54 00 0F FE */	srwi r0, r0, 31
/* 814C6A30 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C6A34 | 7C 04 02 14 */	add r0, r4, r0
/* 814C6A38 | 7C 03 00 40 */	cmplw r3, r0
/* 814C6A3C | 41 82 00 0C */	beq .L_814C6A48
/* 814C6A40 | 38 00 FF FF */	li r0, -0x1
/* 814C6A44 | 90 1C 00 24 */	stw r0, 0x24(r28)
.L_814C6A48:
/* 814C6A48 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C6A4C | 91 1C 00 20 */	stw r8, 0x20(r28)
/* 814C6A50 | 40 82 00 0C */	bne .L_814C6A5C
/* 814C6A54 | 38 80 00 00 */	li r4, 0x0
/* 814C6A58 | 48 00 00 0C */	b .L_814C6A64
.L_814C6A5C:
/* 814C6A5C | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C6A60 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6A64:
/* 814C6A64 | 80 BC 00 20 */	lwz r5, 0x20(r28)
/* 814C6A68 | 38 60 00 1B */	li r3, 0x1b
/* 814C6A6C | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C6A70 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C6A74 | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 814C6A78 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C6A7C | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C6A80 | 7C A0 00 38 */	and r0, r5, r0
/* 814C6A84 | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814C6A88 | 48 00 00 54 */	b .L_814C6ADC
.L_814C6A8C:
/* 814C6A8C | A0 DC 00 2C */	lhz r6, 0x2c(r28)
/* 814C6A90 | 7F 63 DB 78 */	mr r3, r27
/* 814C6A94 | 7F A4 EB 78 */	mr r4, r29
/* 814C6A98 | 7F C7 F3 78 */	mr r7, r30
/* 814C6A9C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C6AA0 | 39 20 00 01 */	li r9, 0x1
/* 814C6AA4 | 48 00 5E B5 */	bl VFiPFSEC_ReadData
/* 814C6AA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6AAC | 41 82 00 14 */	beq .L_814C6AC0
/* 814C6AB0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6AB4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C6AB8 | 40 82 00 08 */	bne .L_814C6AC0
/* 814C6ABC | 48 00 00 20 */	b .L_814C6ADC
.L_814C6AC0:
/* 814C6AC0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6AC4 | 7F 83 E3 78 */	mr r3, r28
/* 814C6AC8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814C6ACC | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C6AD0 | 80 BC 00 24 */	lwz r5, 0x24(r28)
/* 814C6AD4 | 4B FF FC 6D */	bl VFiPFFILE_Cursor_AdvanceToRead
/* 814C6AD8 | 38 60 00 00 */	li r3, 0x0
.L_814C6ADC:
/* 814C6ADC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6AE0 | 48 13 2A 2D */	bl _restgpr_27
/* 814C6AE4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C6AE8 | 7C 08 03 A6 */	mtlr r0
/* 814C6AEC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C6AF0 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_ReadHeadSector

# .text:0x3B4 | 0x814C6AF4 | size: 0x1D4
.fn VFiPFFILE_Cursor_ReadBodySectors, global
/* 814C6AF4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C6AF8 | 7C 08 02 A6 */	mflr r0
/* 814C6AFC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C6B00 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6B04 | 48 13 29 BD */	bl _savegpr_27
/* 814C6B08 | 38 00 00 00 */	li r0, 0x0
/* 814C6B0C | 7C 7B 1B 78 */	mr r27, r3
/* 814C6B10 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C6B14 | 7C FE 3B 78 */	mr r30, r7
/* 814C6B18 | 7C 9F 23 78 */	mr r31, r4
/* 814C6B1C | 7C DD 33 78 */	mr r29, r6
/* 814C6B20 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C6B24 | 7C BC 2B 78 */	mr r28, r5
/* 814C6B28 | 7F A5 EB 78 */	mr r5, r29
/* 814C6B2C | 38 DF 00 24 */	addi r6, r31, 0x24
/* 814C6B30 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814C6B34 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C6B38 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C6B3C | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C6B40 | 4B FF D0 D1 */	bl VFiPFFAT_GetContinuousSector
/* 814C6B44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6B48 | 41 82 00 08 */	beq .L_814C6B50
/* 814C6B4C | 48 00 01 64 */	b .L_814C6CB0
.L_814C6B50:
/* 814C6B50 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814C6B54 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C6B58 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C6B5C | 40 82 00 B4 */	bne .L_814C6C10
/* 814C6B60 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6B64 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6B68 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C6B6C | 40 82 00 0C */	bne .L_814C6B78
/* 814C6B70 | 38 80 00 00 */	li r4, 0x0
/* 814C6B74 | 48 00 00 08 */	b .L_814C6B7C
.L_814C6B78:
/* 814C6B78 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6B7C:
/* 814C6B7C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C6B80 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C6B84 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C6B88 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C6B8C | 7C 07 18 38 */	and r7, r0, r3
/* 814C6B90 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C6B94 | 7D 03 18 38 */	and r3, r8, r3
/* 814C6B98 | 7C C7 00 D0 */	neg r6, r7
/* 814C6B9C | 7D 04 24 30 */	srw r4, r8, r4
/* 814C6BA0 | 7C 03 00 D0 */	neg r0, r3
/* 814C6BA4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C6BA8 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C6BAC | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C6BB0 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C6BB4 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C6BB8 | 7C 04 02 14 */	add r0, r4, r0
/* 814C6BBC | 7C 03 00 40 */	cmplw r3, r0
/* 814C6BC0 | 41 82 00 0C */	beq .L_814C6BCC
/* 814C6BC4 | 38 00 FF FF */	li r0, -0x1
/* 814C6BC8 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C6BCC:
/* 814C6BCC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6BD0 | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C6BD4 | 40 82 00 0C */	bne .L_814C6BE0
/* 814C6BD8 | 38 80 00 00 */	li r4, 0x0
/* 814C6BDC | 48 00 00 0C */	b .L_814C6BE8
.L_814C6BE0:
/* 814C6BE0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6BE4 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6BE8:
/* 814C6BE8 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C6BEC | 38 60 00 1C */	li r3, 0x1c
/* 814C6BF0 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C6BF4 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C6BF8 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C6BFC | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C6C00 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C6C04 | 7C A0 00 38 */	and r0, r5, r0
/* 814C6C08 | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C6C0C | 48 00 00 A4 */	b .L_814C6CB0
.L_814C6C10:
/* 814C6C10 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C6C14 | 88 1B 00 20 */	lbz r0, 0x20(r27)
/* 814C6C18 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C6C1C | 7C 1D 00 40 */	cmplw r29, r0
/* 814C6C20 | 40 81 00 08 */	ble .L_814C6C28
/* 814C6C24 | 7C 1D 03 78 */	mr r29, r0
.L_814C6C28:
/* 814C6C28 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6C2C | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814C6C30 | 80 63 02 60 */	lwz r3, 0x260(r3)
/* 814C6C34 | 7C 04 EA 14 */	add r0, r4, r29
/* 814C6C38 | 7C 00 18 40 */	cmplw r0, r3
/* 814C6C3C | 40 81 00 28 */	ble .L_814C6C64
/* 814C6C40 | A0 DB 00 00 */	lhz r6, 0x0(r27)
/* 814C6C44 | 7F A4 18 50 */	subf r29, r4, r3
/* 814C6C48 | 38 06 FF FF */	subi r0, r6, 0x1
/* 814C6C4C | 7F A0 00 38 */	and r0, r29, r0
/* 814C6C50 | 7F A0 E8 50 */	subf r29, r0, r29
/* 814C6C54 | 7C 1D 30 40 */	cmplw r29, r6
/* 814C6C58 | 40 80 00 0C */	bge .L_814C6C64
/* 814C6C5C | 38 60 00 00 */	li r3, 0x0
/* 814C6C60 | 48 00 00 50 */	b .L_814C6CB0
.L_814C6C64:
/* 814C6C64 | 7F 63 DB 78 */	mr r3, r27
/* 814C6C68 | 7F 84 E3 78 */	mr r4, r28
/* 814C6C6C | 7F A6 EB 78 */	mr r6, r29
/* 814C6C70 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C6C74 | 39 00 00 01 */	li r8, 0x1
/* 814C6C78 | 48 00 5D CD */	bl VFiPFSEC_ReadDataSector
/* 814C6C7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6C80 | 41 82 00 14 */	beq .L_814C6C94
/* 814C6C84 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6C88 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C6C8C | 40 82 00 08 */	bne .L_814C6C94
/* 814C6C90 | 48 00 00 20 */	b .L_814C6CB0
.L_814C6C94:
/* 814C6C94 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6C98 | 7F E3 FB 78 */	mr r3, r31
/* 814C6C9C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C6CA0 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C6CA4 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814C6CA8 | 4B FF FA 99 */	bl VFiPFFILE_Cursor_AdvanceToRead
/* 814C6CAC | 38 60 00 00 */	li r3, 0x0
.L_814C6CB0:
/* 814C6CB0 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6CB4 | 48 13 28 59 */	bl _restgpr_27
/* 814C6CB8 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C6CBC | 7C 08 03 A6 */	mtlr r0
/* 814C6CC0 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C6CC4 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_ReadBodySectors

# .text:0x588 | 0x814C6CC8 | size: 0x27C
.fn VFiPFFILE_Cursor_ReadTailSector, global
/* 814C6CC8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C6CCC | 7C 08 02 A6 */	mflr r0
/* 814C6CD0 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C6CD4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6CD8 | 48 13 27 E9 */	bl _savegpr_27
/* 814C6CDC | 38 00 00 00 */	li r0, 0x0
/* 814C6CE0 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C6CE4 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C6CE8 | 7C 7B 1B 78 */	mr r27, r3
/* 814C6CEC | 7C 9F 23 78 */	mr r31, r4
/* 814C6CF0 | 7C BC 2B 78 */	mr r28, r5
/* 814C6CF4 | 7C DD 33 78 */	mr r29, r6
/* 814C6CF8 | 7C FE 3B 78 */	mr r30, r7
/* 814C6CFC | 40 82 00 0C */	bne .L_814C6D08
/* 814C6D00 | 38 60 00 00 */	li r3, 0x0
/* 814C6D04 | 48 00 02 28 */	b .L_814C6F2C
.L_814C6D08:
/* 814C6D08 | 80 E4 00 08 */	lwz r7, 0x8(r4)
/* 814C6D0C | 80 64 00 20 */	lwz r3, 0x20(r4)
/* 814C6D10 | 80 A7 02 60 */	lwz r5, 0x260(r7)
/* 814C6D14 | 7C 03 32 14 */	add r0, r3, r6
/* 814C6D18 | 7C 00 28 40 */	cmplw r0, r5
/* 814C6D1C | 40 81 00 14 */	ble .L_814C6D30
/* 814C6D20 | 7F A3 28 51 */	subf. r29, r3, r5
/* 814C6D24 | 40 82 00 0C */	bne .L_814C6D30
/* 814C6D28 | 38 60 00 00 */	li r3, 0x0
/* 814C6D2C | 48 00 02 00 */	b .L_814C6F2C
.L_814C6D30:
/* 814C6D30 | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814C6D34 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C6D38 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C6D3C | 40 82 01 A0 */	bne .L_814C6EDC
/* 814C6D40 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C6D44 | 38 67 00 04 */	addi r3, r7, 0x4
/* 814C6D48 | 38 DF 00 24 */	addi r6, r31, 0x24
/* 814C6D4C | 38 A0 00 00 */	li r5, 0x0
/* 814C6D50 | 4B FF CD 65 */	bl VFiPFFAT_GetSectorSpecified
/* 814C6D54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6D58 | 41 82 00 08 */	beq .L_814C6D60
/* 814C6D5C | 48 00 01 D0 */	b .L_814C6F2C
.L_814C6D60:
/* 814C6D60 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814C6D64 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C6D68 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C6D6C | 40 82 00 B4 */	bne .L_814C6E20
/* 814C6D70 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6D74 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6D78 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C6D7C | 40 82 00 0C */	bne .L_814C6D88
/* 814C6D80 | 38 80 00 00 */	li r4, 0x0
/* 814C6D84 | 48 00 00 08 */	b .L_814C6D8C
.L_814C6D88:
/* 814C6D88 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6D8C:
/* 814C6D8C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C6D90 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C6D94 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C6D98 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C6D9C | 7C 07 18 38 */	and r7, r0, r3
/* 814C6DA0 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C6DA4 | 7D 03 18 38 */	and r3, r8, r3
/* 814C6DA8 | 7C C7 00 D0 */	neg r6, r7
/* 814C6DAC | 7D 04 24 30 */	srw r4, r8, r4
/* 814C6DB0 | 7C 03 00 D0 */	neg r0, r3
/* 814C6DB4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C6DB8 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C6DBC | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C6DC0 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C6DC4 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C6DC8 | 7C 04 02 14 */	add r0, r4, r0
/* 814C6DCC | 7C 03 00 40 */	cmplw r3, r0
/* 814C6DD0 | 41 82 00 0C */	beq .L_814C6DDC
/* 814C6DD4 | 38 00 FF FF */	li r0, -0x1
/* 814C6DD8 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C6DDC:
/* 814C6DDC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6DE0 | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C6DE4 | 40 82 00 0C */	bne .L_814C6DF0
/* 814C6DE8 | 38 80 00 00 */	li r4, 0x0
/* 814C6DEC | 48 00 00 0C */	b .L_814C6DF8
.L_814C6DF0:
/* 814C6DF0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6DF4 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6DF8:
/* 814C6DF8 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C6DFC | 38 60 00 1C */	li r3, 0x1c
/* 814C6E00 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C6E04 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C6E08 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C6E0C | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C6E10 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C6E14 | 7C A0 00 38 */	and r0, r5, r0
/* 814C6E18 | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C6E1C | 48 00 01 10 */	b .L_814C6F2C
.L_814C6E20:
/* 814C6E20 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6E24 | 80 DF 00 20 */	lwz r6, 0x20(r31)
/* 814C6E28 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C6E2C | 7C 06 EA 14 */	add r0, r6, r29
/* 814C6E30 | 7C 00 40 40 */	cmplw r0, r8
/* 814C6E34 | 40 81 00 A8 */	ble .L_814C6EDC
/* 814C6E38 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6E3C | 40 82 00 0C */	bne .L_814C6E48
/* 814C6E40 | 38 80 00 00 */	li r4, 0x0
/* 814C6E44 | 48 00 00 08 */	b .L_814C6E4C
.L_814C6E48:
/* 814C6E48 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6E4C:
/* 814C6E4C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C6E50 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C6E54 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C6E58 | 7C C7 00 38 */	and r7, r6, r0
/* 814C6E5C | 7C C5 24 30 */	srw r5, r6, r4
/* 814C6E60 | 7D 03 00 38 */	and r3, r8, r0
/* 814C6E64 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C6E68 | 7C C7 00 D0 */	neg r6, r7
/* 814C6E6C | 7C 03 00 D0 */	neg r0, r3
/* 814C6E70 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C6E74 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C6E78 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C6E7C | 54 00 0F FE */	srwi r0, r0, 31
/* 814C6E80 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C6E84 | 7C 04 02 14 */	add r0, r4, r0
/* 814C6E88 | 7C 03 00 40 */	cmplw r3, r0
/* 814C6E8C | 41 82 00 0C */	beq .L_814C6E98
/* 814C6E90 | 38 00 FF FF */	li r0, -0x1
/* 814C6E94 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C6E98:
/* 814C6E98 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C6E9C | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C6EA0 | 40 82 00 0C */	bne .L_814C6EAC
/* 814C6EA4 | 38 80 00 00 */	li r4, 0x0
/* 814C6EA8 | 48 00 00 0C */	b .L_814C6EB4
.L_814C6EAC:
/* 814C6EAC | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C6EB0 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C6EB4:
/* 814C6EB4 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C6EB8 | 38 60 00 1B */	li r3, 0x1b
/* 814C6EBC | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C6EC0 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C6EC4 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C6EC8 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C6ECC | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C6ED0 | 7C A0 00 38 */	and r0, r5, r0
/* 814C6ED4 | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C6ED8 | 48 00 00 54 */	b .L_814C6F2C
.L_814C6EDC:
/* 814C6EDC | A0 DF 00 2C */	lhz r6, 0x2c(r31)
/* 814C6EE0 | 7F 63 DB 78 */	mr r3, r27
/* 814C6EE4 | 7F 84 E3 78 */	mr r4, r28
/* 814C6EE8 | 7F A7 EB 78 */	mr r7, r29
/* 814C6EEC | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C6EF0 | 39 20 00 01 */	li r9, 0x1
/* 814C6EF4 | 48 00 5A 65 */	bl VFiPFSEC_ReadData
/* 814C6EF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6EFC | 41 82 00 14 */	beq .L_814C6F10
/* 814C6F00 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6F04 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C6F08 | 40 82 00 08 */	bne .L_814C6F10
/* 814C6F0C | 48 00 00 20 */	b .L_814C6F2C
.L_814C6F10:
/* 814C6F10 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6F14 | 7F E3 FB 78 */	mr r3, r31
/* 814C6F18 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C6F1C | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C6F20 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814C6F24 | 4B FF F8 1D */	bl VFiPFFILE_Cursor_AdvanceToRead
/* 814C6F28 | 38 60 00 00 */	li r3, 0x0
.L_814C6F2C:
/* 814C6F2C | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6F30 | 48 13 25 DD */	bl _restgpr_27
/* 814C6F34 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C6F38 | 7C 08 03 A6 */	mtlr r0
/* 814C6F3C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C6F40 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_ReadTailSector

# .text:0x804 | 0x814C6F44 | size: 0x144
.fn VFiPFFILE_Cursor_Read, global
/* 814C6F44 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C6F48 | 7C 08 02 A6 */	mflr r0
/* 814C6F4C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C6F50 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C6F54 | 48 13 25 6D */	bl _savegpr_27
/* 814C6F58 | 38 00 00 00 */	li r0, 0x0
/* 814C6F5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6F60 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C6F64 | 7C 7B 1B 78 */	mr r27, r3
/* 814C6F68 | 7C 9C 23 78 */	mr r28, r4
/* 814C6F6C | 7C BD 2B 78 */	mr r29, r5
/* 814C6F70 | 7C DE 33 78 */	mr r30, r6
/* 814C6F74 | 40 82 00 0C */	bne .L_814C6F80
/* 814C6F78 | 3B E0 00 00 */	li r31, 0x0
/* 814C6F7C | 48 00 00 0C */	b .L_814C6F88
.L_814C6F80:
/* 814C6F80 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C6F84 | 83 E3 02 64 */	lwz r31, 0x264(r3)
.L_814C6F88:
/* 814C6F88 | 7F 63 DB 78 */	mr r3, r27
/* 814C6F8C | 4B FF 58 C5 */	bl VFiPFCLUSTER_SetLastAccessCluster
/* 814C6F90 | 7F E3 FB 78 */	mr r3, r31
/* 814C6F94 | 7F 64 DB 78 */	mr r4, r27
/* 814C6F98 | 7F 85 E3 78 */	mr r5, r28
/* 814C6F9C | 7F A6 EB 78 */	mr r6, r29
/* 814C6FA0 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C6FA4 | 4B FF F8 B9 */	bl VFiPFFILE_Cursor_ReadHeadSector
/* 814C6FA8 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814C6FAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C6FB0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6FB4 | 7C 04 02 14 */	add r0, r4, r0
/* 814C6FB8 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C6FBC | 41 82 00 08 */	beq .L_814C6FC4
/* 814C6FC0 | 48 00 00 B0 */	b .L_814C7070
.L_814C6FC4:
/* 814C6FC4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C6FC8 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C6FCC | 41 80 00 0C */	blt .L_814C6FD8
/* 814C6FD0 | 38 60 00 00 */	li r3, 0x0
/* 814C6FD4 | 48 00 00 9C */	b .L_814C7070
.L_814C6FD8:
/* 814C6FD8 | 7F A0 E8 50 */	subf r29, r0, r29
/* 814C6FDC | 48 00 00 4C */	b .L_814C7028
.L_814C6FE0:
/* 814C6FE0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C6FE4 | 7F E3 FB 78 */	mr r3, r31
/* 814C6FE8 | 7F 64 DB 78 */	mr r4, r27
/* 814C6FEC | 7F A6 EB 78 */	mr r6, r29
/* 814C6FF0 | 7C BC 02 14 */	add r5, r28, r0
/* 814C6FF4 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C6FF8 | 4B FF FA FD */	bl VFiPFFILE_Cursor_ReadBodySectors
/* 814C6FFC | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814C7000 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7004 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C7008 | 7C 04 02 14 */	add r0, r4, r0
/* 814C700C | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C7010 | 41 82 00 08 */	beq .L_814C7018
/* 814C7014 | 48 00 00 5C */	b .L_814C7070
.L_814C7018:
/* 814C7018 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C701C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7020 | 41 82 00 14 */	beq .L_814C7034
/* 814C7024 | 7F A0 E8 50 */	subf r29, r0, r29
.L_814C7028:
/* 814C7028 | A0 1F 00 00 */	lhz r0, 0x0(r31)
/* 814C702C | 7C 1D 00 40 */	cmplw r29, r0
/* 814C7030 | 40 80 FF B0 */	bge .L_814C6FE0
.L_814C7034:
/* 814C7034 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C7038 | 7F E3 FB 78 */	mr r3, r31
/* 814C703C | 7F 64 DB 78 */	mr r4, r27
/* 814C7040 | 7F A6 EB 78 */	mr r6, r29
/* 814C7044 | 7C BC 02 14 */	add r5, r28, r0
/* 814C7048 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C704C | 4B FF FC 7D */	bl VFiPFFILE_Cursor_ReadTailSector
/* 814C7050 | 80 9E 00 00 */	lwz r4, 0x0(r30)
/* 814C7054 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7058 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C705C | 7C 04 02 14 */	add r0, r4, r0
/* 814C7060 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C7064 | 41 82 00 08 */	beq .L_814C706C
/* 814C7068 | 48 00 00 08 */	b .L_814C7070
.L_814C706C:
/* 814C706C | 38 60 00 00 */	li r3, 0x0
.L_814C7070:
/* 814C7070 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C7074 | 48 13 24 99 */	bl _restgpr_27
/* 814C7078 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C707C | 7C 08 03 A6 */	mtlr r0
/* 814C7080 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C7084 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_Read

# .text:0x948 | 0x814C7088 | size: 0x25C
.fn VFiPFFILE_Cursor_WriteHeadSector, global
/* 814C7088 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C708C | 7C 08 02 A6 */	mflr r0
/* 814C7090 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C7094 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C7098 | 48 13 24 29 */	bl _savegpr_27
/* 814C709C | 38 00 00 00 */	li r0, 0x0
/* 814C70A0 | 7C BC 2B 78 */	mr r28, r5
/* 814C70A4 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C70A8 | 7C 7B 1B 78 */	mr r27, r3
/* 814C70AC | 7C 9F 23 78 */	mr r31, r4
/* 814C70B0 | 7C DD 33 78 */	mr r29, r6
/* 814C70B4 | A0 A4 00 2C */	lhz r5, 0x2c(r4)
/* 814C70B8 | 7C FE 3B 78 */	mr r30, r7
/* 814C70BC | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C70C0 | 40 82 00 0C */	bne .L_814C70CC
/* 814C70C4 | 38 60 00 00 */	li r3, 0x0
/* 814C70C8 | 48 00 02 04 */	b .L_814C72CC
.L_814C70CC:
/* 814C70CC | A0 03 00 00 */	lhz r0, 0x0(r3)
/* 814C70D0 | 7C 05 00 50 */	subf r0, r5, r0
/* 814C70D4 | 7C 06 00 40 */	cmplw r6, r0
/* 814C70D8 | 40 81 00 08 */	ble .L_814C70E0
/* 814C70DC | 7C 1D 03 78 */	mr r29, r0
.L_814C70E0:
/* 814C70E0 | 80 A4 00 24 */	lwz r5, 0x24(r4)
/* 814C70E4 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C70E8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C70EC | 40 82 00 E8 */	bne .L_814C71D4
/* 814C70F0 | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814C70F4 | 38 DF 00 24 */	addi r6, r31, 0x24
/* 814C70F8 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C70FC | 38 A0 00 00 */	li r5, 0x0
/* 814C7100 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C7104 | 4B FF C9 B1 */	bl VFiPFFAT_GetSectorSpecified
/* 814C7108 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C710C | 41 82 00 08 */	beq .L_814C7114
/* 814C7110 | 48 00 01 BC */	b .L_814C72CC
.L_814C7114:
/* 814C7114 | 80 BF 00 24 */	lwz r5, 0x24(r31)
/* 814C7118 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C711C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C7120 | 40 82 00 B4 */	bne .L_814C71D4
/* 814C7124 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7128 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C712C | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C7130 | 40 82 00 0C */	bne .L_814C713C
/* 814C7134 | 38 80 00 00 */	li r4, 0x0
/* 814C7138 | 48 00 00 08 */	b .L_814C7140
.L_814C713C:
/* 814C713C | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7140:
/* 814C7140 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7144 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C7148 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C714C | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7150 | 7C 07 18 38 */	and r7, r0, r3
/* 814C7154 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C7158 | 7D 03 18 38 */	and r3, r8, r3
/* 814C715C | 7C C7 00 D0 */	neg r6, r7
/* 814C7160 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C7164 | 7C 03 00 D0 */	neg r0, r3
/* 814C7168 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C716C | 7C C6 3B 78 */	or r6, r6, r7
/* 814C7170 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C7174 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C7178 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C717C | 7C 04 02 14 */	add r0, r4, r0
/* 814C7180 | 7C 03 00 40 */	cmplw r3, r0
/* 814C7184 | 41 82 00 0C */	beq .L_814C7190
/* 814C7188 | 38 00 FF FF */	li r0, -0x1
/* 814C718C | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C7190:
/* 814C7190 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7194 | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C7198 | 40 82 00 0C */	bne .L_814C71A4
/* 814C719C | 38 80 00 00 */	li r4, 0x0
/* 814C71A0 | 48 00 00 0C */	b .L_814C71AC
.L_814C71A4:
/* 814C71A4 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C71A8 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C71AC:
/* 814C71AC | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C71B0 | 38 60 00 1C */	li r3, 0x1c
/* 814C71B4 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C71B8 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C71BC | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C71C0 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C71C4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C71C8 | 7C A0 00 38 */	and r0, r5, r0
/* 814C71CC | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C71D0 | 48 00 00 FC */	b .L_814C72CC
.L_814C71D4:
/* 814C71D4 | A0 DF 00 2C */	lhz r6, 0x2c(r31)
/* 814C71D8 | 7F 63 DB 78 */	mr r3, r27
/* 814C71DC | 7F 84 E3 78 */	mr r4, r28
/* 814C71E0 | 7F A7 EB 78 */	mr r7, r29
/* 814C71E4 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C71E8 | 39 20 00 00 */	li r9, 0x0
/* 814C71EC | 39 40 00 01 */	li r10, 0x1
/* 814C71F0 | 48 00 5A E5 */	bl VFiPFSEC_WriteData
/* 814C71F4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C71F8 | 41 82 00 14 */	beq .L_814C720C
/* 814C71FC | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C7200 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7204 | 40 82 00 08 */	bne .L_814C720C
/* 814C7208 | 48 00 00 C4 */	b .L_814C72CC
.L_814C720C:
/* 814C720C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C7210 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7214 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814C7218 | 80 DF 00 24 */	lwz r6, 0x24(r31)
/* 814C721C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814C7220 | 40 82 00 0C */	bne .L_814C722C
/* 814C7224 | 38 80 00 00 */	li r4, 0x0
/* 814C7228 | 48 00 00 0C */	b .L_814C7234
.L_814C722C:
/* 814C722C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7230 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7234:
/* 814C7234 | A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 814C7238 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C723C | 7C E0 2A 14 */	add r7, r0, r5
/* 814C7240 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7244 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C7248 | 7C 00 38 39 */	and. r0, r0, r7
/* 814C724C | 7C E0 24 30 */	srw r0, r7, r4
/* 814C7250 | 7C 86 02 14 */	add r4, r6, r0
/* 814C7254 | 41 82 00 0C */	beq .L_814C7260
/* 814C7258 | 90 9F 00 24 */	stw r4, 0x24(r31)
/* 814C725C | 48 00 00 0C */	b .L_814C7268
.L_814C7260:
/* 814C7260 | 38 00 FF FF */	li r0, -0x1
/* 814C7264 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C7268:
/* 814C7268 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C726C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7270 | 7C A0 2A 14 */	add r5, r0, r5
/* 814C7274 | 90 BF 00 20 */	stw r5, 0x20(r31)
/* 814C7278 | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C727C | 7C 05 00 40 */	cmplw r5, r0
/* 814C7280 | 40 81 00 08 */	ble .L_814C7288
/* 814C7284 | 90 A3 02 60 */	stw r5, 0x260(r3)
.L_814C7288:
/* 814C7288 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C728C | 40 82 00 0C */	bne .L_814C7298
/* 814C7290 | 38 A0 00 00 */	li r5, 0x0
/* 814C7294 | 48 00 00 0C */	b .L_814C72A0
.L_814C7298:
/* 814C7298 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C729C | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C72A0:
/* 814C72A0 | 80 DF 00 20 */	lwz r6, 0x20(r31)
/* 814C72A4 | 7F E3 FB 78 */	mr r3, r31
/* 814C72A8 | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C72AC | 7C C0 04 30 */	srw r0, r6, r0
/* 814C72B0 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C72B4 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814C72B8 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C72BC | 7C C0 00 38 */	and r0, r6, r0
/* 814C72C0 | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C72C4 | 4B FF 54 D1 */	bl VFiPFCLUSTER_UpdateLastAccessCluster
/* 814C72C8 | 38 60 00 00 */	li r3, 0x0
.L_814C72CC:
/* 814C72CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C72D0 | 48 13 22 3D */	bl _restgpr_27
/* 814C72D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C72D8 | 7C 08 03 A6 */	mtlr r0
/* 814C72DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C72E0 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_WriteHeadSector

# .text:0xBA4 | 0x814C72E4 | size: 0x2DC
.fn VFiPFFILE_Cursor_WriteTailSector, global
/* 814C72E4 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C72E8 | 7C 08 02 A6 */	mflr r0
/* 814C72EC | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C72F0 | 38 00 00 00 */	li r0, 0x0
/* 814C72F4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814C72F8 | 7D 1F 43 78 */	mr r31, r8
/* 814C72FC | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814C7300 | 7C 9E 23 78 */	mr r30, r4
/* 814C7304 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814C7308 | 7C BD 2B 78 */	mr r29, r5
/* 814C730C | 93 81 00 20 */	stw r28, 0x20(r1)
/* 814C7310 | 7C 7C 1B 78 */	mr r28, r3
/* 814C7314 | 90 C1 00 08 */	stw r6, 0x8(r1)
/* 814C7318 | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814C731C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814C7320 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C7324 | 40 82 00 0C */	bne .L_814C7330
/* 814C7328 | 38 60 00 00 */	li r3, 0x0
/* 814C732C | 48 00 02 74 */	b .L_814C75A0
.L_814C7330:
/* 814C7330 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814C7334 | A0 04 00 2C */	lhz r0, 0x2c(r4)
/* 814C7338 | 7C 00 18 50 */	subf r0, r0, r3
/* 814C733C | 7C 05 00 40 */	cmplw r5, r0
/* 814C7340 | 41 81 00 0C */	bgt .L_814C734C
/* 814C7344 | 7C 05 18 40 */	cmplw r5, r3
/* 814C7348 | 40 81 00 0C */	ble .L_814C7354
.L_814C734C:
/* 814C734C | 38 60 00 1A */	li r3, 0x1a
/* 814C7350 | 48 00 02 50 */	b .L_814C75A0
.L_814C7354:
/* 814C7354 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C7358 | 41 82 00 44 */	beq .L_814C739C
/* 814C735C | 7F C3 F3 78 */	mr r3, r30
/* 814C7360 | 7C E4 3B 78 */	mr r4, r7
/* 814C7364 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814C7368 | 38 C1 00 10 */	addi r6, r1, 0x10
/* 814C736C | 4B FF 54 F5 */	bl VFiPFCLUSTER_AppendCluster
/* 814C7370 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7374 | 41 82 00 08 */	beq .L_814C737C
/* 814C7378 | 48 00 02 28 */	b .L_814C75A0
.L_814C737C:
/* 814C737C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C7380 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7384 | 40 82 00 0C */	bne .L_814C7390
/* 814C7388 | 38 60 00 00 */	li r3, 0x0
/* 814C738C | 48 00 02 14 */	b .L_814C75A0
.L_814C7390:
/* 814C7390 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C7394 | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814C7398 | 48 00 00 F8 */	b .L_814C7490
.L_814C739C:
/* 814C739C | 80 64 00 24 */	lwz r3, 0x24(r4)
/* 814C73A0 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C73A4 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C73A8 | 40 82 00 E8 */	bne .L_814C7490
/* 814C73AC | 80 64 00 08 */	lwz r3, 0x8(r4)
/* 814C73B0 | 38 DE 00 24 */	addi r6, r30, 0x24
/* 814C73B4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C73B8 | 38 A0 00 00 */	li r5, 0x0
/* 814C73BC | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C73C0 | 4B FF C6 F5 */	bl VFiPFFAT_GetSectorSpecified
/* 814C73C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C73C8 | 41 82 00 08 */	beq .L_814C73D0
/* 814C73CC | 48 00 01 D4 */	b .L_814C75A0
.L_814C73D0:
/* 814C73D0 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 814C73D4 | 3C 03 00 01 */	addis r0, r3, 0x1
/* 814C73D8 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C73DC | 40 82 00 B4 */	bne .L_814C7490
/* 814C73E0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C73E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C73E8 | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C73EC | 40 82 00 0C */	bne .L_814C73F8
/* 814C73F0 | 38 80 00 00 */	li r4, 0x0
/* 814C73F4 | 48 00 00 08 */	b .L_814C73FC
.L_814C73F8:
/* 814C73F8 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C73FC:
/* 814C73FC | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7400 | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814C7404 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C7408 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C740C | 7C 07 18 38 */	and r7, r0, r3
/* 814C7410 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C7414 | 7D 03 18 38 */	and r3, r8, r3
/* 814C7418 | 7C C7 00 D0 */	neg r6, r7
/* 814C741C | 7D 04 24 30 */	srw r4, r8, r4
/* 814C7420 | 7C 03 00 D0 */	neg r0, r3
/* 814C7424 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C7428 | 7C C6 3B 78 */	or r6, r6, r7
/* 814C742C | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C7430 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C7434 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C7438 | 7C 04 02 14 */	add r0, r4, r0
/* 814C743C | 7C 03 00 40 */	cmplw r3, r0
/* 814C7440 | 41 82 00 0C */	beq .L_814C744C
/* 814C7444 | 38 00 FF FF */	li r0, -0x1
/* 814C7448 | 90 1E 00 24 */	stw r0, 0x24(r30)
.L_814C744C:
/* 814C744C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C7450 | 91 1E 00 20 */	stw r8, 0x20(r30)
/* 814C7454 | 40 82 00 0C */	bne .L_814C7460
/* 814C7458 | 38 80 00 00 */	li r4, 0x0
/* 814C745C | 48 00 00 0C */	b .L_814C7468
.L_814C7460:
/* 814C7460 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C7464 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7468:
/* 814C7468 | 80 BE 00 20 */	lwz r5, 0x20(r30)
/* 814C746C | 38 60 00 1C */	li r3, 0x1c
/* 814C7470 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C7474 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C7478 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 814C747C | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C7480 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C7484 | 7C A0 00 38 */	and r0, r5, r0
/* 814C7488 | B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 814C748C | 48 00 01 14 */	b .L_814C75A0
.L_814C7490:
/* 814C7490 | 80 BE 00 08 */	lwz r5, 0x8(r30)
/* 814C7494 | 7F 83 E3 78 */	mr r3, r28
/* 814C7498 | 80 DE 00 20 */	lwz r6, 0x20(r30)
/* 814C749C | 7F A4 EB 78 */	mr r4, r29
/* 814C74A0 | 80 05 02 60 */	lwz r0, 0x260(r5)
/* 814C74A4 | 39 01 00 0C */	addi r8, r1, 0xc
/* 814C74A8 | 80 BE 00 24 */	lwz r5, 0x24(r30)
/* 814C74AC | 39 40 00 01 */	li r10, 0x1
/* 814C74B0 | 7C 06 00 50 */	subf r0, r6, r0
/* 814C74B4 | A0 DE 00 2C */	lhz r6, 0x2c(r30)
/* 814C74B8 | 7C 00 00 34 */	cntlzw r0, r0
/* 814C74BC | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814C74C0 | 54 09 D9 7E */	srwi r9, r0, 5
/* 814C74C4 | 48 00 58 11 */	bl VFiPFSEC_WriteData
/* 814C74C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C74CC | 41 82 00 14 */	beq .L_814C74E0
/* 814C74D0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C74D4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C74D8 | 40 82 00 08 */	bne .L_814C74E0
/* 814C74DC | 48 00 00 C4 */	b .L_814C75A0
.L_814C74E0:
/* 814C74E0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814C74E4 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C74E8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814C74EC | 80 DE 00 24 */	lwz r6, 0x24(r30)
/* 814C74F0 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814C74F4 | 40 82 00 0C */	bne .L_814C7500
/* 814C74F8 | 38 80 00 00 */	li r4, 0x0
/* 814C74FC | 48 00 00 0C */	b .L_814C7508
.L_814C7500:
/* 814C7500 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C7504 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7508:
/* 814C7508 | A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 814C750C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7510 | 7C E0 2A 14 */	add r7, r0, r5
/* 814C7514 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7518 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C751C | 7C 00 38 39 */	and. r0, r0, r7
/* 814C7520 | 7C E0 24 30 */	srw r0, r7, r4
/* 814C7524 | 7C 86 02 14 */	add r4, r6, r0
/* 814C7528 | 41 82 00 0C */	beq .L_814C7534
/* 814C752C | 90 9E 00 24 */	stw r4, 0x24(r30)
/* 814C7530 | 48 00 00 0C */	b .L_814C753C
.L_814C7534:
/* 814C7534 | 38 00 FF FF */	li r0, -0x1
/* 814C7538 | 90 1E 00 24 */	stw r0, 0x24(r30)
.L_814C753C:
/* 814C753C | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814C7540 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C7544 | 7C A0 2A 14 */	add r5, r0, r5
/* 814C7548 | 90 BE 00 20 */	stw r5, 0x20(r30)
/* 814C754C | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C7550 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7554 | 40 81 00 08 */	ble .L_814C755C
/* 814C7558 | 90 A3 02 60 */	stw r5, 0x260(r3)
.L_814C755C:
/* 814C755C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C7560 | 40 82 00 0C */	bne .L_814C756C
/* 814C7564 | 38 A0 00 00 */	li r5, 0x0
/* 814C7568 | 48 00 00 0C */	b .L_814C7574
.L_814C756C:
/* 814C756C | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C7570 | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C7574:
/* 814C7574 | 80 DE 00 20 */	lwz r6, 0x20(r30)
/* 814C7578 | 7F C3 F3 78 */	mr r3, r30
/* 814C757C | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C7580 | 7C C0 04 30 */	srw r0, r6, r0
/* 814C7584 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 814C7588 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814C758C | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C7590 | 7C C0 00 38 */	and r0, r6, r0
/* 814C7594 | B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 814C7598 | 4B FF 51 FD */	bl VFiPFCLUSTER_UpdateLastAccessCluster
/* 814C759C | 38 60 00 00 */	li r3, 0x0
.L_814C75A0:
/* 814C75A0 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C75A4 | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814C75A8 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814C75AC | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814C75B0 | 83 81 00 20 */	lwz r28, 0x20(r1)
/* 814C75B4 | 7C 08 03 A6 */	mtlr r0
/* 814C75B8 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C75BC | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_WriteTailSector

# .text:0xE80 | 0x814C75C0 | size: 0x26C
.fn VFiPFFILE_Cursor_Write_Overwrite, global
/* 814C75C0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C75C4 | 7C 08 02 A6 */	mflr r0
/* 814C75C8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C75CC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C75D0 | 48 13 1E F1 */	bl _savegpr_27
/* 814C75D4 | 38 00 00 00 */	li r0, 0x0
/* 814C75D8 | 7C DF 33 78 */	mr r31, r6
/* 814C75DC | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C75E0 | 7C BC 2B 78 */	mr r28, r5
/* 814C75E4 | 7C FE 3B 78 */	mr r30, r7
/* 814C75E8 | 7C 9D 23 78 */	mr r29, r4
/* 814C75EC | 80 C4 00 08 */	lwz r6, 0x8(r4)
/* 814C75F0 | 7C 7B 1B 78 */	mr r27, r3
/* 814C75F4 | 80 84 00 28 */	lwz r4, 0x28(r4)
/* 814C75F8 | 7F E5 FB 78 */	mr r5, r31
/* 814C75FC | 38 66 00 04 */	addi r3, r6, 0x4
/* 814C7600 | 38 DD 00 24 */	addi r6, r29, 0x24
/* 814C7604 | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814C7608 | 4B FF C6 09 */	bl VFiPFFAT_GetContinuousSector
/* 814C760C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7610 | 41 82 00 08 */	beq .L_814C7618
/* 814C7614 | 48 00 02 00 */	b .L_814C7814
.L_814C7618:
/* 814C7618 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C761C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7620 | 41 82 00 14 */	beq .L_814C7634
/* 814C7624 | 80 BD 00 24 */	lwz r5, 0x24(r29)
/* 814C7628 | 3C 05 00 01 */	addis r0, r5, 0x1
/* 814C762C | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C7630 | 40 82 00 B4 */	bne .L_814C76E4
.L_814C7634:
/* 814C7634 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C7638 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C763C | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C7640 | 40 82 00 0C */	bne .L_814C764C
/* 814C7644 | 38 80 00 00 */	li r4, 0x0
/* 814C7648 | 48 00 00 08 */	b .L_814C7650
.L_814C764C:
/* 814C764C | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7650:
/* 814C7650 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7654 | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 814C7658 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C765C | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7660 | 7C 07 18 38 */	and r7, r0, r3
/* 814C7664 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C7668 | 7D 03 18 38 */	and r3, r8, r3
/* 814C766C | 7C C7 00 D0 */	neg r6, r7
/* 814C7670 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C7674 | 7C 03 00 D0 */	neg r0, r3
/* 814C7678 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C767C | 7C C6 3B 78 */	or r6, r6, r7
/* 814C7680 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C7684 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C7688 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C768C | 7C 04 02 14 */	add r0, r4, r0
/* 814C7690 | 7C 03 00 40 */	cmplw r3, r0
/* 814C7694 | 41 82 00 0C */	beq .L_814C76A0
/* 814C7698 | 38 00 FF FF */	li r0, -0x1
/* 814C769C | 90 1D 00 24 */	stw r0, 0x24(r29)
.L_814C76A0:
/* 814C76A0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C76A4 | 91 1D 00 20 */	stw r8, 0x20(r29)
/* 814C76A8 | 40 82 00 0C */	bne .L_814C76B4
/* 814C76AC | 38 80 00 00 */	li r4, 0x0
/* 814C76B0 | 48 00 00 0C */	b .L_814C76BC
.L_814C76B4:
/* 814C76B4 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C76B8 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C76BC:
/* 814C76BC | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 814C76C0 | 38 60 00 1C */	li r3, 0x1c
/* 814C76C4 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C76C8 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C76CC | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 814C76D0 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C76D4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C76D8 | 7C A0 00 38 */	and r0, r5, r0
/* 814C76DC | B0 1D 00 2C */	sth r0, 0x2c(r29)
/* 814C76E0 | 48 00 01 34 */	b .L_814C7814
.L_814C76E4:
/* 814C76E4 | 88 1B 00 20 */	lbz r0, 0x20(r27)
/* 814C76E8 | 7C 60 00 30 */	slw r0, r3, r0
/* 814C76EC | 7C 1F 00 40 */	cmplw r31, r0
/* 814C76F0 | 40 81 00 08 */	ble .L_814C76F8
/* 814C76F4 | 7C 1F 03 78 */	mr r31, r0
.L_814C76F8:
/* 814C76F8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C76FC | 7F E6 FB 78 */	mr r6, r31
/* 814C7700 | 81 1D 00 20 */	lwz r8, 0x20(r29)
/* 814C7704 | 7F 63 DB 78 */	mr r3, r27
/* 814C7708 | 80 04 02 60 */	lwz r0, 0x260(r4)
/* 814C770C | 3B E0 00 00 */	li r31, 0x0
/* 814C7710 | 80 FE 00 00 */	lwz r7, 0x0(r30)
/* 814C7714 | 39 20 00 01 */	li r9, 0x1
/* 814C7718 | 7C 08 00 50 */	subf r0, r8, r0
/* 814C771C | 7C 00 00 34 */	cntlzw r0, r0
/* 814C7720 | 7C 9C 3A 14 */	add r4, r28, r7
/* 814C7724 | 38 E1 00 08 */	addi r7, r1, 0x8
/* 814C7728 | 54 08 D9 7E */	srwi r8, r0, 5
/* 814C772C | 48 00 56 F1 */	bl VFiPFSEC_WriteDataSector
/* 814C7730 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7734 | 41 82 00 14 */	beq .L_814C7748
/* 814C7738 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C773C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7740 | 40 82 00 08 */	bne .L_814C7748
/* 814C7744 | 48 00 00 BC */	b .L_814C7800
.L_814C7748:
/* 814C7748 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C774C | 83 E1 00 08 */	lwz r31, 0x8(r1)
/* 814C7750 | 80 BD 00 24 */	lwz r5, 0x24(r29)
/* 814C7754 | 40 82 00 0C */	bne .L_814C7760
/* 814C7758 | 38 80 00 00 */	li r4, 0x0
/* 814C775C | 48 00 00 0C */	b .L_814C7768
.L_814C7760:
/* 814C7760 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C7764 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7768:
/* 814C7768 | A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 814C776C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7770 | 7C C0 FA 14 */	add r6, r0, r31
/* 814C7774 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7778 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C777C | 7C 00 30 39 */	and. r0, r0, r6
/* 814C7780 | 7C C0 24 30 */	srw r0, r6, r4
/* 814C7784 | 7C 85 02 14 */	add r4, r5, r0
/* 814C7788 | 41 82 00 0C */	beq .L_814C7794
/* 814C778C | 90 9D 00 24 */	stw r4, 0x24(r29)
/* 814C7790 | 48 00 00 0C */	b .L_814C779C
.L_814C7794:
/* 814C7794 | 38 00 FF FF */	li r0, -0x1
/* 814C7798 | 90 1D 00 24 */	stw r0, 0x24(r29)
.L_814C779C:
/* 814C779C | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 814C77A0 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C77A4 | 7C A0 FA 14 */	add r5, r0, r31
/* 814C77A8 | 90 BD 00 20 */	stw r5, 0x20(r29)
/* 814C77AC | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C77B0 | 7C 05 00 40 */	cmplw r5, r0
/* 814C77B4 | 40 81 00 08 */	ble .L_814C77BC
/* 814C77B8 | 90 A3 02 60 */	stw r5, 0x260(r3)
.L_814C77BC:
/* 814C77BC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C77C0 | 40 82 00 0C */	bne .L_814C77CC
/* 814C77C4 | 38 A0 00 00 */	li r5, 0x0
/* 814C77C8 | 48 00 00 0C */	b .L_814C77D4
.L_814C77CC:
/* 814C77CC | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C77D0 | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C77D4:
/* 814C77D4 | 80 DD 00 20 */	lwz r6, 0x20(r29)
/* 814C77D8 | 7F A3 EB 78 */	mr r3, r29
/* 814C77DC | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C77E0 | 7C C0 04 30 */	srw r0, r6, r0
/* 814C77E4 | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 814C77E8 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814C77EC | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C77F0 | 7C C0 00 38 */	and r0, r6, r0
/* 814C77F4 | B0 1D 00 2C */	sth r0, 0x2c(r29)
/* 814C77F8 | 4B FF 4F 9D */	bl VFiPFCLUSTER_UpdateLastAccessCluster
/* 814C77FC | 38 60 00 00 */	li r3, 0x0
.L_814C7800:
/* 814C7800 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7804 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 814C7808 | 41 82 00 08 */	beq .L_814C7810
/* 814C780C | 48 00 00 08 */	b .L_814C7814
.L_814C7810:
/* 814C7810 | 38 60 00 00 */	li r3, 0x0
.L_814C7814:
/* 814C7814 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C7818 | 48 13 1C F5 */	bl _restgpr_27
/* 814C781C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C7820 | 7C 08 03 A6 */	mtlr r0
/* 814C7824 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C7828 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_Write_Overwrite

# .text:0x10EC | 0x814C782C | size: 0x3A0
.fn VFiPFFILE_Cursor_Write, global
/* 814C782C | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814C7830 | 7C 08 02 A6 */	mflr r0
/* 814C7834 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814C7838 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C783C | 48 13 1C 71 */	bl _savegpr_22
/* 814C7840 | 38 00 00 00 */	li r0, 0x0
/* 814C7844 | 7C D9 33 78 */	mr r25, r6
/* 814C7848 | 90 06 00 00 */	stw r0, 0x0(r6)
/* 814C784C | 7C 76 1B 78 */	mr r22, r3
/* 814C7850 | 7C 97 23 78 */	mr r23, r4
/* 814C7854 | 7C B8 2B 78 */	mr r24, r5
/* 814C7858 | 80 03 00 20 */	lwz r0, 0x20(r3)
/* 814C785C | 20 C0 FF FF */	subfic r6, r0, -0x1
/* 814C7860 | 7C 06 28 40 */	cmplw r6, r5
/* 814C7864 | 40 80 00 28 */	bge .L_814C788C
/* 814C7868 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C786C | 38 00 00 25 */	li r0, 0x25
/* 814C7870 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C7874 | 7C D8 33 78 */	mr r24, r6
/* 814C7878 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C787C | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814C7880 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C7884 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C7888 | 90 03 00 1C */	stw r0, 0x1c(r3)
.L_814C788C:
/* 814C788C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7890 | 40 82 00 0C */	bne .L_814C789C
/* 814C7894 | 3B A0 00 00 */	li r29, 0x0
/* 814C7898 | 48 00 00 0C */	b .L_814C78A4
.L_814C789C:
/* 814C789C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C78A0 | 83 A3 02 64 */	lwz r29, 0x264(r3)
.L_814C78A4:
/* 814C78A4 | 7E C3 B3 78 */	mr r3, r22
/* 814C78A8 | 4B FF 4F A9 */	bl VFiPFCLUSTER_SetLastAccessCluster
/* 814C78AC | 7F A3 EB 78 */	mr r3, r29
/* 814C78B0 | 7E C4 B3 78 */	mr r4, r22
/* 814C78B4 | 7E E5 BB 78 */	mr r5, r23
/* 814C78B8 | 7F 06 C3 78 */	mr r6, r24
/* 814C78BC | 38 E1 00 18 */	addi r7, r1, 0x18
/* 814C78C0 | 4B FF F7 C9 */	bl VFiPFFILE_Cursor_WriteHeadSector
/* 814C78C4 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 814C78C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C78CC | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C78D0 | 7C 04 02 14 */	add r0, r4, r0
/* 814C78D4 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814C78D8 | 41 82 00 08 */	beq .L_814C78E0
/* 814C78DC | 48 00 02 D8 */	b .L_814C7BB4
.L_814C78E0:
/* 814C78E0 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C78E4 | 7C 00 C0 40 */	cmplw r0, r24
/* 814C78E8 | 41 80 00 0C */	blt .L_814C78F4
/* 814C78EC | 38 60 00 00 */	li r3, 0x0
/* 814C78F0 | 48 00 02 C4 */	b .L_814C7BB4
.L_814C78F4:
/* 814C78F4 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 814C78F8 | 7F 00 C0 50 */	subf r24, r0, r24
/* 814C78FC | 80 16 00 20 */	lwz r0, 0x20(r22)
/* 814C7900 | 38 A1 00 14 */	addi r5, r1, 0x14
/* 814C7904 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C7908 | 7C 80 C2 14 */	add r4, r0, r24
/* 814C790C | 4B FF C4 99 */	bl VFiPFFAT_CountAllocatedClusters
/* 814C7910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7914 | 41 82 00 08 */	beq .L_814C791C
/* 814C7918 | 48 00 02 9C */	b .L_814C7BB4
.L_814C791C:
/* 814C791C | 88 9D 00 20 */	lbz r4, 0x20(r29)
/* 814C7920 | 88 7D 00 21 */	lbz r3, 0x21(r29)
/* 814C7924 | 80 16 00 20 */	lwz r0, 0x20(r22)
/* 814C7928 | 7C 64 1A 14 */	add r3, r4, r3
/* 814C792C | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 814C7930 | 7C 80 C2 14 */	add r4, r0, r24
/* 814C7934 | 7C A0 18 30 */	slw r0, r5, r3
/* 814C7938 | 7C 04 00 40 */	cmplw r4, r0
/* 814C793C | 40 81 00 10 */	ble .L_814C794C
/* 814C7940 | 7F 40 20 50 */	subf r26, r0, r4
/* 814C7944 | 7F 7A C0 50 */	subf r27, r26, r24
/* 814C7948 | 48 00 00 54 */	b .L_814C799C
.L_814C794C:
/* 814C794C | 7F 1B C3 78 */	mr r27, r24
/* 814C7950 | 3B 40 00 00 */	li r26, 0x0
/* 814C7954 | 48 00 00 48 */	b .L_814C799C
.L_814C7958:
/* 814C7958 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814C795C | 7F A3 EB 78 */	mr r3, r29
/* 814C7960 | 7E C4 B3 78 */	mr r4, r22
/* 814C7964 | 7F 66 DB 78 */	mr r6, r27
/* 814C7968 | 7C B7 02 14 */	add r5, r23, r0
/* 814C796C | 38 E1 00 18 */	addi r7, r1, 0x18
/* 814C7970 | 4B FF FC 51 */	bl VFiPFFILE_Cursor_Write_Overwrite
/* 814C7974 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 814C7978 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C797C | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C7980 | 7C 04 02 14 */	add r0, r4, r0
/* 814C7984 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814C7988 | 41 82 00 08 */	beq .L_814C7990
/* 814C798C | 48 00 02 28 */	b .L_814C7BB4
.L_814C7990:
/* 814C7990 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C7994 | 7F 60 D8 50 */	subf r27, r0, r27
/* 814C7998 | 7F 00 C0 50 */	subf r24, r0, r24
.L_814C799C:
/* 814C799C | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C79A0 | 41 82 00 10 */	beq .L_814C79B0
/* 814C79A4 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814C79A8 | 7C 1B 00 40 */	cmplw r27, r0
/* 814C79AC | 40 80 FF AC */	bge .L_814C7958
.L_814C79B0:
/* 814C79B0 | 3B C0 00 00 */	li r30, 0x0
/* 814C79B4 | 3B E0 FF FF */	li r31, -0x1
/* 814C79B8 | 48 00 01 A8 */	b .L_814C7B60
.L_814C79BC:
/* 814C79BC | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814C79C0 | 7E C3 B3 78 */	mr r3, r22
/* 814C79C4 | 7F 44 D3 78 */	mr r4, r26
/* 814C79C8 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C79CC | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C79D0 | 7F 97 02 14 */	add r28, r23, r0
/* 814C79D4 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C79D8 | 3B 60 00 00 */	li r27, 0x0
/* 814C79DC | 4B FF 4E 85 */	bl VFiPFCLUSTER_AppendCluster
/* 814C79E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C79E4 | 41 82 00 08 */	beq .L_814C79EC
/* 814C79E8 | 48 00 01 40 */	b .L_814C7B28
.L_814C79EC:
/* 814C79EC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814C79F0 | 90 B6 00 24 */	stw r5, 0x24(r22)
/* 814C79F4 | 80 C1 00 0C */	lwz r6, 0xc(r1)
/* 814C79F8 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C79FC | 40 82 00 0C */	bne .L_814C7A08
/* 814C7A00 | 38 60 00 00 */	li r3, 0x0
/* 814C7A04 | 48 00 01 24 */	b .L_814C7B28
.L_814C7A08:
/* 814C7A08 | 80 96 00 08 */	lwz r4, 0x8(r22)
/* 814C7A0C | 7C DB 33 78 */	mr r27, r6
/* 814C7A10 | 81 16 00 20 */	lwz r8, 0x20(r22)
/* 814C7A14 | 7F A3 EB 78 */	mr r3, r29
/* 814C7A18 | 80 04 02 60 */	lwz r0, 0x260(r4)
/* 814C7A1C | 39 20 00 01 */	li r9, 0x1
/* 814C7A20 | 80 E1 00 18 */	lwz r7, 0x18(r1)
/* 814C7A24 | 7C 08 00 50 */	subf r0, r8, r0
/* 814C7A28 | 7C 00 00 34 */	cntlzw r0, r0
/* 814C7A2C | 7C 9C 3A 14 */	add r4, r28, r7
/* 814C7A30 | 38 E1 00 10 */	addi r7, r1, 0x10
/* 814C7A34 | 3B 80 00 00 */	li r28, 0x0
/* 814C7A38 | 54 08 D9 7E */	srwi r8, r0, 5
/* 814C7A3C | 48 00 53 E1 */	bl VFiPFSEC_WriteDataSector
/* 814C7A40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7A44 | 41 82 00 14 */	beq .L_814C7A58
/* 814C7A48 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814C7A4C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7A50 | 40 82 00 08 */	bne .L_814C7A58
/* 814C7A54 | 48 00 00 B8 */	b .L_814C7B0C
.L_814C7A58:
/* 814C7A58 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814C7A5C | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C7A60 | 80 B6 00 24 */	lwz r5, 0x24(r22)
/* 814C7A64 | 40 82 00 0C */	bne .L_814C7A70
/* 814C7A68 | 38 80 00 00 */	li r4, 0x0
/* 814C7A6C | 48 00 00 0C */	b .L_814C7A78
.L_814C7A70:
/* 814C7A70 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 814C7A74 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7A78:
/* 814C7A78 | A0 16 00 2C */	lhz r0, 0x2c(r22)
/* 814C7A7C | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7A80 | 7C C0 E2 14 */	add r6, r0, r28
/* 814C7A84 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7A88 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C7A8C | 7C 00 30 39 */	and. r0, r0, r6
/* 814C7A90 | 7C C0 24 30 */	srw r0, r6, r4
/* 814C7A94 | 7C 85 02 14 */	add r4, r5, r0
/* 814C7A98 | 41 82 00 0C */	beq .L_814C7AA4
/* 814C7A9C | 90 96 00 24 */	stw r4, 0x24(r22)
/* 814C7AA0 | 48 00 00 08 */	b .L_814C7AA8
.L_814C7AA4:
/* 814C7AA4 | 93 F6 00 24 */	stw r31, 0x24(r22)
.L_814C7AA8:
/* 814C7AA8 | 80 16 00 20 */	lwz r0, 0x20(r22)
/* 814C7AAC | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 814C7AB0 | 7C A0 E2 14 */	add r5, r0, r28
/* 814C7AB4 | 90 B6 00 20 */	stw r5, 0x20(r22)
/* 814C7AB8 | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C7ABC | 7C 05 00 40 */	cmplw r5, r0
/* 814C7AC0 | 40 81 00 08 */	ble .L_814C7AC8
/* 814C7AC4 | 90 A3 02 60 */	stw r5, 0x260(r3)
.L_814C7AC8:
/* 814C7AC8 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814C7ACC | 40 82 00 0C */	bne .L_814C7AD8
/* 814C7AD0 | 38 A0 00 00 */	li r5, 0x0
/* 814C7AD4 | 48 00 00 0C */	b .L_814C7AE0
.L_814C7AD8:
/* 814C7AD8 | 80 76 00 08 */	lwz r3, 0x8(r22)
/* 814C7ADC | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C7AE0:
/* 814C7AE0 | 80 D6 00 20 */	lwz r6, 0x20(r22)
/* 814C7AE4 | 7E C3 B3 78 */	mr r3, r22
/* 814C7AE8 | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C7AEC | 7C C0 04 30 */	srw r0, r6, r0
/* 814C7AF0 | 90 16 00 28 */	stw r0, 0x28(r22)
/* 814C7AF4 | A0 A5 00 00 */	lhz r5, 0x0(r5)
/* 814C7AF8 | 38 05 FF FF */	subi r0, r5, 0x1
/* 814C7AFC | 7C C0 00 38 */	and r0, r6, r0
/* 814C7B00 | B0 16 00 2C */	sth r0, 0x2c(r22)
/* 814C7B04 | 4B FF 4C 91 */	bl VFiPFCLUSTER_UpdateLastAccessCluster
/* 814C7B08 | 38 60 00 00 */	li r3, 0x0
.L_814C7B0C:
/* 814C7B0C | 80 81 00 18 */	lwz r4, 0x18(r1)
/* 814C7B10 | 7C 03 00 D0 */	neg r0, r3
/* 814C7B14 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C7B18 | 7C 84 E2 14 */	add r4, r4, r28
/* 814C7B1C | 7C 00 FE 70 */	srawi r0, r0, 31
/* 814C7B20 | 90 81 00 18 */	stw r4, 0x18(r1)
/* 814C7B24 | 7C 63 00 38 */	and r3, r3, r0
.L_814C7B28:
/* 814C7B28 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 814C7B2C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7B30 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C7B34 | 7C 04 02 14 */	add r0, r4, r0
/* 814C7B38 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814C7B3C | 41 82 00 08 */	beq .L_814C7B44
/* 814C7B40 | 48 00 00 74 */	b .L_814C7BB4
.L_814C7B44:
/* 814C7B44 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C7B48 | 40 82 00 0C */	bne .L_814C7B54
/* 814C7B4C | 38 60 00 00 */	li r3, 0x0
/* 814C7B50 | 48 00 00 64 */	b .L_814C7BB4
.L_814C7B54:
/* 814C7B54 | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C7B58 | 7F 5B D0 50 */	subf r26, r27, r26
/* 814C7B5C | 7F 00 C0 50 */	subf r24, r0, r24
.L_814C7B60:
/* 814C7B60 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C7B64 | 41 82 00 10 */	beq .L_814C7B74
/* 814C7B68 | A0 1D 00 00 */	lhz r0, 0x0(r29)
/* 814C7B6C | 7C 18 00 40 */	cmplw r24, r0
/* 814C7B70 | 40 80 FE 4C */	bge .L_814C79BC
.L_814C7B74:
/* 814C7B74 | 80 19 00 00 */	lwz r0, 0x0(r25)
/* 814C7B78 | 7F A3 EB 78 */	mr r3, r29
/* 814C7B7C | 7E C4 B3 78 */	mr r4, r22
/* 814C7B80 | 7F 06 C3 78 */	mr r6, r24
/* 814C7B84 | 7F 47 D3 78 */	mr r7, r26
/* 814C7B88 | 7C B7 02 14 */	add r5, r23, r0
/* 814C7B8C | 39 01 00 18 */	addi r8, r1, 0x18
/* 814C7B90 | 4B FF F7 55 */	bl VFiPFFILE_Cursor_WriteTailSector
/* 814C7B94 | 80 99 00 00 */	lwz r4, 0x0(r25)
/* 814C7B98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7B9C | 80 01 00 18 */	lwz r0, 0x18(r1)
/* 814C7BA0 | 7C 04 02 14 */	add r0, r4, r0
/* 814C7BA4 | 90 19 00 00 */	stw r0, 0x0(r25)
/* 814C7BA8 | 41 82 00 08 */	beq .L_814C7BB0
/* 814C7BAC | 48 00 00 08 */	b .L_814C7BB4
.L_814C7BB0:
/* 814C7BB0 | 38 60 00 00 */	li r3, 0x0
.L_814C7BB4:
/* 814C7BB4 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C7BB8 | 48 13 19 41 */	bl _restgpr_22
/* 814C7BBC | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C7BC0 | 7C 08 03 A6 */	mtlr r0
/* 814C7BC4 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814C7BC8 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_Write

# .text:0x148C | 0x814C7BCC | size: 0x1C8
.fn VFiPFFILE_Cursor_MoveToClusterEnd, global
/* 814C7BCC | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C7BD0 | 7C 08 02 A6 */	mflr r0
/* 814C7BD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7BD8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C7BDC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C7BE0 | 7C 7F 1B 78 */	mr r31, r3
/* 814C7BE4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C7BE8 | 40 82 00 0C */	bne .L_814C7BF4
/* 814C7BEC | 3B C0 00 00 */	li r30, 0x0
/* 814C7BF0 | 48 00 00 0C */	b .L_814C7BFC
.L_814C7BF4:
/* 814C7BF4 | 80 A3 00 08 */	lwz r5, 0x8(r3)
/* 814C7BF8 | 83 C5 02 64 */	lwz r30, 0x264(r5)
.L_814C7BFC:
/* 814C7BFC | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C7C00 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814C7C04 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C7C08 | 4B FF C1 9D */	bl VFiPFFAT_CountAllocatedClusters
/* 814C7C0C | 88 9E 00 20 */	lbz r4, 0x20(r30)
/* 814C7C10 | 38 00 FF FF */	li r0, -0x1
/* 814C7C14 | 88 7E 00 21 */	lbz r3, 0x21(r30)
/* 814C7C18 | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814C7C1C | 7C 64 1A 14 */	add r3, r4, r3
/* 814C7C20 | 7C 00 1C 30 */	srw r0, r0, r3
/* 814C7C24 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7C28 | 40 81 00 AC */	ble .L_814C7CD4
/* 814C7C2C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7C30 | 40 82 00 0C */	bne .L_814C7C3C
/* 814C7C34 | 38 A0 00 00 */	li r5, 0x0
/* 814C7C38 | 48 00 00 0C */	b .L_814C7C44
.L_814C7C3C:
/* 814C7C3C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7C40 | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C7C44:
/* 814C7C44 | A0 65 00 00 */	lhz r3, 0x0(r5)
/* 814C7C48 | 38 80 FF FF */	li r4, -0x1
/* 814C7C4C | 80 FF 00 20 */	lwz r7, 0x20(r31)
/* 814C7C50 | 39 03 FF FF */	subi r8, r3, 0x1
/* 814C7C54 | 89 25 00 20 */	lbz r9, 0x20(r5)
/* 814C7C58 | 7C E5 40 38 */	and r5, r7, r8
/* 814C7C5C | 7C 65 00 D0 */	neg r3, r5
/* 814C7C60 | 7C 08 00 D0 */	neg r0, r8
/* 814C7C64 | 7C 66 2B 78 */	or r6, r3, r5
/* 814C7C68 | 7C E5 4C 30 */	srw r5, r7, r9
/* 814C7C6C | 7C 00 43 78 */	or r0, r0, r8
/* 814C7C70 | 7C 83 4C 30 */	srw r3, r4, r9
/* 814C7C74 | 54 C6 0F FE */	srwi r6, r6, 31
/* 814C7C78 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C7C7C | 7C A5 32 14 */	add r5, r5, r6
/* 814C7C80 | 7C 03 02 14 */	add r0, r3, r0
/* 814C7C84 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7C88 | 41 82 00 08 */	beq .L_814C7C90
/* 814C7C8C | 90 9F 00 24 */	stw r4, 0x24(r31)
.L_814C7C90:
/* 814C7C90 | 38 00 FF FF */	li r0, -0x1
/* 814C7C94 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7C98 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814C7C9C | 40 82 00 0C */	bne .L_814C7CA8
/* 814C7CA0 | 38 60 00 00 */	li r3, 0x0
/* 814C7CA4 | 48 00 00 0C */	b .L_814C7CB0
.L_814C7CA8:
/* 814C7CA8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7CAC | 80 63 02 64 */	lwz r3, 0x264(r3)
.L_814C7CB0:
/* 814C7CB0 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814C7CB4 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814C7CB8 | 7C 80 04 30 */	srw r0, r4, r0
/* 814C7CBC | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C7CC0 | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814C7CC4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C7CC8 | 7C 80 00 38 */	and r0, r4, r0
/* 814C7CCC | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C7CD0 | 48 00 00 AC */	b .L_814C7D7C
.L_814C7CD4:
/* 814C7CD4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7CD8 | 7C A8 18 30 */	slw r8, r5, r3
/* 814C7CDC | 40 82 00 0C */	bne .L_814C7CE8
/* 814C7CE0 | 38 80 00 00 */	li r4, 0x0
/* 814C7CE4 | 48 00 00 0C */	b .L_814C7CF0
.L_814C7CE8:
/* 814C7CE8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7CEC | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C7CF0:
/* 814C7CF0 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C7CF4 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C7CF8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C7CFC | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C7D00 | 7C 07 18 38 */	and r7, r0, r3
/* 814C7D04 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C7D08 | 7D 03 18 38 */	and r3, r8, r3
/* 814C7D0C | 7C C7 00 D0 */	neg r6, r7
/* 814C7D10 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C7D14 | 7C 03 00 D0 */	neg r0, r3
/* 814C7D18 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C7D1C | 7C C6 3B 78 */	or r6, r6, r7
/* 814C7D20 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C7D24 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C7D28 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C7D2C | 7C 04 02 14 */	add r0, r4, r0
/* 814C7D30 | 7C 03 00 40 */	cmplw r3, r0
/* 814C7D34 | 41 82 00 0C */	beq .L_814C7D40
/* 814C7D38 | 38 00 FF FF */	li r0, -0x1
/* 814C7D3C | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C7D40:
/* 814C7D40 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C7D44 | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C7D48 | 40 82 00 0C */	bne .L_814C7D54
/* 814C7D4C | 38 60 00 00 */	li r3, 0x0
/* 814C7D50 | 48 00 00 0C */	b .L_814C7D5C
.L_814C7D54:
/* 814C7D54 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C7D58 | 80 63 02 64 */	lwz r3, 0x264(r3)
.L_814C7D5C:
/* 814C7D5C | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814C7D60 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814C7D64 | 7C 80 04 30 */	srw r0, r4, r0
/* 814C7D68 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C7D6C | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814C7D70 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C7D74 | 7C 80 00 38 */	and r0, r4, r0
/* 814C7D78 | B0 1F 00 2C */	sth r0, 0x2c(r31)
.L_814C7D7C:
/* 814C7D7C | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C7D80 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C7D84 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C7D88 | 7C 08 03 A6 */	mtlr r0
/* 814C7D8C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C7D90 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_Cursor_MoveToClusterEnd

# .text:0x1654 | 0x814C7D94 | size: 0x1D4
.fn VFiPFFILE_GetSFD, global
/* 814C7D94 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C7D98 | 7C 08 02 A6 */	mflr r0
/* 814C7D9C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C7DA0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C7DA4 | 48 13 17 1D */	bl _savegpr_27
/* 814C7DA8 | 7C 7C 1B 78 */	mr r28, r3
/* 814C7DAC | 38 00 00 05 */	li r0, 0x5
/* 814C7DB0 | 7C 9D 23 78 */	mr r29, r4
/* 814C7DB4 | 38 E3 00 40 */	addi r7, r3, 0x40
/* 814C7DB8 | 7F 86 E3 78 */	mr r6, r28
/* 814C7DBC | 3B E0 00 00 */	li r31, 0x0
/* 814C7DC0 | 3B C0 00 00 */	li r30, 0x0
/* 814C7DC4 | 39 00 00 00 */	li r8, 0x0
/* 814C7DC8 | 7C 09 03 A6 */	mtctr r0
.L_814C7DCC:
/* 814C7DCC | 80 06 00 40 */	lwz r0, 0x40(r6)
/* 814C7DD0 | 54 05 07 FF */	clrlwi. r5, r0, 31
/* 814C7DD4 | 41 82 00 14 */	beq .L_814C7DE8
/* 814C7DD8 | 41 82 00 24 */	beq .L_814C7DFC
/* 814C7DDC | 7C 00 00 34 */	cntlzw r0, r0
/* 814C7DE0 | 54 00 DF BD */	rlwinm. r0, r0, 27, 30, 30
/* 814C7DE4 | 41 82 00 18 */	beq .L_814C7DFC
.L_814C7DE8:
/* 814C7DE8 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C7DEC | 40 82 00 5C */	bne .L_814C7E48
/* 814C7DF0 | 7C FE 3B 78 */	mr r30, r7
/* 814C7DF4 | 7D 1F 43 78 */	mr r31, r8
/* 814C7DF8 | 48 00 00 50 */	b .L_814C7E48
.L_814C7DFC:
/* 814C7DFC | 80 A4 02 2C */	lwz r5, 0x22c(r4)
/* 814C7E00 | 80 06 02 A4 */	lwz r0, 0x2a4(r6)
/* 814C7E04 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7E08 | 40 82 00 40 */	bne .L_814C7E48
/* 814C7E0C | 80 A4 02 38 */	lwz r5, 0x238(r4)
/* 814C7E10 | 80 06 02 B0 */	lwz r0, 0x2b0(r6)
/* 814C7E14 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7E18 | 40 82 00 30 */	bne .L_814C7E48
/* 814C7E1C | A0 A4 02 3C */	lhz r5, 0x23c(r4)
/* 814C7E20 | A0 06 02 B4 */	lhz r0, 0x2b4(r6)
/* 814C7E24 | 7C 05 00 40 */	cmplw r5, r0
/* 814C7E28 | 40 82 00 20 */	bne .L_814C7E48
/* 814C7E2C | 1C 08 02 8C */	mulli r0, r8, 0x28c
/* 814C7E30 | 7C A3 02 14 */	add r5, r3, r0
/* 814C7E34 | A0 85 02 C8 */	lhz r4, 0x2c8(r5)
/* 814C7E38 | 38 65 00 40 */	addi r3, r5, 0x40
/* 814C7E3C | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C7E40 | B0 05 02 C8 */	sth r0, 0x2c8(r5)
/* 814C7E44 | 48 00 01 0C */	b .L_814C7F50
.L_814C7E48:
/* 814C7E48 | 38 C6 02 8C */	addi r6, r6, 0x28c
/* 814C7E4C | 38 E7 02 8C */	addi r7, r7, 0x28c
/* 814C7E50 | 39 08 00 01 */	addi r8, r8, 0x1
/* 814C7E54 | 42 00 FF 78 */	bdnz .L_814C7DCC
/* 814C7E58 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C7E5C | 40 82 00 0C */	bne .L_814C7E68
/* 814C7E60 | 38 60 00 00 */	li r3, 0x0
/* 814C7E64 | 48 00 00 EC */	b .L_814C7F50
.L_814C7E68:
/* 814C7E68 | 3C A0 10 00 */	lis r5, 0x1000
/* 814C7E6C | 38 60 00 01 */	li r3, 0x1
/* 814C7E70 | 38 A5 00 03 */	addi r5, r5, 0x3
/* 814C7E74 | 38 00 00 48 */	li r0, 0x48
/* 814C7E78 | 90 BE 00 00 */	stw r5, 0x0(r30)
/* 814C7E7C | 38 BE 00 34 */	addi r5, r30, 0x34
/* 814C7E80 | 38 84 FF FC */	subi r4, r4, 0x4
/* 814C7E84 | B0 7E 02 88 */	sth r3, 0x288(r30)
/* 814C7E88 | 7C 09 03 A6 */	mtctr r0
.L_814C7E8C:
/* 814C7E8C | 80 64 00 04 */	lwz r3, 0x4(r4)
/* 814C7E90 | 84 04 00 08 */	lwzu r0, 0x8(r4)
/* 814C7E94 | 90 65 00 04 */	stw r3, 0x4(r5)
/* 814C7E98 | 94 05 00 08 */	stwu r0, 0x8(r5)
/* 814C7E9C | 42 00 FF F0 */	bdnz .L_814C7E8C
/* 814C7EA0 | 3B 60 00 00 */	li r27, 0x0
/* 814C7EA4 | 38 7E 00 04 */	addi r3, r30, 0x4
/* 814C7EA8 | B3 7E 02 78 */	sth r27, 0x278(r30)
/* 814C7EAC | 38 DE 02 6C */	addi r6, r30, 0x26c
/* 814C7EB0 | 38 80 00 00 */	li r4, 0x0
/* 814C7EB4 | B3 7E 02 7A */	sth r27, 0x27a(r30)
/* 814C7EB8 | 93 7E 02 7C */	stw r27, 0x27c(r30)
/* 814C7EBC | 93 7E 02 80 */	stw r27, 0x280(r30)
/* 814C7EC0 | 93 7E 02 84 */	stw r27, 0x284(r30)
/* 814C7EC4 | 80 BD 02 2C */	lwz r5, 0x22c(r29)
/* 814C7EC8 | 4B FF D0 A5 */	bl VFiPFFAT_InitFFD
/* 814C7ECC | A0 1C 18 68 */	lhz r0, 0x1868(r28)
/* 814C7ED0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C7ED4 | 41 82 00 78 */	beq .L_814C7F4C
/* 814C7ED8 | 80 1C 18 70 */	lwz r0, 0x1870(r28)
/* 814C7EDC | 38 80 00 00 */	li r4, 0x0
/* 814C7EE0 | 80 7C 18 6C */	lwz r3, 0x186c(r28)
/* 814C7EE4 | 7C 1F 01 D6 */	mullw r0, r31, r0
/* 814C7EE8 | 54 00 10 3A */	slwi r0, r0, 2
/* 814C7EEC | 7C 63 02 14 */	add r3, r3, r0
/* 814C7EF0 | 90 7E 00 1C */	stw r3, 0x1c(r30)
/* 814C7EF4 | 80 1C 18 70 */	lwz r0, 0x1870(r28)
/* 814C7EF8 | 54 05 10 3A */	slwi r5, r0, 2
/* 814C7EFC | 4B FE DA 0D */	bl VFipf_memset
/* 814C7F00 | 80 1C 18 70 */	lwz r0, 0x1870(r28)
/* 814C7F04 | 90 1E 00 28 */	stw r0, 0x28(r30)
/* 814C7F08 | A0 1C 18 6A */	lhz r0, 0x186a(r28)
/* 814C7F0C | B0 1E 00 20 */	sth r0, 0x20(r30)
/* 814C7F10 | B3 7E 00 22 */	sth r27, 0x22(r30)
/* 814C7F14 | 93 7E 00 24 */	stw r27, 0x24(r30)
/* 814C7F18 | 93 7E 00 2C */	stw r27, 0x2c(r30)
/* 814C7F1C | 80 1D 02 28 */	lwz r0, 0x228(r29)
/* 814C7F20 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7F24 | 41 82 00 28 */	beq .L_814C7F4C
/* 814C7F28 | 80 1E 00 28 */	lwz r0, 0x28(r30)
/* 814C7F2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C7F30 | 41 82 00 1C */	beq .L_814C7F4C
/* 814C7F34 | 80 1D 02 34 */	lwz r0, 0x234(r29)
/* 814C7F38 | 80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 814C7F3C | 90 03 00 00 */	stw r0, 0x0(r3)
/* 814C7F40 | 80 7E 00 24 */	lwz r3, 0x24(r30)
/* 814C7F44 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814C7F48 | 90 1E 00 24 */	stw r0, 0x24(r30)
.L_814C7F4C:
/* 814C7F4C | 7F C3 F3 78 */	mr r3, r30
.L_814C7F50:
/* 814C7F50 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814C7F54 | 48 13 15 B9 */	bl _restgpr_27
/* 814C7F58 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C7F5C | 7C 08 03 A6 */	mtlr r0
/* 814C7F60 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C7F64 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_GetSFD

# .text:0x1828 | 0x814C7F68 | size: 0x578
.fn VFiPFFILE_p_fopen, global
/* 814C7F68 | 94 21 FA B0 */	stwu r1, -0x550(r1)
/* 814C7F6C | 7C 08 02 A6 */	mflr r0
/* 814C7F70 | 90 01 05 54 */	stw r0, 0x554(r1)
/* 814C7F74 | 39 61 05 50 */	addi r11, r1, 0x550
/* 814C7F78 | 48 13 15 49 */	bl _savegpr_27
/* 814C7F7C | 3B E0 00 00 */	li r31, 0x0
/* 814C7F80 | 7C 7C 1B 78 */	mr r28, r3
/* 814C7F84 | 7C 9B 23 78 */	mr r27, r4
/* 814C7F88 | 93 E6 00 00 */	stw r31, 0x0(r6)
/* 814C7F8C | 7C BD 2B 78 */	mr r29, r5
/* 814C7F90 | 7C DE 33 78 */	mr r30, r6
/* 814C7F94 | 7F 84 E3 78 */	mr r4, r28
/* 814C7F98 | 7F 65 DB 78 */	mr r5, r27
/* 814C7F9C | 38 61 00 B0 */	addi r3, r1, 0xb0
/* 814C7FA0 | 4B FF 6D 69 */	bl VFiPFENT_GetParentEntryOfPath
/* 814C7FA4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7FA8 | 41 82 00 08 */	beq .L_814C7FB0
/* 814C7FAC | 48 00 05 1C */	b .L_814C84C8
.L_814C7FB0:
/* 814C7FB0 | 88 01 02 CC */	lbz r0, 0x2cc(r1)
/* 814C7FB4 | 54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 814C7FB8 | 40 82 00 0C */	bne .L_814C7FC4
/* 814C7FBC | 38 60 00 01 */	li r3, 0x1
/* 814C7FC0 | 48 00 05 08 */	b .L_814C84C8
.L_814C7FC4:
/* 814C7FC4 | 7F 63 DB 78 */	mr r3, r27
/* 814C7FC8 | 38 81 00 30 */	addi r4, r1, 0x30
/* 814C7FCC | 38 A1 00 3C */	addi r5, r1, 0x3c
/* 814C7FD0 | 48 00 2E CD */	bl VFiPFPATH_SplitPath
/* 814C7FD4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C7FD8 | 41 82 00 0C */	beq .L_814C7FE4
/* 814C7FDC | 38 60 00 01 */	li r3, 0x1
/* 814C7FE0 | 48 00 04 E8 */	b .L_814C84C8
.L_814C7FE4:
/* 814C7FE4 | 38 61 00 3C */	addi r3, r1, 0x3c
/* 814C7FE8 | 38 80 00 01 */	li r4, 0x1
/* 814C7FEC | 4B FE DD D9 */	bl VFiPFSTR_StrNumChar
/* 814C7FF0 | 54 63 04 3E */	clrlwi r3, r3, 16
/* 814C7FF4 | 2C 03 00 FF */	cmpwi r3, 0xff
/* 814C7FF8 | 40 81 00 0C */	ble .L_814C8004
/* 814C7FFC | 38 60 00 01 */	li r3, 0x1
/* 814C8000 | 48 00 04 C8 */	b .L_814C84C8
.L_814C8004:
/* 814C8004 | 57 A0 07 BD */	rlwinm. r0, r29, 0, 30, 30
/* 814C8008 | 41 82 00 74 */	beq .L_814C807C
/* 814C800C | 7F 85 E3 78 */	mr r5, r28
/* 814C8010 | 38 61 00 7C */	addi r3, r1, 0x7c
/* 814C8014 | 38 81 00 28 */	addi r4, r1, 0x28
/* 814C8018 | 38 C1 02 E4 */	addi r6, r1, 0x2e4
/* 814C801C | 4B FF CF 51 */	bl VFiPFFAT_InitFFD
/* 814C8020 | 38 61 00 7C */	addi r3, r1, 0x7c
/* 814C8024 | 38 81 02 F0 */	addi r4, r1, 0x2f0
/* 814C8028 | 38 C1 00 3C */	addi r6, r1, 0x3c
/* 814C802C | 38 A0 00 00 */	li r5, 0x0
/* 814C8030 | 38 E0 00 67 */	li r7, 0x67
/* 814C8034 | 39 00 00 00 */	li r8, 0x0
/* 814C8038 | 39 20 00 00 */	li r9, 0x0
/* 814C803C | 4B FF 6D 69 */	bl VFiPFENT_findEntry
/* 814C8040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8044 | 41 82 00 0C */	beq .L_814C8050
/* 814C8048 | 38 60 00 03 */	li r3, 0x3
/* 814C804C | 48 00 04 7C */	b .L_814C84C8
.L_814C8050:
/* 814C8050 | 57 A0 07 39 */	rlwinm. r0, r29, 0, 28, 28
/* 814C8054 | 41 82 00 18 */	beq .L_814C806C
/* 814C8058 | 88 01 05 0C */	lbz r0, 0x50c(r1)
/* 814C805C | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C8060 | 41 82 00 0C */	beq .L_814C806C
/* 814C8064 | 38 60 00 0A */	li r3, 0xa
/* 814C8068 | 48 00 04 60 */	b .L_814C84C8
.L_814C806C:
/* 814C806C | 38 61 05 12 */	addi r3, r1, 0x512
/* 814C8070 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C8074 | 4B FF 78 BD */	bl VFiPFENT_getcurrentDateTimeForEnt
/* 814C8078 | 48 00 02 10 */	b .L_814C8288
.L_814C807C:
/* 814C807C | 80 01 02 E0 */	lwz r0, 0x2e0(r1)
/* 814C8080 | 7C 03 02 14 */	add r0, r3, r0
/* 814C8084 | 28 00 01 03 */	cmplwi r0, 0x103
/* 814C8088 | 40 81 00 0C */	ble .L_814C8094
/* 814C808C | 38 60 00 01 */	li r3, 0x1
/* 814C8090 | 48 00 04 38 */	b .L_814C84C8
.L_814C8094:
/* 814C8094 | 80 1C 15 C8 */	lwz r0, 0x15c8(r28)
/* 814C8098 | 2C 00 00 05 */	cmpwi r0, 0x5
/* 814C809C | 41 80 00 0C */	blt .L_814C80A8
/* 814C80A0 | 38 60 00 15 */	li r3, 0x15
/* 814C80A4 | 48 00 00 BC */	b .L_814C8160
.L_814C80A8:
/* 814C80A8 | 7F 88 E3 78 */	mr r8, r28
/* 814C80AC | 38 61 02 F0 */	addi r3, r1, 0x2f0
/* 814C80B0 | 38 81 00 3C */	addi r4, r1, 0x3c
/* 814C80B4 | 38 E1 00 B0 */	addi r7, r1, 0xb0
/* 814C80B8 | 38 A0 00 20 */	li r5, 0x20
/* 814C80BC | 38 C0 00 01 */	li r6, 0x1
/* 814C80C0 | 4B FF 78 F5 */	bl VFiPFENT_InitENT
/* 814C80C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C80C8 | 40 82 00 98 */	bne .L_814C8160
/* 814C80CC | 7F 85 E3 78 */	mr r5, r28
/* 814C80D0 | 38 61 00 48 */	addi r3, r1, 0x48
/* 814C80D4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814C80D8 | 38 C1 02 E4 */	addi r6, r1, 0x2e4
/* 814C80DC | 4B FF CE 91 */	bl VFiPFFAT_InitFFD
/* 814C80E0 | 88 81 04 FA */	lbz r4, 0x4fa(r1)
/* 814C80E4 | 38 61 02 F0 */	addi r3, r1, 0x2f0
/* 814C80E8 | 38 A1 00 48 */	addi r5, r1, 0x48
/* 814C80EC | 38 C1 00 20 */	addi r6, r1, 0x20
/* 814C80F0 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C80F4 | 38 E1 00 3C */	addi r7, r1, 0x3c
/* 814C80F8 | 54 04 06 3E */	clrlwi r4, r0, 24
/* 814C80FC | 39 21 00 10 */	addi r9, r1, 0x10
/* 814C8100 | 39 00 00 77 */	li r8, 0x77
/* 814C8104 | 4B FF 6E 31 */	bl VFiPFENT_allocateEntry
/* 814C8108 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C810C | 40 82 00 54 */	bne .L_814C8160
/* 814C8110 | A0 01 02 F0 */	lhz r0, 0x2f0(r1)
/* 814C8114 | 93 E1 05 24 */	stw r31, 0x524(r1)
/* 814C8118 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C811C | 41 82 00 34 */	beq .L_814C8150
/* 814C8120 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C8124 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C8128 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 814C812C | 54 00 07 BC */	rlwinm r0, r0, 0, 30, 30
/* 814C8130 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C8134 | 40 82 00 1C */	bne .L_814C8150
/* 814C8138 | 80 81 00 10 */	lwz r4, 0x10(r1)
/* 814C813C | 38 61 04 FE */	addi r3, r1, 0x4fe
/* 814C8140 | 48 00 45 FD */	bl VFiPFPATH_AdjustExtShortName
/* 814C8144 | 38 61 02 F0 */	addi r3, r1, 0x2f0
/* 814C8148 | 4B FF 66 35 */	bl VFiPFENT_CalcCheckSum
/* 814C814C | 98 61 04 FC */	stb r3, 0x4fc(r1)
.L_814C8150:
/* 814C8150 | 38 61 02 F0 */	addi r3, r1, 0x2f0
/* 814C8154 | 38 81 00 20 */	addi r4, r1, 0x20
/* 814C8158 | 38 A0 00 00 */	li r5, 0x0
/* 814C815C | 4B FF 73 31 */	bl VFiPFENT_UpdateEntry
.L_814C8160:
/* 814C8160 | 2C 03 00 08 */	cmpwi r3, 0x8
/* 814C8164 | 40 82 01 18 */	bne .L_814C827C
/* 814C8168 | 57 A0 06 F7 */	rlwinm. r0, r29, 0, 27, 27
/* 814C816C | 41 82 00 0C */	beq .L_814C8178
/* 814C8170 | 38 60 00 08 */	li r3, 0x8
/* 814C8174 | 48 00 03 54 */	b .L_814C84C8
.L_814C8178:
/* 814C8178 | 57 BC 07 FF */	clrlwi. r28, r29, 31
/* 814C817C | 41 82 00 44 */	beq .L_814C81C0
/* 814C8180 | 38 00 00 00 */	li r0, 0x0
/* 814C8184 | 34 61 02 F0 */	addic. r3, r1, 0x2f0
/* 814C8188 | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C818C | 40 82 00 0C */	bne .L_814C8198
/* 814C8190 | 38 00 00 00 */	li r0, 0x0
/* 814C8194 | 48 00 00 1C */	b .L_814C81B0
.L_814C8198:
/* 814C8198 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814C819C | 48 00 0A 01 */	bl VFiPFFILE_GetOpenedFile
/* 814C81A0 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C81A4 | 7C 03 00 D0 */	neg r0, r3
/* 814C81A8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C81AC | 54 00 0F FE */	srwi r0, r0, 31
.L_814C81B0:
/* 814C81B0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C81B4 | 41 82 00 0C */	beq .L_814C81C0
/* 814C81B8 | 38 60 00 08 */	li r3, 0x8
/* 814C81BC | 48 00 03 0C */	b .L_814C84C8
.L_814C81C0:
/* 814C81C0 | 88 61 05 0C */	lbz r3, 0x50c(r1)
/* 814C81C4 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814C81C8 | 41 82 00 24 */	beq .L_814C81EC
/* 814C81CC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C81D0 | 40 82 00 14 */	bne .L_814C81E4
/* 814C81D4 | 57 A0 07 7B */	rlwinm. r0, r29, 0, 29, 29
/* 814C81D8 | 40 82 00 0C */	bne .L_814C81E4
/* 814C81DC | 57 A0 07 39 */	rlwinm. r0, r29, 0, 28, 28
/* 814C81E0 | 41 82 00 0C */	beq .L_814C81EC
.L_814C81E4:
/* 814C81E4 | 38 60 00 0A */	li r3, 0xa
/* 814C81E8 | 48 00 02 E0 */	b .L_814C84C8
.L_814C81EC:
/* 814C81EC | 54 60 06 F7 */	rlwinm. r0, r3, 0, 27, 27
/* 814C81F0 | 41 82 00 0C */	beq .L_814C81FC
/* 814C81F4 | 38 60 00 17 */	li r3, 0x17
/* 814C81F8 | 48 00 02 D0 */	b .L_814C84C8
.L_814C81FC:
/* 814C81FC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C8200 | 41 82 00 6C */	beq .L_814C826C
/* 814C8204 | 80 A1 05 1C */	lwz r5, 0x51c(r1)
/* 814C8208 | 38 61 00 7C */	addi r3, r1, 0x7c
/* 814C820C | 38 81 00 28 */	addi r4, r1, 0x28
/* 814C8210 | 38 C1 05 24 */	addi r6, r1, 0x524
/* 814C8214 | 4B FF CD 59 */	bl VFiPFFAT_InitFFD
/* 814C8218 | 80 81 05 24 */	lwz r4, 0x524(r1)
/* 814C821C | 28 04 00 02 */	cmplwi r4, 0x2
/* 814C8220 | 41 80 00 28 */	blt .L_814C8248
/* 814C8224 | 3C 04 00 01 */	addis r0, r4, 0x1
/* 814C8228 | 28 00 FF FF */	cmplwi r0, 0xffff
/* 814C822C | 41 82 00 1C */	beq .L_814C8248
/* 814C8230 | 80 C1 05 18 */	lwz r6, 0x518(r1)
/* 814C8234 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C8238 | 41 82 00 10 */	beq .L_814C8248
/* 814C823C | 38 61 00 7C */	addi r3, r1, 0x7c
/* 814C8240 | 38 A0 FF FF */	li r5, -0x1
/* 814C8244 | 4B FF BE D5 */	bl VFiPFFAT_FreeChain
.L_814C8248:
/* 814C8248 | 38 00 00 00 */	li r0, 0x0
/* 814C824C | 38 61 05 16 */	addi r3, r1, 0x516
/* 814C8250 | 90 01 05 24 */	stw r0, 0x524(r1)
/* 814C8254 | 38 81 05 14 */	addi r4, r1, 0x514
/* 814C8258 | 90 01 05 18 */	stw r0, 0x518(r1)
/* 814C825C | 4B FF 76 D5 */	bl VFiPFENT_getcurrentDateTimeForEnt
/* 814C8260 | A0 01 05 16 */	lhz r0, 0x516(r1)
/* 814C8264 | B0 01 05 12 */	sth r0, 0x512(r1)
/* 814C8268 | 48 00 00 20 */	b .L_814C8288
.L_814C826C:
/* 814C826C | 38 61 05 12 */	addi r3, r1, 0x512
/* 814C8270 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C8274 | 4B FF 76 BD */	bl VFiPFENT_getcurrentDateTimeForEnt
/* 814C8278 | 48 00 00 10 */	b .L_814C8288
.L_814C827C:
/* 814C827C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8280 | 41 82 00 08 */	beq .L_814C8288
/* 814C8284 | 48 00 02 44 */	b .L_814C84C8
.L_814C8288:
/* 814C8288 | 83 81 05 1C */	lwz r28, 0x51c(r1)
/* 814C828C | 38 81 02 F0 */	addi r4, r1, 0x2f0
/* 814C8290 | 7F 83 E3 78 */	mr r3, r28
/* 814C8294 | 4B FF FB 01 */	bl VFiPFFILE_GetSFD
/* 814C8298 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C829C | 40 82 00 0C */	bne .L_814C82A8
/* 814C82A0 | 38 60 00 15 */	li r3, 0x15
/* 814C82A4 | 48 00 02 24 */	b .L_814C84C8
.L_814C82A8:
/* 814C82A8 | 38 00 00 05 */	li r0, 0x5
/* 814C82AC | 7F 85 E3 78 */	mr r5, r28
/* 814C82B0 | 38 80 00 00 */	li r4, 0x0
/* 814C82B4 | 7C 09 03 A6 */	mtctr r0
.L_814C82B8:
/* 814C82B8 | 80 05 0C FC */	lwz r0, 0xcfc(r5)
/* 814C82BC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C82C0 | 40 82 00 14 */	bne .L_814C82D4
/* 814C82C4 | 1C 04 00 34 */	mulli r0, r4, 0x34
/* 814C82C8 | 7C 9C 02 14 */	add r4, r28, r0
/* 814C82CC | 3B E4 0C FC */	addi r31, r4, 0xcfc
/* 814C82D0 | 48 00 00 14 */	b .L_814C82E4
.L_814C82D4:
/* 814C82D4 | 38 A5 00 34 */	addi r5, r5, 0x34
/* 814C82D8 | 38 84 00 01 */	addi r4, r4, 0x1
/* 814C82DC | 42 00 FF DC */	bdnz .L_814C82B8
/* 814C82E0 | 3B E0 00 00 */	li r31, 0x0
.L_814C82E4:
/* 814C82E4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C82E8 | 40 82 00 34 */	bne .L_814C831C
/* 814C82EC | A0 83 02 88 */	lhz r4, 0x288(r3)
/* 814C82F0 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C82F4 | 54 80 04 3F */	clrlwi. r0, r4, 16
/* 814C82F8 | B0 83 02 88 */	sth r4, 0x288(r3)
/* 814C82FC | 40 82 00 18 */	bne .L_814C8314
/* 814C8300 | 80 83 00 00 */	lwz r4, 0x0(r3)
/* 814C8304 | 38 00 00 00 */	li r0, 0x0
/* 814C8308 | 54 84 00 3C */	clrrwi r4, r4, 1
/* 814C830C | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814C8310 | 90 03 00 1C */	stw r0, 0x1c(r3)
.L_814C8314:
/* 814C8314 | 38 60 00 16 */	li r3, 0x16
/* 814C8318 | 48 00 01 B0 */	b .L_814C84C8
.L_814C831C:
/* 814C831C | 90 7F 00 08 */	stw r3, 0x8(r31)
/* 814C8320 | 3C 60 20 00 */	lis r3, 0x2000
/* 814C8324 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814C8328 | 38 00 00 00 */	li r0, 0x0
/* 814C832C | 90 7F 00 00 */	stw r3, 0x0(r31)
/* 814C8330 | 38 7F 00 0C */	addi r3, r31, 0xc
/* 814C8334 | 93 BF 00 04 */	stw r29, 0x4(r31)
/* 814C8338 | 90 1F 00 1C */	stw r0, 0x1c(r31)
/* 814C833C | B0 1F 00 30 */	sth r0, 0x30(r31)
/* 814C8340 | 4B FF CB B9 */	bl VFiPFFAT_InitHint
/* 814C8344 | 38 00 FF FF */	li r0, -0x1
/* 814C8348 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C834C | 90 1F 00 24 */	stw r0, 0x24(r31)
/* 814C8350 | 40 82 00 0C */	bne .L_814C835C
/* 814C8354 | 38 80 00 00 */	li r4, 0x0
/* 814C8358 | 48 00 00 0C */	b .L_814C8364
.L_814C835C:
/* 814C835C | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C8360 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C8364:
/* 814C8364 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C8368 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C836C | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C8370 | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C8374 | 7C A3 00 38 */	and r3, r5, r0
/* 814C8378 | 7C 03 00 D0 */	neg r0, r3
/* 814C837C | 7C A4 24 30 */	srw r4, r5, r4
/* 814C8380 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C8384 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C8388 | 7C 04 02 15 */	add. r0, r4, r0
/* 814C838C | 41 82 00 0C */	beq .L_814C8398
/* 814C8390 | 38 00 FF FF */	li r0, -0x1
/* 814C8394 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C8398:
/* 814C8398 | 38 00 00 00 */	li r0, 0x0
/* 814C839C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C83A0 | 90 1F 00 20 */	stw r0, 0x20(r31)
/* 814C83A4 | 40 82 00 0C */	bne .L_814C83B0
/* 814C83A8 | 38 A0 00 00 */	li r5, 0x0
/* 814C83AC | 48 00 00 0C */	b .L_814C83B8
.L_814C83B0:
/* 814C83B0 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C83B4 | 80 A3 02 64 */	lwz r5, 0x264(r3)
.L_814C83B8:
/* 814C83B8 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814C83BC | 7F E3 FB 78 */	mr r3, r31
/* 814C83C0 | 88 05 00 20 */	lbz r0, 0x20(r5)
/* 814C83C4 | 7C 80 04 30 */	srw r0, r4, r0
/* 814C83C8 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C83CC | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814C83D0 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C83D4 | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C83D8 | 7C A0 00 38 */	and r0, r5, r0
/* 814C83DC | B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 814C83E0 | 4B FF 43 A5 */	bl VFiPFCLUSTER_InitLastAccessCluster
/* 814C83E4 | 57 A0 07 FF */	clrlwi. r0, r29, 31
/* 814C83E8 | 41 82 00 20 */	beq .L_814C8408
/* 814C83EC | 80 1C 15 D0 */	lwz r0, 0x15d0(r28)
/* 814C83F0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C83F4 | 40 82 00 14 */	bne .L_814C8408
/* 814C83F8 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C83FC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C8400 | 60 00 00 04 */	ori r0, r0, 0x4
/* 814C8404 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814C8408:
/* 814C8408 | 80 1F 00 04 */	lwz r0, 0x4(r31)
/* 814C840C | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C8410 | 41 82 00 B0 */	beq .L_814C84C0
/* 814C8414 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C8418 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C841C | 81 03 02 60 */	lwz r8, 0x260(r3)
/* 814C8420 | 40 82 00 0C */	bne .L_814C842C
/* 814C8424 | 38 80 00 00 */	li r4, 0x0
/* 814C8428 | 48 00 00 08 */	b .L_814C8430
.L_814C842C:
/* 814C842C | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C8430:
/* 814C8430 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C8434 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C8438 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C843C | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C8440 | 7C 07 18 38 */	and r7, r0, r3
/* 814C8444 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C8448 | 7D 03 18 38 */	and r3, r8, r3
/* 814C844C | 7C C7 00 D0 */	neg r6, r7
/* 814C8450 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C8454 | 7C 03 00 D0 */	neg r0, r3
/* 814C8458 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C845C | 7C C6 3B 78 */	or r6, r6, r7
/* 814C8460 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C8464 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C8468 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C846C | 7C 04 02 14 */	add r0, r4, r0
/* 814C8470 | 7C 03 00 40 */	cmplw r3, r0
/* 814C8474 | 41 82 00 0C */	beq .L_814C8480
/* 814C8478 | 38 00 FF FF */	li r0, -0x1
/* 814C847C | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C8480:
/* 814C8480 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C8484 | 91 1F 00 20 */	stw r8, 0x20(r31)
/* 814C8488 | 40 82 00 0C */	bne .L_814C8494
/* 814C848C | 38 80 00 00 */	li r4, 0x0
/* 814C8490 | 48 00 00 0C */	b .L_814C849C
.L_814C8494:
/* 814C8494 | 80 7F 00 08 */	lwz r3, 0x8(r31)
/* 814C8498 | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C849C:
/* 814C849C | 80 7F 00 20 */	lwz r3, 0x20(r31)
/* 814C84A0 | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C84A4 | 7C 60 04 30 */	srw r0, r3, r0
/* 814C84A8 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C84AC | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C84B0 | 80 9F 00 20 */	lwz r4, 0x20(r31)
/* 814C84B4 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C84B8 | 7C 80 00 38 */	and r0, r4, r0
/* 814C84BC | B0 1F 00 2C */	sth r0, 0x2c(r31)
.L_814C84C0:
/* 814C84C0 | 93 FE 00 00 */	stw r31, 0x0(r30)
/* 814C84C4 | 38 60 00 00 */	li r3, 0x0
.L_814C84C8:
/* 814C84C8 | 39 61 05 50 */	addi r11, r1, 0x550
/* 814C84CC | 48 13 10 41 */	bl _restgpr_27
/* 814C84D0 | 80 01 05 54 */	lwz r0, 0x554(r1)
/* 814C84D4 | 7C 08 03 A6 */	mtlr r0
/* 814C84D8 | 38 21 05 50 */	addi r1, r1, 0x550
/* 814C84DC | 4E 80 00 20 */	blr
.endfn VFiPFFILE_p_fopen

# .text:0x1DA0 | 0x814C84E0 | size: 0x1A0
.fn VFiPFFILE_p_fread, global
/* 814C84E0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C84E4 | 7C 08 02 A6 */	mflr r0
/* 814C84E8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C84EC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C84F0 | 48 13 0F CD */	bl _savegpr_26
/* 814C84F4 | 38 00 00 00 */	li r0, 0x0
/* 814C84F8 | 7C 9A 23 78 */	mr r26, r4
/* 814C84FC | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814C8500 | 7C BD 2B 78 */	mr r29, r5
/* 814C8504 | 7C DE 33 78 */	mr r30, r6
/* 814C8508 | 7C FF 3B 78 */	mr r31, r7
/* 814C850C | 90 08 00 00 */	stw r0, 0x0(r8)
/* 814C8510 | 7D 1B 43 78 */	mr r27, r8
/* 814C8514 | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 814C8518 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814C851C | 40 82 00 1C */	bne .L_814C8538
/* 814C8520 | 54 60 07 FF */	clrlwi. r0, r3, 31
/* 814C8524 | 40 82 00 0C */	bne .L_814C8530
/* 814C8528 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814C852C | 41 82 00 0C */	beq .L_814C8538
.L_814C8530:
/* 814C8530 | 38 60 00 0A */	li r3, 0xa
/* 814C8534 | 48 00 01 34 */	b .L_814C8668
.L_814C8538:
/* 814C8538 | 80 87 00 08 */	lwz r4, 0x8(r7)
/* 814C853C | A0 04 02 78 */	lhz r0, 0x278(r4)
/* 814C8540 | 54 00 07 BF */	clrlwi. r0, r0, 30
/* 814C8544 | 41 82 00 18 */	beq .L_814C855C
/* 814C8548 | A0 07 00 30 */	lhz r0, 0x30(r7)
/* 814C854C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C8550 | 40 82 00 0C */	bne .L_814C855C
/* 814C8554 | 38 60 00 19 */	li r3, 0x19
/* 814C8558 | 48 00 01 10 */	b .L_814C8668
.L_814C855C:
/* 814C855C | 80 67 00 20 */	lwz r3, 0x20(r7)
/* 814C8560 | 80 04 02 60 */	lwz r0, 0x260(r4)
/* 814C8564 | 7C 03 00 40 */	cmplw r3, r0
/* 814C8568 | 41 80 00 0C */	blt .L_814C8574
/* 814C856C | 38 60 00 1C */	li r3, 0x1c
/* 814C8570 | 48 00 00 F8 */	b .L_814C8668
.L_814C8574:
/* 814C8574 | 38 64 00 04 */	addi r3, r4, 0x4
/* 814C8578 | 38 87 00 0C */	addi r4, r7, 0xc
/* 814C857C | 4B FF C9 8D */	bl VFiPFFAT_SetHint
/* 814C8580 | 7C BD F1 D6 */	mullw r5, r29, r30
/* 814C8584 | 83 9F 00 20 */	lwz r28, 0x20(r31)
/* 814C8588 | 7F E3 FB 78 */	mr r3, r31
/* 814C858C | 7F 44 D3 78 */	mr r4, r26
/* 814C8590 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C8594 | 4B FF E9 B1 */	bl VFiPFFILE_Cursor_Read
/* 814C8598 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C859C | 7C 00 EB 96 */	divwu r0, r0, r29
/* 814C85A0 | 7C 00 F0 40 */	cmplw r0, r30
/* 814C85A4 | 90 1B 00 00 */	stw r0, 0x0(r27)
/* 814C85A8 | 41 82 00 B0 */	beq .L_814C8658
/* 814C85AC | 7C 00 E9 D6 */	mullw r0, r0, r29
/* 814C85B0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C85B4 | 7D 3C 02 14 */	add r9, r28, r0
/* 814C85B8 | 40 82 00 0C */	bne .L_814C85C4
/* 814C85BC | 38 A0 00 00 */	li r5, 0x0
/* 814C85C0 | 48 00 00 0C */	b .L_814C85CC
.L_814C85C4:
/* 814C85C4 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814C85C8 | 80 A4 02 64 */	lwz r5, 0x264(r4)
.L_814C85CC:
/* 814C85CC | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814C85D0 | 80 1F 00 20 */	lwz r0, 0x20(r31)
/* 814C85D4 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C85D8 | 88 A5 00 20 */	lbz r5, 0x20(r5)
/* 814C85DC | 7C 08 20 38 */	and r8, r0, r4
/* 814C85E0 | 7C 06 2C 30 */	srw r6, r0, r5
/* 814C85E4 | 7D 24 20 38 */	and r4, r9, r4
/* 814C85E8 | 7C E8 00 D0 */	neg r7, r8
/* 814C85EC | 7D 25 2C 30 */	srw r5, r9, r5
/* 814C85F0 | 7C 04 00 D0 */	neg r0, r4
/* 814C85F4 | 7C 00 23 78 */	or r0, r0, r4
/* 814C85F8 | 7C E7 43 78 */	or r7, r7, r8
/* 814C85FC | 54 E4 0F FE */	srwi r4, r7, 31
/* 814C8600 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C8604 | 7C 86 22 14 */	add r4, r6, r4
/* 814C8608 | 7C 05 02 14 */	add r0, r5, r0
/* 814C860C | 7C 04 00 40 */	cmplw r4, r0
/* 814C8610 | 41 82 00 0C */	beq .L_814C861C
/* 814C8614 | 38 00 FF FF */	li r0, -0x1
/* 814C8618 | 90 1F 00 24 */	stw r0, 0x24(r31)
.L_814C861C:
/* 814C861C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C8620 | 91 3F 00 20 */	stw r9, 0x20(r31)
/* 814C8624 | 40 82 00 0C */	bne .L_814C8630
/* 814C8628 | 38 80 00 00 */	li r4, 0x0
/* 814C862C | 48 00 00 0C */	b .L_814C8638
.L_814C8630:
/* 814C8630 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814C8634 | 80 84 02 64 */	lwz r4, 0x264(r4)
.L_814C8638:
/* 814C8638 | 80 BF 00 20 */	lwz r5, 0x20(r31)
/* 814C863C | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C8640 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C8644 | 90 1F 00 28 */	stw r0, 0x28(r31)
/* 814C8648 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C864C | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C8650 | 7C A0 00 38 */	and r0, r5, r0
/* 814C8654 | B0 1F 00 2C */	sth r0, 0x2c(r31)
.L_814C8658:
/* 814C8658 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C865C | 41 82 00 08 */	beq .L_814C8664
/* 814C8660 | 48 00 00 08 */	b .L_814C8668
.L_814C8664:
/* 814C8664 | 38 60 00 00 */	li r3, 0x0
.L_814C8668:
/* 814C8668 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C866C | 48 13 0E 9D */	bl _restgpr_26
/* 814C8670 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C8674 | 7C 08 03 A6 */	mtlr r0
/* 814C8678 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C867C | 4E 80 00 20 */	blr
.endfn VFiPFFILE_p_fread

# .text:0x1F40 | 0x814C8680 | size: 0x3F8
.fn VFiPFFILE_p_fwrite, global
/* 814C8680 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814C8684 | 7C 08 02 A6 */	mflr r0
/* 814C8688 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814C868C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C8690 | 48 13 0E 29 */	bl _savegpr_25
/* 814C8694 | 39 20 00 00 */	li r9, 0x0
/* 814C8698 | 7C 7E 1B 78 */	mr r30, r3
/* 814C869C | 91 21 00 08 */	stw r9, 0x8(r1)
/* 814C86A0 | 7C 9F 23 78 */	mr r31, r4
/* 814C86A4 | 7C BA 2B 78 */	mr r26, r5
/* 814C86A8 | 7C DB 33 78 */	mr r27, r6
/* 814C86AC | 91 28 00 00 */	stw r9, 0x0(r8)
/* 814C86B0 | 7C FC 3B 78 */	mr r28, r7
/* 814C86B4 | 7D 1D 43 78 */	mr r29, r8
/* 814C86B8 | 80 67 00 04 */	lwz r3, 0x4(r7)
/* 814C86BC | 91 21 00 18 */	stw r9, 0x18(r1)
/* 814C86C0 | 54 60 07 39 */	rlwinm. r0, r3, 0, 28, 28
/* 814C86C4 | 91 21 00 1C */	stw r9, 0x1c(r1)
/* 814C86C8 | 91 21 00 20 */	stw r9, 0x20(r1)
/* 814C86CC | 91 21 00 24 */	stw r9, 0x24(r1)
/* 814C86D0 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 814C86D4 | 91 21 00 14 */	stw r9, 0x14(r1)
/* 814C86D8 | 40 82 00 14 */	bne .L_814C86EC
/* 814C86DC | 54 60 07 BD */	rlwinm. r0, r3, 0, 30, 30
/* 814C86E0 | 41 82 00 0C */	beq .L_814C86EC
/* 814C86E4 | 38 60 00 0A */	li r3, 0xa
/* 814C86E8 | 48 00 03 78 */	b .L_814C8A60
.L_814C86EC:
/* 814C86EC | 80 87 00 08 */	lwz r4, 0x8(r7)
/* 814C86F0 | A0 A4 02 78 */	lhz r5, 0x278(r4)
/* 814C86F4 | 54 A0 07 BF */	clrlwi. r0, r5, 30
/* 814C86F8 | 41 82 00 28 */	beq .L_814C8720
/* 814C86FC | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814C8700 | 40 82 00 18 */	bne .L_814C8718
/* 814C8704 | 54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 814C8708 | 41 82 00 18 */	beq .L_814C8720
/* 814C870C | A0 07 00 30 */	lhz r0, 0x30(r7)
/* 814C8710 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C8714 | 40 82 00 0C */	bne .L_814C8720
.L_814C8718:
/* 814C8718 | 38 60 00 19 */	li r3, 0x19
/* 814C871C | 48 00 03 44 */	b .L_814C8A60
.L_814C8720:
/* 814C8720 | 54 60 07 7B */	rlwinm. r0, r3, 0, 29, 29
/* 814C8724 | 41 82 00 A8 */	beq .L_814C87CC
/* 814C8728 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C872C | 81 24 02 60 */	lwz r9, 0x260(r4)
/* 814C8730 | 40 82 00 0C */	bne .L_814C873C
/* 814C8734 | 38 80 00 00 */	li r4, 0x0
/* 814C8738 | 48 00 00 08 */	b .L_814C8740
.L_814C873C:
/* 814C873C | 80 84 02 64 */	lwz r4, 0x264(r4)
.L_814C8740:
/* 814C8740 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C8744 | 80 07 00 20 */	lwz r0, 0x20(r7)
/* 814C8748 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C874C | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C8750 | 7C 08 18 38 */	and r8, r0, r3
/* 814C8754 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C8758 | 7D 23 18 38 */	and r3, r9, r3
/* 814C875C | 7C C8 00 D0 */	neg r6, r8
/* 814C8760 | 7D 24 24 30 */	srw r4, r9, r4
/* 814C8764 | 7C 03 00 D0 */	neg r0, r3
/* 814C8768 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C876C | 7C C6 43 78 */	or r6, r6, r8
/* 814C8770 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C8774 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C8778 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C877C | 7C 04 02 14 */	add r0, r4, r0
/* 814C8780 | 7C 03 00 40 */	cmplw r3, r0
/* 814C8784 | 41 82 00 0C */	beq .L_814C8790
/* 814C8788 | 38 00 FF FF */	li r0, -0x1
/* 814C878C | 90 07 00 24 */	stw r0, 0x24(r7)
.L_814C8790:
/* 814C8790 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C8794 | 91 27 00 20 */	stw r9, 0x20(r7)
/* 814C8798 | 40 82 00 0C */	bne .L_814C87A4
/* 814C879C | 38 60 00 00 */	li r3, 0x0
/* 814C87A0 | 48 00 00 0C */	b .L_814C87AC
.L_814C87A4:
/* 814C87A4 | 80 67 00 08 */	lwz r3, 0x8(r7)
/* 814C87A8 | 80 63 02 64 */	lwz r3, 0x264(r3)
.L_814C87AC:
/* 814C87AC | 80 87 00 20 */	lwz r4, 0x20(r7)
/* 814C87B0 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814C87B4 | 7C 80 04 30 */	srw r0, r4, r0
/* 814C87B8 | 90 07 00 28 */	stw r0, 0x28(r7)
/* 814C87BC | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814C87C0 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C87C4 | 7C 80 00 38 */	and r0, r4, r0
/* 814C87C8 | B0 07 00 2C */	sth r0, 0x2c(r7)
.L_814C87CC:
/* 814C87CC | 80 67 00 08 */	lwz r3, 0x8(r7)
/* 814C87D0 | 38 87 00 0C */	addi r4, r7, 0xc
/* 814C87D4 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C87D8 | 4B FF C7 31 */	bl VFiPFFAT_SetHint
/* 814C87DC | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C87E0 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814C87E4 | 80 E3 02 60 */	lwz r7, 0x260(r3)
/* 814C87E8 | 7C 00 38 40 */	cmplw r0, r7
/* 814C87EC | 40 81 00 C8 */	ble .L_814C88B4
/* 814C87F0 | 90 FC 00 20 */	stw r7, 0x20(r28)
/* 814C87F4 | 7F 27 00 50 */	subf r25, r7, r0
/* 814C87F8 | 7F C3 F3 78 */	mr r3, r30
/* 814C87FC | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814C8800 | 88 1E 00 20 */	lbz r0, 0x20(r30)
/* 814C8804 | 38 80 FF FF */	li r4, -0x1
/* 814C8808 | 7C E0 04 30 */	srw r0, r7, r0
/* 814C880C | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 814C8810 | A0 DE 00 00 */	lhz r6, 0x0(r30)
/* 814C8814 | 38 06 FF FF */	subi r0, r6, 0x1
/* 814C8818 | 7C E0 00 38 */	and r0, r7, r0
/* 814C881C | B0 1C 00 2C */	sth r0, 0x2c(r28)
/* 814C8820 | 4B FF 36 39 */	bl VFiPFCACHE_AllocateDataPage
/* 814C8824 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8828 | 41 82 00 08 */	beq .L_814C8830
/* 814C882C | 48 00 02 34 */	b .L_814C8A60
.L_814C8830:
/* 814C8830 | 80 61 00 0C */	lwz r3, 0xc(r1)
/* 814C8834 | 38 80 00 00 */	li r4, 0x0
/* 814C8838 | A0 BE 00 00 */	lhz r5, 0x0(r30)
/* 814C883C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C8840 | 4B FE D0 C9 */	bl VFipf_memset
/* 814C8844 | 48 00 00 5C */	b .L_814C88A0
.L_814C8848:
/* 814C8848 | A0 BE 00 00 */	lhz r5, 0x0(r30)
/* 814C884C | 7C 19 28 40 */	cmplw r25, r5
/* 814C8850 | 40 81 00 24 */	ble .L_814C8874
/* 814C8854 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C8858 | 7F 83 E3 78 */	mr r3, r28
/* 814C885C | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C8860 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C8864 | 4B FF EF C9 */	bl VFiPFFILE_Cursor_Write
/* 814C8868 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C886C | 41 82 00 2C */	beq .L_814C8898
/* 814C8870 | 48 00 01 F0 */	b .L_814C8A60
.L_814C8874:
/* 814C8874 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C8878 | 7F 83 E3 78 */	mr r3, r28
/* 814C887C | 7F 25 CB 78 */	mr r5, r25
/* 814C8880 | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C8884 | 80 84 00 08 */	lwz r4, 0x8(r4)
/* 814C8888 | 4B FF EF A5 */	bl VFiPFFILE_Cursor_Write
/* 814C888C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8890 | 41 82 00 18 */	beq .L_814C88A8
/* 814C8894 | 48 00 01 CC */	b .L_814C8A60
.L_814C8898:
/* 814C8898 | A0 1E 00 00 */	lhz r0, 0x0(r30)
/* 814C889C | 7F 20 C8 50 */	subf r25, r0, r25
.L_814C88A0:
/* 814C88A0 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814C88A4 | 40 82 FF A4 */	bne .L_814C8848
.L_814C88A8:
/* 814C88A8 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C88AC | 7F C3 F3 78 */	mr r3, r30
/* 814C88B0 | 4B FF 36 1D */	bl VFiPFCACHE_FreeDataPage
.L_814C88B4:
/* 814C88B4 | 7C BA D9 D6 */	mullw r5, r26, r27
/* 814C88B8 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814C88BC | 83 DC 00 20 */	lwz r30, 0x20(r28)
/* 814C88C0 | 7F 83 E3 78 */	mr r3, r28
/* 814C88C4 | 83 24 02 60 */	lwz r25, 0x260(r4)
/* 814C88C8 | 7F E4 FB 78 */	mr r4, r31
/* 814C88CC | 38 C1 00 08 */	addi r6, r1, 0x8
/* 814C88D0 | 4B FF EF 5D */	bl VFiPFFILE_Cursor_Write
/* 814C88D4 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C88D8 | 7C 7F 1B 78 */	mr r31, r3
/* 814C88DC | 7C 80 D3 96 */	divwu r4, r0, r26
/* 814C88E0 | 7C 04 D8 40 */	cmplw r4, r27
/* 814C88E4 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 814C88E8 | 41 82 01 64 */	beq .L_814C8A4C
/* 814C88EC | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C88F0 | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C88F4 | 7C 00 C8 40 */	cmplw r0, r25
/* 814C88F8 | 40 81 00 A4 */	ble .L_814C899C
/* 814C88FC | 7C 04 D1 D6 */	mullw r0, r4, r26
/* 814C8900 | 7C 1E 02 14 */	add r0, r30, r0
/* 814C8904 | 7C 00 C8 40 */	cmplw r0, r25
/* 814C8908 | 40 81 00 0C */	ble .L_814C8914
/* 814C890C | 90 03 02 60 */	stw r0, 0x260(r3)
/* 814C8910 | 48 00 00 08 */	b .L_814C8918
.L_814C8914:
/* 814C8914 | 93 23 02 60 */	stw r25, 0x260(r3)
.L_814C8918:
/* 814C8918 | 81 3C 00 20 */	lwz r9, 0x20(r28)
/* 814C891C | 38 9C 00 0C */	addi r4, r28, 0xc
/* 814C8920 | 81 1C 00 24 */	lwz r8, 0x24(r28)
/* 814C8924 | 80 FC 00 28 */	lwz r7, 0x28(r28)
/* 814C8928 | 80 DC 00 2C */	lwz r6, 0x2c(r28)
/* 814C892C | 80 BC 00 0C */	lwz r5, 0xc(r28)
/* 814C8930 | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 814C8934 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C8938 | 91 21 00 18 */	stw r9, 0x18(r1)
/* 814C893C | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C8940 | 91 01 00 1C */	stw r8, 0x1c(r1)
/* 814C8944 | 90 E1 00 20 */	stw r7, 0x20(r1)
/* 814C8948 | 90 C1 00 24 */	stw r6, 0x24(r1)
/* 814C894C | 90 A1 00 10 */	stw r5, 0x10(r1)
/* 814C8950 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C8954 | 4B FF C5 B5 */	bl VFiPFFAT_SetHint
/* 814C8958 | 7F 83 E3 78 */	mr r3, r28
/* 814C895C | 4B FF 41 21 */	bl VFiPFCLUSTER_AdjustCluster
/* 814C8960 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8964 | 41 82 00 08 */	beq .L_814C896C
/* 814C8968 | 7C 7F 1B 78 */	mr r31, r3
.L_814C896C:
/* 814C896C | 80 E1 00 18 */	lwz r7, 0x18(r1)
/* 814C8970 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 814C8974 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 814C8978 | 80 81 00 24 */	lwz r4, 0x24(r1)
/* 814C897C | 80 61 00 10 */	lwz r3, 0x10(r1)
/* 814C8980 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C8984 | 90 FC 00 20 */	stw r7, 0x20(r28)
/* 814C8988 | 90 DC 00 24 */	stw r6, 0x24(r28)
/* 814C898C | 90 BC 00 28 */	stw r5, 0x28(r28)
/* 814C8990 | 90 9C 00 2C */	stw r4, 0x2c(r28)
/* 814C8994 | 90 7C 00 0C */	stw r3, 0xc(r28)
/* 814C8998 | 90 1C 00 10 */	stw r0, 0x10(r28)
.L_814C899C:
/* 814C899C | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814C89A0 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C89A4 | 7C 00 D1 D6 */	mullw r0, r0, r26
/* 814C89A8 | 7D 1E 02 14 */	add r8, r30, r0
/* 814C89AC | 40 82 00 0C */	bne .L_814C89B8
/* 814C89B0 | 38 80 00 00 */	li r4, 0x0
/* 814C89B4 | 48 00 00 0C */	b .L_814C89C0
.L_814C89B8:
/* 814C89B8 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C89BC | 80 83 02 64 */	lwz r4, 0x264(r3)
.L_814C89C0:
/* 814C89C0 | A0 64 00 00 */	lhz r3, 0x0(r4)
/* 814C89C4 | 80 1C 00 20 */	lwz r0, 0x20(r28)
/* 814C89C8 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C89CC | 88 84 00 20 */	lbz r4, 0x20(r4)
/* 814C89D0 | 7C 07 18 38 */	and r7, r0, r3
/* 814C89D4 | 7C 05 24 30 */	srw r5, r0, r4
/* 814C89D8 | 7D 03 18 38 */	and r3, r8, r3
/* 814C89DC | 7C C7 00 D0 */	neg r6, r7
/* 814C89E0 | 7D 04 24 30 */	srw r4, r8, r4
/* 814C89E4 | 7C 03 00 D0 */	neg r0, r3
/* 814C89E8 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C89EC | 7C C6 3B 78 */	or r6, r6, r7
/* 814C89F0 | 54 C3 0F FE */	srwi r3, r6, 31
/* 814C89F4 | 54 00 0F FE */	srwi r0, r0, 31
/* 814C89F8 | 7C 65 1A 14 */	add r3, r5, r3
/* 814C89FC | 7C 04 02 14 */	add r0, r4, r0
/* 814C8A00 | 7C 03 00 40 */	cmplw r3, r0
/* 814C8A04 | 41 82 00 0C */	beq .L_814C8A10
/* 814C8A08 | 38 00 FF FF */	li r0, -0x1
/* 814C8A0C | 90 1C 00 24 */	stw r0, 0x24(r28)
.L_814C8A10:
/* 814C8A10 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C8A14 | 91 1C 00 20 */	stw r8, 0x20(r28)
/* 814C8A18 | 40 82 00 0C */	bne .L_814C8A24
/* 814C8A1C | 38 60 00 00 */	li r3, 0x0
/* 814C8A20 | 48 00 00 0C */	b .L_814C8A2C
.L_814C8A24:
/* 814C8A24 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C8A28 | 80 63 02 64 */	lwz r3, 0x264(r3)
.L_814C8A2C:
/* 814C8A2C | 80 9C 00 20 */	lwz r4, 0x20(r28)
/* 814C8A30 | 88 03 00 20 */	lbz r0, 0x20(r3)
/* 814C8A34 | 7C 80 04 30 */	srw r0, r4, r0
/* 814C8A38 | 90 1C 00 28 */	stw r0, 0x28(r28)
/* 814C8A3C | A0 63 00 00 */	lhz r3, 0x0(r3)
/* 814C8A40 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C8A44 | 7C 80 00 38 */	and r0, r4, r0
/* 814C8A48 | B0 1C 00 2C */	sth r0, 0x2c(r28)
.L_814C8A4C:
/* 814C8A4C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C8A50 | 41 82 00 0C */	beq .L_814C8A5C
/* 814C8A54 | 7F E3 FB 78 */	mr r3, r31
/* 814C8A58 | 48 00 00 08 */	b .L_814C8A60
.L_814C8A5C:
/* 814C8A5C | 38 60 00 00 */	li r3, 0x0
.L_814C8A60:
/* 814C8A60 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814C8A64 | 48 13 0A A1 */	bl _restgpr_25
/* 814C8A68 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814C8A6C | 7C 08 03 A6 */	mtlr r0
/* 814C8A70 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814C8A74 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_p_fwrite

# .text:0x2338 | 0x814C8A78 | size: 0x124
.fn VFiPFFILE_p_finfo, global
/* 814C8A78 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C8A7C | 7C 08 02 A6 */	mflr r0
/* 814C8A80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8A84 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C8A88 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C8A8C | 7C 9F 23 78 */	mr r31, r4
/* 814C8A90 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C8A94 | 7C 7E 1B 78 */	mr r30, r3
/* 814C8A98 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C8A9C | 40 82 00 0C */	bne .L_814C8AA8
/* 814C8AA0 | 3B A0 00 00 */	li r29, 0x0
/* 814C8AA4 | 48 00 00 0C */	b .L_814C8AB0
.L_814C8AA8:
/* 814C8AA8 | 80 83 00 08 */	lwz r4, 0x8(r3)
/* 814C8AAC | 83 A4 02 64 */	lwz r29, 0x264(r4)
.L_814C8AB0:
/* 814C8AB0 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C8AB4 | 38 9E 00 0C */	addi r4, r30, 0xc
/* 814C8AB8 | 38 63 00 04 */	addi r3, r3, 0x4
/* 814C8ABC | 4B FF C4 4D */	bl VFiPFFAT_SetHint
/* 814C8AC0 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C8AC4 | 80 03 02 60 */	lwz r0, 0x260(r3)
/* 814C8AC8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814C8ACC | 80 1E 00 20 */	lwz r0, 0x20(r30)
/* 814C8AD0 | 90 1F 00 04 */	stw r0, 0x4(r31)
/* 814C8AD4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C8AD8 | A0 9D 00 00 */	lhz r4, 0x0(r29)
/* 814C8ADC | 80 03 02 6C */	lwz r0, 0x26c(r3)
/* 814C8AE0 | 88 7D 00 21 */	lbz r3, 0x21(r29)
/* 814C8AE4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C8AE8 | 7C 9D 18 30 */	slw r29, r4, r3
/* 814C8AEC | 41 82 00 54 */	beq .L_814C8B40
/* 814C8AF0 | 7F C3 F3 78 */	mr r3, r30
/* 814C8AF4 | 38 9F 00 0C */	addi r4, r31, 0xc
/* 814C8AF8 | 4B FF 42 35 */	bl VFiPFCLUSTER_GetAppendSize
/* 814C8AFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8B00 | 41 82 00 08 */	beq .L_814C8B08
/* 814C8B04 | 48 00 00 7C */	b .L_814C8B80
.L_814C8B08:
/* 814C8B08 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C8B0C | 80 9F 00 0C */	lwz r4, 0xc(r31)
/* 814C8B10 | 80 63 02 60 */	lwz r3, 0x260(r3)
/* 814C8B14 | 7C 03 EB 96 */	divwu r0, r3, r29
/* 814C8B18 | 7C 00 E9 D6 */	mullw r0, r0, r29
/* 814C8B1C | 7C A0 18 50 */	subf r5, r0, r3
/* 814C8B20 | 7C 05 00 D0 */	neg r0, r5
/* 814C8B24 | 7C 03 2B 78 */	or r3, r0, r5
/* 814C8B28 | 7C 05 E8 50 */	subf r0, r5, r29
/* 814C8B2C | 7C 63 FE 70 */	srawi r3, r3, 31
/* 814C8B30 | 7C 00 18 38 */	and r0, r0, r3
/* 814C8B34 | 7C 04 02 14 */	add r0, r4, r0
/* 814C8B38 | 90 1F 00 08 */	stw r0, 0x8(r31)
/* 814C8B3C | 48 00 00 10 */	b .L_814C8B4C
.L_814C8B40:
/* 814C8B40 | 38 00 00 00 */	li r0, 0x0
/* 814C8B44 | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814C8B48 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_814C8B4C:
/* 814C8B4C | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C8B50 | 38 60 00 00 */	li r3, 0x0
/* 814C8B54 | A0 04 02 78 */	lhz r0, 0x278(r4)
/* 814C8B58 | 54 00 07 BE */	clrlwi r0, r0, 30
/* 814C8B5C | 90 1F 00 10 */	stw r0, 0x10(r31)
/* 814C8B60 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C8B64 | 80 04 02 80 */	lwz r0, 0x280(r4)
/* 814C8B68 | 90 1F 00 14 */	stw r0, 0x14(r31)
/* 814C8B6C | A0 1E 00 30 */	lhz r0, 0x30(r30)
/* 814C8B70 | 90 1F 00 18 */	stw r0, 0x18(r31)
/* 814C8B74 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C8B78 | A0 04 02 7A */	lhz r0, 0x27a(r4)
/* 814C8B7C | 90 1F 00 1C */	stw r0, 0x1c(r31)
.L_814C8B80:
/* 814C8B80 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C8B84 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C8B88 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C8B8C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C8B90 | 7C 08 03 A6 */	mtlr r0
/* 814C8B94 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C8B98 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_p_finfo

# .text:0x245C | 0x814C8B9C | size: 0x98
.fn VFiPFFILE_GetOpenedFile, global
/* 814C8B9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8BA0 | 41 82 00 18 */	beq .L_814C8BB8
/* 814C8BA4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C8BA8 | 41 82 00 10 */	beq .L_814C8BB8
/* 814C8BAC | 80 03 02 2C */	lwz r0, 0x22c(r3)
/* 814C8BB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C8BB4 | 40 82 00 0C */	bne .L_814C8BC0
.L_814C8BB8:
/* 814C8BB8 | 38 60 00 0A */	li r3, 0xa
/* 814C8BBC | 4E 80 00 20 */	blr
.L_814C8BC0:
/* 814C8BC0 | 38 A0 00 00 */	li r5, 0x0
/* 814C8BC4 | 38 00 00 05 */	li r0, 0x5
/* 814C8BC8 | 90 A4 00 00 */	stw r5, 0x0(r4)
/* 814C8BCC | 38 C0 00 00 */	li r6, 0x0
/* 814C8BD0 | 7C 09 03 A6 */	mtctr r0
.L_814C8BD4:
/* 814C8BD4 | 81 03 02 2C */	lwz r8, 0x22c(r3)
/* 814C8BD8 | 7C E8 32 14 */	add r7, r8, r6
/* 814C8BDC | 80 A7 00 40 */	lwz r5, 0x40(r7)
/* 814C8BE0 | 54 A0 07 FF */	clrlwi. r0, r5, 31
/* 814C8BE4 | 41 82 00 40 */	beq .L_814C8C24
/* 814C8BE8 | 54 A0 07 BD */	rlwinm. r0, r5, 0, 30, 30
/* 814C8BEC | 41 82 00 38 */	beq .L_814C8C24
/* 814C8BF0 | 80 07 02 A4 */	lwz r0, 0x2a4(r7)
/* 814C8BF4 | 7C 08 00 40 */	cmplw r8, r0
/* 814C8BF8 | 40 82 00 2C */	bne .L_814C8C24
/* 814C8BFC | 80 A3 02 38 */	lwz r5, 0x238(r3)
/* 814C8C00 | 80 07 02 B0 */	lwz r0, 0x2b0(r7)
/* 814C8C04 | 7C 05 00 40 */	cmplw r5, r0
/* 814C8C08 | 40 82 00 1C */	bne .L_814C8C24
/* 814C8C0C | A0 A3 02 3C */	lhz r5, 0x23c(r3)
/* 814C8C10 | A0 07 02 B4 */	lhz r0, 0x2b4(r7)
/* 814C8C14 | 7C 05 00 40 */	cmplw r5, r0
/* 814C8C18 | 40 82 00 0C */	bne .L_814C8C24
/* 814C8C1C | 38 07 00 78 */	addi r0, r7, 0x78
/* 814C8C20 | 90 04 00 00 */	stw r0, 0x0(r4)
.L_814C8C24:
/* 814C8C24 | 38 C6 02 8C */	addi r6, r6, 0x28c
/* 814C8C28 | 42 00 FF AC */	bdnz .L_814C8BD4
/* 814C8C2C | 38 60 00 00 */	li r3, 0x0
/* 814C8C30 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_GetOpenedFile

# .text:0x24F4 | 0x814C8C34 | size: 0xA4
.fn VFiPFFILE_FinalizeAllFiles, global
/* 814C8C34 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814C8C38 | 7C 08 02 A6 */	mflr r0
/* 814C8C3C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814C8C40 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814C8C44 | 7C 7F 1B 78 */	mr r31, r3
/* 814C8C48 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814C8C4C | 3B C0 00 00 */	li r30, 0x0
.L_814C8C50:
/* 814C8C50 | 57 C0 04 3E */	clrlwi r0, r30, 16
/* 814C8C54 | 1C 00 02 8C */	mulli r0, r0, 0x28c
/* 814C8C58 | 7C 9F 02 14 */	add r4, r31, r0
/* 814C8C5C | 80 04 00 40 */	lwz r0, 0x40(r4)
/* 814C8C60 | 38 64 00 44 */	addi r3, r4, 0x44
/* 814C8C64 | 54 00 00 38 */	clrrwi r0, r0, 3
/* 814C8C68 | 90 04 00 40 */	stw r0, 0x40(r4)
/* 814C8C6C | 4B FF C3 69 */	bl VFiPFFAT_FinalizeFFD
/* 814C8C70 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814C8C74 | 28 1E 00 05 */	cmplwi r30, 0x5
/* 814C8C78 | 41 80 FF D8 */	blt .L_814C8C50
/* 814C8C7C | 80 9F 0C FC */	lwz r4, 0xcfc(r31)
/* 814C8C80 | 38 00 00 00 */	li r0, 0x0
/* 814C8C84 | 80 7F 0D 30 */	lwz r3, 0xd30(r31)
/* 814C8C88 | 54 87 00 3C */	clrrwi r7, r4, 1
/* 814C8C8C | 80 BF 0D 64 */	lwz r5, 0xd64(r31)
/* 814C8C90 | 54 66 00 3C */	clrrwi r6, r3, 1
/* 814C8C94 | 80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 814C8C98 | 80 7F 0D CC */	lwz r3, 0xdcc(r31)
/* 814C8C9C | 54 A5 00 3C */	clrrwi r5, r5, 1
/* 814C8CA0 | 54 84 00 3C */	clrrwi r4, r4, 1
/* 814C8CA4 | 90 FF 0C FC */	stw r7, 0xcfc(r31)
/* 814C8CA8 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 814C8CAC | 90 DF 0D 30 */	stw r6, 0xd30(r31)
/* 814C8CB0 | 90 BF 0D 64 */	stw r5, 0xd64(r31)
/* 814C8CB4 | 90 9F 0D 98 */	stw r4, 0xd98(r31)
/* 814C8CB8 | 90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 814C8CBC | 90 1F 15 C8 */	stw r0, 0x15c8(r31)
/* 814C8CC0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814C8CC4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814C8CC8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814C8CCC | 7C 08 03 A6 */	mtlr r0
/* 814C8CD0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814C8CD4 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_FinalizeAllFiles

# .text:0x2598 | 0x814C8CD8 | size: 0x1C4
.fn VFiPFFILE_remove, global
/* 814C8CD8 | 94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 814C8CDC | 7C 08 02 A6 */	mflr r0
/* 814C8CE0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8CE4 | 90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 814C8CE8 | 93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 814C8CEC | 93 C1 02 D8 */	stw r30, 0x2d8(r1)
/* 814C8CF0 | 93 A1 02 D4 */	stw r29, 0x2d4(r1)
/* 814C8CF4 | 7C 7D 1B 78 */	mr r29, r3
/* 814C8CF8 | 40 82 00 1C */	bne .L_814C8D14
/* 814C8CFC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8D00 | 38 00 00 0A */	li r0, 0xa
/* 814C8D04 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8D08 | 38 60 00 0A */	li r3, 0xa
/* 814C8D0C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8D10 | 48 00 01 70 */	b .L_814C8E80
.L_814C8D14:
/* 814C8D14 | 48 00 21 99 */	bl VFiPFPATH_GetVolumeFromPath
/* 814C8D18 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8D1C | 7C 7E 1B 78 */	mr r30, r3
/* 814C8D20 | 40 82 00 1C */	bne .L_814C8D3C
/* 814C8D24 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8D28 | 38 00 00 0A */	li r0, 0xa
/* 814C8D2C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8D30 | 38 60 00 0A */	li r3, 0xa
/* 814C8D34 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8D38 | 48 00 01 48 */	b .L_814C8E80
.L_814C8D3C:
/* 814C8D3C | 48 00 4A 79 */	bl VFiPFVOL_CheckForWrite
/* 814C8D40 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8D44 | 41 82 00 18 */	beq .L_814C8D5C
/* 814C8D48 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8D4C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8D50 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8D54 | 90 7E 18 54 */	stw r3, 0x1854(r30)
/* 814C8D58 | 48 00 01 28 */	b .L_814C8E80
.L_814C8D5C:
/* 814C8D5C | 3B E0 00 00 */	li r31, 0x0
/* 814C8D60 | 7F C5 F3 78 */	mr r5, r30
/* 814C8D64 | 93 FE 15 F0 */	stw r31, 0x15f0(r30)
/* 814C8D68 | 7F A6 EB 78 */	mr r6, r29
/* 814C8D6C | 38 61 00 18 */	addi r3, r1, 0x18
/* 814C8D70 | 38 81 00 88 */	addi r4, r1, 0x88
/* 814C8D74 | 38 E0 00 00 */	li r7, 0x0
/* 814C8D78 | 4B FF 8E 65 */	bl VFiPFENT_ITER_GetEntryOfPath
/* 814C8D7C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8D80 | 41 82 00 08 */	beq .L_814C8D88
/* 814C8D84 | 48 00 00 98 */	b .L_814C8E1C
.L_814C8D88:
/* 814C8D88 | 80 C1 00 24 */	lwz r6, 0x24(r1)
/* 814C8D8C | 7F C5 F3 78 */	mr r5, r30
/* 814C8D90 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814C8D94 | 38 81 00 10 */	addi r4, r1, 0x10
/* 814C8D98 | 4B FF C1 D5 */	bl VFiPFFAT_InitFFD
/* 814C8D9C | 88 01 02 A4 */	lbz r0, 0x2a4(r1)
/* 814C8DA0 | 70 00 00 19 */	andi. r0, r0, 0x19
/* 814C8DA4 | 41 82 00 0C */	beq .L_814C8DB0
/* 814C8DA8 | 38 60 00 0B */	li r3, 0xb
/* 814C8DAC | 48 00 00 70 */	b .L_814C8E1C
.L_814C8DB0:
/* 814C8DB0 | 34 61 00 88 */	addic. r3, r1, 0x88
/* 814C8DB4 | 93 E1 00 08 */	stw r31, 0x8(r1)
/* 814C8DB8 | 40 82 00 0C */	bne .L_814C8DC4
/* 814C8DBC | 38 00 00 00 */	li r0, 0x0
/* 814C8DC0 | 48 00 00 1C */	b .L_814C8DDC
.L_814C8DC4:
/* 814C8DC4 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814C8DC8 | 4B FF FD D5 */	bl VFiPFFILE_GetOpenedFile
/* 814C8DCC | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814C8DD0 | 7C 03 00 D0 */	neg r0, r3
/* 814C8DD4 | 7C 00 1B 78 */	or r0, r0, r3
/* 814C8DD8 | 54 00 0F FE */	srwi r0, r0, 31
.L_814C8DDC:
/* 814C8DDC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C8DE0 | 41 82 00 0C */	beq .L_814C8DEC
/* 814C8DE4 | 38 60 00 13 */	li r3, 0x13
/* 814C8DE8 | 48 00 00 34 */	b .L_814C8E1C
.L_814C8DEC:
/* 814C8DEC | 83 E1 02 BC */	lwz r31, 0x2bc(r1)
/* 814C8DF0 | 38 61 00 88 */	addi r3, r1, 0x88
/* 814C8DF4 | 38 81 00 18 */	addi r4, r1, 0x18
/* 814C8DF8 | 4B FF 69 C1 */	bl VFiPFENT_RemoveEntry
/* 814C8DFC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8E00 | 41 82 00 08 */	beq .L_814C8E08
/* 814C8E04 | 48 00 00 18 */	b .L_814C8E1C
.L_814C8E08:
/* 814C8E08 | 80 C1 02 B0 */	lwz r6, 0x2b0(r1)
/* 814C8E0C | 7F E4 FB 78 */	mr r4, r31
/* 814C8E10 | 38 61 00 20 */	addi r3, r1, 0x20
/* 814C8E14 | 38 A0 FF FF */	li r5, -0x1
/* 814C8E18 | 4B FF B3 01 */	bl VFiPFFAT_FreeChain
.L_814C8E1C:
/* 814C8E1C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8E20 | 41 82 00 18 */	beq .L_814C8E38
/* 814C8E24 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8E28 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8E2C | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8E30 | 90 7E 18 54 */	stw r3, 0x1854(r30)
/* 814C8E34 | 48 00 00 4C */	b .L_814C8E80
.L_814C8E38:
/* 814C8E38 | 7F C3 F3 78 */	mr r3, r30
/* 814C8E3C | 38 80 00 00 */	li r4, 0x0
/* 814C8E40 | 4B FF 36 25 */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814C8E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8E48 | 41 82 00 18 */	beq .L_814C8E60
/* 814C8E4C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8E50 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8E54 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8E58 | 90 7E 18 54 */	stw r3, 0x1854(r30)
/* 814C8E5C | 48 00 00 24 */	b .L_814C8E80
.L_814C8E60:
/* 814C8E60 | 7F C3 F3 78 */	mr r3, r30
/* 814C8E64 | 4B FF 34 A9 */	bl VFiPFCACHE_FlushFATCache
/* 814C8E68 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8E6C | 41 82 00 14 */	beq .L_814C8E80
/* 814C8E70 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8E74 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8E78 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8E7C | 90 7E 18 54 */	stw r3, 0x1854(r30)
.L_814C8E80:
/* 814C8E80 | 80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 814C8E84 | 83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 814C8E88 | 83 C1 02 D8 */	lwz r30, 0x2d8(r1)
/* 814C8E8C | 83 A1 02 D4 */	lwz r29, 0x2d4(r1)
/* 814C8E90 | 7C 08 03 A6 */	mtlr r0
/* 814C8E94 | 38 21 02 E0 */	addi r1, r1, 0x2e0
/* 814C8E98 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_remove

# .text:0x275C | 0x814C8E9C | size: 0x148
.fn VFiPFFILE_fopen, global
/* 814C8E9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C8EA0 | 7C 08 02 A6 */	mflr r0
/* 814C8EA4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C8EA8 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C8EAC | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C8EB0 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C8EB4 | 7C BE 2B 78 */	mr r30, r5
/* 814C8EB8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C8EBC | 7C 9D 23 78 */	mr r29, r4
/* 814C8EC0 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C8EC4 | 7C 7C 1B 78 */	mr r28, r3
/* 814C8EC8 | 40 82 00 1C */	bne .L_814C8EE4
/* 814C8ECC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8ED0 | 38 00 00 0A */	li r0, 0xa
/* 814C8ED4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8ED8 | 38 60 00 0A */	li r3, 0xa
/* 814C8EDC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8EE0 | 48 00 00 E4 */	b .L_814C8FC4
.L_814C8EE4:
/* 814C8EE4 | 38 00 00 00 */	li r0, 0x0
/* 814C8EE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8EEC | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814C8EF0 | 40 82 00 1C */	bne .L_814C8F0C
/* 814C8EF4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8EF8 | 38 00 00 0A */	li r0, 0xa
/* 814C8EFC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8F00 | 38 60 00 0A */	li r3, 0xa
/* 814C8F04 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8F08 | 48 00 00 BC */	b .L_814C8FC4
.L_814C8F0C:
/* 814C8F0C | 48 00 1F A1 */	bl VFiPFPATH_GetVolumeFromPath
/* 814C8F10 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8F14 | 7C 7F 1B 78 */	mr r31, r3
/* 814C8F18 | 40 82 00 1C */	bne .L_814C8F34
/* 814C8F1C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8F20 | 38 00 00 0A */	li r0, 0xa
/* 814C8F24 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8F28 | 38 60 00 0A */	li r3, 0xa
/* 814C8F2C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8F30 | 48 00 00 94 */	b .L_814C8FC4
.L_814C8F34:
/* 814C8F34 | 48 00 46 C5 */	bl VFiPFVOL_CheckForRead
/* 814C8F38 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8F3C | 41 82 00 18 */	beq .L_814C8F54
/* 814C8F40 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8F44 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8F48 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8F4C | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814C8F50 | 48 00 00 74 */	b .L_814C8FC4
.L_814C8F54:
/* 814C8F54 | 7F E3 FB 78 */	mr r3, r31
/* 814C8F58 | 4B FE D7 21 */	bl VFiPFDRV_IsWProtected
/* 814C8F5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8F60 | 41 82 00 28 */	beq .L_814C8F88
/* 814C8F64 | 28 1D 00 02 */	cmplwi r29, 0x2
/* 814C8F68 | 41 82 00 20 */	beq .L_814C8F88
/* 814C8F6C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8F70 | 38 00 00 0B */	li r0, 0xb
/* 814C8F74 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8F78 | 38 60 00 0B */	li r3, 0xb
/* 814C8F7C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C8F80 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C8F84 | 48 00 00 40 */	b .L_814C8FC4
.L_814C8F88:
/* 814C8F88 | 7F E3 FB 78 */	mr r3, r31
/* 814C8F8C | 7F 84 E3 78 */	mr r4, r28
/* 814C8F90 | 7F A5 EB 78 */	mr r5, r29
/* 814C8F94 | 7F C6 F3 78 */	mr r6, r30
/* 814C8F98 | 4B FF EF D1 */	bl VFiPFFILE_p_fopen
/* 814C8F9C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C8FA0 | 41 82 00 18 */	beq .L_814C8FB8
/* 814C8FA4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8FA8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8FAC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C8FB0 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814C8FB4 | 48 00 00 10 */	b .L_814C8FC4
.L_814C8FB8:
/* 814C8FB8 | 80 9F 15 C8 */	lwz r4, 0x15c8(r31)
/* 814C8FBC | 38 04 00 01 */	addi r0, r4, 0x1
/* 814C8FC0 | 90 1F 15 C8 */	stw r0, 0x15c8(r31)
.L_814C8FC4:
/* 814C8FC4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C8FC8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C8FCC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C8FD0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C8FD4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C8FD8 | 7C 08 03 A6 */	mtlr r0
/* 814C8FDC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C8FE0 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_fopen

# .text:0x28A4 | 0x814C8FE4 | size: 0x380
.fn VFiPFFILE_fclose, global
/* 814C8FE4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C8FE8 | 7C 08 02 A6 */	mflr r0
/* 814C8FEC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C8FF0 | 38 A0 00 01 */	li r5, 0x1
/* 814C8FF4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C8FF8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C8FFC | 7C 04 18 40 */	cmplw r4, r3
/* 814C9000 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C9004 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C9008 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C900C | 7C 7D 1B 78 */	mr r29, r3
/* 814C9010 | 41 81 00 28 */	bgt .L_814C9038
/* 814C9014 | 3C 84 00 02 */	addis r4, r4, 0x2
/* 814C9018 | 38 04 7D 48 */	addi r0, r4, 0x7d48
/* 814C901C | 7C 00 18 40 */	cmplw r0, r3
/* 814C9020 | 41 80 00 18 */	blt .L_814C9038
/* 814C9024 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9028 | 54 04 00 84 */	rlwinm r4, r0, 0, 2, 2
/* 814C902C | 3C 04 E0 00 */	subis r0, r4, 0x2000
/* 814C9030 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814C9034 | 41 82 00 08 */	beq .L_814C903C
.L_814C9038:
/* 814C9038 | 38 A0 00 00 */	li r5, 0x0
.L_814C903C:
/* 814C903C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C9040 | 40 82 00 1C */	bne .L_814C905C
/* 814C9044 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9048 | 38 00 00 0A */	li r0, 0xa
/* 814C904C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9050 | 38 60 00 0A */	li r3, 0xa
/* 814C9054 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9058 | 48 00 02 F0 */	b .L_814C9348
.L_814C905C:
/* 814C905C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9060 | 40 82 00 0C */	bne .L_814C906C
/* 814C9064 | 3B E0 00 00 */	li r31, 0x0
/* 814C9068 | 48 00 00 0C */	b .L_814C9074
.L_814C906C:
/* 814C906C | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C9070 | 83 E3 02 64 */	lwz r31, 0x264(r3)
.L_814C9074:
/* 814C9074 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C9078 | 40 82 00 1C */	bne .L_814C9094
/* 814C907C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9080 | 38 00 00 0A */	li r0, 0xa
/* 814C9084 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9088 | 38 60 00 0A */	li r3, 0xa
/* 814C908C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9090 | 48 00 02 B8 */	b .L_814C9348
.L_814C9094:
/* 814C9094 | 7F E3 FB 78 */	mr r3, r31
/* 814C9098 | 48 00 45 61 */	bl VFiPFVOL_CheckForRead
/* 814C909C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C90A0 | 7C 7E 1B 78 */	mr r30, r3
/* 814C90A4 | 41 82 00 18 */	beq .L_814C90BC
/* 814C90A8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C90AC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C90B0 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C90B4 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814C90B8 | 48 00 02 90 */	b .L_814C9348
.L_814C90BC:
/* 814C90BC | 7F E3 FB 78 */	mr r3, r31
/* 814C90C0 | 4B FE D5 B9 */	bl VFiPFDRV_IsWProtected
/* 814C90C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C90C8 | 41 82 00 18 */	beq .L_814C90E0
/* 814C90CC | 80 1D 00 04 */	lwz r0, 0x4(r29)
/* 814C90D0 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814C90D4 | 41 82 00 0C */	beq .L_814C90E0
/* 814C90D8 | 38 60 00 0B */	li r3, 0xb
/* 814C90DC | 48 00 02 6C */	b .L_814C9348
.L_814C90E0:
/* 814C90E0 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C90E4 | 41 82 00 34 */	beq .L_814C9118
/* 814C90E8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C90EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C90F0 | 41 82 00 28 */	beq .L_814C9118
/* 814C90F4 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814C90F8 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C90FC | 41 82 00 1C */	beq .L_814C9118
/* 814C9100 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9104 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814C9108 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814C910C | 41 86 00 0C */	beq cr1, .L_814C9118
/* 814C9110 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C9114 | 40 82 00 20 */	bne .L_814C9134
.L_814C9118:
/* 814C9118 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C911C | 38 00 00 0A */	li r0, 0xa
/* 814C9120 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9124 | 38 60 00 0A */	li r3, 0xa
/* 814C9128 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C912C | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C9130 | 48 00 02 18 */	b .L_814C9348
.L_814C9134:
/* 814C9134 | 41 86 00 08 */	beq cr1, .L_814C913C
/* 814C9138 | 40 82 00 20 */	bne .L_814C9158
.L_814C913C:
/* 814C913C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9140 | 38 00 00 0A */	li r0, 0xa
/* 814C9144 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9148 | 38 60 00 0A */	li r3, 0xa
/* 814C914C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9150 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C9154 | 48 00 01 F4 */	b .L_814C9348
.L_814C9158:
/* 814C9158 | 93 BF 15 F0 */	stw r29, 0x15f0(r31)
/* 814C915C | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9160 | A0 64 02 88 */	lhz r3, 0x288(r4)
/* 814C9164 | 34 03 FF FF */	subic. r0, r3, 0x1
/* 814C9168 | 41 81 00 50 */	bgt .L_814C91B8
/* 814C916C | 88 04 02 54 */	lbz r0, 0x254(r4)
/* 814C9170 | 70 00 00 19 */	andi. r0, r0, 0x19
/* 814C9174 | 40 82 00 44 */	bne .L_814C91B8
/* 814C9178 | 7F E3 FB 78 */	mr r3, r31
/* 814C917C | 4B FE D4 FD */	bl VFiPFDRV_IsWProtected
/* 814C9180 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9184 | 40 82 00 34 */	bne .L_814C91B8
/* 814C9188 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C918C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9190 | 54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 814C9194 | 40 82 00 14 */	bne .L_814C91A8
/* 814C9198 | 80 1F 18 5C */	lwz r0, 0x185c(r31)
/* 814C919C | 54 00 07 FE */	clrlwi r0, r0, 31
/* 814C91A0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814C91A4 | 41 82 00 14 */	beq .L_814C91B8
.L_814C91A8:
/* 814C91A8 | 38 63 00 38 */	addi r3, r3, 0x38
/* 814C91AC | 38 80 00 01 */	li r4, 0x1
/* 814C91B0 | 4B FF 61 25 */	bl VFiPFENT_UpdateSFNEntry
/* 814C91B4 | 7C 7E 1B 78 */	mr r30, r3
.L_814C91B8:
/* 814C91B8 | A0 9D 00 30 */	lhz r4, 0x30(r29)
/* 814C91BC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C91C0 | 41 82 00 94 */	beq .L_814C9254
/* 814C91C4 | 80 BD 00 08 */	lwz r5, 0x8(r29)
/* 814C91C8 | A0 05 02 78 */	lhz r0, 0x278(r5)
/* 814C91CC | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C91D0 | 41 82 00 44 */	beq .L_814C9214
/* 814C91D4 | A0 65 02 7A */	lhz r3, 0x27a(r5)
/* 814C91D8 | 38 00 00 00 */	li r0, 0x0
/* 814C91DC | 7C 64 18 50 */	subf r3, r4, r3
/* 814C91E0 | B0 65 02 7A */	sth r3, 0x27a(r5)
/* 814C91E4 | B0 1D 00 30 */	sth r0, 0x30(r29)
/* 814C91E8 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C91EC | A0 03 02 7A */	lhz r0, 0x27a(r3)
/* 814C91F0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C91F4 | 40 82 00 0C */	bne .L_814C9200
/* 814C91F8 | 7F A3 EB 78 */	mr r3, r29
/* 814C91FC | 48 00 6A BD */	bl VFiPF_UnLockFile
.L_814C9200:
/* 814C9200 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C9204 | A0 03 02 78 */	lhz r0, 0x278(r3)
/* 814C9208 | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814C920C | B0 03 02 78 */	sth r0, 0x278(r3)
/* 814C9210 | 48 00 00 44 */	b .L_814C9254
.L_814C9214:
/* 814C9214 | 80 05 02 80 */	lwz r0, 0x280(r5)
/* 814C9218 | 7C 00 E8 40 */	cmplw r0, r29
/* 814C921C | 41 82 00 0C */	beq .L_814C9228
/* 814C9220 | 3B C0 00 19 */	li r30, 0x19
/* 814C9224 | 48 00 00 30 */	b .L_814C9254
.L_814C9228:
/* 814C9228 | 38 00 00 00 */	li r0, 0x0
/* 814C922C | 7F A3 EB 78 */	mr r3, r29
/* 814C9230 | B0 05 02 7A */	sth r0, 0x27a(r5)
/* 814C9234 | B0 1D 00 30 */	sth r0, 0x30(r29)
/* 814C9238 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C923C | 90 04 02 80 */	stw r0, 0x280(r4)
/* 814C9240 | 48 00 6A 79 */	bl VFiPF_UnLockFile
/* 814C9244 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C9248 | A0 03 02 78 */	lhz r0, 0x278(r3)
/* 814C924C | 54 00 04 3A */	rlwinm r0, r0, 0, 16, 29
/* 814C9250 | B0 03 02 78 */	sth r0, 0x278(r3)
.L_814C9254:
/* 814C9254 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C9258 | 41 82 00 24 */	beq .L_814C927C
/* 814C925C | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C9260 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C9264 | 93 C3 00 1C */	stw r30, 0x1c(r3)
/* 814C9268 | 80 7D 00 08 */	lwz r3, 0x8(r29)
/* 814C926C | 80 63 00 34 */	lwz r3, 0x34(r3)
/* 814C9270 | 93 C3 18 54 */	stw r30, 0x1854(r3)
/* 814C9274 | 93 DD 00 1C */	stw r30, 0x1c(r29)
/* 814C9278 | 48 00 00 C4 */	b .L_814C933C
.L_814C927C:
/* 814C927C | 80 1F 15 D0 */	lwz r0, 0x15d0(r31)
/* 814C9280 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C9284 | 41 82 00 6C */	beq .L_814C92F0
/* 814C9288 | 7F E3 FB 78 */	mr r3, r31
/* 814C928C | 4B FF 30 81 */	bl VFiPFCACHE_FlushFATCache
/* 814C9290 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9294 | 7C 7E 1B 78 */	mr r30, r3
/* 814C9298 | 41 82 00 24 */	beq .L_814C92BC
/* 814C929C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C92A0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C92A4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C92A8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C92AC | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C92B0 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C92B4 | 90 7D 00 1C */	stw r3, 0x1c(r29)
/* 814C92B8 | 48 00 00 38 */	b .L_814C92F0
.L_814C92BC:
/* 814C92BC | 7F E3 FB 78 */	mr r3, r31
/* 814C92C0 | 7F A4 EB 78 */	mr r4, r29
/* 814C92C4 | 4B FF 31 A1 */	bl VFiPFCACHE_FlushDataCacheSpecific
/* 814C92C8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C92CC | 7C 7E 1B 78 */	mr r30, r3
/* 814C92D0 | 41 82 00 20 */	beq .L_814C92F0
/* 814C92D4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C92D8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C92DC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C92E0 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C92E4 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C92E8 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C92EC | 90 7D 00 1C */	stw r3, 0x1c(r29)
.L_814C92F0:
/* 814C92F0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C92F4 | 40 82 00 48 */	bne .L_814C933C
/* 814C92F8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C92FC | A0 64 02 88 */	lhz r3, 0x288(r4)
/* 814C9300 | 38 63 FF FF */	subi r3, r3, 0x1
/* 814C9304 | 54 60 04 3F */	clrlwi. r0, r3, 16
/* 814C9308 | B0 64 02 88 */	sth r3, 0x288(r4)
/* 814C930C | 40 82 00 18 */	bne .L_814C9324
/* 814C9310 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814C9314 | 38 00 00 00 */	li r0, 0x0
/* 814C9318 | 54 63 00 3C */	clrrwi r3, r3, 1
/* 814C931C | 90 64 00 00 */	stw r3, 0x0(r4)
/* 814C9320 | 90 04 00 1C */	stw r0, 0x1c(r4)
.L_814C9324:
/* 814C9324 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814C9328 | 54 00 00 3C */	clrrwi r0, r0, 1
/* 814C932C | 90 1D 00 00 */	stw r0, 0x0(r29)
/* 814C9330 | 80 7F 15 C8 */	lwz r3, 0x15c8(r31)
/* 814C9334 | 38 03 FF FF */	subi r0, r3, 0x1
/* 814C9338 | 90 1F 15 C8 */	stw r0, 0x15c8(r31)
.L_814C933C:
/* 814C933C | 38 00 00 00 */	li r0, 0x0
/* 814C9340 | 7F C3 F3 78 */	mr r3, r30
/* 814C9344 | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
.L_814C9348:
/* 814C9348 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C934C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C9350 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C9354 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C9358 | 7C 08 03 A6 */	mtlr r0
/* 814C935C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C9360 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_fclose

# .text:0x2C24 | 0x814C9364 | size: 0x23C
.fn VFiPFFILE_fread, global
/* 814C9364 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C9368 | 7C 08 02 A6 */	mflr r0
/* 814C936C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C9370 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C9374 | 48 13 01 49 */	bl _savegpr_26
/* 814C9378 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C937C | 7C 7B 1B 78 */	mr r27, r3
/* 814C9380 | 7C 9C 23 78 */	mr r28, r4
/* 814C9384 | 7C BD 2B 78 */	mr r29, r5
/* 814C9388 | 7C DE 33 78 */	mr r30, r6
/* 814C938C | 7C FF 3B 78 */	mr r31, r7
/* 814C9390 | 40 82 00 1C */	bne .L_814C93AC
/* 814C9394 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9398 | 38 00 00 0A */	li r0, 0xa
/* 814C939C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C93A0 | 38 60 00 0A */	li r3, 0xa
/* 814C93A4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C93A8 | 48 00 01 E0 */	b .L_814C9588
.L_814C93AC:
/* 814C93AC | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C93B0 | 38 00 00 00 */	li r0, 0x0
/* 814C93B4 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C93B8 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C93BC | 7C 03 30 40 */	cmplw r3, r6
/* 814C93C0 | 38 80 00 01 */	li r4, 0x1
/* 814C93C4 | 41 81 00 28 */	bgt .L_814C93EC
/* 814C93C8 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 814C93CC | 38 03 7D 48 */	addi r0, r3, 0x7d48
/* 814C93D0 | 7C 00 30 40 */	cmplw r0, r6
/* 814C93D4 | 41 80 00 18 */	blt .L_814C93EC
/* 814C93D8 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814C93DC | 54 03 00 84 */	rlwinm r3, r0, 0, 2, 2
/* 814C93E0 | 3C 03 E0 00 */	subis r0, r3, 0x2000
/* 814C93E4 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814C93E8 | 41 82 00 08 */	beq .L_814C93F0
.L_814C93EC:
/* 814C93EC | 38 80 00 00 */	li r4, 0x0
.L_814C93F0:
/* 814C93F0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C93F4 | 40 82 00 1C */	bne .L_814C9410
/* 814C93F8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C93FC | 38 00 00 0A */	li r0, 0xa
/* 814C9400 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9404 | 38 60 00 0A */	li r3, 0xa
/* 814C9408 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C940C | 48 00 01 7C */	b .L_814C9588
.L_814C9410:
/* 814C9410 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C9414 | 40 82 00 0C */	bne .L_814C9420
/* 814C9418 | 3B 40 00 00 */	li r26, 0x0
/* 814C941C | 48 00 00 0C */	b .L_814C9428
.L_814C9420:
/* 814C9420 | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814C9424 | 83 43 02 64 */	lwz r26, 0x264(r3)
.L_814C9428:
/* 814C9428 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C942C | 40 82 00 2C */	bne .L_814C9458
/* 814C9430 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9434 | 38 00 00 26 */	li r0, 0x26
/* 814C9438 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C943C | 38 60 00 26 */	li r3, 0x26
/* 814C9440 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9444 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 814C9448 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C944C | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C9450 | 90 06 00 1C */	stw r0, 0x1c(r6)
/* 814C9454 | 48 00 01 34 */	b .L_814C9588
.L_814C9458:
/* 814C9458 | 7F 43 D3 78 */	mr r3, r26
/* 814C945C | 48 00 41 9D */	bl VFiPFVOL_CheckForRead
/* 814C9460 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9464 | 41 82 00 18 */	beq .L_814C947C
/* 814C9468 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C946C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9470 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C9474 | 90 7A 18 54 */	stw r3, 0x1854(r26)
/* 814C9478 | 48 00 01 10 */	b .L_814C9588
.L_814C947C:
/* 814C947C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C9480 | 41 82 00 34 */	beq .L_814C94B4
/* 814C9484 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C9488 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C948C | 41 82 00 28 */	beq .L_814C94B4
/* 814C9490 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C9494 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C9498 | 41 82 00 1C */	beq .L_814C94B4
/* 814C949C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C94A0 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814C94A4 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814C94A8 | 41 86 00 0C */	beq cr1, .L_814C94B4
/* 814C94AC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C94B0 | 40 82 00 20 */	bne .L_814C94D0
.L_814C94B4:
/* 814C94B4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C94B8 | 38 00 00 26 */	li r0, 0x26
/* 814C94BC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C94C0 | 38 60 00 26 */	li r3, 0x26
/* 814C94C4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C94C8 | 90 1A 18 54 */	stw r0, 0x1854(r26)
/* 814C94CC | 48 00 00 BC */	b .L_814C9588
.L_814C94D0:
/* 814C94D0 | 41 86 00 08 */	beq cr1, .L_814C94D8
/* 814C94D4 | 40 82 00 20 */	bne .L_814C94F4
.L_814C94D8:
/* 814C94D8 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C94DC | 38 00 00 26 */	li r0, 0x26
/* 814C94E0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C94E4 | 38 60 00 26 */	li r3, 0x26
/* 814C94E8 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C94EC | 90 1A 18 54 */	stw r0, 0x1854(r26)
/* 814C94F0 | 48 00 00 98 */	b .L_814C9588
.L_814C94F4:
/* 814C94F4 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C94F8 | 41 82 00 14 */	beq .L_814C950C
/* 814C94FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9500 | 41 82 00 0C */	beq .L_814C950C
/* 814C9504 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C9508 | 40 82 00 2C */	bne .L_814C9534
.L_814C950C:
/* 814C950C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9510 | 38 00 00 0A */	li r0, 0xa
/* 814C9514 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9518 | 38 60 00 0A */	li r3, 0xa
/* 814C951C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9520 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C9524 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9528 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C952C | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 814C9530 | 48 00 00 58 */	b .L_814C9588
.L_814C9534:
/* 814C9534 | 93 DA 15 F0 */	stw r30, 0x15f0(r26)
/* 814C9538 | 7F 43 D3 78 */	mr r3, r26
/* 814C953C | 7F 64 DB 78 */	mr r4, r27
/* 814C9540 | 7F 85 E3 78 */	mr r5, r28
/* 814C9544 | 7F A6 EB 78 */	mr r6, r29
/* 814C9548 | 7F C7 F3 78 */	mr r7, r30
/* 814C954C | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C9550 | 4B FF EF 91 */	bl VFiPFFILE_p_fread
/* 814C9554 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C9558 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C955C | 38 00 00 00 */	li r0, 0x0
/* 814C9560 | 90 9F 00 00 */	stw r4, 0x0(r31)
/* 814C9564 | 90 1A 15 F0 */	stw r0, 0x15f0(r26)
/* 814C9568 | 41 82 00 20 */	beq .L_814C9588
/* 814C956C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9570 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9574 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C9578 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C957C | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9580 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C9584 | 90 7E 00 1C */	stw r3, 0x1c(r30)
.L_814C9588:
/* 814C9588 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C958C | 48 12 FF 7D */	bl _restgpr_26
/* 814C9590 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C9594 | 7C 08 03 A6 */	mtlr r0
/* 814C9598 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C959C | 4E 80 00 20 */	blr
.endfn VFiPFFILE_fread

# .text:0x2E60 | 0x814C95A0 | size: 0x2A0
.fn VFiPFFILE_fwrite, global
/* 814C95A0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C95A4 | 7C 08 02 A6 */	mflr r0
/* 814C95A8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C95AC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C95B0 | 48 12 FF 0D */	bl _savegpr_26
/* 814C95B4 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814C95B8 | 7C 7A 1B 78 */	mr r26, r3
/* 814C95BC | 7C 9B 23 78 */	mr r27, r4
/* 814C95C0 | 7C BE 2B 78 */	mr r30, r5
/* 814C95C4 | 7C DC 33 78 */	mr r28, r6
/* 814C95C8 | 7C FD 3B 78 */	mr r29, r7
/* 814C95CC | 40 82 00 1C */	bne .L_814C95E8
/* 814C95D0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C95D4 | 38 00 00 0A */	li r0, 0xa
/* 814C95D8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C95DC | 38 60 00 0A */	li r3, 0xa
/* 814C95E0 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C95E4 | 48 00 02 44 */	b .L_814C9828
.L_814C95E8:
/* 814C95E8 | 3C 60 81 0D */	lis r3, VFipf_vol_set_810CD7F0@ha
/* 814C95EC | 38 00 00 00 */	li r0, 0x0
/* 814C95F0 | 38 63 D7 F0 */	addi r3, r3, VFipf_vol_set_810CD7F0@l
/* 814C95F4 | 90 07 00 00 */	stw r0, 0x0(r7)
/* 814C95F8 | 7C 03 30 40 */	cmplw r3, r6
/* 814C95FC | 38 80 00 01 */	li r4, 0x1
/* 814C9600 | 41 81 00 28 */	bgt .L_814C9628
/* 814C9604 | 3C 63 00 02 */	addis r3, r3, 0x2
/* 814C9608 | 38 03 7D 48 */	addi r0, r3, 0x7d48
/* 814C960C | 7C 00 30 40 */	cmplw r0, r6
/* 814C9610 | 41 80 00 18 */	blt .L_814C9628
/* 814C9614 | 80 06 00 00 */	lwz r0, 0x0(r6)
/* 814C9618 | 54 03 00 84 */	rlwinm r3, r0, 0, 2, 2
/* 814C961C | 3C 03 E0 00 */	subis r0, r3, 0x2000
/* 814C9620 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814C9624 | 41 82 00 08 */	beq .L_814C962C
.L_814C9628:
/* 814C9628 | 38 80 00 00 */	li r4, 0x0
.L_814C962C:
/* 814C962C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C9630 | 40 82 00 1C */	bne .L_814C964C
/* 814C9634 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9638 | 38 00 00 0A */	li r0, 0xa
/* 814C963C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9640 | 38 60 00 0A */	li r3, 0xa
/* 814C9644 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9648 | 48 00 01 E0 */	b .L_814C9828
.L_814C964C:
/* 814C964C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C9650 | 40 82 00 0C */	bne .L_814C965C
/* 814C9654 | 3B E0 00 00 */	li r31, 0x0
/* 814C9658 | 48 00 00 0C */	b .L_814C9664
.L_814C965C:
/* 814C965C | 80 66 00 08 */	lwz r3, 0x8(r6)
/* 814C9660 | 83 E3 02 64 */	lwz r31, 0x264(r3)
.L_814C9664:
/* 814C9664 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C9668 | 40 82 00 2C */	bne .L_814C9694
/* 814C966C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9670 | 38 00 00 26 */	li r0, 0x26
/* 814C9674 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9678 | 38 60 00 26 */	li r3, 0x26
/* 814C967C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9680 | 80 86 00 08 */	lwz r4, 0x8(r6)
/* 814C9684 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9688 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C968C | 90 06 00 1C */	stw r0, 0x1c(r6)
/* 814C9690 | 48 00 01 98 */	b .L_814C9828
.L_814C9694:
/* 814C9694 | 7F E3 FB 78 */	mr r3, r31
/* 814C9698 | 48 00 41 1D */	bl VFiPFVOL_CheckForWrite
/* 814C969C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C96A0 | 41 82 00 18 */	beq .L_814C96B8
/* 814C96A4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C96A8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C96AC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C96B0 | 90 7F 18 54 */	stw r3, 0x1854(r31)
/* 814C96B4 | 48 00 01 74 */	b .L_814C9828
.L_814C96B8:
/* 814C96B8 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C96BC | 41 82 00 34 */	beq .L_814C96F0
/* 814C96C0 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C96C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C96C8 | 41 82 00 28 */	beq .L_814C96F0
/* 814C96CC | 80 1C 00 00 */	lwz r0, 0x0(r28)
/* 814C96D0 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C96D4 | 41 82 00 1C */	beq .L_814C96F0
/* 814C96D8 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C96DC | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814C96E0 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814C96E4 | 41 86 00 0C */	beq cr1, .L_814C96F0
/* 814C96E8 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C96EC | 40 82 00 20 */	bne .L_814C970C
.L_814C96F0:
/* 814C96F0 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C96F4 | 38 00 00 26 */	li r0, 0x26
/* 814C96F8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C96FC | 38 60 00 26 */	li r3, 0x26
/* 814C9700 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9704 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C9708 | 48 00 01 20 */	b .L_814C9828
.L_814C970C:
/* 814C970C | 41 86 00 08 */	beq cr1, .L_814C9714
/* 814C9710 | 40 82 00 20 */	bne .L_814C9730
.L_814C9714:
/* 814C9714 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9718 | 38 00 00 26 */	li r0, 0x26
/* 814C971C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9720 | 38 60 00 26 */	li r3, 0x26
/* 814C9724 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9728 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C972C | 48 00 00 FC */	b .L_814C9828
.L_814C9730:
/* 814C9730 | 2C 1A 00 00 */	cmpwi r26, 0x0
/* 814C9734 | 41 82 00 14 */	beq .L_814C9748
/* 814C9738 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C973C | 41 82 00 0C */	beq .L_814C9748
/* 814C9740 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814C9744 | 40 82 00 2C */	bne .L_814C9770
.L_814C9748:
/* 814C9748 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C974C | 38 00 00 0A */	li r0, 0xa
/* 814C9750 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9754 | 38 60 00 0A */	li r3, 0xa
/* 814C9758 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C975C | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814C9760 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9764 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C9768 | 90 1C 00 1C */	stw r0, 0x1c(r28)
/* 814C976C | 48 00 00 BC */	b .L_814C9828
.L_814C9770:
/* 814C9770 | 93 9F 15 F0 */	stw r28, 0x15f0(r31)
/* 814C9774 | 7F E3 FB 78 */	mr r3, r31
/* 814C9778 | 7F 44 D3 78 */	mr r4, r26
/* 814C977C | 7F 65 DB 78 */	mr r5, r27
/* 814C9780 | 7F C6 F3 78 */	mr r6, r30
/* 814C9784 | 7F 87 E3 78 */	mr r7, r28
/* 814C9788 | 39 01 00 08 */	addi r8, r1, 0x8
/* 814C978C | 4B FF EE F5 */	bl VFiPFFILE_p_fwrite
/* 814C9790 | 80 81 00 08 */	lwz r4, 0x8(r1)
/* 814C9794 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9798 | 38 00 00 00 */	li r0, 0x0
/* 814C979C | 7C 7E 1B 78 */	mr r30, r3
/* 814C97A0 | 90 9D 00 00 */	stw r4, 0x0(r29)
/* 814C97A4 | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
/* 814C97A8 | 41 82 00 20 */	beq .L_814C97C8
/* 814C97AC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C97B0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C97B4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C97B8 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814C97BC | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C97C0 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C97C4 | 90 7C 00 1C */	stw r3, 0x1c(r28)
.L_814C97C8:
/* 814C97C8 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814C97CC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814C97D0 | 41 82 00 54 */	beq .L_814C9824
/* 814C97D4 | 80 9C 00 08 */	lwz r4, 0x8(r28)
/* 814C97D8 | 38 64 02 5E */	addi r3, r4, 0x25e
/* 814C97DC | 38 84 02 5C */	addi r4, r4, 0x25c
/* 814C97E0 | 4B FF 61 51 */	bl VFiPFENT_getcurrentDateTimeForEnt
/* 814C97E4 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C97E8 | A0 03 02 5E */	lhz r0, 0x25e(r3)
/* 814C97EC | B0 03 02 5A */	sth r0, 0x25a(r3)
/* 814C97F0 | 80 1F 15 D0 */	lwz r0, 0x15d0(r31)
/* 814C97F4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C97F8 | 41 82 00 1C */	beq .L_814C9814
/* 814C97FC | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C9800 | 38 80 00 01 */	li r4, 0x1
/* 814C9804 | 38 63 00 38 */	addi r3, r3, 0x38
/* 814C9808 | 4B FF 5A CD */	bl VFiPFENT_UpdateSFNEntry
/* 814C980C | 7C 7E 1B 78 */	mr r30, r3
/* 814C9810 | 48 00 00 14 */	b .L_814C9824
.L_814C9814:
/* 814C9814 | 80 7C 00 08 */	lwz r3, 0x8(r28)
/* 814C9818 | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C981C | 60 00 00 04 */	ori r0, r0, 0x4
/* 814C9820 | 90 03 00 00 */	stw r0, 0x0(r3)
.L_814C9824:
/* 814C9824 | 7F C3 F3 78 */	mr r3, r30
.L_814C9828:
/* 814C9828 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814C982C | 48 12 FC DD */	bl _restgpr_26
/* 814C9830 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C9834 | 7C 08 03 A6 */	mtlr r0
/* 814C9838 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C983C | 4E 80 00 20 */	blr
.endfn VFiPFFILE_fwrite

# .text:0x3100 | 0x814C9840 | size: 0x398
.fn VFiPFFILE_fseek, global
/* 814C9840 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814C9844 | 7C 08 02 A6 */	mflr r0
/* 814C9848 | 3C C0 81 0D */	lis r6, VFipf_vol_set_810CD7F0@ha
/* 814C984C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814C9850 | 38 C6 D7 F0 */	addi r6, r6, VFipf_vol_set_810CD7F0@l
/* 814C9854 | 7C 06 18 40 */	cmplw r6, r3
/* 814C9858 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814C985C | 7C BF 2B 78 */	mr r31, r5
/* 814C9860 | 38 A0 00 01 */	li r5, 0x1
/* 814C9864 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814C9868 | 7C 9E 23 78 */	mr r30, r4
/* 814C986C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814C9870 | 7C 7D 1B 78 */	mr r29, r3
/* 814C9874 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814C9878 | 41 81 00 28 */	bgt .L_814C98A0
/* 814C987C | 3C 86 00 02 */	addis r4, r6, 0x2
/* 814C9880 | 38 04 7D 48 */	addi r0, r4, 0x7d48
/* 814C9884 | 7C 00 18 40 */	cmplw r0, r3
/* 814C9888 | 41 80 00 18 */	blt .L_814C98A0
/* 814C988C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9890 | 54 04 00 84 */	rlwinm r4, r0, 0, 2, 2
/* 814C9894 | 3C 04 E0 00 */	subis r0, r4, 0x2000
/* 814C9898 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814C989C | 41 82 00 08 */	beq .L_814C98A4
.L_814C98A0:
/* 814C98A0 | 38 A0 00 00 */	li r5, 0x0
.L_814C98A4:
/* 814C98A4 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814C98A8 | 40 82 00 1C */	bne .L_814C98C4
/* 814C98AC | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C98B0 | 38 00 00 0A */	li r0, 0xa
/* 814C98B4 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C98B8 | 38 60 00 0A */	li r3, 0xa
/* 814C98BC | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C98C0 | 48 00 02 F8 */	b .L_814C9BB8
.L_814C98C4:
/* 814C98C4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C98C8 | 40 82 00 0C */	bne .L_814C98D4
/* 814C98CC | 3B 80 00 00 */	li r28, 0x0
/* 814C98D0 | 48 00 00 0C */	b .L_814C98DC
.L_814C98D4:
/* 814C98D4 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C98D8 | 83 83 02 64 */	lwz r28, 0x264(r3)
.L_814C98DC:
/* 814C98DC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814C98E0 | 40 82 00 1C */	bne .L_814C98FC
/* 814C98E4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C98E8 | 38 00 00 26 */	li r0, 0x26
/* 814C98EC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C98F0 | 38 60 00 26 */	li r3, 0x26
/* 814C98F4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C98F8 | 48 00 02 C0 */	b .L_814C9BB8
.L_814C98FC:
/* 814C98FC | 7F 83 E3 78 */	mr r3, r28
/* 814C9900 | 48 00 3C F9 */	bl VFiPFVOL_CheckForRead
/* 814C9904 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9908 | 41 82 00 18 */	beq .L_814C9920
/* 814C990C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9910 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9914 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C9918 | 90 7C 18 54 */	stw r3, 0x1854(r28)
/* 814C991C | 48 00 02 9C */	b .L_814C9BB8
.L_814C9920:
/* 814C9920 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9924 | 41 82 00 34 */	beq .L_814C9958
/* 814C9928 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C992C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814C9930 | 41 82 00 28 */	beq .L_814C9958
/* 814C9934 | 80 1D 00 00 */	lwz r0, 0x0(r29)
/* 814C9938 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C993C | 41 82 00 1C */	beq .L_814C9958
/* 814C9940 | 80 04 00 00 */	lwz r0, 0x0(r4)
/* 814C9944 | 54 05 07 FE */	clrlwi r5, r0, 31
/* 814C9948 | 2C 85 00 00 */	cmpwi cr1, r5, 0x0
/* 814C994C | 41 86 00 0C */	beq cr1, .L_814C9958
/* 814C9950 | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C9954 | 40 82 00 20 */	bne .L_814C9974
.L_814C9958:
/* 814C9958 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C995C | 38 00 00 26 */	li r0, 0x26
/* 814C9960 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9964 | 38 60 00 26 */	li r3, 0x26
/* 814C9968 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C996C | 90 1C 18 54 */	stw r0, 0x1854(r28)
/* 814C9970 | 48 00 02 48 */	b .L_814C9BB8
.L_814C9974:
/* 814C9974 | 41 86 00 08 */	beq cr1, .L_814C997C
/* 814C9978 | 40 82 00 20 */	bne .L_814C9998
.L_814C997C:
/* 814C997C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9980 | 38 00 00 26 */	li r0, 0x26
/* 814C9984 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9988 | 38 60 00 26 */	li r3, 0x26
/* 814C998C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9990 | 90 1C 18 54 */	stw r0, 0x1854(r28)
/* 814C9994 | 48 00 02 24 */	b .L_814C9BB8
.L_814C9998:
/* 814C9998 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814C999C | 41 82 00 20 */	beq .L_814C99BC
/* 814C99A0 | 40 80 00 10 */	bge .L_814C99B0
/* 814C99A4 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C99A8 | 40 80 00 1C */	bge .L_814C99C4
/* 814C99AC | 48 00 00 28 */	b .L_814C99D4
.L_814C99B0:
/* 814C99B0 | 2C 1F 00 03 */	cmpwi r31, 0x3
/* 814C99B4 | 40 80 00 20 */	bge .L_814C99D4
/* 814C99B8 | 48 00 00 14 */	b .L_814C99CC
.L_814C99BC:
/* 814C99BC | 80 1D 00 20 */	lwz r0, 0x20(r29)
/* 814C99C0 | 48 00 00 3C */	b .L_814C99FC
.L_814C99C4:
/* 814C99C4 | 38 00 00 00 */	li r0, 0x0
/* 814C99C8 | 48 00 00 34 */	b .L_814C99FC
.L_814C99CC:
/* 814C99CC | 80 04 02 60 */	lwz r0, 0x260(r4)
/* 814C99D0 | 48 00 00 2C */	b .L_814C99FC
.L_814C99D4:
/* 814C99D4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C99D8 | 38 00 00 0A */	li r0, 0xa
/* 814C99DC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C99E0 | 38 60 00 0A */	li r3, 0xa
/* 814C99E4 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C99E8 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C99EC | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C99F0 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C99F4 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 814C99F8 | 48 00 01 C0 */	b .L_814C9BB8
.L_814C99FC:
/* 814C99FC | 57 C4 00 01 */	clrrwi. r4, r30, 31
/* 814C9A00 | 41 82 00 48 */	beq .L_814C9A48
/* 814C9A04 | 7F C4 F0 F8 */	nor r4, r30, r30
/* 814C9A08 | 54 84 00 7E */	clrlwi r4, r4, 1
/* 814C9A0C | 38 84 00 01 */	addi r4, r4, 0x1
/* 814C9A10 | 7C 00 20 40 */	cmplw r0, r4
/* 814C9A14 | 40 80 00 2C */	bge .L_814C9A40
/* 814C9A18 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9A1C | 38 00 00 0A */	li r0, 0xa
/* 814C9A20 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9A24 | 38 60 00 0A */	li r3, 0xa
/* 814C9A28 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9A2C | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9A30 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9A34 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C9A38 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 814C9A3C | 48 00 01 7C */	b .L_814C9BB8
.L_814C9A40:
/* 814C9A40 | 7C 04 00 50 */	subf r0, r4, r0
/* 814C9A44 | 48 00 00 3C */	b .L_814C9A80
.L_814C9A48:
/* 814C9A48 | 20 80 FF FF */	subfic r4, r0, -0x1
/* 814C9A4C | 7C 1E 20 40 */	cmplw r30, r4
/* 814C9A50 | 40 81 00 2C */	ble .L_814C9A7C
/* 814C9A54 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9A58 | 38 00 00 25 */	li r0, 0x25
/* 814C9A5C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9A60 | 38 60 00 25 */	li r3, 0x25
/* 814C9A64 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9A68 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9A6C | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9A70 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C9A74 | 90 1D 00 1C */	stw r0, 0x1c(r29)
/* 814C9A78 | 48 00 01 40 */	b .L_814C9BB8
.L_814C9A7C:
/* 814C9A7C | 7C 00 F2 14 */	add r0, r0, r30
.L_814C9A80:
/* 814C9A80 | 38 80 FF FF */	li r4, -0x1
/* 814C9A84 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9A88 | 90 9D 00 24 */	stw r4, 0x24(r29)
/* 814C9A8C | 40 82 00 0C */	bne .L_814C9A98
/* 814C9A90 | 38 A0 00 00 */	li r5, 0x0
/* 814C9A94 | 48 00 00 0C */	b .L_814C9AA0
.L_814C9A98:
/* 814C9A98 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9A9C | 80 A4 02 64 */	lwz r5, 0x264(r4)
.L_814C9AA0:
/* 814C9AA0 | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814C9AA4 | 80 FD 00 20 */	lwz r7, 0x20(r29)
/* 814C9AA8 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C9AAC | 88 C5 00 20 */	lbz r6, 0x20(r5)
/* 814C9AB0 | 7C E5 20 38 */	and r5, r7, r4
/* 814C9AB4 | 7C 85 00 D0 */	neg r4, r5
/* 814C9AB8 | 7C E6 34 30 */	srw r6, r7, r6
/* 814C9ABC | 7C 84 2B 78 */	or r4, r4, r5
/* 814C9AC0 | 54 84 0F FE */	srwi r4, r4, 31
/* 814C9AC4 | 7C 86 22 15 */	add. r4, r6, r4
/* 814C9AC8 | 41 82 00 0C */	beq .L_814C9AD4
/* 814C9ACC | 38 80 FF FF */	li r4, -0x1
/* 814C9AD0 | 90 9D 00 24 */	stw r4, 0x24(r29)
.L_814C9AD4:
/* 814C9AD4 | 38 80 00 00 */	li r4, 0x0
/* 814C9AD8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9ADC | 90 9D 00 20 */	stw r4, 0x20(r29)
/* 814C9AE0 | 40 82 00 0C */	bne .L_814C9AEC
/* 814C9AE4 | 38 C0 00 00 */	li r6, 0x0
/* 814C9AE8 | 48 00 00 0C */	b .L_814C9AF4
.L_814C9AEC:
/* 814C9AEC | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9AF0 | 80 C4 02 64 */	lwz r6, 0x264(r4)
.L_814C9AF4:
/* 814C9AF4 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 814C9AF8 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9AFC | 88 86 00 20 */	lbz r4, 0x20(r6)
/* 814C9B00 | 7C A4 24 30 */	srw r4, r5, r4
/* 814C9B04 | 90 9D 00 28 */	stw r4, 0x28(r29)
/* 814C9B08 | A0 86 00 00 */	lhz r4, 0x0(r6)
/* 814C9B0C | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C9B10 | 7C A4 20 38 */	and r4, r5, r4
/* 814C9B14 | B0 9D 00 2C */	sth r4, 0x2c(r29)
/* 814C9B18 | 40 82 00 0C */	bne .L_814C9B24
/* 814C9B1C | 38 A0 00 00 */	li r5, 0x0
/* 814C9B20 | 48 00 00 0C */	b .L_814C9B2C
.L_814C9B24:
/* 814C9B24 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9B28 | 80 A4 02 64 */	lwz r5, 0x264(r4)
.L_814C9B2C:
/* 814C9B2C | A0 85 00 00 */	lhz r4, 0x0(r5)
/* 814C9B30 | 80 DD 00 20 */	lwz r6, 0x20(r29)
/* 814C9B34 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814C9B38 | 89 45 00 20 */	lbz r10, 0x20(r5)
/* 814C9B3C | 7C C9 20 38 */	and r9, r6, r4
/* 814C9B40 | 7C 05 20 38 */	and r5, r0, r4
/* 814C9B44 | 7C C7 54 30 */	srw r7, r6, r10
/* 814C9B48 | 7D 09 00 D0 */	neg r8, r9
/* 814C9B4C | 7C 06 54 30 */	srw r6, r0, r10
/* 814C9B50 | 7C 85 00 D0 */	neg r4, r5
/* 814C9B54 | 7C 84 2B 78 */	or r4, r4, r5
/* 814C9B58 | 7D 08 4B 78 */	or r8, r8, r9
/* 814C9B5C | 55 05 0F FE */	srwi r5, r8, 31
/* 814C9B60 | 54 84 0F FE */	srwi r4, r4, 31
/* 814C9B64 | 7C A7 2A 14 */	add r5, r7, r5
/* 814C9B68 | 7C 86 22 14 */	add r4, r6, r4
/* 814C9B6C | 7C 05 20 40 */	cmplw r5, r4
/* 814C9B70 | 41 82 00 0C */	beq .L_814C9B7C
/* 814C9B74 | 38 80 FF FF */	li r4, -0x1
/* 814C9B78 | 90 9D 00 24 */	stw r4, 0x24(r29)
.L_814C9B7C:
/* 814C9B7C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9B80 | 90 1D 00 20 */	stw r0, 0x20(r29)
/* 814C9B84 | 40 82 00 0C */	bne .L_814C9B90
/* 814C9B88 | 38 80 00 00 */	li r4, 0x0
/* 814C9B8C | 48 00 00 0C */	b .L_814C9B98
.L_814C9B90:
/* 814C9B90 | 80 9D 00 08 */	lwz r4, 0x8(r29)
/* 814C9B94 | 80 84 02 64 */	lwz r4, 0x264(r4)
.L_814C9B98:
/* 814C9B98 | 80 BD 00 20 */	lwz r5, 0x20(r29)
/* 814C9B9C | 88 04 00 20 */	lbz r0, 0x20(r4)
/* 814C9BA0 | 7C A0 04 30 */	srw r0, r5, r0
/* 814C9BA4 | 90 1D 00 28 */	stw r0, 0x28(r29)
/* 814C9BA8 | A0 84 00 00 */	lhz r4, 0x0(r4)
/* 814C9BAC | 38 04 FF FF */	subi r0, r4, 0x1
/* 814C9BB0 | 7C A0 00 38 */	and r0, r5, r0
/* 814C9BB4 | B0 1D 00 2C */	sth r0, 0x2c(r29)
.L_814C9BB8:
/* 814C9BB8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814C9BBC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814C9BC0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814C9BC4 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814C9BC8 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814C9BCC | 7C 08 03 A6 */	mtlr r0
/* 814C9BD0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814C9BD4 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_fseek

# .text:0x3498 | 0x814C9BD8 | size: 0x24C
.fn VFiPFFILE_finfo, global
/* 814C9BD8 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814C9BDC | 7C 08 02 A6 */	mflr r0
/* 814C9BE0 | 3C A0 81 0D */	lis r5, VFipf_vol_set_810CD7F0@ha
/* 814C9BE4 | 38 C0 00 01 */	li r6, 0x1
/* 814C9BE8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814C9BEC | 38 A5 D7 F0 */	addi r5, r5, VFipf_vol_set_810CD7F0@l
/* 814C9BF0 | 7C 05 18 40 */	cmplw r5, r3
/* 814C9BF4 | 93 E1 00 2C */	stw r31, 0x2c(r1)
/* 814C9BF8 | 93 C1 00 28 */	stw r30, 0x28(r1)
/* 814C9BFC | 7C 7E 1B 78 */	mr r30, r3
/* 814C9C00 | 93 A1 00 24 */	stw r29, 0x24(r1)
/* 814C9C04 | 7C 9D 23 78 */	mr r29, r4
/* 814C9C08 | 41 81 00 28 */	bgt .L_814C9C30
/* 814C9C0C | 3C 85 00 02 */	addis r4, r5, 0x2
/* 814C9C10 | 38 04 7D 48 */	addi r0, r4, 0x7d48
/* 814C9C14 | 7C 00 18 40 */	cmplw r0, r3
/* 814C9C18 | 41 80 00 18 */	blt .L_814C9C30
/* 814C9C1C | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9C20 | 54 04 00 84 */	rlwinm r4, r0, 0, 2, 2
/* 814C9C24 | 3C 04 E0 00 */	subis r0, r4, 0x2000
/* 814C9C28 | 28 00 00 00 */	cmplwi r0, 0x0
/* 814C9C2C | 41 82 00 08 */	beq .L_814C9C34
.L_814C9C30:
/* 814C9C30 | 38 C0 00 00 */	li r6, 0x0
.L_814C9C34:
/* 814C9C34 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814C9C38 | 40 82 00 1C */	bne .L_814C9C54
/* 814C9C3C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9C40 | 38 00 00 0A */	li r0, 0xa
/* 814C9C44 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9C48 | 38 60 00 0A */	li r3, 0xa
/* 814C9C4C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9C50 | 48 00 01 B8 */	b .L_814C9E08
.L_814C9C54:
/* 814C9C54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9C58 | 40 82 00 0C */	bne .L_814C9C64
/* 814C9C5C | 3B E0 00 00 */	li r31, 0x0
/* 814C9C60 | 48 00 00 0C */	b .L_814C9C6C
.L_814C9C64:
/* 814C9C64 | 80 63 00 08 */	lwz r3, 0x8(r3)
/* 814C9C68 | 83 E3 02 64 */	lwz r31, 0x264(r3)
.L_814C9C6C:
/* 814C9C6C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814C9C70 | 40 82 00 1C */	bne .L_814C9C8C
/* 814C9C74 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9C78 | 38 00 00 26 */	li r0, 0x26
/* 814C9C7C | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9C80 | 38 60 00 26 */	li r3, 0x26
/* 814C9C84 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9C88 | 48 00 01 80 */	b .L_814C9E08
.L_814C9C8C:
/* 814C9C8C | 7F E3 FB 78 */	mr r3, r31
/* 814C9C90 | 48 00 39 69 */	bl VFiPFVOL_CheckForRead
/* 814C9C94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9C98 | 41 82 00 24 */	beq .L_814C9CBC
/* 814C9C9C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9CA0 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9CA4 | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C9CA8 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C9CAC | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9CB0 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C9CB4 | 90 7E 00 1C */	stw r3, 0x1c(r30)
/* 814C9CB8 | 48 00 01 50 */	b .L_814C9E08
.L_814C9CBC:
/* 814C9CBC | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814C9CC0 | 41 82 00 34 */	beq .L_814C9CF4
/* 814C9CC4 | 80 7E 00 08 */	lwz r3, 0x8(r30)
/* 814C9CC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9CCC | 41 82 00 28 */	beq .L_814C9CF4
/* 814C9CD0 | 80 1E 00 00 */	lwz r0, 0x0(r30)
/* 814C9CD4 | 54 00 07 FF */	clrlwi. r0, r0, 31
/* 814C9CD8 | 41 82 00 1C */	beq .L_814C9CF4
/* 814C9CDC | 80 03 00 00 */	lwz r0, 0x0(r3)
/* 814C9CE0 | 54 03 07 FE */	clrlwi r3, r0, 31
/* 814C9CE4 | 2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 814C9CE8 | 41 86 00 0C */	beq cr1, .L_814C9CF4
/* 814C9CEC | 54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 814C9CF0 | 40 82 00 20 */	bne .L_814C9D10
.L_814C9CF4:
/* 814C9CF4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9CF8 | 38 00 00 26 */	li r0, 0x26
/* 814C9CFC | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9D00 | 38 60 00 26 */	li r3, 0x26
/* 814C9D04 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9D08 | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C9D0C | 48 00 00 FC */	b .L_814C9E08
.L_814C9D10:
/* 814C9D10 | 41 86 00 08 */	beq cr1, .L_814C9D18
/* 814C9D14 | 40 82 00 20 */	bne .L_814C9D34
.L_814C9D18:
/* 814C9D18 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9D1C | 38 00 00 26 */	li r0, 0x26
/* 814C9D20 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9D24 | 38 60 00 26 */	li r3, 0x26
/* 814C9D28 | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9D2C | 90 1F 18 54 */	stw r0, 0x1854(r31)
/* 814C9D30 | 48 00 00 D8 */	b .L_814C9E08
.L_814C9D34:
/* 814C9D34 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814C9D38 | 40 82 00 2C */	bne .L_814C9D64
/* 814C9D3C | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9D40 | 38 00 00 0A */	li r0, 0xa
/* 814C9D44 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9D48 | 38 60 00 0A */	li r3, 0xa
/* 814C9D4C | 90 04 00 1C */	stw r0, 0x1c(r4)
/* 814C9D50 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C9D54 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9D58 | 90 04 18 54 */	stw r0, 0x1854(r4)
/* 814C9D5C | 90 1E 00 1C */	stw r0, 0x1c(r30)
/* 814C9D60 | 48 00 00 A8 */	b .L_814C9E08
.L_814C9D64:
/* 814C9D64 | 93 DF 15 F0 */	stw r30, 0x15f0(r31)
/* 814C9D68 | 7F C3 F3 78 */	mr r3, r30
/* 814C9D6C | 7F A4 EB 78 */	mr r4, r29
/* 814C9D70 | 81 3E 00 20 */	lwz r9, 0x20(r30)
/* 814C9D74 | 81 1E 00 24 */	lwz r8, 0x24(r30)
/* 814C9D78 | 80 FE 00 28 */	lwz r7, 0x28(r30)
/* 814C9D7C | 80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 814C9D80 | 80 BE 00 0C */	lwz r5, 0xc(r30)
/* 814C9D84 | 80 1E 00 10 */	lwz r0, 0x10(r30)
/* 814C9D88 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 814C9D8C | 91 01 00 14 */	stw r8, 0x14(r1)
/* 814C9D90 | 90 E1 00 18 */	stw r7, 0x18(r1)
/* 814C9D94 | 90 C1 00 1C */	stw r6, 0x1c(r1)
/* 814C9D98 | 90 A1 00 08 */	stw r5, 0x8(r1)
/* 814C9D9C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814C9DA0 | 4B FF EC D9 */	bl VFiPFFILE_p_finfo
/* 814C9DA4 | 81 21 00 10 */	lwz r9, 0x10(r1)
/* 814C9DA8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814C9DAC | 81 01 00 14 */	lwz r8, 0x14(r1)
/* 814C9DB0 | 38 00 00 00 */	li r0, 0x0
/* 814C9DB4 | 80 E1 00 18 */	lwz r7, 0x18(r1)
/* 814C9DB8 | 80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 814C9DBC | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814C9DC0 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814C9DC4 | 91 3E 00 20 */	stw r9, 0x20(r30)
/* 814C9DC8 | 91 1E 00 24 */	stw r8, 0x24(r30)
/* 814C9DCC | 90 FE 00 28 */	stw r7, 0x28(r30)
/* 814C9DD0 | 90 DE 00 2C */	stw r6, 0x2c(r30)
/* 814C9DD4 | 90 BE 00 0C */	stw r5, 0xc(r30)
/* 814C9DD8 | 90 9E 00 10 */	stw r4, 0x10(r30)
/* 814C9DDC | 90 1F 15 F0 */	stw r0, 0x15f0(r31)
/* 814C9DE0 | 41 82 00 24 */	beq .L_814C9E04
/* 814C9DE4 | 3C 80 81 0D */	lis r4, VFipf_vol_set_810CD7F0@ha
/* 814C9DE8 | 38 84 D7 F0 */	addi r4, r4, VFipf_vol_set_810CD7F0@l
/* 814C9DEC | 90 64 00 1C */	stw r3, 0x1c(r4)
/* 814C9DF0 | 80 9E 00 08 */	lwz r4, 0x8(r30)
/* 814C9DF4 | 80 84 00 34 */	lwz r4, 0x34(r4)
/* 814C9DF8 | 90 64 18 54 */	stw r3, 0x1854(r4)
/* 814C9DFC | 90 7E 00 1C */	stw r3, 0x1c(r30)
/* 814C9E00 | 48 00 00 08 */	b .L_814C9E08
.L_814C9E04:
/* 814C9E04 | 38 60 00 00 */	li r3, 0x0
.L_814C9E08:
/* 814C9E08 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814C9E0C | 83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 814C9E10 | 83 C1 00 28 */	lwz r30, 0x28(r1)
/* 814C9E14 | 83 A1 00 24 */	lwz r29, 0x24(r1)
/* 814C9E18 | 7C 08 03 A6 */	mtlr r0
/* 814C9E1C | 38 21 00 30 */	addi r1, r1, 0x30
/* 814C9E20 | 4E 80 00 20 */	blr
.endfn VFiPFFILE_finfo
