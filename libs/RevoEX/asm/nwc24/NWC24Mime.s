.include "macros.inc"
.file "NWC24Mime.c"

# 0x814A35D0..0x814A5CB8 | size: 0x26E8
.text
.balign 4

# .text:0x0 | 0x814A35D0 | size: 0x378
.fn DuplicationCheck_814A35D0, global
/* 814A35D0 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A35D4 | 7C 08 02 A6 */	mflr r0
/* 814A35D8 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A35DC | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A35E0 | 48 15 5E C5 */	bl _savegpr_20
/* 814A35E4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A35E8 | 7C 74 1B 78 */	mr r20, r3
/* 814A35EC | 7C 95 23 78 */	mr r21, r4
/* 814A35F0 | 7C B6 2B 78 */	mr r22, r5
/* 814A35F4 | 7C D7 33 78 */	mr r23, r6
/* 814A35F8 | 38 60 00 00 */	li r3, 0x0
/* 814A35FC | 3B 80 00 00 */	li r28, 0x0
/* 814A3600 | 3B 60 00 00 */	li r27, 0x0
/* 814A3604 | 3B 40 00 00 */	li r26, 0x0
/* 814A3608 | 3B 20 00 00 */	li r25, 0x0
/* 814A360C | 40 82 00 0C */	bne .L_814A3618
/* 814A3610 | 38 60 00 00 */	li r3, 0x0
/* 814A3614 | 48 00 03 1C */	b .L_814A3930
.L_814A3618:
/* 814A3618 | 80 8D AD A0 */	lwz r4, NWC24WorkP_81698DE0@sda21(r0)
/* 814A361C | 3B A0 00 80 */	li r29, 0x80
/* 814A3620 | 3F E0 00 02 */	lis r31, 0x2
/* 814A3624 | 3F C0 00 0E */	lis r30, 0xe
/* 814A3628 | 3B 04 18 00 */	addi r24, r4, 0x1800
/* 814A362C | 48 00 01 B4 */	b .L_814A37E0
.L_814A3630:
/* 814A3630 | 80 14 00 08 */	lwz r0, 0x8(r20)
/* 814A3634 | 7C 1C 00 40 */	cmplw r28, r0
/* 814A3638 | 40 80 01 B4 */	bge .L_814A37EC
/* 814A363C | 7E C3 B3 78 */	mr r3, r22
/* 814A3640 | 7F A4 EB 78 */	mr r4, r29
/* 814A3644 | 38 A0 00 00 */	li r5, 0x0
/* 814A3648 | 4B FF AA AD */	bl NWC24FSeek
/* 814A364C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3650 | 40 82 01 9C */	bne .L_814A37EC
/* 814A3654 | 7F 03 C3 78 */	mr r3, r24
/* 814A3658 | 7E C5 B3 78 */	mr r5, r22
/* 814A365C | 38 80 00 80 */	li r4, 0x80
/* 814A3660 | 4B FF AC 85 */	bl NWC24FRead
/* 814A3664 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3668 | 40 82 01 84 */	bne .L_814A37EC
/* 814A366C | 80 18 00 00 */	lwz r0, 0x0(r24)
/* 814A3670 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A3674 | 41 82 01 68 */	beq .L_814A37DC
/* 814A3678 | 80 95 00 00 */	lwz r4, 0x0(r21)
/* 814A367C | 39 40 00 01 */	li r10, 0x1
/* 814A3680 | 3B 9C 00 01 */	addi r28, r28, 0x1
/* 814A3684 | 7C 00 20 40 */	cmplw r0, r4
/* 814A3688 | 40 82 00 08 */	bne .L_814A3690
/* 814A368C | 39 40 00 00 */	li r10, 0x0
.L_814A3690:
/* 814A3690 | 80 95 00 04 */	lwz r4, 0x4(r21)
/* 814A3694 | 80 B8 00 04 */	lwz r5, 0x4(r24)
/* 814A3698 | 7C A6 20 38 */	and r6, r5, r4
/* 814A369C | 54 C6 07 FF */	clrlwi. r6, r6, 31
/* 814A36A0 | 41 82 00 3C */	beq .L_814A36DC
/* 814A36A4 | 80 F8 00 0C */	lwz r7, 0xc(r24)
/* 814A36A8 | 80 D5 00 0C */	lwz r6, 0xc(r21)
/* 814A36AC | 7C 07 30 40 */	cmplw r7, r6
/* 814A36B0 | 41 82 00 08 */	beq .L_814A36B8
/* 814A36B4 | 39 40 00 00 */	li r10, 0x0
.L_814A36B8:
/* 814A36B8 | 81 18 00 20 */	lwz r8, 0x20(r24)
/* 814A36BC | 80 D5 00 20 */	lwz r6, 0x20(r21)
/* 814A36C0 | 81 38 00 24 */	lwz r9, 0x24(r24)
/* 814A36C4 | 80 F5 00 24 */	lwz r7, 0x24(r21)
/* 814A36C8 | 7D 06 32 78 */	xor r6, r8, r6
/* 814A36CC | 7D 27 3A 78 */	xor r7, r9, r7
/* 814A36D0 | 7C E6 33 79 */	or. r6, r7, r6
/* 814A36D4 | 41 82 00 08 */	beq .L_814A36DC
/* 814A36D8 | 39 40 00 00 */	li r10, 0x0
.L_814A36DC:
/* 814A36DC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814A36E0 | 41 82 00 88 */	beq .L_814A3768
/* 814A36E4 | 80 D5 00 14 */	lwz r6, 0x14(r21)
/* 814A36E8 | 54 C7 04 3F */	clrlwi. r7, r6, 16
/* 814A36EC | 41 82 00 20 */	beq .L_814A370C
/* 814A36F0 | 80 D8 00 14 */	lwz r6, 0x14(r24)
/* 814A36F4 | 54 C6 04 3E */	clrlwi r6, r6, 16
/* 814A36F8 | 7C 06 38 40 */	cmplw r6, r7
/* 814A36FC | 40 82 00 10 */	bne .L_814A370C
/* 814A3700 | 7C 1B 03 78 */	mr r27, r0
/* 814A3704 | 7F BA EB 78 */	mr r26, r29
/* 814A3708 | 48 00 00 D4 */	b .L_814A37DC
.L_814A370C:
/* 814A370C | 80 F5 00 1C */	lwz r7, 0x1c(r21)
/* 814A3710 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A3714 | 41 82 00 54 */	beq .L_814A3768
/* 814A3718 | 80 D8 00 1C */	lwz r6, 0x1c(r24)
/* 814A371C | 7C 06 38 40 */	cmplw r6, r7
/* 814A3720 | 40 82 00 48 */	bne .L_814A3768
/* 814A3724 | 7C 05 20 40 */	cmplw r5, r4
/* 814A3728 | 40 82 00 40 */	bne .L_814A3768
/* 814A372C | 80 B8 00 08 */	lwz r5, 0x8(r24)
/* 814A3730 | 80 95 00 08 */	lwz r4, 0x8(r21)
/* 814A3734 | 7C 05 20 40 */	cmplw r5, r4
/* 814A3738 | 40 82 00 30 */	bne .L_814A3768
/* 814A373C | 80 B8 00 10 */	lwz r5, 0x10(r24)
/* 814A3740 | 80 95 00 10 */	lwz r4, 0x10(r21)
/* 814A3744 | 7C 05 20 40 */	cmplw r5, r4
/* 814A3748 | 40 82 00 20 */	bne .L_814A3768
/* 814A374C | 80 B8 00 28 */	lwz r5, 0x28(r24)
/* 814A3750 | 80 95 00 28 */	lwz r4, 0x28(r21)
/* 814A3754 | 7C 05 20 00 */	cmpw r5, r4
/* 814A3758 | 40 82 00 10 */	bne .L_814A3768
/* 814A375C | 7C 1B 03 78 */	mr r27, r0
/* 814A3760 | 7F BA EB 78 */	mr r26, r29
/* 814A3764 | 48 00 00 78 */	b .L_814A37DC
.L_814A3768:
/* 814A3768 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814A376C | 41 82 00 6C */	beq .L_814A37D8
/* 814A3770 | 7C 19 00 40 */	cmplw r25, r0
/* 814A3774 | 40 82 00 0C */	bne .L_814A3780
/* 814A3778 | 38 80 00 00 */	li r4, 0x0
/* 814A377C | 48 00 00 54 */	b .L_814A37D0
.L_814A3780:
/* 814A3780 | 38 9E BB A0 */	subi r4, r30, 0x4460
/* 814A3784 | 7C 19 20 40 */	cmplw r25, r4
/* 814A3788 | 40 81 00 18 */	ble .L_814A37A0
/* 814A378C | 38 9F 86 A0 */	subi r4, r31, 0x7960
/* 814A3790 | 7C 00 20 40 */	cmplw r0, r4
/* 814A3794 | 40 80 00 0C */	bge .L_814A37A0
/* 814A3798 | 38 80 FF FF */	li r4, -0x1
/* 814A379C | 48 00 00 34 */	b .L_814A37D0
.L_814A37A0:
/* 814A37A0 | 38 9F 86 A0 */	subi r4, r31, 0x7960
/* 814A37A4 | 7C 19 20 40 */	cmplw r25, r4
/* 814A37A8 | 40 80 00 18 */	bge .L_814A37C0
/* 814A37AC | 38 9E BB A0 */	subi r4, r30, 0x4460
/* 814A37B0 | 7C 00 20 40 */	cmplw r0, r4
/* 814A37B4 | 40 81 00 0C */	ble .L_814A37C0
/* 814A37B8 | 38 80 00 01 */	li r4, 0x1
/* 814A37BC | 48 00 00 14 */	b .L_814A37D0
.L_814A37C0:
/* 814A37C0 | 7C 19 00 40 */	cmplw r25, r0
/* 814A37C4 | 38 80 FF FF */	li r4, -0x1
/* 814A37C8 | 40 81 00 08 */	ble .L_814A37D0
/* 814A37CC | 38 80 00 01 */	li r4, 0x1
.L_814A37D0:
/* 814A37D0 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A37D4 | 40 81 00 08 */	ble .L_814A37DC
.L_814A37D8:
/* 814A37D8 | 7C 19 03 78 */	mr r25, r0
.L_814A37DC:
/* 814A37DC | 3B BD 00 80 */	addi r29, r29, 0x80
.L_814A37E0:
/* 814A37E0 | 80 14 00 14 */	lwz r0, 0x14(r20)
/* 814A37E4 | 7C 1D 00 40 */	cmplw r29, r0
/* 814A37E8 | 41 80 FE 48 */	blt .L_814A3630
.L_814A37EC:
/* 814A37EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A37F0 | 41 82 00 08 */	beq .L_814A37F8
/* 814A37F4 | 48 00 01 3C */	b .L_814A3930
.L_814A37F8:
/* 814A37F8 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A37FC | 93 34 00 20 */	stw r25, 0x20(r20)
/* 814A3800 | 41 82 01 30 */	beq .L_814A3930
/* 814A3804 | 7E 83 A3 78 */	mr r3, r20
/* 814A3808 | 7E C4 B3 78 */	mr r4, r22
/* 814A380C | 7F 45 D3 78 */	mr r5, r26
/* 814A3810 | 48 00 05 D9 */	bl ClearMBCEntry_814A3DE8
/* 814A3814 | 7C 75 1B 78 */	mr r21, r3
/* 814A3818 | 7E E3 BB 78 */	mr r3, r23
/* 814A381C | 48 00 06 B9 */	bl MountVFMBox_814A3ED4
/* 814A3820 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3824 | 41 82 00 08 */	beq .L_814A382C
/* 814A3828 | 48 00 00 FC */	b .L_814A3924
.L_814A382C:
/* 814A382C | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3830 | 2C 17 00 01 */	cmpwi r23, 0x1
/* 814A3834 | 3A 83 08 00 */	addi r20, r3, 0x800
/* 814A3838 | 41 82 00 30 */	beq .L_814A3868
/* 814A383C | 40 80 00 48 */	bge .L_814A3884
/* 814A3840 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A3844 | 40 80 00 08 */	bge .L_814A384C
/* 814A3848 | 48 00 00 3C */	b .L_814A3884
.L_814A384C:
/* 814A384C | 3C 80 81 67 */	lis r4, lbl_8166D9A0@ha
/* 814A3850 | 7E 83 A3 78 */	mr r3, r20
/* 814A3854 | 7F 65 DB 78 */	mr r5, r27
/* 814A3858 | 38 84 D9 A0 */	addi r4, r4, lbl_8166D9A0@l
/* 814A385C | 4C C6 31 82 */	crclr cr1eq
/* 814A3860 | 4B FF 9D F1 */	bl Mail_sprintf
/* 814A3864 | 48 00 00 28 */	b .L_814A388C
.L_814A3868:
/* 814A3868 | 3C 80 81 67 */	lis r4, lbl_8166D9B4@ha
/* 814A386C | 7E 83 A3 78 */	mr r3, r20
/* 814A3870 | 7F 65 DB 78 */	mr r5, r27
/* 814A3874 | 38 84 D9 B4 */	addi r4, r4, lbl_8166D9B4@l
/* 814A3878 | 4C C6 31 82 */	crclr cr1eq
/* 814A387C | 4B FF 9D D5 */	bl Mail_sprintf
/* 814A3880 | 48 00 00 0C */	b .L_814A388C
.L_814A3884:
/* 814A3884 | 38 60 FF FD */	li r3, -0x3
/* 814A3888 | 48 00 00 08 */	b .L_814A3890
.L_814A388C:
/* 814A388C | 38 60 00 00 */	li r3, 0x0
.L_814A3890:
/* 814A3890 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3894 | 41 82 00 08 */	beq .L_814A389C
/* 814A3898 | 48 00 00 8C */	b .L_814A3924
.L_814A389C:
/* 814A389C | 7E 83 A3 78 */	mr r3, r20
/* 814A38A0 | 4B FF AE E9 */	bl NWC24FDeleteVF
/* 814A38A4 | 80 8D AD B8 */	lwz r4, MountInfo_81698DF8@sda21(r0)
/* 814A38A8 | 7C 74 1B 78 */	mr r20, r3
/* 814A38AC | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A38B0 | 40 82 00 0C */	bne .L_814A38BC
/* 814A38B4 | 38 60 00 00 */	li r3, 0x0
/* 814A38B8 | 48 00 00 60 */	b .L_814A3918
.L_814A38BC:
/* 814A38BC | 34 04 FF FF */	subic. r0, r4, 0x1
/* 814A38C0 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A38C4 | 40 81 00 0C */	ble .L_814A38D0
/* 814A38C8 | 38 60 00 00 */	li r3, 0x0
/* 814A38CC | 48 00 00 4C */	b .L_814A3918
.L_814A38D0:
/* 814A38D0 | 38 6D AD B8 */	li r3, MountInfo_81698DF8@sda21
/* 814A38D4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A38D8 | 80 63 00 04 */	lwz r3, 0x4(r3)
/* 814A38DC | 48 00 00 6D */	bl GetCachedMBCHeader_814A3948
/* 814A38E0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A38E4 | 41 82 00 08 */	beq .L_814A38EC
/* 814A38E8 | 48 00 00 30 */	b .L_814A3918
.L_814A38EC:
/* 814A38EC | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A38F0 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A38F4 | 4B FF B1 01 */	bl NWC24CheckSizeVF
/* 814A38F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A38FC | 41 82 00 08 */	beq .L_814A3904
/* 814A3900 | 48 00 00 18 */	b .L_814A3918
.L_814A3904:
/* 814A3904 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A3908 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A390C | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A3910 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A3914 | 4B FF B0 61 */	bl NWC24UnmountVF
.L_814A3918:
/* 814A3918 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814A391C | 41 82 00 08 */	beq .L_814A3924
/* 814A3920 | 7E 83 A3 78 */	mr r3, r20
.L_814A3924:
/* 814A3924 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814A3928 | 41 82 00 08 */	beq .L_814A3930
/* 814A392C | 7E A3 AB 78 */	mr r3, r21
.L_814A3930:
/* 814A3930 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A3934 | 48 15 5B BD */	bl _restgpr_20
/* 814A3938 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A393C | 7C 08 03 A6 */	mtlr r0
/* 814A3940 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A3944 | 4E 80 00 20 */	blr
.endfn DuplicationCheck_814A35D0

# .text:0x378 | 0x814A3948 | size: 0x1F8
.fn GetCachedMBCHeader_814A3948, global
/* 814A3948 | 94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 814A394C | 7C 08 02 A6 */	mflr r0
/* 814A3950 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3954 | 90 01 00 C4 */	stw r0, 0xc4(r1)
/* 814A3958 | 93 E1 00 BC */	stw r31, 0xbc(r1)
/* 814A395C | 3B E0 00 00 */	li r31, 0x0
/* 814A3960 | 93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 814A3964 | 93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 814A3968 | 7C 9D 23 78 */	mr r29, r4
/* 814A396C | 93 81 00 B0 */	stw r28, 0xb0(r1)
/* 814A3970 | 7C 7C 1B 78 */	mr r28, r3
/* 814A3974 | 40 82 00 14 */	bne .L_814A3988
/* 814A3978 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A397C | 38 03 17 00 */	addi r0, r3, 0x1700
/* 814A3980 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A3984 | 48 00 00 2C */	b .L_814A39B0
.L_814A3988:
/* 814A3988 | 2C 03 00 01 */	cmpwi r3, 0x1
/* 814A398C | 40 82 00 14 */	bne .L_814A39A0
/* 814A3990 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3994 | 38 03 17 80 */	addi r0, r3, 0x1780
/* 814A3998 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A399C | 48 00 00 14 */	b .L_814A39B0
.L_814A39A0:
/* 814A39A0 | 38 00 00 00 */	li r0, 0x0
/* 814A39A4 | 38 60 FF FD */	li r3, -0x3
/* 814A39A8 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A39AC | 48 00 01 74 */	b .L_814A3B20
.L_814A39B0:
/* 814A39B0 | 80 64 00 00 */	lwz r3, 0x0(r4)
/* 814A39B4 | 80 63 00 00 */	lwz r3, 0x0(r3)
/* 814A39B8 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814A39BC | 28 00 54 66 */	cmplwi r0, 0x5466
/* 814A39C0 | 41 82 01 34 */	beq .L_814A3AF4
/* 814A39C4 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A39C8 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A39CC | 4B FF C0 05 */	bl NWC24GetMBoxDir
/* 814A39D0 | 7C 7F 1B 78 */	mr r31, r3
/* 814A39D4 | 38 80 00 40 */	li r4, 0x40
/* 814A39D8 | 4B FF 93 C9 */	bl STD_strnlen
/* 814A39DC | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A39E0 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A39E4 | 40 81 00 0C */	ble .L_814A39F0
/* 814A39E8 | 38 60 FF F5 */	li r3, -0xb
/* 814A39EC | 48 00 00 68 */	b .L_814A3A54
.L_814A39F0:
/* 814A39F0 | 2C 1C 00 01 */	cmpwi r28, 0x1
/* 814A39F4 | 41 82 00 34 */	beq .L_814A3A28
/* 814A39F8 | 40 80 00 50 */	bge .L_814A3A48
/* 814A39FC | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A3A00 | 40 80 00 08 */	bge .L_814A3A08
/* 814A3A04 | 48 00 00 44 */	b .L_814A3A48
.L_814A3A08:
/* 814A3A08 | 3C C0 81 67 */	lis r6, lbl_8166D920@ha
/* 814A3A0C | 7F C3 F3 78 */	mr r3, r30
/* 814A3A10 | 7F E5 FB 78 */	mr r5, r31
/* 814A3A14 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A3A18 | 38 C6 D9 20 */	addi r6, r6, lbl_8166D920@l
/* 814A3A1C | 4C C6 31 82 */	crclr cr1eq
/* 814A3A20 | 4B FF 9C 31 */	bl Mail_sprintf
/* 814A3A24 | 48 00 00 2C */	b .L_814A3A50
.L_814A3A28:
/* 814A3A28 | 3C C0 81 67 */	lis r6, lbl_8166D930@ha
/* 814A3A2C | 7F C3 F3 78 */	mr r3, r30
/* 814A3A30 | 7F E5 FB 78 */	mr r5, r31
/* 814A3A34 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A3A38 | 38 C6 D9 30 */	addi r6, r6, lbl_8166D930@l
/* 814A3A3C | 4C C6 31 82 */	crclr cr1eq
/* 814A3A40 | 4B FF 9C 11 */	bl Mail_sprintf
/* 814A3A44 | 48 00 00 0C */	b .L_814A3A50
.L_814A3A48:
/* 814A3A48 | 38 60 FF FD */	li r3, -0x3
/* 814A3A4C | 48 00 00 08 */	b .L_814A3A54
.L_814A3A50:
/* 814A3A50 | 38 60 00 00 */	li r3, 0x0
.L_814A3A54:
/* 814A3A54 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3A58 | 41 82 00 08 */	beq .L_814A3A60
/* 814A3A5C | 48 00 00 C4 */	b .L_814A3B20
.L_814A3A60:
/* 814A3A60 | 7F C4 F3 78 */	mr r4, r30
/* 814A3A64 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A3A68 | 38 A0 00 02 */	li r5, 0x2
/* 814A3A6C | 4B FF A1 9D */	bl NWC24FOpen
/* 814A3A70 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3A74 | 41 82 00 08 */	beq .L_814A3A7C
/* 814A3A78 | 48 00 00 A8 */	b .L_814A3B20
.L_814A3A7C:
/* 814A3A7C | 83 FD 00 00 */	lwz r31, 0x0(r29)
/* 814A3A80 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A3A84 | 38 80 00 00 */	li r4, 0x0
/* 814A3A88 | 38 A0 00 00 */	li r5, 0x0
/* 814A3A8C | 4B FF A6 69 */	bl NWC24FSeek
/* 814A3A90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3A94 | 41 82 00 0C */	beq .L_814A3AA0
/* 814A3A98 | 7C 7F 1B 78 */	mr r31, r3
/* 814A3A9C | 48 00 00 3C */	b .L_814A3AD8
.L_814A3AA0:
/* 814A3AA0 | 7F E3 FB 78 */	mr r3, r31
/* 814A3AA4 | 38 A1 00 08 */	addi r5, r1, 0x8
/* 814A3AA8 | 38 80 00 80 */	li r4, 0x80
/* 814A3AAC | 4B FF A8 39 */	bl NWC24FRead
/* 814A3AB0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3AB4 | 41 82 00 0C */	beq .L_814A3AC0
/* 814A3AB8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A3ABC | 48 00 00 1C */	b .L_814A3AD8
.L_814A3AC0:
/* 814A3AC0 | 80 7F 00 00 */	lwz r3, 0x0(r31)
/* 814A3AC4 | 3B E0 00 00 */	li r31, 0x0
/* 814A3AC8 | 3C 03 A8 9D */	subis r0, r3, 0x5763
/* 814A3ACC | 28 00 54 66 */	cmplwi r0, 0x5466
/* 814A3AD0 | 41 82 00 08 */	beq .L_814A3AD8
/* 814A3AD4 | 3B E0 FF F2 */	li r31, -0xe
.L_814A3AD8:
/* 814A3AD8 | 38 61 00 08 */	addi r3, r1, 0x8
/* 814A3ADC | 4B FF A4 81 */	bl NWC24FClose
/* 814A3AE0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A3AE4 | 40 82 00 10 */	bne .L_814A3AF4
/* 814A3AE8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3AEC | 41 82 00 08 */	beq .L_814A3AF4
/* 814A3AF0 | 7C 7F 1B 78 */	mr r31, r3
.L_814A3AF4:
/* 814A3AF4 | 80 7D 00 00 */	lwz r3, 0x0(r29)
/* 814A3AF8 | 80 03 00 04 */	lwz r0, 0x4(r3)
/* 814A3AFC | 28 00 00 04 */	cmplwi r0, 0x4
/* 814A3B00 | 41 82 00 0C */	beq .L_814A3B0C
/* 814A3B04 | 38 60 FF E5 */	li r3, -0x1b
/* 814A3B08 | 48 00 00 18 */	b .L_814A3B20
.L_814A3B0C:
/* 814A3B0C | 80 03 00 1C */	lwz r0, 0x1c(r3)
/* 814A3B10 | 54 00 06 FF */	clrlwi. r0, r0, 27
/* 814A3B14 | 41 82 00 08 */	beq .L_814A3B1C
/* 814A3B18 | 3B E0 FF F2 */	li r31, -0xe
.L_814A3B1C:
/* 814A3B1C | 7F E3 FB 78 */	mr r3, r31
.L_814A3B20:
/* 814A3B20 | 80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 814A3B24 | 83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 814A3B28 | 83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 814A3B2C | 83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 814A3B30 | 83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 814A3B34 | 7C 08 03 A6 */	mtlr r0
/* 814A3B38 | 38 21 00 C0 */	addi r1, r1, 0xc0
/* 814A3B3C | 4E 80 00 20 */	blr
.endfn GetCachedMBCHeader_814A3948

# .text:0x570 | 0x814A3B40 | size: 0x15C
.fn InitMBCHeader_814A3B40, global
/* 814A3B40 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A3B44 | 7C 08 02 A6 */	mflr r0
/* 814A3B48 | 38 A0 00 80 */	li r5, 0x80
/* 814A3B4C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A3B50 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A3B54 | 7C 9F 23 78 */	mr r31, r4
/* 814A3B58 | 38 80 00 00 */	li r4, 0x0
/* 814A3B5C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814A3B60 | 7C 7E 1B 78 */	mr r30, r3
/* 814A3B64 | 4B FF 93 21 */	bl Mail_memset
/* 814A3B68 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A3B6C | 40 82 00 18 */	bne .L_814A3B84
/* 814A3B70 | 38 60 00 7F */	li r3, 0x7f
/* 814A3B74 | 3C 00 00 20 */	lis r0, 0x20
/* 814A3B78 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 814A3B7C | 90 1E 00 24 */	stw r0, 0x24(r30)
/* 814A3B80 | 48 00 00 1C */	b .L_814A3B9C
.L_814A3B84:
/* 814A3B84 | 2C 1F 00 01 */	cmpwi r31, 0x1
/* 814A3B88 | 40 82 00 14 */	bne .L_814A3B9C
/* 814A3B8C | 38 60 00 FF */	li r3, 0xff
/* 814A3B90 | 3C 00 00 70 */	lis r0, 0x70
/* 814A3B94 | 90 7E 00 0C */	stw r3, 0xc(r30)
/* 814A3B98 | 90 1E 00 24 */	stw r0, 0x24(r30)
.L_814A3B9C:
/* 814A3B9C | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 814A3BA0 | 38 E0 00 00 */	li r7, 0x0
/* 814A3BA4 | 39 00 00 04 */	li r8, 0x4
/* 814A3BA8 | 38 A0 00 01 */	li r5, 0x1
/* 814A3BAC | 54 03 38 30 */	slwi r3, r0, 7
/* 814A3BB0 | 3C 80 57 63 */	lis r4, 0x5763
/* 814A3BB4 | 38 04 54 66 */	addi r0, r4, 0x5466
/* 814A3BB8 | 91 1E 00 04 */	stw r8, 0x4(r30)
/* 814A3BBC | 38 C3 00 80 */	addi r6, r3, 0x80
/* 814A3BC0 | 38 80 00 80 */	li r4, 0x80
/* 814A3BC4 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A3BC8 | 38 00 00 30 */	li r0, 0x30
/* 814A3BCC | 38 60 00 00 */	li r3, 0x0
/* 814A3BD0 | 90 FE 00 08 */	stw r7, 0x8(r30)
/* 814A3BD4 | 90 FE 00 10 */	stw r7, 0x10(r30)
/* 814A3BD8 | 90 DE 00 14 */	stw r6, 0x14(r30)
/* 814A3BDC | 90 BE 00 18 */	stw r5, 0x18(r30)
/* 814A3BE0 | 90 9E 00 1C */	stw r4, 0x1c(r30)
/* 814A3BE4 | 90 FE 00 20 */	stw r7, 0x20(r30)
/* 814A3BE8 | 98 1E 00 58 */	stb r0, 0x58(r30)
/* 814A3BEC | 98 1E 00 59 */	stb r0, 0x59(r30)
/* 814A3BF0 | 98 1E 00 5A */	stb r0, 0x5a(r30)
/* 814A3BF4 | 98 1E 00 5B */	stb r0, 0x5b(r30)
/* 814A3BF8 | 98 1E 00 5C */	stb r0, 0x5c(r30)
/* 814A3BFC | 98 1E 00 5D */	stb r0, 0x5d(r30)
/* 814A3C00 | 98 1E 00 5E */	stb r0, 0x5e(r30)
/* 814A3C04 | 98 1E 00 5F */	stb r0, 0x5f(r30)
/* 814A3C08 | 98 1E 00 60 */	stb r0, 0x60(r30)
/* 814A3C0C | 98 1E 00 61 */	stb r0, 0x61(r30)
/* 814A3C10 | 98 1E 00 62 */	stb r0, 0x62(r30)
/* 814A3C14 | 98 1E 00 63 */	stb r0, 0x63(r30)
/* 814A3C18 | 98 1E 00 64 */	stb r0, 0x64(r30)
/* 814A3C1C | 98 1E 00 65 */	stb r0, 0x65(r30)
/* 814A3C20 | 98 1E 00 66 */	stb r0, 0x66(r30)
/* 814A3C24 | 98 1E 00 67 */	stb r0, 0x67(r30)
/* 814A3C28 | 98 1E 00 68 */	stb r0, 0x68(r30)
/* 814A3C2C | 98 1E 00 69 */	stb r0, 0x69(r30)
/* 814A3C30 | 98 1E 00 6A */	stb r0, 0x6a(r30)
/* 814A3C34 | 98 1E 00 6B */	stb r0, 0x6b(r30)
/* 814A3C38 | 98 1E 00 6C */	stb r0, 0x6c(r30)
/* 814A3C3C | 98 1E 00 6D */	stb r0, 0x6d(r30)
/* 814A3C40 | 98 1E 00 6E */	stb r0, 0x6e(r30)
/* 814A3C44 | 98 1E 00 6F */	stb r0, 0x6f(r30)
/* 814A3C48 | 98 1E 00 70 */	stb r0, 0x70(r30)
/* 814A3C4C | 98 1E 00 71 */	stb r0, 0x71(r30)
/* 814A3C50 | 98 1E 00 72 */	stb r0, 0x72(r30)
/* 814A3C54 | 98 1E 00 73 */	stb r0, 0x73(r30)
/* 814A3C58 | 98 1E 00 74 */	stb r0, 0x74(r30)
/* 814A3C5C | 98 1E 00 75 */	stb r0, 0x75(r30)
/* 814A3C60 | 98 1E 00 76 */	stb r0, 0x76(r30)
/* 814A3C64 | 98 1E 00 77 */	stb r0, 0x77(r30)
/* 814A3C68 | 98 1E 00 78 */	stb r0, 0x78(r30)
/* 814A3C6C | 98 1E 00 79 */	stb r0, 0x79(r30)
/* 814A3C70 | 98 1E 00 7A */	stb r0, 0x7a(r30)
/* 814A3C74 | 98 1E 00 7B */	stb r0, 0x7b(r30)
/* 814A3C78 | 98 1E 00 7C */	stb r0, 0x7c(r30)
/* 814A3C7C | 98 1E 00 7D */	stb r0, 0x7d(r30)
/* 814A3C80 | 98 1E 00 7E */	stb r0, 0x7e(r30)
/* 814A3C84 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A3C88 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814A3C8C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A3C90 | 7C 08 03 A6 */	mtlr r0
/* 814A3C94 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A3C98 | 4E 80 00 20 */	blr
.endfn InitMBCHeader_814A3B40

# .text:0x6CC | 0x814A3C9C | size: 0x14C
.fn AddMBCEntry_814A3C9C, global
/* 814A3C9C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A3CA0 | 7C 08 02 A6 */	mflr r0
/* 814A3CA4 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A3CA8 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A3CAC | 48 15 58 15 */	bl _savegpr_27
/* 814A3CB0 | 83 C3 00 1C */	lwz r30, 0x1c(r3)
/* 814A3CB4 | 7C 7F 1B 78 */	mr r31, r3
/* 814A3CB8 | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3CBC | 7C 9B 23 78 */	mr r27, r4
/* 814A3CC0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A3CC4 | 7C BC 2B 78 */	mr r28, r5
/* 814A3CC8 | 3B A6 18 00 */	addi r29, r6, 0x1800
/* 814A3CCC | 40 82 00 0C */	bne .L_814A3CD8
/* 814A3CD0 | 38 60 FF FA */	li r3, -0x6
/* 814A3CD4 | 48 00 00 FC */	b .L_814A3DD0
.L_814A3CD8:
/* 814A3CD8 | 80 03 00 14 */	lwz r0, 0x14(r3)
/* 814A3CDC | 7C 1E 00 40 */	cmplw r30, r0
/* 814A3CE0 | 40 80 00 10 */	bge .L_814A3CF0
/* 814A3CE4 | 38 1E FF 80 */	subi r0, r30, 0x80
/* 814A3CE8 | 54 00 06 7F */	clrlwi. r0, r0, 25
/* 814A3CEC | 41 82 00 0C */	beq .L_814A3CF8
.L_814A3CF0:
/* 814A3CF0 | 38 60 FF F2 */	li r3, -0xe
/* 814A3CF4 | 48 00 00 DC */	b .L_814A3DD0
.L_814A3CF8:
/* 814A3CF8 | 7F 83 E3 78 */	mr r3, r28
/* 814A3CFC | 7F C4 F3 78 */	mr r4, r30
/* 814A3D00 | 38 A0 00 00 */	li r5, 0x0
/* 814A3D04 | 4B FF A3 F1 */	bl NWC24FSeek
/* 814A3D08 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3D0C | 41 82 00 08 */	beq .L_814A3D14
/* 814A3D10 | 48 00 00 C0 */	b .L_814A3DD0
.L_814A3D14:
/* 814A3D14 | 7F A3 EB 78 */	mr r3, r29
/* 814A3D18 | 7F 85 E3 78 */	mr r5, r28
/* 814A3D1C | 38 80 00 80 */	li r4, 0x80
/* 814A3D20 | 4B FF A5 C5 */	bl NWC24FRead
/* 814A3D24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3D28 | 41 82 00 08 */	beq .L_814A3D30
/* 814A3D2C | 48 00 00 A4 */	b .L_814A3DD0
.L_814A3D30:
/* 814A3D30 | 80 7D 00 0C */	lwz r3, 0xc(r29)
/* 814A3D34 | 80 1F 00 14 */	lwz r0, 0x14(r31)
/* 814A3D38 | 7C 03 00 40 */	cmplw r3, r0
/* 814A3D3C | 40 80 00 10 */	bge .L_814A3D4C
/* 814A3D40 | 38 03 FF 80 */	subi r0, r3, 0x80
/* 814A3D44 | 54 00 06 7F */	clrlwi. r0, r0, 25
/* 814A3D48 | 41 82 00 0C */	beq .L_814A3D54
.L_814A3D4C:
/* 814A3D4C | 38 60 FF F2 */	li r3, -0xe
/* 814A3D50 | 48 00 00 80 */	b .L_814A3DD0
.L_814A3D54:
/* 814A3D54 | 90 7F 00 1C */	stw r3, 0x1c(r31)
/* 814A3D58 | 7F 63 DB 78 */	mr r3, r27
/* 814A3D5C | 7F A4 EB 78 */	mr r4, r29
/* 814A3D60 | 48 00 03 01 */	bl CopyMsgObjToMBCFmt
/* 814A3D64 | 7F 83 E3 78 */	mr r3, r28
/* 814A3D68 | 7F C4 F3 78 */	mr r4, r30
/* 814A3D6C | 38 A0 00 00 */	li r5, 0x0
/* 814A3D70 | 4B FF A3 85 */	bl NWC24FSeek
/* 814A3D74 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3D78 | 41 82 00 08 */	beq .L_814A3D80
/* 814A3D7C | 48 00 00 54 */	b .L_814A3DD0
.L_814A3D80:
/* 814A3D80 | 7F A3 EB 78 */	mr r3, r29
/* 814A3D84 | 7F 85 E3 78 */	mr r5, r28
/* 814A3D88 | 38 80 00 80 */	li r4, 0x80
/* 814A3D8C | 4B FF A7 29 */	bl NWC24FWrite
/* 814A3D90 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3D94 | 41 82 00 08 */	beq .L_814A3D9C
/* 814A3D98 | 48 00 00 38 */	b .L_814A3DD0
.L_814A3D9C:
/* 814A3D9C | 80 1F 00 08 */	lwz r0, 0x8(r31)
/* 814A3DA0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A3DA4 | 40 82 00 0C */	bne .L_814A3DB0
/* 814A3DA8 | 80 1B 00 00 */	lwz r0, 0x0(r27)
/* 814A3DAC | 90 1F 00 20 */	stw r0, 0x20(r31)
.L_814A3DB0:
/* 814A3DB0 | 80 BF 00 08 */	lwz r5, 0x8(r31)
/* 814A3DB4 | 38 60 00 00 */	li r3, 0x0
/* 814A3DB8 | 80 9F 00 10 */	lwz r4, 0x10(r31)
/* 814A3DBC | 80 1B 00 08 */	lwz r0, 0x8(r27)
/* 814A3DC0 | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A3DC4 | 90 BF 00 08 */	stw r5, 0x8(r31)
/* 814A3DC8 | 7C 04 02 14 */	add r0, r4, r0
/* 814A3DCC | 90 1F 00 10 */	stw r0, 0x10(r31)
.L_814A3DD0:
/* 814A3DD0 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A3DD4 | 48 15 57 39 */	bl _restgpr_27
/* 814A3DD8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A3DDC | 7C 08 03 A6 */	mtlr r0
/* 814A3DE0 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A3DE4 | 4E 80 00 20 */	blr
.endfn AddMBCEntry_814A3C9C

# .text:0x818 | 0x814A3DE8 | size: 0xEC
.fn ClearMBCEntry_814A3DE8, global
/* 814A3DE8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A3DEC | 7C 08 02 A6 */	mflr r0
/* 814A3DF0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A3DF4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A3DF8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A3DFC | 7C BE 2B 78 */	mr r30, r5
/* 814A3E00 | 38 A0 00 00 */	li r5, 0x0
/* 814A3E04 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A3E08 | 7C 9D 23 78 */	mr r29, r4
/* 814A3E0C | 7F C4 F3 78 */	mr r4, r30
/* 814A3E10 | 93 81 00 10 */	stw r28, 0x10(r1)
/* 814A3E14 | 7C 7C 1B 78 */	mr r28, r3
/* 814A3E18 | 7F A3 EB 78 */	mr r3, r29
/* 814A3E1C | 80 CD AD A0 */	lwz r6, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3E20 | 3B E6 18 00 */	addi r31, r6, 0x1800
/* 814A3E24 | 4B FF A2 D1 */	bl NWC24FSeek
/* 814A3E28 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3E2C | 41 82 00 08 */	beq .L_814A3E34
/* 814A3E30 | 48 00 00 84 */	b .L_814A3EB4
.L_814A3E34:
/* 814A3E34 | 7F E3 FB 78 */	mr r3, r31
/* 814A3E38 | 7F A5 EB 78 */	mr r5, r29
/* 814A3E3C | 38 80 00 80 */	li r4, 0x80
/* 814A3E40 | 4B FF A4 A5 */	bl NWC24FRead
/* 814A3E44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3E48 | 41 82 00 08 */	beq .L_814A3E50
/* 814A3E4C | 48 00 00 68 */	b .L_814A3EB4
.L_814A3E50:
/* 814A3E50 | 80 BC 00 08 */	lwz r5, 0x8(r28)
/* 814A3E54 | 7F E3 FB 78 */	mr r3, r31
/* 814A3E58 | 80 1C 00 10 */	lwz r0, 0x10(r28)
/* 814A3E5C | 38 80 00 00 */	li r4, 0x0
/* 814A3E60 | 38 C5 FF FF */	subi r6, r5, 0x1
/* 814A3E64 | 38 A0 00 80 */	li r5, 0x80
/* 814A3E68 | 90 DC 00 08 */	stw r6, 0x8(r28)
/* 814A3E6C | 80 DF 00 08 */	lwz r6, 0x8(r31)
/* 814A3E70 | 7C 06 00 50 */	subf r0, r6, r0
/* 814A3E74 | 90 1C 00 10 */	stw r0, 0x10(r28)
/* 814A3E78 | 4B E8 C4 BD */	bl memset
/* 814A3E7C | 80 1C 00 1C */	lwz r0, 0x1c(r28)
/* 814A3E80 | 7F A3 EB 78 */	mr r3, r29
/* 814A3E84 | 7F C4 F3 78 */	mr r4, r30
/* 814A3E88 | 38 A0 00 00 */	li r5, 0x0
/* 814A3E8C | 90 1F 00 0C */	stw r0, 0xc(r31)
/* 814A3E90 | 93 DC 00 1C */	stw r30, 0x1c(r28)
/* 814A3E94 | 4B FF A2 61 */	bl NWC24FSeek
/* 814A3E98 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3E9C | 41 82 00 08 */	beq .L_814A3EA4
/* 814A3EA0 | 48 00 00 14 */	b .L_814A3EB4
.L_814A3EA4:
/* 814A3EA4 | 7F E3 FB 78 */	mr r3, r31
/* 814A3EA8 | 7F A5 EB 78 */	mr r5, r29
/* 814A3EAC | 38 80 00 80 */	li r4, 0x80
/* 814A3EB0 | 4B FF A6 05 */	bl NWC24FWrite
.L_814A3EB4:
/* 814A3EB4 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A3EB8 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A3EBC | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A3EC0 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A3EC4 | 83 81 00 10 */	lwz r28, 0x10(r1)
/* 814A3EC8 | 7C 08 03 A6 */	mtlr r0
/* 814A3ECC | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A3ED0 | 4E 80 00 20 */	blr
.endfn ClearMBCEntry_814A3DE8

# .text:0x904 | 0x814A3ED4 | size: 0x18C
.fn MountVFMBox_814A3ED4, global
/* 814A3ED4 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A3ED8 | 7C 08 02 A6 */	mflr r0
/* 814A3EDC | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A3EE0 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A3EE4 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A3EE8 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814A3EEC | 7C 7D 1B 78 */	mr r29, r3
/* 814A3EF0 | 80 0D AD B8 */	lwz r0, MountInfo_81698DF8@sda21(r0)
/* 814A3EF4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A3EF8 | 41 82 00 70 */	beq .L_814A3F68
/* 814A3EFC | 38 8D AD B8 */	li r4, MountInfo_81698DF8@sda21
/* 814A3F00 | 80 84 00 04 */	lwz r4, 0x4(r4)
/* 814A3F04 | 7C 04 18 00 */	cmpw r4, r3
/* 814A3F08 | 41 82 00 60 */	beq .L_814A3F68
/* 814A3F0C | 38 00 00 01 */	li r0, 0x1
/* 814A3F10 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A3F14 | 38 00 00 00 */	li r0, 0x0
/* 814A3F18 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A3F1C | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A3F20 | 41 81 00 40 */	bgt .L_814A3F60
/* 814A3F24 | 7C 83 23 78 */	mr r3, r4
/* 814A3F28 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814A3F2C | 4B FF FA 1D */	bl GetCachedMBCHeader_814A3948
/* 814A3F30 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3F34 | 40 82 00 2C */	bne .L_814A3F60
/* 814A3F38 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A3F3C | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A3F40 | 4B FF AA B5 */	bl NWC24CheckSizeVF
/* 814A3F44 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A3F48 | 40 82 00 18 */	bne .L_814A3F60
/* 814A3F4C | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A3F50 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A3F54 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A3F58 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 814A3F5C | 4B FF AA 19 */	bl NWC24UnmountVF
.L_814A3F60:
/* 814A3F60 | 38 60 FF FF */	li r3, -0x1
/* 814A3F64 | 48 00 00 E0 */	b .L_814A4044
.L_814A3F68:
/* 814A3F68 | 80 6D AD B8 */	lwz r3, MountInfo_81698DF8@sda21(r0)
/* 814A3F6C | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A3F70 | 2C 00 00 01 */	cmpwi r0, 0x1
/* 814A3F74 | 90 0D AD B8 */	stw r0, MountInfo_81698DF8@sda21(r0)
/* 814A3F78 | 40 81 00 0C */	ble .L_814A3F84
/* 814A3F7C | 38 60 00 00 */	li r3, 0x0
/* 814A3F80 | 48 00 00 C4 */	b .L_814A4044
.L_814A3F84:
/* 814A3F84 | 80 6D AD A0 */	lwz r3, NWC24WorkP_81698DE0@sda21(r0)
/* 814A3F88 | 3B C3 08 00 */	addi r30, r3, 0x800
/* 814A3F8C | 4B FF BA 45 */	bl NWC24GetMBoxDir
/* 814A3F90 | 7C 7F 1B 78 */	mr r31, r3
/* 814A3F94 | 38 80 00 40 */	li r4, 0x40
/* 814A3F98 | 4B FF 8E 09 */	bl STD_strnlen
/* 814A3F9C | 38 03 00 0E */	addi r0, r3, 0xe
/* 814A3FA0 | 2C 00 01 00 */	cmpwi r0, 0x100
/* 814A3FA4 | 40 81 00 0C */	ble .L_814A3FB0
/* 814A3FA8 | 38 60 FF F5 */	li r3, -0xb
/* 814A3FAC | 48 00 00 68 */	b .L_814A4014
.L_814A3FB0:
/* 814A3FB0 | 2C 1D 00 01 */	cmpwi r29, 0x1
/* 814A3FB4 | 41 82 00 34 */	beq .L_814A3FE8
/* 814A3FB8 | 40 80 00 50 */	bge .L_814A4008
/* 814A3FBC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A3FC0 | 40 80 00 08 */	bge .L_814A3FC8
/* 814A3FC4 | 48 00 00 44 */	b .L_814A4008
.L_814A3FC8:
/* 814A3FC8 | 3C C0 81 67 */	lis r6, lbl_8166D950@ha
/* 814A3FCC | 7F C3 F3 78 */	mr r3, r30
/* 814A3FD0 | 7F E5 FB 78 */	mr r5, r31
/* 814A3FD4 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A3FD8 | 38 C6 D9 50 */	addi r6, r6, lbl_8166D950@l
/* 814A3FDC | 4C C6 31 82 */	crclr cr1eq
/* 814A3FE0 | 4B FF 96 71 */	bl Mail_sprintf
/* 814A3FE4 | 48 00 00 2C */	b .L_814A4010
.L_814A3FE8:
/* 814A3FE8 | 3C C0 81 67 */	lis r6, lbl_8166D940@ha
/* 814A3FEC | 7F C3 F3 78 */	mr r3, r30
/* 814A3FF0 | 7F E5 FB 78 */	mr r5, r31
/* 814A3FF4 | 38 8D 9B 28 */	li r4, lbl_81697B68@sda21
/* 814A3FF8 | 38 C6 D9 40 */	addi r6, r6, lbl_8166D940@l
/* 814A3FFC | 4C C6 31 82 */	crclr cr1eq
/* 814A4000 | 4B FF 96 51 */	bl Mail_sprintf
/* 814A4004 | 48 00 00 0C */	b .L_814A4010
.L_814A4008:
/* 814A4008 | 38 60 FF FD */	li r3, -0x3
/* 814A400C | 48 00 00 08 */	b .L_814A4014
.L_814A4010:
/* 814A4010 | 38 60 00 00 */	li r3, 0x0
.L_814A4014:
/* 814A4014 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4018 | 41 82 00 08 */	beq .L_814A4020
/* 814A401C | 48 00 00 28 */	b .L_814A4044
.L_814A4020:
/* 814A4020 | 7F C4 F3 78 */	mr r4, r30
/* 814A4024 | 38 6D 9B 30 */	li r3, lbl_81697B70@sda21
/* 814A4028 | 4B FF A8 45 */	bl NWC24MountVF
/* 814A402C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4030 | 41 82 00 08 */	beq .L_814A4038
/* 814A4034 | 48 00 00 10 */	b .L_814A4044
.L_814A4038:
/* 814A4038 | 38 8D AD B8 */	li r4, MountInfo_81698DF8@sda21
/* 814A403C | 38 60 00 00 */	li r3, 0x0
/* 814A4040 | 93 A4 00 04 */	stw r29, 0x4(r4)
.L_814A4044:
/* 814A4044 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A4048 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A404C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A4050 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814A4054 | 7C 08 03 A6 */	mtlr r0
/* 814A4058 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A405C | 4E 80 00 20 */	blr
.endfn MountVFMBox_814A3ED4

# .text:0xA90 | 0x814A4060 | size: 0x1AC
.fn CopyMsgObjToMBCFmt, local
/* 814A4060 | 94 21 FF 90 */	stwu r1, -0x70(r1)
/* 814A4064 | 7C 08 02 A6 */	mflr r0
/* 814A4068 | 90 01 00 74 */	stw r0, 0x74(r1)
/* 814A406C | 39 61 00 70 */	addi r11, r1, 0x70
/* 814A4070 | 48 15 54 1D */	bl _savegpr_14
/* 814A4074 | 80 03 00 44 */	lwz r0, 0x44(r3)
/* 814A4078 | 81 E3 00 6C */	lwz r15, 0x6c(r3)
/* 814A407C | 54 12 A0 16 */	slwi r18, r0, 20
/* 814A4080 | 80 03 00 5C */	lwz r0, 0x5c(r3)
/* 814A4084 | 91 E1 00 20 */	stw r15, 0x20(r1)
/* 814A4088 | 54 10 A0 16 */	slwi r16, r0, 20
/* 814A408C | 80 03 00 58 */	lwz r0, 0x58(r3)
/* 814A4090 | 81 E3 00 78 */	lwz r15, 0x78(r3)
/* 814A4094 | 50 10 03 3E */	rlwimi r16, r0, 0, 12, 31
/* 814A4098 | 80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 814A409C | 91 E1 00 08 */	stw r15, 0x8(r1)
/* 814A40A0 | 81 E3 00 80 */	lwz r15, 0x80(r3)
/* 814A40A4 | 90 04 00 78 */	stw r0, 0x78(r4)
/* 814A40A8 | 80 01 00 20 */	lwz r0, 0x20(r1)
/* 814A40AC | 80 A3 00 3C */	lwz r5, 0x3c(r3)
/* 814A40B0 | 91 E1 00 0C */	stw r15, 0xc(r1)
/* 814A40B4 | 81 E3 00 70 */	lwz r15, 0x70(r3)
/* 814A40B8 | 54 B3 A0 16 */	slwi r19, r5, 20
/* 814A40BC | 90 04 00 54 */	stw r0, 0x54(r4)
/* 814A40C0 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A40C4 | 80 C3 00 34 */	lwz r6, 0x34(r3)
/* 814A40C8 | 80 A3 00 54 */	lwz r5, 0x54(r3)
/* 814A40CC | 91 E1 00 10 */	stw r15, 0x10(r1)
/* 814A40D0 | 54 D4 A0 16 */	slwi r20, r6, 20
/* 814A40D4 | 81 E3 00 74 */	lwz r15, 0x74(r3)
/* 814A40D8 | 54 B1 A0 16 */	slwi r17, r5, 20
/* 814A40DC | 90 04 00 60 */	stw r0, 0x60(r4)
/* 814A40E0 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A40E4 | 81 03 00 30 */	lwz r8, 0x30(r3)
/* 814A40E8 | 80 E3 00 38 */	lwz r7, 0x38(r3)
/* 814A40EC | 51 14 03 3E */	rlwimi r20, r8, 0, 12, 31
/* 814A40F0 | 80 C3 00 40 */	lwz r6, 0x40(r3)
/* 814A40F4 | 50 F3 03 3E */	rlwimi r19, r7, 0, 12, 31
/* 814A40F8 | 80 A3 00 50 */	lwz r5, 0x50(r3)
/* 814A40FC | 50 D2 03 3E */	rlwimi r18, r6, 0, 12, 31
/* 814A4100 | 91 E1 00 14 */	stw r15, 0x14(r1)
/* 814A4104 | 50 B1 03 3E */	rlwimi r17, r5, 0, 12, 31
/* 814A4108 | 82 A3 00 00 */	lwz r21, 0x0(r3)
/* 814A410C | 90 04 00 68 */	stw r0, 0x68(r4)
/* 814A4110 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A4114 | 82 C3 00 04 */	lwz r22, 0x4(r3)
/* 814A4118 | 82 E3 00 08 */	lwz r23, 0x8(r3)
/* 814A411C | 83 03 00 0C */	lwz r24, 0xc(r3)
/* 814A4120 | 83 23 00 10 */	lwz r25, 0x10(r3)
/* 814A4124 | 83 43 00 14 */	lwz r26, 0x14(r3)
/* 814A4128 | 83 63 00 18 */	lwz r27, 0x18(r3)
/* 814A412C | 83 83 00 1C */	lwz r28, 0x1c(r3)
/* 814A4130 | 83 A3 00 20 */	lwz r29, 0x20(r3)
/* 814A4134 | 83 C3 00 24 */	lwz r30, 0x24(r3)
/* 814A4138 | 83 E3 00 28 */	lwz r31, 0x28(r3)
/* 814A413C | 81 83 00 2C */	lwz r12, 0x2c(r3)
/* 814A4140 | 89 63 00 C8 */	lbz r11, 0xc8(r3)
/* 814A4144 | 89 43 00 C9 */	lbz r10, 0xc9(r3)
/* 814A4148 | A1 23 00 CA */	lhz r9, 0xca(r3)
/* 814A414C | 81 03 00 48 */	lwz r8, 0x48(r3)
/* 814A4150 | 80 E3 00 4C */	lwz r7, 0x4c(r3)
/* 814A4154 | 80 C3 00 E8 */	lwz r6, 0xe8(r3)
/* 814A4158 | 80 A3 00 EC */	lwz r5, 0xec(r3)
/* 814A415C | 81 C3 00 68 */	lwz r14, 0x68(r3)
/* 814A4160 | 81 E3 00 7C */	lwz r15, 0x7c(r3)
/* 814A4164 | 80 63 00 84 */	lwz r3, 0x84(r3)
/* 814A4168 | 90 04 00 58 */	stw r0, 0x58(r4)
/* 814A416C | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A4170 | 90 61 00 1C */	stw r3, 0x1c(r1)
/* 814A4174 | 38 60 00 00 */	li r3, 0x0
/* 814A4178 | 90 04 00 5C */	stw r0, 0x5c(r4)
/* 814A417C | 7D E0 7B 78 */	mr r0, r15
/* 814A4180 | 90 04 00 64 */	stw r0, 0x64(r4)
/* 814A4184 | 80 01 00 1C */	lwz r0, 0x1c(r1)
/* 814A4188 | 91 E1 00 18 */	stw r15, 0x18(r1)
/* 814A418C | 92 A4 00 00 */	stw r21, 0x0(r4)
/* 814A4190 | 92 C4 00 04 */	stw r22, 0x4(r4)
/* 814A4194 | 92 E4 00 08 */	stw r23, 0x8(r4)
/* 814A4198 | 93 04 00 0C */	stw r24, 0xc(r4)
/* 814A419C | 93 24 00 10 */	stw r25, 0x10(r4)
/* 814A41A0 | 93 44 00 14 */	stw r26, 0x14(r4)
/* 814A41A4 | 93 64 00 18 */	stw r27, 0x18(r4)
/* 814A41A8 | 93 84 00 1C */	stw r28, 0x1c(r4)
/* 814A41AC | 93 A4 00 20 */	stw r29, 0x20(r4)
/* 814A41B0 | 93 C4 00 24 */	stw r30, 0x24(r4)
/* 814A41B4 | 93 E4 00 28 */	stw r31, 0x28(r4)
/* 814A41B8 | 91 84 00 2C */	stw r12, 0x2c(r4)
/* 814A41BC | 99 64 00 30 */	stb r11, 0x30(r4)
/* 814A41C0 | 99 44 00 31 */	stb r10, 0x31(r4)
/* 814A41C4 | B1 24 00 32 */	sth r9, 0x32(r4)
/* 814A41C8 | 92 84 00 34 */	stw r20, 0x34(r4)
/* 814A41CC | 92 64 00 38 */	stw r19, 0x38(r4)
/* 814A41D0 | 92 44 00 3C */	stw r18, 0x3c(r4)
/* 814A41D4 | 92 24 00 40 */	stw r17, 0x40(r4)
/* 814A41D8 | 92 04 00 44 */	stw r16, 0x44(r4)
/* 814A41DC | 91 04 00 48 */	stw r8, 0x48(r4)
/* 814A41E0 | 90 E4 00 4C */	stw r7, 0x4c(r4)
/* 814A41E4 | 90 C4 00 70 */	stw r6, 0x70(r4)
/* 814A41E8 | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 814A41EC | 91 C4 00 50 */	stw r14, 0x50(r4)
/* 814A41F0 | 90 04 00 6C */	stw r0, 0x6c(r4)
/* 814A41F4 | 39 61 00 70 */	addi r11, r1, 0x70
/* 814A41F8 | 48 15 52 E1 */	bl _restgpr_14
/* 814A41FC | 80 01 00 74 */	lwz r0, 0x74(r1)
/* 814A4200 | 7C 08 03 A6 */	mtlr r0
/* 814A4204 | 38 21 00 70 */	addi r1, r1, 0x70
/* 814A4208 | 4E 80 00 20 */	blr
.endfn CopyMsgObjToMBCFmt

# .text:0xC3C | 0x814A420C | size: 0x220
.fn CopyMsgObjToPrvFmt_814A420C, global
/* 814A420C | 94 21 FF 70 */	stwu r1, -0x90(r1)
/* 814A4210 | 7C 08 02 A6 */	mflr r0
/* 814A4214 | 90 01 00 94 */	stw r0, 0x94(r1)
/* 814A4218 | 39 61 00 90 */	addi r11, r1, 0x90
/* 814A421C | 48 15 52 71 */	bl _savegpr_14
/* 814A4220 | 80 A3 00 34 */	lwz r5, 0x34(r3)
/* 814A4224 | 38 00 00 00 */	li r0, 0x0
/* 814A4228 | 81 23 00 38 */	lwz r9, 0x38(r3)
/* 814A422C | 81 43 00 3C */	lwz r10, 0x3c(r3)
/* 814A4230 | 54 A8 03 3E */	clrlwi r8, r5, 12
/* 814A4234 | 54 A7 65 3E */	srwi r7, r5, 20
/* 814A4238 | 55 26 03 3E */	clrlwi r6, r9, 12
/* 814A423C | 55 25 65 3E */	srwi r5, r9, 20
/* 814A4240 | 55 49 65 3E */	srwi r9, r10, 20
/* 814A4244 | 81 63 00 40 */	lwz r11, 0x40(r3)
/* 814A4248 | 55 4E 03 3E */	clrlwi r14, r10, 12
/* 814A424C | 91 21 00 38 */	stw r9, 0x38(r1)
/* 814A4250 | 55 69 03 3E */	clrlwi r9, r11, 12
/* 814A4254 | 81 83 00 44 */	lwz r12, 0x44(r3)
/* 814A4258 | 91 21 00 08 */	stw r9, 0x8(r1)
/* 814A425C | 55 69 65 3E */	srwi r9, r11, 20
/* 814A4260 | 81 E3 00 50 */	lwz r15, 0x50(r3)
/* 814A4264 | 90 A4 00 3C */	stw r5, 0x3c(r4)
/* 814A4268 | 80 A1 00 38 */	lwz r5, 0x38(r1)
/* 814A426C | 91 21 00 0C */	stw r9, 0xc(r1)
/* 814A4270 | 55 89 03 3E */	clrlwi r9, r12, 12
/* 814A4274 | 82 03 00 00 */	lwz r16, 0x0(r3)
/* 814A4278 | 90 A4 00 44 */	stw r5, 0x44(r4)
/* 814A427C | 80 A1 00 08 */	lwz r5, 0x8(r1)
/* 814A4280 | 91 21 00 10 */	stw r9, 0x10(r1)
/* 814A4284 | 55 89 65 3E */	srwi r9, r12, 20
/* 814A4288 | 82 23 00 04 */	lwz r17, 0x4(r3)
/* 814A428C | 90 A4 00 50 */	stw r5, 0x50(r4)
/* 814A4290 | 80 A1 00 0C */	lwz r5, 0xc(r1)
/* 814A4294 | 91 21 00 14 */	stw r9, 0x14(r1)
/* 814A4298 | 82 43 00 08 */	lwz r18, 0x8(r3)
/* 814A429C | 90 A4 00 54 */	stw r5, 0x54(r4)
/* 814A42A0 | 80 A1 00 10 */	lwz r5, 0x10(r1)
/* 814A42A4 | 91 E1 00 18 */	stw r15, 0x18(r1)
/* 814A42A8 | 81 E3 00 54 */	lwz r15, 0x54(r3)
/* 814A42AC | 90 A4 00 58 */	stw r5, 0x58(r4)
/* 814A42B0 | 80 A1 00 14 */	lwz r5, 0x14(r1)
/* 814A42B4 | 91 E1 00 1C */	stw r15, 0x1c(r1)
/* 814A42B8 | 81 E3 00 60 */	lwz r15, 0x60(r3)
/* 814A42BC | 90 A4 00 5C */	stw r5, 0x5c(r4)
/* 814A42C0 | 80 A1 00 18 */	lwz r5, 0x18(r1)
/* 814A42C4 | 91 E1 00 20 */	stw r15, 0x20(r1)
/* 814A42C8 | 81 E3 00 68 */	lwz r15, 0x68(r3)
/* 814A42CC | 90 A4 00 68 */	stw r5, 0x68(r4)
/* 814A42D0 | 80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 814A42D4 | 91 E1 00 24 */	stw r15, 0x24(r1)
/* 814A42D8 | 81 E3 00 58 */	lwz r15, 0x58(r3)
/* 814A42DC | 90 A4 00 6C */	stw r5, 0x6c(r4)
/* 814A42E0 | 80 A1 00 20 */	lwz r5, 0x20(r1)
/* 814A42E4 | 91 E1 00 28 */	stw r15, 0x28(r1)
/* 814A42E8 | 81 E3 00 5C */	lwz r15, 0x5c(r3)
/* 814A42EC | 90 A4 00 78 */	stw r5, 0x78(r4)
/* 814A42F0 | 80 A1 00 24 */	lwz r5, 0x24(r1)
/* 814A42F4 | 91 E1 00 2C */	stw r15, 0x2c(r1)
/* 814A42F8 | 82 63 00 0C */	lwz r19, 0xc(r3)
/* 814A42FC | 90 A4 00 80 */	stw r5, 0x80(r4)
/* 814A4300 | 80 A1 00 28 */	lwz r5, 0x28(r1)
/* 814A4304 | 82 83 00 10 */	lwz r20, 0x10(r3)
/* 814A4308 | 82 A3 00 14 */	lwz r21, 0x14(r3)
/* 814A430C | 82 C3 00 18 */	lwz r22, 0x18(r3)
/* 814A4310 | 82 E3 00 1C */	lwz r23, 0x1c(r3)
/* 814A4314 | 83 03 00 20 */	lwz r24, 0x20(r3)
/* 814A4318 | 83 23 00 24 */	lwz r25, 0x24(r3)
/* 814A431C | 83 43 00 28 */	lwz r26, 0x28(r3)
/* 814A4320 | 83 63 00 2C */	lwz r27, 0x2c(r3)
/* 814A4324 | 8B 83 00 30 */	lbz r28, 0x30(r3)
/* 814A4328 | 8B A3 00 31 */	lbz r29, 0x31(r3)
/* 814A432C | A3 C3 00 32 */	lhz r30, 0x32(r3)
/* 814A4330 | 83 E3 00 48 */	lwz r31, 0x48(r3)
/* 814A4334 | 81 83 00 4C */	lwz r12, 0x4c(r3)
/* 814A4338 | 81 63 00 70 */	lwz r11, 0x70(r3)
/* 814A433C | 81 43 00 74 */	lwz r10, 0x74(r3)
/* 814A4340 | 81 23 00 78 */	lwz r9, 0x78(r3)
/* 814A4344 | 81 E3 00 64 */	lwz r15, 0x64(r3)
/* 814A4348 | 80 63 00 6C */	lwz r3, 0x6c(r3)
/* 814A434C | 90 A4 00 70 */	stw r5, 0x70(r4)
/* 814A4350 | 80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 814A4354 | 90 61 00 34 */	stw r3, 0x34(r1)
/* 814A4358 | 38 60 00 00 */	li r3, 0x0
/* 814A435C | 90 A4 00 74 */	stw r5, 0x74(r4)
/* 814A4360 | 7D E5 7B 78 */	mr r5, r15
/* 814A4364 | 90 A4 00 7C */	stw r5, 0x7c(r4)
/* 814A4368 | 80 A1 00 34 */	lwz r5, 0x34(r1)
/* 814A436C | 91 E1 00 30 */	stw r15, 0x30(r1)
/* 814A4370 | 92 04 00 00 */	stw r16, 0x0(r4)
/* 814A4374 | 92 24 00 04 */	stw r17, 0x4(r4)
/* 814A4378 | 92 44 00 08 */	stw r18, 0x8(r4)
/* 814A437C | 92 64 00 0C */	stw r19, 0xc(r4)
/* 814A4380 | 92 84 00 10 */	stw r20, 0x10(r4)
/* 814A4384 | 92 A4 00 14 */	stw r21, 0x14(r4)
/* 814A4388 | 92 C4 00 18 */	stw r22, 0x18(r4)
/* 814A438C | 92 E4 00 1C */	stw r23, 0x1c(r4)
/* 814A4390 | 93 04 00 20 */	stw r24, 0x20(r4)
/* 814A4394 | 93 24 00 24 */	stw r25, 0x24(r4)
/* 814A4398 | 93 44 00 28 */	stw r26, 0x28(r4)
/* 814A439C | 93 64 00 2C */	stw r27, 0x2c(r4)
/* 814A43A0 | 9B 84 00 C8 */	stb r28, 0xc8(r4)
/* 814A43A4 | 9B A4 00 C9 */	stb r29, 0xc9(r4)
/* 814A43A8 | B3 C4 00 CA */	sth r30, 0xca(r4)
/* 814A43AC | 93 E4 00 48 */	stw r31, 0x48(r4)
/* 814A43B0 | 91 84 00 4C */	stw r12, 0x4c(r4)
/* 814A43B4 | 91 64 00 E8 */	stw r11, 0xe8(r4)
/* 814A43B8 | 91 44 00 EC */	stw r10, 0xec(r4)
/* 814A43BC | 91 24 00 F0 */	stw r9, 0xf0(r4)
/* 814A43C0 | 91 04 00 30 */	stw r8, 0x30(r4)
/* 814A43C4 | 90 E4 00 34 */	stw r7, 0x34(r4)
/* 814A43C8 | 90 C4 00 38 */	stw r6, 0x38(r4)
/* 814A43CC | 91 C4 00 40 */	stw r14, 0x40(r4)
/* 814A43D0 | 90 A4 00 84 */	stw r5, 0x84(r4)
/* 814A43D4 | 90 04 00 8C */	stw r0, 0x8c(r4)
/* 814A43D8 | 90 04 00 88 */	stw r0, 0x88(r4)
/* 814A43DC | 90 04 00 94 */	stw r0, 0x94(r4)
/* 814A43E0 | 90 04 00 90 */	stw r0, 0x90(r4)
/* 814A43E4 | 90 04 00 9C */	stw r0, 0x9c(r4)
/* 814A43E8 | 90 04 00 98 */	stw r0, 0x98(r4)
/* 814A43EC | 90 04 00 A4 */	stw r0, 0xa4(r4)
/* 814A43F0 | 90 04 00 A0 */	stw r0, 0xa0(r4)
/* 814A43F4 | 90 04 00 AC */	stw r0, 0xac(r4)
/* 814A43F8 | 90 04 00 A8 */	stw r0, 0xa8(r4)
/* 814A43FC | 90 04 00 B4 */	stw r0, 0xb4(r4)
/* 814A4400 | 90 04 00 B0 */	stw r0, 0xb0(r4)
/* 814A4404 | 90 04 00 BC */	stw r0, 0xbc(r4)
/* 814A4408 | 90 04 00 B8 */	stw r0, 0xb8(r4)
/* 814A440C | 90 04 00 C4 */	stw r0, 0xc4(r4)
/* 814A4410 | 90 04 00 C0 */	stw r0, 0xc0(r4)
/* 814A4414 | 39 61 00 90 */	addi r11, r1, 0x90
/* 814A4418 | 48 15 50 C1 */	bl _restgpr_14
/* 814A441C | 80 01 00 94 */	lwz r0, 0x94(r1)
/* 814A4420 | 7C 08 03 A6 */	mtlr r0
/* 814A4424 | 38 21 00 90 */	addi r1, r1, 0x90
/* 814A4428 | 4E 80 00 20 */	blr
.endfn CopyMsgObjToPrvFmt_814A420C

# .text:0xE5C | 0x814A442C | size: 0x134
.fn Base64Encode, local
/* 814A442C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A4430 | 7C 08 02 A6 */	mflr r0
/* 814A4434 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A4438 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A443C | 48 15 50 85 */	bl _savegpr_27
/* 814A4440 | 39 64 00 02 */	addi r11, r4, 0x2
/* 814A4444 | 38 00 00 03 */	li r0, 0x3
/* 814A4448 | 7D 6B 03 96 */	divwu r11, r11, r0
/* 814A444C | 39 40 00 00 */	li r10, 0x0
/* 814A4450 | 38 00 00 00 */	li r0, 0x0
/* 814A4454 | 39 20 00 00 */	li r9, 0x0
/* 814A4458 | 7D 69 03 A6 */	mtctr r11
/* 814A445C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A4460 | 40 81 00 C8 */	ble .L_814A4528
.L_814A4464:
/* 814A4464 | 39 69 00 03 */	addi r11, r9, 0x3
/* 814A4468 | 7C 0B 38 00 */	cmpw r11, r7
/* 814A446C | 41 80 00 0C */	blt .L_814A4478
/* 814A4470 | 38 00 FF F8 */	li r0, -0x8
/* 814A4474 | 48 00 00 B4 */	b .L_814A4528
.L_814A4478:
/* 814A4478 | 39 6A 00 01 */	addi r11, r10, 0x1
/* 814A447C | 7D 83 50 AE */	lbzx r12, r3, r10
/* 814A4480 | 7C 0B 20 00 */	cmpw r11, r4
/* 814A4484 | 7F E3 52 14 */	add r31, r3, r10
/* 814A4488 | 3B A0 00 00 */	li r29, 0x0
/* 814A448C | 3B 80 00 00 */	li r28, 0x0
/* 814A4490 | 55 9B 40 2E */	slwi r27, r12, 8
/* 814A4494 | 40 80 00 10 */	bge .L_814A44A4
/* 814A4498 | 89 7F 00 01 */	lbz r11, 0x1(r31)
/* 814A449C | 3B 80 00 01 */	li r28, 0x1
/* 814A44A0 | 7F 7B 5B 78 */	or r27, r27, r11
.L_814A44A4:
/* 814A44A4 | 39 6A 00 02 */	addi r11, r10, 0x2
/* 814A44A8 | 57 7B 40 2E */	slwi r27, r27, 8
/* 814A44AC | 7C 0B 20 00 */	cmpw r11, r4
/* 814A44B0 | 40 80 00 10 */	bge .L_814A44C0
/* 814A44B4 | 89 7F 00 02 */	lbz r11, 0x2(r31)
/* 814A44B8 | 3B A0 00 01 */	li r29, 0x1
/* 814A44BC | 7F 7B 5B 78 */	or r27, r27, r11
.L_814A44C0:
/* 814A44C0 | 83 ED 9B 38 */	lwz r31, MIMEEncStr@sda21(r0)
/* 814A44C4 | 57 6B 76 BE */	extrwi r11, r27, 6, 8
/* 814A44C8 | 57 6C A6 BE */	extrwi r12, r27, 6, 14
/* 814A44CC | 7F C6 4A 14 */	add r30, r6, r9
/* 814A44D0 | 7F FF 58 AE */	lbzx r31, r31, r11
/* 814A44D4 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A44D8 | 39 60 00 40 */	li r11, 0x40
/* 814A44DC | 7F E6 49 AE */	stbx r31, r6, r9
/* 814A44E0 | 83 ED 9B 38 */	lwz r31, MIMEEncStr@sda21(r0)
/* 814A44E4 | 7D 9F 60 AE */	lbzx r12, r31, r12
/* 814A44E8 | 99 9E 00 01 */	stb r12, 0x1(r30)
/* 814A44EC | 81 8D 9B 38 */	lwz r12, MIMEEncStr@sda21(r0)
/* 814A44F0 | 41 82 00 08 */	beq .L_814A44F8
/* 814A44F4 | 57 6B D6 BE */	extrwi r11, r27, 6, 20
.L_814A44F8:
/* 814A44F8 | 7D 8C 58 AE */	lbzx r12, r12, r11
/* 814A44FC | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A4500 | 39 60 00 40 */	li r11, 0x40
/* 814A4504 | 99 9E 00 02 */	stb r12, 0x2(r30)
/* 814A4508 | 81 8D 9B 38 */	lwz r12, MIMEEncStr@sda21(r0)
/* 814A450C | 41 82 00 08 */	beq .L_814A4514
/* 814A4510 | 57 6B 06 BE */	clrlwi r11, r27, 26
.L_814A4514:
/* 814A4514 | 7D 6C 58 AE */	lbzx r11, r12, r11
/* 814A4518 | 39 29 00 04 */	addi r9, r9, 0x4
/* 814A451C | 39 4A 00 03 */	addi r10, r10, 0x3
/* 814A4520 | 99 7E 00 03 */	stb r11, 0x3(r30)
/* 814A4524 | 42 00 FF 40 */	bdnz .L_814A4464
.L_814A4528:
/* 814A4528 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A452C | 91 28 00 00 */	stw r9, 0x0(r8)
/* 814A4530 | 41 82 00 14 */	beq .L_814A4544
/* 814A4534 | 7C 04 50 00 */	cmpw r4, r10
/* 814A4538 | 40 80 00 08 */	bge .L_814A4540
/* 814A453C | 7C 8A 23 78 */	mr r10, r4
.L_814A4540:
/* 814A4540 | 91 45 00 00 */	stw r10, 0x0(r5)
.L_814A4544:
/* 814A4544 | 39 61 00 20 */	addi r11, r1, 0x20
/* 814A4548 | 7C 03 03 78 */	mr r3, r0
/* 814A454C | 48 15 4F C1 */	bl _restgpr_27
/* 814A4550 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A4554 | 7C 08 03 A6 */	mtlr r0
/* 814A4558 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A455C | 4E 80 00 20 */	blr
.endfn Base64Encode

# .text:0xF90 | 0x814A4560 | size: 0x1C
.fn NWC24Base64Encode, global
/* 814A4560 | 7C A9 2B 78 */	mr r9, r5
/* 814A4564 | 7C C0 33 78 */	mr r0, r6
/* 814A4568 | 7C E8 3B 78 */	mr r8, r7
/* 814A456C | 38 A0 00 00 */	li r5, 0x0
/* 814A4570 | 7D 26 4B 78 */	mr r6, r9
/* 814A4574 | 7C 07 03 78 */	mr r7, r0
/* 814A4578 | 4B FF FE B4 */	b Base64Encode
.endfn NWC24Base64Encode

# .text:0xFAC | 0x814A457C | size: 0x88
.fn NWC24Base64Decode, global
/* 814A457C | 81 0D AD A0 */	lwz r8, NWC24WorkP_81698DE0@sda21(r0)
/* 814A4580 | 39 20 00 00 */	li r9, 0x0
/* 814A4584 | 39 40 00 00 */	li r10, 0x0
/* 814A4588 | 39 68 19 00 */	addi r11, r8, 0x1900
/* 814A458C | 39 00 00 00 */	li r8, 0x0
/* 814A4590 | 7C 89 03 A6 */	mtctr r4
/* 814A4594 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A4598 | 40 81 00 60 */	ble .L_814A45F8
.L_814A459C:
/* 814A459C | 88 03 00 00 */	lbz r0, 0x0(r3)
/* 814A45A0 | 7C 0B 00 AE */	lbzx r0, r11, r0
/* 814A45A4 | 7C 00 07 75 */	extsb. r0, r0
/* 814A45A8 | 41 80 00 48 */	blt .L_814A45F0
/* 814A45AC | 2C 00 00 40 */	cmpwi r0, 0x40
/* 814A45B0 | 40 80 00 40 */	bge .L_814A45F0
/* 814A45B4 | 39 29 00 06 */	addi r9, r9, 0x6
/* 814A45B8 | 55 08 30 32 */	slwi r8, r8, 6
/* 814A45BC | 2C 09 00 08 */	cmpwi r9, 0x8
/* 814A45C0 | 7D 08 03 78 */	or r8, r8, r0
/* 814A45C4 | 41 80 00 2C */	blt .L_814A45F0
/* 814A45C8 | 7C 0A 30 40 */	cmplw r10, r6
/* 814A45CC | 41 80 00 10 */	blt .L_814A45DC
/* 814A45D0 | 90 C7 00 00 */	stw r6, 0x0(r7)
/* 814A45D4 | 38 60 FF F8 */	li r3, -0x8
/* 814A45D8 | 4E 80 00 20 */	blr
.L_814A45DC:
/* 814A45DC | 39 29 FF F8 */	subi r9, r9, 0x8
/* 814A45E0 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814A45E4 | 7D 00 4E 30 */	sraw r0, r8, r9
/* 814A45E8 | 98 05 00 00 */	stb r0, 0x0(r5)
/* 814A45EC | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814A45F0:
/* 814A45F0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A45F4 | 42 00 FF A8 */	bdnz .L_814A459C
.L_814A45F8:
/* 814A45F8 | 91 47 00 00 */	stw r10, 0x0(r7)
/* 814A45FC | 38 60 00 00 */	li r3, 0x0
/* 814A4600 | 4E 80 00 20 */	blr
.endfn NWC24Base64Decode

# .text:0x1034 | 0x814A4604 | size: 0x2E0
.fn NWC24InitBase64Table, global
/* 814A4604 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A4608 | 7C 08 02 A6 */	mflr r0
/* 814A460C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A4610 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A4614 | 48 15 4E A5 */	bl _savegpr_25
/* 814A4618 | 38 00 00 08 */	li r0, 0x8
/* 814A461C | 38 C0 00 00 */	li r6, 0x0
/* 814A4620 | 38 80 FF FF */	li r4, -0x1
/* 814A4624 | 7C 09 03 A6 */	mtctr r0
.L_814A4628:
/* 814A4628 | 7C 83 31 AE */	stbx r4, r3, r6
/* 814A462C | 7C A3 32 14 */	add r5, r3, r6
/* 814A4630 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814A4634 | 98 85 00 01 */	stb r4, 0x1(r5)
/* 814A4638 | 98 85 00 02 */	stb r4, 0x2(r5)
/* 814A463C | 98 85 00 03 */	stb r4, 0x3(r5)
/* 814A4640 | 98 85 00 04 */	stb r4, 0x4(r5)
/* 814A4644 | 98 85 00 05 */	stb r4, 0x5(r5)
/* 814A4648 | 98 85 00 06 */	stb r4, 0x6(r5)
/* 814A464C | 98 85 00 07 */	stb r4, 0x7(r5)
/* 814A4650 | 7C A3 32 14 */	add r5, r3, r6
/* 814A4654 | 7C 83 31 AE */	stbx r4, r3, r6
/* 814A4658 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814A465C | 98 85 00 01 */	stb r4, 0x1(r5)
/* 814A4660 | 98 85 00 02 */	stb r4, 0x2(r5)
/* 814A4664 | 98 85 00 03 */	stb r4, 0x3(r5)
/* 814A4668 | 98 85 00 04 */	stb r4, 0x4(r5)
/* 814A466C | 98 85 00 05 */	stb r4, 0x5(r5)
/* 814A4670 | 98 85 00 06 */	stb r4, 0x6(r5)
/* 814A4674 | 98 85 00 07 */	stb r4, 0x7(r5)
/* 814A4678 | 7C A3 32 14 */	add r5, r3, r6
/* 814A467C | 7C 83 31 AE */	stbx r4, r3, r6
/* 814A4680 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814A4684 | 98 85 00 01 */	stb r4, 0x1(r5)
/* 814A4688 | 98 85 00 02 */	stb r4, 0x2(r5)
/* 814A468C | 98 85 00 03 */	stb r4, 0x3(r5)
/* 814A4690 | 98 85 00 04 */	stb r4, 0x4(r5)
/* 814A4694 | 98 85 00 05 */	stb r4, 0x5(r5)
/* 814A4698 | 98 85 00 06 */	stb r4, 0x6(r5)
/* 814A469C | 98 85 00 07 */	stb r4, 0x7(r5)
/* 814A46A0 | 7C A3 32 14 */	add r5, r3, r6
/* 814A46A4 | 7C 83 31 AE */	stbx r4, r3, r6
/* 814A46A8 | 38 C6 00 08 */	addi r6, r6, 0x8
/* 814A46AC | 98 85 00 01 */	stb r4, 0x1(r5)
/* 814A46B0 | 98 85 00 02 */	stb r4, 0x2(r5)
/* 814A46B4 | 98 85 00 03 */	stb r4, 0x3(r5)
/* 814A46B8 | 98 85 00 04 */	stb r4, 0x4(r5)
/* 814A46BC | 98 85 00 05 */	stb r4, 0x5(r5)
/* 814A46C0 | 98 85 00 06 */	stb r4, 0x6(r5)
/* 814A46C4 | 98 85 00 07 */	stb r4, 0x7(r5)
/* 814A46C8 | 42 00 FF 60 */	bdnz .L_814A4628
/* 814A46CC | 39 80 00 00 */	li r12, 0x0
/* 814A46D0 | 39 60 00 01 */	li r11, 0x1
/* 814A46D4 | 99 83 00 41 */	stb r12, 0x41(r3)
/* 814A46D8 | 39 40 00 02 */	li r10, 0x2
/* 814A46DC | 39 20 00 03 */	li r9, 0x3
/* 814A46E0 | 39 00 00 04 */	li r8, 0x4
/* 814A46E4 | 99 63 00 42 */	stb r11, 0x42(r3)
/* 814A46E8 | 38 E0 00 05 */	li r7, 0x5
/* 814A46EC | 38 C0 00 06 */	li r6, 0x6
/* 814A46F0 | 38 A0 00 07 */	li r5, 0x7
/* 814A46F4 | 99 43 00 43 */	stb r10, 0x43(r3)
/* 814A46F8 | 39 80 00 08 */	li r12, 0x8
/* 814A46FC | 39 60 00 09 */	li r11, 0x9
/* 814A4700 | 39 40 00 0A */	li r10, 0xa
/* 814A4704 | 99 23 00 44 */	stb r9, 0x44(r3)
/* 814A4708 | 39 20 00 0B */	li r9, 0xb
/* 814A470C | 38 80 00 18 */	li r4, 0x18
/* 814A4710 | 38 00 00 19 */	li r0, 0x19
/* 814A4714 | 99 03 00 45 */	stb r8, 0x45(r3)
/* 814A4718 | 39 00 00 0C */	li r8, 0xc
/* 814A471C | 98 E3 00 46 */	stb r7, 0x46(r3)
/* 814A4720 | 38 E0 00 0D */	li r7, 0xd
/* 814A4724 | 98 C3 00 47 */	stb r6, 0x47(r3)
/* 814A4728 | 38 C0 00 0E */	li r6, 0xe
/* 814A472C | 98 A3 00 48 */	stb r5, 0x48(r3)
/* 814A4730 | 38 A0 00 0F */	li r5, 0xf
/* 814A4734 | 99 83 00 49 */	stb r12, 0x49(r3)
/* 814A4738 | 39 80 00 10 */	li r12, 0x10
/* 814A473C | 99 63 00 4A */	stb r11, 0x4a(r3)
/* 814A4740 | 39 60 00 11 */	li r11, 0x11
/* 814A4744 | 99 43 00 4B */	stb r10, 0x4b(r3)
/* 814A4748 | 39 40 00 12 */	li r10, 0x12
/* 814A474C | 99 23 00 4C */	stb r9, 0x4c(r3)
/* 814A4750 | 39 20 00 13 */	li r9, 0x13
/* 814A4754 | 99 03 00 4D */	stb r8, 0x4d(r3)
/* 814A4758 | 39 00 00 14 */	li r8, 0x14
/* 814A475C | 98 E3 00 4E */	stb r7, 0x4e(r3)
/* 814A4760 | 38 E0 00 15 */	li r7, 0x15
/* 814A4764 | 98 C3 00 4F */	stb r6, 0x4f(r3)
/* 814A4768 | 38 C0 00 16 */	li r6, 0x16
/* 814A476C | 98 A3 00 50 */	stb r5, 0x50(r3)
/* 814A4770 | 38 A0 00 17 */	li r5, 0x17
/* 814A4774 | 99 83 00 51 */	stb r12, 0x51(r3)
/* 814A4778 | 99 63 00 52 */	stb r11, 0x52(r3)
/* 814A477C | 99 43 00 53 */	stb r10, 0x53(r3)
/* 814A4780 | 99 23 00 54 */	stb r9, 0x54(r3)
/* 814A4784 | 99 03 00 55 */	stb r8, 0x55(r3)
/* 814A4788 | 98 E3 00 56 */	stb r7, 0x56(r3)
/* 814A478C | 98 C3 00 57 */	stb r6, 0x57(r3)
/* 814A4790 | 98 A3 00 58 */	stb r5, 0x58(r3)
/* 814A4794 | 98 83 00 59 */	stb r4, 0x59(r3)
/* 814A4798 | 98 03 00 5A */	stb r0, 0x5a(r3)
/* 814A479C | 3B 20 00 1A */	li r25, 0x1a
/* 814A47A0 | 3B 40 00 1B */	li r26, 0x1b
/* 814A47A4 | 9B 23 00 61 */	stb r25, 0x61(r3)
/* 814A47A8 | 3B 60 00 1C */	li r27, 0x1c
/* 814A47AC | 3B 80 00 1D */	li r28, 0x1d
/* 814A47B0 | 3B A0 00 1E */	li r29, 0x1e
/* 814A47B4 | 9B 43 00 62 */	stb r26, 0x62(r3)
/* 814A47B8 | 3B C0 00 1F */	li r30, 0x1f
/* 814A47BC | 3B E0 00 20 */	li r31, 0x20
/* 814A47C0 | 39 80 00 21 */	li r12, 0x21
/* 814A47C4 | 9B 63 00 63 */	stb r27, 0x63(r3)
/* 814A47C8 | 3B 20 00 22 */	li r25, 0x22
/* 814A47CC | 3B 40 00 23 */	li r26, 0x23
/* 814A47D0 | 3B 60 00 24 */	li r27, 0x24
/* 814A47D4 | 9B 83 00 64 */	stb r28, 0x64(r3)
/* 814A47D8 | 3B 80 00 25 */	li r28, 0x25
/* 814A47DC | 39 60 00 32 */	li r11, 0x32
/* 814A47E0 | 39 40 00 33 */	li r10, 0x33
/* 814A47E4 | 9B A3 00 65 */	stb r29, 0x65(r3)
/* 814A47E8 | 3B A0 00 26 */	li r29, 0x26
/* 814A47EC | 39 20 00 34 */	li r9, 0x34
/* 814A47F0 | 39 00 00 35 */	li r8, 0x35
/* 814A47F4 | 9B C3 00 66 */	stb r30, 0x66(r3)
/* 814A47F8 | 3B C0 00 27 */	li r30, 0x27
/* 814A47FC | 38 E0 00 36 */	li r7, 0x36
/* 814A4800 | 38 C0 00 37 */	li r6, 0x37
/* 814A4804 | 9B E3 00 67 */	stb r31, 0x67(r3)
/* 814A4808 | 3B E0 00 28 */	li r31, 0x28
/* 814A480C | 38 A0 00 38 */	li r5, 0x38
/* 814A4810 | 38 80 00 3E */	li r4, 0x3e
/* 814A4814 | 99 83 00 68 */	stb r12, 0x68(r3)
/* 814A4818 | 39 80 00 29 */	li r12, 0x29
/* 814A481C | 38 00 00 3F */	li r0, 0x3f
/* 814A4820 | 9B 23 00 69 */	stb r25, 0x69(r3)
/* 814A4824 | 3B 20 00 2A */	li r25, 0x2a
/* 814A4828 | 9B 43 00 6A */	stb r26, 0x6a(r3)
/* 814A482C | 3B 40 00 2B */	li r26, 0x2b
/* 814A4830 | 9B 63 00 6B */	stb r27, 0x6b(r3)
/* 814A4834 | 3B 60 00 2C */	li r27, 0x2c
/* 814A4838 | 9B 83 00 6C */	stb r28, 0x6c(r3)
/* 814A483C | 3B 80 00 2D */	li r28, 0x2d
/* 814A4840 | 9B A3 00 6D */	stb r29, 0x6d(r3)
/* 814A4844 | 3B A0 00 2E */	li r29, 0x2e
/* 814A4848 | 9B C3 00 6E */	stb r30, 0x6e(r3)
/* 814A484C | 3B C0 00 2F */	li r30, 0x2f
/* 814A4850 | 9B E3 00 6F */	stb r31, 0x6f(r3)
/* 814A4854 | 3B E0 00 30 */	li r31, 0x30
/* 814A4858 | 99 83 00 70 */	stb r12, 0x70(r3)
/* 814A485C | 39 80 00 31 */	li r12, 0x31
/* 814A4860 | 9B 23 00 71 */	stb r25, 0x71(r3)
/* 814A4864 | 9B 43 00 72 */	stb r26, 0x72(r3)
/* 814A4868 | 9B 63 00 73 */	stb r27, 0x73(r3)
/* 814A486C | 9B 83 00 74 */	stb r28, 0x74(r3)
/* 814A4870 | 9B A3 00 75 */	stb r29, 0x75(r3)
/* 814A4874 | 9B C3 00 76 */	stb r30, 0x76(r3)
/* 814A4878 | 9B E3 00 77 */	stb r31, 0x77(r3)
/* 814A487C | 99 83 00 78 */	stb r12, 0x78(r3)
/* 814A4880 | 99 63 00 79 */	stb r11, 0x79(r3)
/* 814A4884 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A4888 | 99 43 00 7A */	stb r10, 0x7a(r3)
/* 814A488C | 99 23 00 30 */	stb r9, 0x30(r3)
/* 814A4890 | 39 20 00 39 */	li r9, 0x39
/* 814A4894 | 99 03 00 31 */	stb r8, 0x31(r3)
/* 814A4898 | 39 00 00 3A */	li r8, 0x3a
/* 814A489C | 98 E3 00 32 */	stb r7, 0x32(r3)
/* 814A48A0 | 38 E0 00 3B */	li r7, 0x3b
/* 814A48A4 | 98 C3 00 33 */	stb r6, 0x33(r3)
/* 814A48A8 | 38 C0 00 3C */	li r6, 0x3c
/* 814A48AC | 98 A3 00 34 */	stb r5, 0x34(r3)
/* 814A48B0 | 38 A0 00 3D */	li r5, 0x3d
/* 814A48B4 | 99 23 00 35 */	stb r9, 0x35(r3)
/* 814A48B8 | 99 03 00 36 */	stb r8, 0x36(r3)
/* 814A48BC | 98 E3 00 37 */	stb r7, 0x37(r3)
/* 814A48C0 | 98 C3 00 38 */	stb r6, 0x38(r3)
/* 814A48C4 | 98 A3 00 39 */	stb r5, 0x39(r3)
/* 814A48C8 | 98 83 00 2B */	stb r4, 0x2b(r3)
/* 814A48CC | 98 03 00 2F */	stb r0, 0x2f(r3)
/* 814A48D0 | 48 15 4C 35 */	bl _restgpr_25
/* 814A48D4 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A48D8 | 7C 08 03 A6 */	mtlr r0
/* 814A48DC | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A48E0 | 4E 80 00 20 */	blr
.endfn NWC24InitBase64Table

# .text:0x1314 | 0x814A48E4 | size: 0x32C
.fn QEncode, local
/* 814A48E4 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A48E8 | 7C 08 02 A6 */	mflr r0
/* 814A48EC | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A48F0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A48F4 | 48 15 4B B5 */	bl _savegpr_21
/* 814A48F8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A48FC | 3B 60 00 00 */	li r27, 0x0
/* 814A4900 | 40 82 00 0C */	bne .L_814A490C
/* 814A4904 | 38 60 FF FD */	li r3, -0x3
/* 814A4908 | 48 00 02 F0 */	b .L_814A4BF8
.L_814A490C:
/* 814A490C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A4910 | 40 82 00 0C */	bne .L_814A491C
/* 814A4914 | 38 60 FF FD */	li r3, -0x3
/* 814A4918 | 48 00 02 E0 */	b .L_814A4BF8
.L_814A491C:
/* 814A491C | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A4920 | 40 82 00 0C */	bne .L_814A492C
/* 814A4924 | 38 60 FF F8 */	li r3, -0x8
/* 814A4928 | 48 00 02 D0 */	b .L_814A4BF8
.L_814A492C:
/* 814A492C | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A4930 | 41 82 00 0C */	beq .L_814A493C
/* 814A4934 | 38 00 00 00 */	li r0, 0x0
/* 814A4938 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_814A493C:
/* 814A493C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A4940 | 41 82 00 0C */	beq .L_814A494C
/* 814A4944 | 38 00 00 00 */	li r0, 0x0
/* 814A4948 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_814A494C:
/* 814A494C | 3B 40 00 00 */	li r26, 0x0
/* 814A4950 | 3B A0 00 00 */	li r29, 0x0
/* 814A4954 | 3B 80 00 00 */	li r28, 0x0
/* 814A4958 | 3B E0 00 3D */	li r31, 0x3d
/* 814A495C | 3D 80 66 66 */	lis r12, 0x6666
/* 814A4960 | 39 60 00 0D */	li r11, 0xd
/* 814A4964 | 38 00 00 0A */	li r0, 0xa
/* 814A4968 | 3D 40 80 00 */	lis r10, 0x8000
/* 814A496C | 48 00 02 68 */	b .L_814A4BD4
.L_814A4970:
/* 814A4970 | 8A A6 00 00 */	lbz r21, 0x0(r6)
/* 814A4974 | 3B 20 00 00 */	li r25, 0x0
/* 814A4978 | 7E B6 07 74 */	extsb r22, r21
/* 814A497C | 2C 16 00 21 */	cmpwi r22, 0x21
/* 814A4980 | 41 80 00 24 */	blt .L_814A49A4
/* 814A4984 | 2C 16 00 7E */	cmpwi r22, 0x7e
/* 814A4988 | 41 81 00 1C */	bgt .L_814A49A4
/* 814A498C | 2C 16 00 3D */	cmpwi r22, 0x3d
/* 814A4990 | 41 82 00 14 */	beq .L_814A49A4
/* 814A4994 | 9A A1 00 08 */	stb r21, 0x8(r1)
/* 814A4998 | 3A E0 00 01 */	li r23, 0x1
/* 814A499C | 3B 00 00 01 */	li r24, 0x1
/* 814A49A0 | 48 00 01 04 */	b .L_814A4AA4
.L_814A49A4:
/* 814A49A4 | 3A DC 00 01 */	addi r22, r28, 0x1
/* 814A49A8 | 7C 16 38 40 */	cmplw r22, r7
/* 814A49AC | 40 80 00 34 */	bge .L_814A49E0
/* 814A49B0 | 7E B6 07 74 */	extsb r22, r21
/* 814A49B4 | 2C 16 00 0D */	cmpwi r22, 0xd
/* 814A49B8 | 40 82 00 28 */	bne .L_814A49E0
/* 814A49BC | 8A C6 00 01 */	lbz r22, 0x1(r6)
/* 814A49C0 | 2C 16 00 0A */	cmpwi r22, 0xa
/* 814A49C4 | 40 82 00 1C */	bne .L_814A49E0
/* 814A49C8 | 9A A1 00 08 */	stb r21, 0x8(r1)
/* 814A49CC | 3A E0 00 02 */	li r23, 0x2
/* 814A49D0 | 3B 00 00 01 */	li r24, 0x1
/* 814A49D4 | 8A C6 00 01 */	lbz r22, 0x1(r6)
/* 814A49D8 | 9A C1 00 09 */	stb r22, 0x9(r1)
/* 814A49DC | 48 00 00 C8 */	b .L_814A4AA4
.L_814A49E0:
/* 814A49E0 | 9B E1 00 08 */	stb r31, 0x8(r1)
/* 814A49E4 | 8A C6 00 00 */	lbz r22, 0x0(r6)
/* 814A49E8 | 7E DE 26 70 */	srawi r30, r22, 4
/* 814A49EC | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 814A49F0 | 41 80 00 2C */	blt .L_814A4A1C
/* 814A49F4 | 3A CC 66 67 */	addi r22, r12, 0x6667
/* 814A49F8 | 7E D6 F0 96 */	mulhw r22, r22, r30
/* 814A49FC | 7E D6 16 70 */	srawi r22, r22, 2
/* 814A4A00 | 56 D7 0F FE */	srwi r23, r22, 31
/* 814A4A04 | 7E D6 BA 14 */	add r22, r22, r23
/* 814A4A08 | 1E D6 00 0A */	mulli r22, r22, 0xa
/* 814A4A0C | 7E D6 F0 50 */	subf r22, r22, r30
/* 814A4A10 | 3A D6 00 41 */	addi r22, r22, 0x41
/* 814A4A14 | 9A C1 00 09 */	stb r22, 0x9(r1)
/* 814A4A18 | 48 00 00 28 */	b .L_814A4A40
.L_814A4A1C:
/* 814A4A1C | 3A CC 66 67 */	addi r22, r12, 0x6667
/* 814A4A20 | 7E D6 F0 96 */	mulhw r22, r22, r30
/* 814A4A24 | 7E D6 16 70 */	srawi r22, r22, 2
/* 814A4A28 | 56 D7 0F FE */	srwi r23, r22, 31
/* 814A4A2C | 7E D6 BA 14 */	add r22, r22, r23
/* 814A4A30 | 1E D6 00 0A */	mulli r22, r22, 0xa
/* 814A4A34 | 7E D6 F0 50 */	subf r22, r22, r30
/* 814A4A38 | 3A D6 00 30 */	addi r22, r22, 0x30
/* 814A4A3C | 9A C1 00 09 */	stb r22, 0x9(r1)
.L_814A4A40:
/* 814A4A40 | 8A C6 00 00 */	lbz r22, 0x0(r6)
/* 814A4A44 | 56 DE 07 3E */	clrlwi r30, r22, 28
/* 814A4A48 | 2C 1E 00 0A */	cmpwi r30, 0xa
/* 814A4A4C | 41 80 00 2C */	blt .L_814A4A78
/* 814A4A50 | 3A CC 66 67 */	addi r22, r12, 0x6667
/* 814A4A54 | 7E D6 F0 96 */	mulhw r22, r22, r30
/* 814A4A58 | 7E D6 16 70 */	srawi r22, r22, 2
/* 814A4A5C | 56 D7 0F FE */	srwi r23, r22, 31
/* 814A4A60 | 7E D6 BA 14 */	add r22, r22, r23
/* 814A4A64 | 1E D6 00 0A */	mulli r22, r22, 0xa
/* 814A4A68 | 7E D6 F0 50 */	subf r22, r22, r30
/* 814A4A6C | 3A D6 00 41 */	addi r22, r22, 0x41
/* 814A4A70 | 9A C1 00 0A */	stb r22, 0xa(r1)
/* 814A4A74 | 48 00 00 28 */	b .L_814A4A9C
.L_814A4A78:
/* 814A4A78 | 3A CC 66 67 */	addi r22, r12, 0x6667
/* 814A4A7C | 7E D6 F0 96 */	mulhw r22, r22, r30
/* 814A4A80 | 7E D6 16 70 */	srawi r22, r22, 2
/* 814A4A84 | 56 D7 0F FE */	srwi r23, r22, 31
/* 814A4A88 | 7E D6 BA 14 */	add r22, r22, r23
/* 814A4A8C | 1E D6 00 0A */	mulli r22, r22, 0xa
/* 814A4A90 | 7E D6 F0 50 */	subf r22, r22, r30
/* 814A4A94 | 3A D6 00 30 */	addi r22, r22, 0x30
/* 814A4A98 | 9A C1 00 0A */	stb r22, 0xa(r1)
.L_814A4A9C:
/* 814A4A9C | 3A E0 00 01 */	li r23, 0x1
/* 814A4AA0 | 3B 00 00 03 */	li r24, 0x3
.L_814A4AA4:
/* 814A4AA4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A4AA8 | 40 82 00 18 */	bne .L_814A4AC0
/* 814A4AAC | 7E DA C2 14 */	add r22, r26, r24
/* 814A4AB0 | 2C 16 00 4B */	cmpwi r22, 0x4b
/* 814A4AB4 | 41 80 00 0C */	blt .L_814A4AC0
/* 814A4AB8 | 3B 20 00 01 */	li r25, 0x1
/* 814A4ABC | 3B 18 00 03 */	addi r24, r24, 0x3
.L_814A4AC0:
/* 814A4AC0 | 7E DD C2 14 */	add r22, r29, r24
/* 814A4AC4 | 7C 16 20 40 */	cmplw r22, r4
/* 814A4AC8 | 41 80 00 0C */	blt .L_814A4AD4
/* 814A4ACC | 3B 60 FF F8 */	li r27, -0x8
/* 814A4AD0 | 48 00 01 0C */	b .L_814A4BDC
.L_814A4AD4:
/* 814A4AD4 | 2C 19 00 00 */	cmpwi r25, 0x0
/* 814A4AD8 | 7F BD C2 14 */	add r29, r29, r24
/* 814A4ADC | 41 82 00 1C */	beq .L_814A4AF8
/* 814A4AE0 | 9B E3 00 00 */	stb r31, 0x0(r3)
/* 814A4AE4 | 3B 40 00 00 */	li r26, 0x0
/* 814A4AE8 | 3B 18 FF FD */	subi r24, r24, 0x3
/* 814A4AEC | 99 63 00 01 */	stb r11, 0x1(r3)
/* 814A4AF0 | 98 03 00 02 */	stb r0, 0x2(r3)
/* 814A4AF4 | 38 63 00 03 */	addi r3, r3, 0x3
.L_814A4AF8:
/* 814A4AF8 | 2C 98 00 00 */	cmpwi cr1, r24, 0x0
/* 814A4AFC | 7F 5A C2 14 */	add r26, r26, r24
/* 814A4B00 | 3B 20 00 00 */	li r25, 0x0
/* 814A4B04 | 40 85 00 C8 */	ble cr1, .L_814A4BCC
/* 814A4B08 | 2C 18 00 08 */	cmpwi r24, 0x8
/* 814A4B0C | 3A B8 FF F8 */	subi r21, r24, 0x8
/* 814A4B10 | 40 81 00 8C */	ble .L_814A4B9C
/* 814A4B14 | 3B C0 00 00 */	li r30, 0x0
/* 814A4B18 | 41 84 00 14 */	blt cr1, .L_814A4B2C
/* 814A4B1C | 3A CA FF FE */	subi r22, r10, 0x2
/* 814A4B20 | 7C 18 B0 00 */	cmpw r24, r22
/* 814A4B24 | 41 81 00 08 */	bgt .L_814A4B2C
/* 814A4B28 | 3B C0 00 01 */	li r30, 0x1
.L_814A4B2C:
/* 814A4B2C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A4B30 | 41 82 00 6C */	beq .L_814A4B9C
/* 814A4B34 | 3A D5 00 07 */	addi r22, r21, 0x7
/* 814A4B38 | 3B C1 00 08 */	addi r30, r1, 0x8
/* 814A4B3C | 56 D6 E8 FE */	srwi r22, r22, 3
/* 814A4B40 | 7E C9 03 A6 */	mtctr r22
/* 814A4B44 | 2C 15 00 00 */	cmpwi r21, 0x0
/* 814A4B48 | 40 81 00 54 */	ble .L_814A4B9C
.L_814A4B4C:
/* 814A4B4C | 8A DE 00 00 */	lbz r22, 0x0(r30)
/* 814A4B50 | 3B 39 00 08 */	addi r25, r25, 0x8
/* 814A4B54 | 9A C3 00 00 */	stb r22, 0x0(r3)
/* 814A4B58 | 8A DE 00 01 */	lbz r22, 0x1(r30)
/* 814A4B5C | 9A C3 00 01 */	stb r22, 0x1(r3)
/* 814A4B60 | 8A DE 00 02 */	lbz r22, 0x2(r30)
/* 814A4B64 | 9A C3 00 02 */	stb r22, 0x2(r3)
/* 814A4B68 | 8A DE 00 03 */	lbz r22, 0x3(r30)
/* 814A4B6C | 9A C3 00 03 */	stb r22, 0x3(r3)
/* 814A4B70 | 8A DE 00 04 */	lbz r22, 0x4(r30)
/* 814A4B74 | 9A C3 00 04 */	stb r22, 0x4(r3)
/* 814A4B78 | 8A DE 00 05 */	lbz r22, 0x5(r30)
/* 814A4B7C | 9A C3 00 05 */	stb r22, 0x5(r3)
/* 814A4B80 | 8A DE 00 06 */	lbz r22, 0x6(r30)
/* 814A4B84 | 9A C3 00 06 */	stb r22, 0x6(r3)
/* 814A4B88 | 8A DE 00 07 */	lbz r22, 0x7(r30)
/* 814A4B8C | 3B DE 00 08 */	addi r30, r30, 0x8
/* 814A4B90 | 9A C3 00 07 */	stb r22, 0x7(r3)
/* 814A4B94 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814A4B98 | 42 00 FF B4 */	bdnz .L_814A4B4C
.L_814A4B9C:
/* 814A4B9C | 3A A1 00 08 */	addi r21, r1, 0x8
/* 814A4BA0 | 7F D9 C0 50 */	subf r30, r25, r24
/* 814A4BA4 | 7E B5 CA 14 */	add r21, r21, r25
/* 814A4BA8 | 7F C9 03 A6 */	mtctr r30
/* 814A4BAC | 7C 19 C0 00 */	cmpw r25, r24
/* 814A4BB0 | 40 80 00 1C */	bge .L_814A4BCC
.L_814A4BB4:
/* 814A4BB4 | 8A D5 00 00 */	lbz r22, 0x0(r21)
/* 814A4BB8 | 3A B5 00 01 */	addi r21, r21, 0x1
/* 814A4BBC | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814A4BC0 | 9A C3 00 00 */	stb r22, 0x0(r3)
/* 814A4BC4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A4BC8 | 42 00 FF EC */	bdnz .L_814A4BB4
.L_814A4BCC:
/* 814A4BCC | 7F 9C BA 14 */	add r28, r28, r23
/* 814A4BD0 | 7C C6 BA 14 */	add r6, r6, r23
.L_814A4BD4:
/* 814A4BD4 | 7C 1C 38 40 */	cmplw r28, r7
/* 814A4BD8 | 41 80 FD 98 */	blt .L_814A4970
.L_814A4BDC:
/* 814A4BDC | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A4BE0 | 41 82 00 08 */	beq .L_814A4BE8
/* 814A4BE4 | 93 88 00 00 */	stw r28, 0x0(r8)
.L_814A4BE8:
/* 814A4BE8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A4BEC | 41 82 00 08 */	beq .L_814A4BF4
/* 814A4BF0 | 93 A5 00 00 */	stw r29, 0x0(r5)
.L_814A4BF4:
/* 814A4BF4 | 7F 63 DB 78 */	mr r3, r27
.L_814A4BF8:
/* 814A4BF8 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A4BFC | 48 15 48 F9 */	bl _restgpr_21
/* 814A4C00 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A4C04 | 7C 08 03 A6 */	mtlr r0
/* 814A4C08 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A4C0C | 4E 80 00 20 */	blr
.endfn QEncode

# .text:0x1640 | 0x814A4C10 | size: 0x248
.fn QDecode, local
/* 814A4C10 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A4C14 | 7C 08 02 A6 */	mflr r0
/* 814A4C18 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A4C1C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A4C20 | 48 15 48 81 */	bl _savegpr_19
/* 814A4C24 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4C28 | 7C 93 23 78 */	mr r19, r4
/* 814A4C2C | 7C B4 2B 78 */	mr r20, r5
/* 814A4C30 | 7C F5 3B 78 */	mr r21, r7
/* 814A4C34 | 7D 16 43 78 */	mr r22, r8
/* 814A4C38 | 7D 37 4B 78 */	mr r23, r9
/* 814A4C3C | 3B A0 00 00 */	li r29, 0x0
/* 814A4C40 | 3B 80 00 00 */	li r28, 0x0
/* 814A4C44 | 3B 20 00 00 */	li r25, 0x0
/* 814A4C48 | 40 82 00 0C */	bne .L_814A4C54
/* 814A4C4C | 38 60 FF FD */	li r3, -0x3
/* 814A4C50 | 48 00 01 F0 */	b .L_814A4E40
.L_814A4C54:
/* 814A4C54 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A4C58 | 40 82 00 0C */	bne .L_814A4C64
/* 814A4C5C | 38 60 FF FD */	li r3, -0x3
/* 814A4C60 | 48 00 01 E0 */	b .L_814A4E40
.L_814A4C64:
/* 814A4C64 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A4C68 | 40 82 00 0C */	bne .L_814A4C74
/* 814A4C6C | 38 60 FF F8 */	li r3, -0x8
/* 814A4C70 | 48 00 01 D0 */	b .L_814A4E40
.L_814A4C74:
/* 814A4C74 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A4C78 | 41 82 00 0C */	beq .L_814A4C84
/* 814A4C7C | 38 00 00 00 */	li r0, 0x0
/* 814A4C80 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_814A4C84:
/* 814A4C84 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A4C88 | 41 82 00 0C */	beq .L_814A4C94
/* 814A4C8C | 38 00 00 00 */	li r0, 0x0
/* 814A4C90 | 90 08 00 00 */	stw r0, 0x0(r8)
.L_814A4C94:
/* 814A4C94 | 7C DB 33 78 */	mr r27, r6
/* 814A4C98 | 7C 7A 1B 78 */	mr r26, r3
/* 814A4C9C | 3B C0 00 00 */	li r30, 0x0
/* 814A4CA0 | 3B E0 00 20 */	li r31, 0x20
/* 814A4CA4 | 48 00 01 78 */	b .L_814A4E1C
.L_814A4CA8:
/* 814A4CA8 | 7C 1D 98 40 */	cmplw r29, r19
/* 814A4CAC | 41 80 00 0C */	blt .L_814A4CB8
/* 814A4CB0 | 3B 20 FF F8 */	li r25, -0x8
/* 814A4CB4 | 48 00 01 70 */	b .L_814A4E24
.L_814A4CB8:
/* 814A4CB8 | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A4CBC | 41 82 00 24 */	beq .L_814A4CE0
/* 814A4CC0 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A4CC4 | 2C 00 00 5F */	cmpwi r0, 0x5f
/* 814A4CC8 | 40 82 00 18 */	bne .L_814A4CE0
/* 814A4CCC | 9B FA 00 00 */	stb r31, 0x0(r26)
/* 814A4CD0 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A4CD4 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A4CD8 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A4CDC | 48 00 01 3C */	b .L_814A4E18
.L_814A4CE0:
/* 814A4CE0 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A4CE4 | 2C 00 00 3D */	cmpwi r0, 0x3d
/* 814A4CE8 | 40 82 01 1C */	bne .L_814A4E04
/* 814A4CEC | 38 1E 00 02 */	addi r0, r30, 0x2
/* 814A4CF0 | 7C 00 A8 40 */	cmplw r0, r21
/* 814A4CF4 | 40 80 01 10 */	bge .L_814A4E04
/* 814A4CF8 | 8C 1B 00 01 */	lbzu r0, 0x1(r27)
/* 814A4CFC | 3B 00 00 01 */	li r24, 0x1
/* 814A4D00 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A4D04 | 7C 00 07 74 */	extsb r0, r0
/* 814A4D08 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A4D0C | 41 82 00 0C */	beq .L_814A4D18
/* 814A4D10 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A4D14 | 40 82 00 60 */	bne .L_814A4D74
.L_814A4D18:
/* 814A4D18 | 38 9B 00 01 */	addi r4, r27, 0x1
/* 814A4D1C | 38 A0 00 01 */	li r5, 0x1
/* 814A4D20 | 48 00 00 44 */	b .L_814A4D64
.L_814A4D24:
/* 814A4D24 | 88 64 00 00 */	lbz r3, 0x0(r4)
/* 814A4D28 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 814A4D2C | 40 82 00 1C */	bne .L_814A4D48
/* 814A4D30 | 88 04 00 01 */	lbz r0, 0x1(r4)
/* 814A4D34 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A4D38 | 40 82 00 10 */	bne .L_814A4D48
/* 814A4D3C | 7C 9B 23 78 */	mr r27, r4
/* 814A4D40 | 7F DE 2A 14 */	add r30, r30, r5
/* 814A4D44 | 48 00 00 30 */	b .L_814A4D74
.L_814A4D48:
/* 814A4D48 | 7C 60 07 74 */	extsb r0, r3
/* 814A4D4C | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A4D50 | 41 82 00 0C */	beq .L_814A4D5C
/* 814A4D54 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A4D58 | 40 82 00 1C */	bne .L_814A4D74
.L_814A4D5C:
/* 814A4D5C | 38 84 00 01 */	addi r4, r4, 0x1
/* 814A4D60 | 38 A5 00 01 */	addi r5, r5, 0x1
.L_814A4D64:
/* 814A4D64 | 7C 7E 2A 14 */	add r3, r30, r5
/* 814A4D68 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A4D6C | 7C 00 A8 40 */	cmplw r0, r21
/* 814A4D70 | 41 80 FF B4 */	blt .L_814A4D24
.L_814A4D74:
/* 814A4D74 | 88 7B 00 00 */	lbz r3, 0x0(r27)
/* 814A4D78 | 2C 03 00 0D */	cmpwi r3, 0xd
/* 814A4D7C | 40 82 00 1C */	bne .L_814A4D98
/* 814A4D80 | 88 1B 00 01 */	lbz r0, 0x1(r27)
/* 814A4D84 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A4D88 | 40 82 00 10 */	bne .L_814A4D98
/* 814A4D8C | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814A4D90 | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A4D94 | 48 00 00 84 */	b .L_814A4E18
.L_814A4D98:
/* 814A4D98 | 7C 63 07 74 */	extsb r3, r3
/* 814A4D9C | 4B FF 82 D9 */	bl Util_xtoi
/* 814A4DA0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4DA4 | 41 80 00 08 */	blt .L_814A4DAC
/* 814A4DA8 | 54 7C 26 36 */	clrlslwi r28, r3, 28, 4
.L_814A4DAC:
/* 814A4DAC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4DB0 | 40 80 00 08 */	bge .L_814A4DB8
/* 814A4DB4 | 3B 00 00 00 */	li r24, 0x0
.L_814A4DB8:
/* 814A4DB8 | 88 1B 00 01 */	lbz r0, 0x1(r27)
/* 814A4DBC | 7C 03 07 74 */	extsb r3, r0
/* 814A4DC0 | 4B FF 82 B5 */	bl Util_xtoi
/* 814A4DC4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4DC8 | 41 80 00 10 */	blt .L_814A4DD8
/* 814A4DCC | 54 60 07 3E */	clrlwi r0, r3, 28
/* 814A4DD0 | 7F 80 03 78 */	or r0, r28, r0
/* 814A4DD4 | 54 1C 06 3E */	clrlwi r28, r0, 24
.L_814A4DD8:
/* 814A4DD8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4DDC | 40 80 00 08 */	bge .L_814A4DE4
/* 814A4DE0 | 3B 00 00 00 */	li r24, 0x0
.L_814A4DE4:
/* 814A4DE4 | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814A4DE8 | 3B 7B 00 02 */	addi r27, r27, 0x2
/* 814A4DEC | 41 82 00 10 */	beq .L_814A4DFC
/* 814A4DF0 | 9B 9A 00 00 */	stb r28, 0x0(r26)
/* 814A4DF4 | 3B 5A 00 01 */	addi r26, r26, 0x1
/* 814A4DF8 | 3B BD 00 01 */	addi r29, r29, 0x1
.L_814A4DFC:
/* 814A4DFC | 3B DE 00 01 */	addi r30, r30, 0x1
/* 814A4E00 | 48 00 00 18 */	b .L_814A4E18
.L_814A4E04:
/* 814A4E04 | 88 1B 00 00 */	lbz r0, 0x0(r27)
/* 814A4E08 | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814A4E0C | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814A4E10 | 98 1A 00 00 */	stb r0, 0x0(r26)
/* 814A4E14 | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A4E18:
/* 814A4E18 | 3B DE 00 01 */	addi r30, r30, 0x1
.L_814A4E1C:
/* 814A4E1C | 7C 1E A8 40 */	cmplw r30, r21
/* 814A4E20 | 41 80 FE 88 */	blt .L_814A4CA8
.L_814A4E24:
/* 814A4E24 | 2C 14 00 00 */	cmpwi r20, 0x0
/* 814A4E28 | 41 82 00 08 */	beq .L_814A4E30
/* 814A4E2C | 93 B4 00 00 */	stw r29, 0x0(r20)
.L_814A4E30:
/* 814A4E30 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A4E34 | 41 82 00 08 */	beq .L_814A4E3C
/* 814A4E38 | 93 D6 00 00 */	stw r30, 0x0(r22)
.L_814A4E3C:
/* 814A4E3C | 7F 23 CB 78 */	mr r3, r25
.L_814A4E40:
/* 814A4E40 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A4E44 | 48 15 46 A9 */	bl _restgpr_19
/* 814A4E48 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A4E4C | 7C 08 03 A6 */	mtlr r0
/* 814A4E50 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A4E54 | 4E 80 00 20 */	blr
.endfn QDecode

# .text:0x1888 | 0x814A4E58 | size: 0x8
.fn NWC24EncodeQuotedPrintable, global
/* 814A4E58 | 39 20 00 00 */	li r9, 0x0
/* 814A4E5C | 4B FF FA 88 */	b QEncode
.endfn NWC24EncodeQuotedPrintable

# .text:0x1890 | 0x814A4E60 | size: 0x8
.fn NWC24DecodeQuotedPrintable, global
/* 814A4E60 | 39 20 00 00 */	li r9, 0x0
/* 814A4E64 | 4B FF FD AC */	b QDecode
.endfn NWC24DecodeQuotedPrintable

# .text:0x1898 | 0x814A4E68 | size: 0x318
.fn EncodeWord, local
/* 814A4E68 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A4E6C | 7C 08 02 A6 */	mflr r0
/* 814A4E70 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A4E74 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A4E78 | 48 15 46 35 */	bl _savegpr_22
/* 814A4E7C | 83 E1 00 48 */	lwz r31, 0x48(r1)
/* 814A4E80 | 7C 7C 1B 78 */	mr r28, r3
/* 814A4E84 | 7C 9D 23 78 */	mr r29, r4
/* 814A4E88 | 7C BE 2B 78 */	mr r30, r5
/* 814A4E8C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A4E90 | 7C D6 33 78 */	mr r22, r6
/* 814A4E94 | 7C F7 3B 78 */	mr r23, r7
/* 814A4E98 | 7D 18 43 78 */	mr r24, r8
/* 814A4E9C | 7D 39 4B 78 */	mr r25, r9
/* 814A4EA0 | 7D 5A 53 78 */	mr r26, r10
/* 814A4EA4 | 3B 60 00 00 */	li r27, 0x0
/* 814A4EA8 | 41 82 00 0C */	beq .L_814A4EB4
/* 814A4EAC | 38 00 00 00 */	li r0, 0x0
/* 814A4EB0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A4EB4:
/* 814A4EB4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A4EB8 | 40 82 00 1C */	bne .L_814A4ED4
/* 814A4EBC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A4EC0 | 41 82 00 0C */	beq .L_814A4ECC
/* 814A4EC4 | 38 00 00 00 */	li r0, 0x0
/* 814A4EC8 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A4ECC:
/* 814A4ECC | 38 60 FF FD */	li r3, -0x3
/* 814A4ED0 | 48 00 02 98 */	b .L_814A5168
.L_814A4ED4:
/* 814A4ED4 | 38 00 00 00 */	li r0, 0x0
/* 814A4ED8 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A4EDC | 98 03 00 00 */	stb r0, 0x0(r3)
/* 814A4EE0 | 41 82 00 0C */	beq .L_814A4EEC
/* 814A4EE4 | 38 00 00 01 */	li r0, 0x1
/* 814A4EE8 | 90 05 00 00 */	stw r0, 0x0(r5)
.L_814A4EEC:
/* 814A4EEC | 7F 83 E3 78 */	mr r3, r28
/* 814A4EF0 | 4B FF 7E 8D */	bl Mail_strlen
/* 814A4EF4 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814A4EF8 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A4EFC | 40 80 00 18 */	bge .L_814A4F14
/* 814A4F00 | 7F 83 E3 78 */	mr r3, r28
/* 814A4F04 | 38 8D 9B 3C */	li r4, lbl_81697B7C@sda21
/* 814A4F08 | 38 A0 00 02 */	li r5, 0x2
/* 814A4F0C | 4B FF 80 A5 */	bl Mail_strncat
/* 814A4F10 | 48 00 00 0C */	b .L_814A4F1C
.L_814A4F14:
/* 814A4F14 | 38 60 FF F8 */	li r3, -0x8
/* 814A4F18 | 48 00 00 08 */	b .L_814A4F20
.L_814A4F1C:
/* 814A4F1C | 38 60 00 00 */	li r3, 0x0
.L_814A4F20:
/* 814A4F20 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4F24 | 41 82 00 10 */	beq .L_814A4F34
/* 814A4F28 | 38 00 00 00 */	li r0, 0x0
/* 814A4F2C | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 814A4F30 | 48 00 02 38 */	b .L_814A5168
.L_814A4F34:
/* 814A4F34 | 2C 16 00 00 */	cmpwi r22, 0x0
/* 814A4F38 | 40 82 00 0C */	bne .L_814A4F44
/* 814A4F3C | 38 60 FF FD */	li r3, -0x3
/* 814A4F40 | 48 00 00 40 */	b .L_814A4F80
.L_814A4F44:
/* 814A4F44 | 7F 83 E3 78 */	mr r3, r28
/* 814A4F48 | 4B FF 7E 35 */	bl Mail_strlen
/* 814A4F4C | 7C 17 1A 14 */	add r0, r23, r3
/* 814A4F50 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A4F54 | 40 80 00 20 */	bge .L_814A4F74
/* 814A4F58 | 7E C3 B3 78 */	mr r3, r22
/* 814A4F5C | 4B FF 7E 21 */	bl Mail_strlen
/* 814A4F60 | 7C 65 1B 78 */	mr r5, r3
/* 814A4F64 | 7F 83 E3 78 */	mr r3, r28
/* 814A4F68 | 7E C4 B3 78 */	mr r4, r22
/* 814A4F6C | 4B FF 80 45 */	bl Mail_strncat
/* 814A4F70 | 48 00 00 0C */	b .L_814A4F7C
.L_814A4F74:
/* 814A4F74 | 38 60 FF F8 */	li r3, -0x8
/* 814A4F78 | 48 00 00 08 */	b .L_814A4F80
.L_814A4F7C:
/* 814A4F7C | 38 60 00 00 */	li r3, 0x0
.L_814A4F80:
/* 814A4F80 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4F84 | 41 82 00 10 */	beq .L_814A4F94
/* 814A4F88 | 38 00 00 00 */	li r0, 0x0
/* 814A4F8C | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 814A4F90 | 48 00 01 D8 */	b .L_814A5168
.L_814A4F94:
/* 814A4F94 | 7F 83 E3 78 */	mr r3, r28
/* 814A4F98 | 4B FF 7D E5 */	bl Mail_strlen
/* 814A4F9C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814A4FA0 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A4FA4 | 40 80 00 18 */	bge .L_814A4FBC
/* 814A4FA8 | 7F 83 E3 78 */	mr r3, r28
/* 814A4FAC | 38 8D 9B 40 */	li r4, lbl_81697B80@sda21
/* 814A4FB0 | 38 A0 00 01 */	li r5, 0x1
/* 814A4FB4 | 4B FF 7F FD */	bl Mail_strncat
/* 814A4FB8 | 48 00 00 0C */	b .L_814A4FC4
.L_814A4FBC:
/* 814A4FBC | 38 60 FF F8 */	li r3, -0x8
/* 814A4FC0 | 48 00 00 08 */	b .L_814A4FC8
.L_814A4FC4:
/* 814A4FC4 | 38 60 00 00 */	li r3, 0x0
.L_814A4FC8:
/* 814A4FC8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A4FCC | 41 82 00 10 */	beq .L_814A4FDC
/* 814A4FD0 | 38 00 00 00 */	li r0, 0x0
/* 814A4FD4 | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 814A4FD8 | 48 00 01 90 */	b .L_814A5168
.L_814A4FDC:
/* 814A4FDC | 7F 00 07 74 */	extsb r0, r24
/* 814A4FE0 | 9B 01 00 08 */	stb r24, 0x8(r1)
/* 814A4FE4 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 814A4FE8 | 41 82 00 24 */	beq .L_814A500C
/* 814A4FEC | 2C 00 00 62 */	cmpwi r0, 0x62
/* 814A4FF0 | 41 82 00 1C */	beq .L_814A500C
/* 814A4FF4 | 2C 00 00 51 */	cmpwi r0, 0x51
/* 814A4FF8 | 41 82 00 14 */	beq .L_814A500C
/* 814A4FFC | 2C 00 00 71 */	cmpwi r0, 0x71
/* 814A5000 | 41 82 00 0C */	beq .L_814A500C
/* 814A5004 | 38 60 FF FD */	li r3, -0x3
/* 814A5008 | 48 00 00 38 */	b .L_814A5040
.L_814A500C:
/* 814A500C | 7F 83 E3 78 */	mr r3, r28
/* 814A5010 | 4B FF 7D 6D */	bl Mail_strlen
/* 814A5014 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A5018 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A501C | 40 80 00 18 */	bge .L_814A5034
/* 814A5020 | 7F 83 E3 78 */	mr r3, r28
/* 814A5024 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A5028 | 38 A0 00 01 */	li r5, 0x1
/* 814A502C | 4B FF 7F 85 */	bl Mail_strncat
/* 814A5030 | 48 00 00 0C */	b .L_814A503C
.L_814A5034:
/* 814A5034 | 38 60 FF F8 */	li r3, -0x8
/* 814A5038 | 48 00 00 08 */	b .L_814A5040
.L_814A503C:
/* 814A503C | 38 60 00 00 */	li r3, 0x0
.L_814A5040:
/* 814A5040 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5044 | 41 82 00 10 */	beq .L_814A5054
/* 814A5048 | 38 00 00 00 */	li r0, 0x0
/* 814A504C | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 814A5050 | 48 00 01 18 */	b .L_814A5168
.L_814A5054:
/* 814A5054 | 7F 83 E3 78 */	mr r3, r28
/* 814A5058 | 4B FF 7D 25 */	bl Mail_strlen
/* 814A505C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814A5060 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A5064 | 40 80 00 18 */	bge .L_814A507C
/* 814A5068 | 7F 83 E3 78 */	mr r3, r28
/* 814A506C | 38 8D 9B 40 */	li r4, lbl_81697B80@sda21
/* 814A5070 | 38 A0 00 01 */	li r5, 0x1
/* 814A5074 | 4B FF 7F 3D */	bl Mail_strncat
/* 814A5078 | 48 00 00 0C */	b .L_814A5084
.L_814A507C:
/* 814A507C | 38 60 FF F8 */	li r3, -0x8
/* 814A5080 | 48 00 00 08 */	b .L_814A5088
.L_814A5084:
/* 814A5084 | 38 60 00 00 */	li r3, 0x0
.L_814A5088:
/* 814A5088 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A508C | 41 82 00 10 */	beq .L_814A509C
/* 814A5090 | 38 00 00 00 */	li r0, 0x0
/* 814A5094 | 98 1C 00 00 */	stb r0, 0x0(r28)
/* 814A5098 | 48 00 00 D0 */	b .L_814A5168
.L_814A509C:
/* 814A509C | 7F 83 E3 78 */	mr r3, r28
/* 814A50A0 | 7F A4 EB 78 */	mr r4, r29
/* 814A50A4 | 7F C5 F3 78 */	mr r5, r30
/* 814A50A8 | 7F 27 CB 78 */	mr r7, r25
/* 814A50AC | 7F 48 D3 78 */	mr r8, r26
/* 814A50B0 | 7F E9 FB 78 */	mr r9, r31
/* 814A50B4 | 7F 06 07 74 */	extsb r6, r24
/* 814A50B8 | 48 00 06 F9 */	bl ConcatEncodedText
/* 814A50BC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A50C0 | 41 82 00 20 */	beq .L_814A50E0
/* 814A50C4 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A50C8 | 41 82 00 18 */	beq .L_814A50E0
/* 814A50CC | 38 80 00 00 */	li r4, 0x0
/* 814A50D0 | 38 00 00 01 */	li r0, 0x1
/* 814A50D4 | 98 9C 00 00 */	stb r4, 0x0(r28)
/* 814A50D8 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814A50DC | 48 00 00 8C */	b .L_814A5168
.L_814A50E0:
/* 814A50E0 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A50E4 | 40 82 00 08 */	bne .L_814A50EC
/* 814A50E8 | 3B 60 00 01 */	li r27, 0x1
.L_814A50EC:
/* 814A50EC | 7F 83 E3 78 */	mr r3, r28
/* 814A50F0 | 4B FF 7C 8D */	bl Mail_strlen
/* 814A50F4 | 38 03 00 02 */	addi r0, r3, 0x2
/* 814A50F8 | 7C 00 E8 40 */	cmplw r0, r29
/* 814A50FC | 40 80 00 18 */	bge .L_814A5114
/* 814A5100 | 7F 83 E3 78 */	mr r3, r28
/* 814A5104 | 38 8D 9B 44 */	li r4, lbl_81697B84@sda21
/* 814A5108 | 38 A0 00 02 */	li r5, 0x2
/* 814A510C | 4B FF 7E A5 */	bl Mail_strncat
/* 814A5110 | 48 00 00 0C */	b .L_814A511C
.L_814A5114:
/* 814A5114 | 3B A0 FF F8 */	li r29, -0x8
/* 814A5118 | 48 00 00 08 */	b .L_814A5120
.L_814A511C:
/* 814A511C | 3B A0 00 00 */	li r29, 0x0
.L_814A5120:
/* 814A5120 | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A5124 | 41 82 00 1C */	beq .L_814A5140
/* 814A5128 | 38 60 00 00 */	li r3, 0x0
/* 814A512C | 38 00 00 01 */	li r0, 0x1
/* 814A5130 | 98 7C 00 00 */	stb r3, 0x0(r28)
/* 814A5134 | 7F A3 EB 78 */	mr r3, r29
/* 814A5138 | 90 1F 00 00 */	stw r0, 0x0(r31)
/* 814A513C | 48 00 00 2C */	b .L_814A5168
.L_814A5140:
/* 814A5140 | 7F 83 E3 78 */	mr r3, r28
/* 814A5144 | 4B FF 7C 39 */	bl Mail_strlen
/* 814A5148 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814A514C | 2C 1D 00 00 */	cmpwi r29, 0x0
/* 814A5150 | 90 1E 00 00 */	stw r0, 0x0(r30)
/* 814A5154 | 40 82 00 10 */	bne .L_814A5164
/* 814A5158 | 2C 1B 00 00 */	cmpwi r27, 0x0
/* 814A515C | 41 82 00 08 */	beq .L_814A5164
/* 814A5160 | 3B A0 FF F8 */	li r29, -0x8
.L_814A5164:
/* 814A5164 | 7F A3 EB 78 */	mr r3, r29
.L_814A5168:
/* 814A5168 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A516C | 48 15 43 8D */	bl _restgpr_22
/* 814A5170 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A5174 | 7C 08 03 A6 */	mtlr r0
/* 814A5178 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A517C | 4E 80 00 20 */	blr
.endfn EncodeWord

# .text:0x1BB0 | 0x814A5180 | size: 0xCC
.fn NWC24EncodeWord, global
/* 814A5180 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814A5184 | 7C 08 02 A6 */	mflr r0
/* 814A5188 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A518C | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814A5190 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814A5194 | 7C BF 2B 78 */	mr r31, r5
/* 814A5198 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814A519C | 7C 7E 1B 78 */	mr r30, r3
/* 814A51A0 | 40 82 00 0C */	bne .L_814A51AC
/* 814A51A4 | 38 60 FF FD */	li r3, -0x3
/* 814A51A8 | 48 00 00 8C */	b .L_814A5234
.L_814A51AC:
/* 814A51AC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A51B0 | 41 82 00 0C */	beq .L_814A51BC
/* 814A51B4 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A51B8 | 40 82 00 0C */	bne .L_814A51C4
.L_814A51BC:
/* 814A51BC | 38 60 FF FD */	li r3, -0x3
/* 814A51C0 | 48 00 00 74 */	b .L_814A5234
.L_814A51C4:
/* 814A51C4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A51C8 | 41 82 00 0C */	beq .L_814A51D4
/* 814A51CC | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A51D0 | 40 82 00 0C */	bne .L_814A51DC
.L_814A51D4:
/* 814A51D4 | 38 60 FF FD */	li r3, -0x3
/* 814A51D8 | 48 00 00 5C */	b .L_814A5234
.L_814A51DC:
/* 814A51DC | 7D 08 07 75 */	extsb. r8, r8
/* 814A51E0 | 40 82 00 0C */	bne .L_814A51EC
/* 814A51E4 | 38 60 FF FD */	li r3, -0x3
/* 814A51E8 | 48 00 00 4C */	b .L_814A5234
.L_814A51EC:
/* 814A51EC | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A51F0 | 40 82 00 0C */	bne .L_814A51FC
/* 814A51F4 | 38 60 FF FD */	li r3, -0x3
/* 814A51F8 | 48 00 00 3C */	b .L_814A5234
.L_814A51FC:
/* 814A51FC | 39 60 00 00 */	li r11, 0x0
/* 814A5200 | 38 00 00 01 */	li r0, 0x1
/* 814A5204 | 99 63 00 00 */	stb r11, 0x0(r3)
/* 814A5208 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A520C | 91 61 00 08 */	stw r11, 0x8(r1)
/* 814A5210 | 4B FF FC 59 */	bl EncodeWord
/* 814A5214 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5218 | 41 82 00 0C */	beq .L_814A5224
/* 814A521C | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A5220 | 40 82 00 14 */	bne .L_814A5234
.L_814A5224:
/* 814A5224 | 80 1F 00 00 */	lwz r0, 0x0(r31)
/* 814A5228 | 38 A0 00 00 */	li r5, 0x0
/* 814A522C | 7C 9E 02 14 */	add r4, r30, r0
/* 814A5230 | 98 A4 FF FF */	stb r5, -0x1(r4)
.L_814A5234:
/* 814A5234 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814A5238 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814A523C | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814A5240 | 7C 08 03 A6 */	mtlr r0
/* 814A5244 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814A5248 | 4E 80 00 20 */	blr
.endfn NWC24EncodeWord

# .text:0x1C7C | 0x814A524C | size: 0x124
.fn CopyWithoutLinearWhiteSpaces, local
/* 814A524C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5250 | 39 20 00 00 */	li r9, 0x0
/* 814A5254 | 39 40 00 00 */	li r10, 0x0
/* 814A5258 | 41 82 00 18 */	beq .L_814A5270
/* 814A525C | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A5260 | 41 82 00 10 */	beq .L_814A5270
/* 814A5264 | 80 E4 00 00 */	lwz r7, 0x0(r4)
/* 814A5268 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A526C | 40 82 00 0C */	bne .L_814A5278
.L_814A5270:
/* 814A5270 | 38 60 00 00 */	li r3, 0x0
/* 814A5274 | 4E 80 00 20 */	blr
.L_814A5278:
/* 814A5278 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A527C | 40 82 00 1C */	bne .L_814A5298
/* 814A5280 | 38 A0 00 00 */	li r5, 0x0
/* 814A5284 | 38 00 00 01 */	li r0, 0x1
/* 814A5288 | 98 A3 00 00 */	stb r5, 0x0(r3)
/* 814A528C | 38 60 00 01 */	li r3, 0x1
/* 814A5290 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A5294 | 4E 80 00 20 */	blr
.L_814A5298:
/* 814A5298 | 39 67 FF FF */	subi r11, r7, 0x1
/* 814A529C | 38 E0 00 20 */	li r7, 0x20
/* 814A52A0 | 48 00 00 84 */	b .L_814A5324
.L_814A52A4:
/* 814A52A4 | 7D 00 07 74 */	extsb r0, r8
/* 814A52A8 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A52AC | 41 82 00 2C */	beq .L_814A52D8
/* 814A52B0 | 40 80 00 1C */	bge .L_814A52CC
/* 814A52B4 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A52B8 | 41 82 00 20 */	beq .L_814A52D8
/* 814A52BC | 40 80 00 50 */	bge .L_814A530C
/* 814A52C0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A52C4 | 40 80 00 30 */	bge .L_814A52F4
/* 814A52C8 | 48 00 00 44 */	b .L_814A530C
.L_814A52CC:
/* 814A52CC | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A52D0 | 41 82 00 24 */	beq .L_814A52F4
/* 814A52D4 | 48 00 00 38 */	b .L_814A530C
.L_814A52D8:
/* 814A52D8 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A52DC | 40 82 00 10 */	bne .L_814A52EC
/* 814A52E0 | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 814A52E4 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A52E8 | 39 4A 00 01 */	addi r10, r10, 0x1
.L_814A52EC:
/* 814A52EC | 39 20 00 01 */	li r9, 0x1
/* 814A52F0 | 48 00 00 2C */	b .L_814A531C
.L_814A52F4:
/* 814A52F4 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A52F8 | 40 82 00 24 */	bne .L_814A531C
/* 814A52FC | 99 03 00 00 */	stb r8, 0x0(r3)
/* 814A5300 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A5304 | 39 4A 00 01 */	addi r10, r10, 0x1
/* 814A5308 | 48 00 00 14 */	b .L_814A531C
.L_814A530C:
/* 814A530C | 99 03 00 00 */	stb r8, 0x0(r3)
/* 814A5310 | 39 20 00 00 */	li r9, 0x0
/* 814A5314 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A5318 | 39 4A 00 01 */	addi r10, r10, 0x1
.L_814A531C:
/* 814A531C | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A5320 | 38 C6 FF FF */	subi r6, r6, 0x1
.L_814A5324:
/* 814A5324 | 7C 0A 58 40 */	cmplw r10, r11
/* 814A5328 | 40 80 00 18 */	bge .L_814A5340
/* 814A532C | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A5330 | 41 82 00 10 */	beq .L_814A5340
/* 814A5334 | 89 05 00 00 */	lbz r8, 0x0(r5)
/* 814A5338 | 7D 00 07 75 */	extsb. r0, r8
/* 814A533C | 40 82 FF 68 */	bne .L_814A52A4
.L_814A5340:
/* 814A5340 | 38 E0 00 00 */	li r7, 0x0
/* 814A5344 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A5348 | 98 E3 00 00 */	stb r7, 0x0(r3)
/* 814A534C | 38 0A 00 01 */	addi r0, r10, 0x1
/* 814A5350 | 90 04 00 00 */	stw r0, 0x0(r4)
/* 814A5354 | 41 82 00 10 */	beq .L_814A5364
/* 814A5358 | 88 05 00 00 */	lbz r0, 0x0(r5)
/* 814A535C | 7C 00 07 75 */	extsb. r0, r0
/* 814A5360 | 40 82 00 08 */	bne .L_814A5368
.L_814A5364:
/* 814A5364 | 38 E0 00 01 */	li r7, 0x1
.L_814A5368:
/* 814A5368 | 7C E3 3B 78 */	mr r3, r7
/* 814A536C | 4E 80 00 20 */	blr
.endfn CopyWithoutLinearWhiteSpaces

# .text:0x1DA0 | 0x814A5370 | size: 0x2D0
.fn DecodeWord, local
/* 814A5370 | 94 21 FF B0 */	stwu r1, -0x50(r1)
/* 814A5374 | 7C 08 02 A6 */	mflr r0
/* 814A5378 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814A537C | 39 61 00 50 */	addi r11, r1, 0x50
/* 814A5380 | 48 15 41 1D */	bl _savegpr_18
/* 814A5384 | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814A5388 | 7C 74 1B 78 */	mr r20, r3
/* 814A538C | 7C 93 23 78 */	mr r19, r4
/* 814A5390 | 7C B8 2B 78 */	mr r24, r5
/* 814A5394 | 7C D9 33 78 */	mr r25, r6
/* 814A5398 | 7C FA 3B 78 */	mr r26, r7
/* 814A539C | 7D 12 43 78 */	mr r18, r8
/* 814A53A0 | 7D 3B 4B 78 */	mr r27, r9
/* 814A53A4 | 7D 5C 53 78 */	mr r28, r10
/* 814A53A8 | 41 82 00 0C */	beq .L_814A53B4
/* 814A53AC | 38 00 00 00 */	li r0, 0x0
/* 814A53B0 | 90 0A 00 00 */	stw r0, 0x0(r10)
.L_814A53B4:
/* 814A53B4 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A53B8 | 40 82 00 1C */	bne .L_814A53D4
/* 814A53BC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814A53C0 | 41 82 00 0C */	beq .L_814A53CC
/* 814A53C4 | 38 00 00 00 */	li r0, 0x0
/* 814A53C8 | 90 0A 00 00 */	stw r0, 0x0(r10)
.L_814A53CC:
/* 814A53CC | 38 60 FF FD */	li r3, -0x3
/* 814A53D0 | 48 00 02 58 */	b .L_814A5628
.L_814A53D4:
/* 814A53D4 | 38 00 00 00 */	li r0, 0x0
/* 814A53D8 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A53DC | 98 05 00 00 */	stb r0, 0x0(r5)
/* 814A53E0 | 41 82 00 0C */	beq .L_814A53EC
/* 814A53E4 | 38 00 00 01 */	li r0, 0x1
/* 814A53E8 | 90 07 00 00 */	stw r0, 0x0(r7)
.L_814A53EC:
/* 814A53EC | 2C 0A 00 00 */	cmpwi r10, 0x0
/* 814A53F0 | 41 82 00 0C */	beq .L_814A53FC
/* 814A53F4 | 38 00 00 00 */	li r0, 0x0
/* 814A53F8 | 90 0A 00 00 */	stw r0, 0x0(r10)
.L_814A53FC:
/* 814A53FC | 3B AD 9B 3C */	li r29, lbl_81697B7C@sda21
/* 814A5400 | 7F A3 EB 78 */	mr r3, r29
/* 814A5404 | 4B FF 79 79 */	bl Mail_strlen
/* 814A5408 | 7C 77 1B 78 */	mr r23, r3
/* 814A540C | 3A C0 00 00 */	li r22, 0x0
/* 814A5410 | 48 00 00 28 */	b .L_814A5438
.L_814A5414:
/* 814A5414 | 7F F2 B2 14 */	add r31, r18, r22
/* 814A5418 | 7F A4 EB 78 */	mr r4, r29
/* 814A541C | 7F E3 FB 78 */	mr r3, r31
/* 814A5420 | 7E E5 BB 78 */	mr r5, r23
/* 814A5424 | 4B FF 7B ED */	bl Mail_strncmp
/* 814A5428 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A542C | 40 82 00 08 */	bne .L_814A5434
/* 814A5430 | 48 00 00 14 */	b .L_814A5444
.L_814A5434:
/* 814A5434 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814A5438:
/* 814A5438 | 7C 16 D8 40 */	cmplw r22, r27
/* 814A543C | 40 81 FF D8 */	ble .L_814A5414
/* 814A5440 | 3B E0 00 00 */	li r31, 0x0
.L_814A5444:
/* 814A5444 | 7C 1F 90 40 */	cmplw r31, r18
/* 814A5448 | 40 82 00 F0 */	bne .L_814A5538
/* 814A544C | 7E 83 A3 78 */	mr r3, r20
/* 814A5450 | 7E 64 9B 78 */	mr r4, r19
/* 814A5454 | 7F E6 FB 78 */	mr r6, r31
/* 814A5458 | 7F 67 DB 78 */	mr r7, r27
/* 814A545C | 38 A1 00 10 */	addi r5, r1, 0x10
/* 814A5460 | 48 00 04 4D */	bl ExtractCharset
/* 814A5464 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5468 | 41 82 00 08 */	beq .L_814A5470
/* 814A546C | 48 00 01 BC */	b .L_814A5628
.L_814A5470:
/* 814A5470 | 3A AD 9B 40 */	li r21, lbl_81697B80@sda21
/* 814A5474 | 83 A1 00 10 */	lwz r29, 0x10(r1)
/* 814A5478 | 7E A3 AB 78 */	mr r3, r21
/* 814A547C | 4B FF 79 01 */	bl Mail_strlen
/* 814A5480 | 7E 5F EA 14 */	add r18, r31, r29
/* 814A5484 | 7C 77 1B 78 */	mr r23, r3
/* 814A5488 | 7E 54 93 78 */	mr r20, r18
/* 814A548C | 7E 7D D8 50 */	subf r19, r29, r27
/* 814A5490 | 3A C0 00 00 */	li r22, 0x0
/* 814A5494 | 48 00 00 2C */	b .L_814A54C0
.L_814A5498:
/* 814A5498 | 7E 83 A3 78 */	mr r3, r20
/* 814A549C | 7E A4 AB 78 */	mr r4, r21
/* 814A54A0 | 7E E5 BB 78 */	mr r5, r23
/* 814A54A4 | 4B FF 7B 6D */	bl Mail_strncmp
/* 814A54A8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A54AC | 40 82 00 0C */	bne .L_814A54B8
/* 814A54B0 | 7C 72 B2 14 */	add r3, r18, r22
/* 814A54B4 | 48 00 00 18 */	b .L_814A54CC
.L_814A54B8:
/* 814A54B8 | 3A 94 00 01 */	addi r20, r20, 0x1
/* 814A54BC | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814A54C0:
/* 814A54C0 | 7C 16 98 40 */	cmplw r22, r19
/* 814A54C4 | 40 81 FF D4 */	ble .L_814A5498
/* 814A54C8 | 38 60 00 00 */	li r3, 0x0
.L_814A54CC:
/* 814A54CC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A54D0 | 40 82 00 0C */	bne .L_814A54DC
/* 814A54D4 | 38 60 FF FD */	li r3, -0x3
/* 814A54D8 | 48 00 00 14 */	b .L_814A54EC
.L_814A54DC:
/* 814A54DC | 8B C3 00 01 */	lbz r30, 0x1(r3)
/* 814A54E0 | 38 00 00 02 */	li r0, 0x2
/* 814A54E4 | 38 60 00 00 */	li r3, 0x0
/* 814A54E8 | 90 01 00 10 */	stw r0, 0x10(r1)
.L_814A54EC:
/* 814A54EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A54F0 | 41 82 00 08 */	beq .L_814A54F8
/* 814A54F4 | 48 00 01 34 */	b .L_814A5628
.L_814A54F8:
/* 814A54F8 | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A54FC | 7F 03 C3 78 */	mr r3, r24
/* 814A5500 | 7F 24 CB 78 */	mr r4, r25
/* 814A5504 | 38 A1 00 0C */	addi r5, r1, 0xc
/* 814A5508 | 7F BD 02 14 */	add r29, r29, r0
/* 814A550C | 7F C6 07 74 */	extsb r6, r30
/* 814A5510 | 7C FF EA 14 */	add r7, r31, r29
/* 814A5514 | 39 21 00 10 */	addi r9, r1, 0x10
/* 814A5518 | 7D 1D D8 50 */	subf r8, r29, r27
/* 814A551C | 48 00 04 E1 */	bl ExtractEncodedText
/* 814A5520 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5524 | 41 82 00 08 */	beq .L_814A552C
/* 814A5528 | 48 00 01 00 */	b .L_814A5628
.L_814A552C:
/* 814A552C | 80 01 00 10 */	lwz r0, 0x10(r1)
/* 814A5530 | 7F BD 02 14 */	add r29, r29, r0
/* 814A5534 | 48 00 00 DC */	b .L_814A5610
.L_814A5538:
/* 814A5538 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A553C | 41 82 00 0C */	beq .L_814A5548
/* 814A5540 | 7F B2 F8 50 */	subf r29, r18, r31
/* 814A5544 | 48 00 00 14 */	b .L_814A5558
.L_814A5548:
/* 814A5548 | 7E 43 93 78 */	mr r3, r18
/* 814A554C | 7F 64 DB 78 */	mr r4, r27
/* 814A5550 | 4B FF 78 51 */	bl STD_strnlen
/* 814A5554 | 7C 7D 1B 78 */	mr r29, r3
.L_814A5558:
/* 814A5558 | 93 21 00 08 */	stw r25, 0x8(r1)
/* 814A555C | 7F 03 C3 78 */	mr r3, r24
/* 814A5560 | 7E 45 93 78 */	mr r5, r18
/* 814A5564 | 7F A6 EB 78 */	mr r6, r29
/* 814A5568 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814A556C | 4B FF FC E1 */	bl CopyWithoutLinearWhiteSpaces
/* 814A5570 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5574 | 40 82 00 20 */	bne .L_814A5594
/* 814A5578 | 80 01 00 08 */	lwz r0, 0x8(r1)
/* 814A557C | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A5580 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A5584 | 41 82 00 08 */	beq .L_814A558C
/* 814A5588 | 93 BC 00 00 */	stw r29, 0x0(r28)
.L_814A558C:
/* 814A558C | 38 60 FF F8 */	li r3, -0x8
/* 814A5590 | 48 00 00 98 */	b .L_814A5628
.L_814A5594:
/* 814A5594 | 80 E1 00 08 */	lwz r7, 0x8(r1)
/* 814A5598 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A559C | 90 E1 00 0C */	stw r7, 0xc(r1)
/* 814A55A0 | 41 82 00 70 */	beq .L_814A5610
/* 814A55A4 | 7F 03 C3 78 */	mr r3, r24
/* 814A55A8 | 38 80 00 01 */	li r4, 0x1
/* 814A55AC | 38 A0 00 00 */	li r5, 0x0
/* 814A55B0 | 48 00 00 34 */	b .L_814A55E4
.L_814A55B4:
/* 814A55B4 | 7C C0 07 74 */	extsb r0, r6
/* 814A55B8 | 2C 00 00 20 */	cmpwi r0, 0x20
/* 814A55BC | 41 82 00 20 */	beq .L_814A55DC
/* 814A55C0 | 2C 00 00 09 */	cmpwi r0, 0x9
/* 814A55C4 | 41 82 00 18 */	beq .L_814A55DC
/* 814A55C8 | 2C 00 00 0D */	cmpwi r0, 0xd
/* 814A55CC | 41 82 00 10 */	beq .L_814A55DC
/* 814A55D0 | 2C 00 00 0A */	cmpwi r0, 0xa
/* 814A55D4 | 41 82 00 08 */	beq .L_814A55DC
/* 814A55D8 | 38 80 00 00 */	li r4, 0x0
.L_814A55DC:
/* 814A55DC | 38 A5 00 01 */	addi r5, r5, 0x1
/* 814A55E0 | 38 63 00 01 */	addi r3, r3, 0x1
.L_814A55E4:
/* 814A55E4 | 7C 05 38 40 */	cmplw r5, r7
/* 814A55E8 | 40 80 00 10 */	bge .L_814A55F8
/* 814A55EC | 88 C3 00 00 */	lbz r6, 0x0(r3)
/* 814A55F0 | 7C C0 07 75 */	extsb. r0, r6
/* 814A55F4 | 40 82 FF C0 */	bne .L_814A55B4
.L_814A55F8:
/* 814A55F8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A55FC | 41 82 00 14 */	beq .L_814A5610
/* 814A5600 | 38 60 00 00 */	li r3, 0x0
/* 814A5604 | 38 00 00 01 */	li r0, 0x1
/* 814A5608 | 98 78 00 00 */	stb r3, 0x0(r24)
/* 814A560C | 90 01 00 0C */	stw r0, 0xc(r1)
.L_814A5610:
/* 814A5610 | 80 01 00 0C */	lwz r0, 0xc(r1)
/* 814A5614 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A5618 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A561C | 41 82 00 08 */	beq .L_814A5624
/* 814A5620 | 93 BC 00 00 */	stw r29, 0x0(r28)
.L_814A5624:
/* 814A5624 | 38 60 00 00 */	li r3, 0x0
.L_814A5628:
/* 814A5628 | 39 61 00 50 */	addi r11, r1, 0x50
/* 814A562C | 48 15 3E BD */	bl _restgpr_18
/* 814A5630 | 80 01 00 54 */	lwz r0, 0x54(r1)
/* 814A5634 | 7C 08 03 A6 */	mtlr r0
/* 814A5638 | 38 21 00 50 */	addi r1, r1, 0x50
/* 814A563C | 4E 80 00 20 */	blr
.endfn DecodeWord

# .text:0x2070 | 0x814A5640 | size: 0x170
.fn NWC24DecodeMIMEHeaderFieldBody, global
/* 814A5640 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A5644 | 7C 08 02 A6 */	mflr r0
/* 814A5648 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A564C | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A5650 | 48 15 3E 61 */	bl _savegpr_23
/* 814A5654 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A5658 | 7C 78 1B 78 */	mr r24, r3
/* 814A565C | 7C 99 23 78 */	mr r25, r4
/* 814A5660 | 7C BA 2B 78 */	mr r26, r5
/* 814A5664 | 7C FB 3B 78 */	mr r27, r7
/* 814A5668 | 38 00 00 00 */	li r0, 0x0
/* 814A566C | 40 82 00 0C */	bne .L_814A5678
/* 814A5670 | 38 60 FF FD */	li r3, -0x3
/* 814A5674 | 48 00 01 24 */	b .L_814A5798
.L_814A5678:
/* 814A5678 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A567C | 41 82 00 0C */	beq .L_814A5688
/* 814A5680 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A5684 | 40 82 00 0C */	bne .L_814A5690
.L_814A5688:
/* 814A5688 | 38 60 FF FD */	li r3, -0x3
/* 814A568C | 48 00 01 0C */	b .L_814A5798
.L_814A5690:
/* 814A5690 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A5694 | 41 82 00 0C */	beq .L_814A56A0
/* 814A5698 | 2C 06 00 00 */	cmpwi r6, 0x0
/* 814A569C | 40 82 00 0C */	bne .L_814A56A8
.L_814A56A0:
/* 814A56A0 | 38 60 FF FD */	li r3, -0x3
/* 814A56A4 | 48 00 00 F4 */	b .L_814A5798
.L_814A56A8:
/* 814A56A8 | 2C 08 00 00 */	cmpwi r8, 0x0
/* 814A56AC | 40 82 00 0C */	bne .L_814A56B8
/* 814A56B0 | 38 60 FF FD */	li r3, -0x3
/* 814A56B4 | 48 00 00 E4 */	b .L_814A5798
.L_814A56B8:
/* 814A56B8 | 3A E0 00 00 */	li r23, 0x0
/* 814A56BC | 38 80 00 01 */	li r4, 0x1
/* 814A56C0 | 9A E5 00 00 */	stb r23, 0x0(r5)
/* 814A56C4 | 7D 1F 43 78 */	mr r31, r8
/* 814A56C8 | 7D 3E 4B 78 */	mr r30, r9
/* 814A56CC | 7F 5D D3 78 */	mr r29, r26
/* 814A56D0 | 9A E3 00 00 */	stb r23, 0x0(r3)
/* 814A56D4 | 7C DC 33 78 */	mr r28, r6
/* 814A56D8 | 90 87 00 00 */	stw r4, 0x0(r7)
/* 814A56DC | 48 00 00 6C */	b .L_814A5748
.L_814A56E0:
/* 814A56E0 | 92 E1 00 0C */	stw r23, 0xc(r1)
/* 814A56E4 | 7F 03 C3 78 */	mr r3, r24
/* 814A56E8 | 7F 24 CB 78 */	mr r4, r25
/* 814A56EC | 7F A5 EB 78 */	mr r5, r29
/* 814A56F0 | 7F 86 E3 78 */	mr r6, r28
/* 814A56F4 | 7F E8 FB 78 */	mr r8, r31
/* 814A56F8 | 7F C9 F3 78 */	mr r9, r30
/* 814A56FC | 38 E1 00 0C */	addi r7, r1, 0xc
/* 814A5700 | 39 41 00 08 */	addi r10, r1, 0x8
/* 814A5704 | 4B FF FC 6D */	bl DecodeWord
/* 814A5708 | 80 81 00 0C */	lwz r4, 0xc(r1)
/* 814A570C | 7C 60 1B 78 */	mr r0, r3
/* 814A5710 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814A5714 | 41 82 00 50 */	beq .L_814A5764
/* 814A5718 | 38 84 FF FF */	subi r4, r4, 0x1
/* 814A571C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5720 | 90 81 00 0C */	stw r4, 0xc(r1)
/* 814A5724 | 7F BD 22 14 */	add r29, r29, r4
/* 814A5728 | 7F 84 E0 50 */	subf r28, r4, r28
/* 814A572C | 80 7B 00 00 */	lwz r3, 0x0(r27)
/* 814A5730 | 7C 63 22 14 */	add r3, r3, r4
/* 814A5734 | 90 7B 00 00 */	stw r3, 0x0(r27)
/* 814A5738 | 80 61 00 08 */	lwz r3, 0x8(r1)
/* 814A573C | 7F FF 1A 14 */	add r31, r31, r3
/* 814A5740 | 7F C3 F0 50 */	subf r30, r3, r30
/* 814A5744 | 40 82 00 20 */	bne .L_814A5764
.L_814A5748:
/* 814A5748 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A574C | 40 81 00 18 */	ble .L_814A5764
/* 814A5750 | 2C 1C 00 00 */	cmpwi r28, 0x0
/* 814A5754 | 40 81 00 10 */	ble .L_814A5764
/* 814A5758 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814A575C | 7C 63 07 75 */	extsb. r3, r3
/* 814A5760 | 40 82 FF 80 */	bne .L_814A56E0
.L_814A5764:
/* 814A5764 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A5768 | 40 82 00 1C */	bne .L_814A5784
/* 814A576C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A5770 | 40 81 00 14 */	ble .L_814A5784
/* 814A5774 | 88 7F 00 00 */	lbz r3, 0x0(r31)
/* 814A5778 | 7C 63 07 75 */	extsb. r3, r3
/* 814A577C | 41 82 00 08 */	beq .L_814A5784
/* 814A5780 | 38 00 FF F8 */	li r0, -0x8
.L_814A5784:
/* 814A5784 | 80 9B 00 00 */	lwz r4, 0x0(r27)
/* 814A5788 | 38 A0 00 00 */	li r5, 0x0
/* 814A578C | 7C 03 03 78 */	mr r3, r0
/* 814A5790 | 7C 9A 22 14 */	add r4, r26, r4
/* 814A5794 | 98 A4 FF FF */	stb r5, -0x1(r4)
.L_814A5798:
/* 814A5798 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A579C | 48 15 3D 61 */	bl _restgpr_23
/* 814A57A0 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A57A4 | 7C 08 03 A6 */	mtlr r0
/* 814A57A8 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A57AC | 4E 80 00 20 */	blr
.endfn NWC24DecodeMIMEHeaderFieldBody

# .text:0x21E0 | 0x814A57B0 | size: 0xFC
.fn ConcatEncodedText, local
/* 814A57B0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A57B4 | 7C 08 02 A6 */	mflr r0
/* 814A57B8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A57BC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A57C0 | 48 15 3C F9 */	bl _savegpr_25
/* 814A57C4 | 7C 79 1B 78 */	mr r25, r3
/* 814A57C8 | 7C 9F 23 78 */	mr r31, r4
/* 814A57CC | 7C BA 2B 78 */	mr r26, r5
/* 814A57D0 | 7C DB 33 78 */	mr r27, r6
/* 814A57D4 | 7C FC 3B 78 */	mr r28, r7
/* 814A57D8 | 7D 1D 43 78 */	mr r29, r8
/* 814A57DC | 7D 3E 4B 78 */	mr r30, r9
/* 814A57E0 | 4B FF 75 9D */	bl Mail_strlen
/* 814A57E4 | 7C 83 F8 50 */	subf r4, r3, r31
/* 814A57E8 | 7C 7F 1B 78 */	mr r31, r3
/* 814A57EC | 35 24 FF FE */	subic. r9, r4, 0x2
/* 814A57F0 | 40 81 00 A0 */	ble .L_814A5890
/* 814A57F4 | 7F 60 07 74 */	extsb r0, r27
/* 814A57F8 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 814A57FC | 41 82 00 0C */	beq .L_814A5808
/* 814A5800 | 2C 00 00 62 */	cmpwi r0, 0x62
/* 814A5804 | 40 82 00 24 */	bne .L_814A5828
.L_814A5808:
/* 814A5808 | 7F 83 E3 78 */	mr r3, r28
/* 814A580C | 7F A4 EB 78 */	mr r4, r29
/* 814A5810 | 7F C5 F3 78 */	mr r5, r30
/* 814A5814 | 7F 48 D3 78 */	mr r8, r26
/* 814A5818 | 7C D9 FA 14 */	add r6, r25, r31
/* 814A581C | 38 E9 FF FF */	subi r7, r9, 0x1
/* 814A5820 | 4B FF EC 0D */	bl Base64Encode
/* 814A5824 | 48 00 00 3C */	b .L_814A5860
.L_814A5828:
/* 814A5828 | 2C 00 00 51 */	cmpwi r0, 0x51
/* 814A582C | 41 82 00 0C */	beq .L_814A5838
/* 814A5830 | 2C 00 00 71 */	cmpwi r0, 0x71
/* 814A5834 | 40 82 00 28 */	bne .L_814A585C
.L_814A5838:
/* 814A5838 | 38 89 FF FF */	subi r4, r9, 0x1
/* 814A583C | 7F 45 D3 78 */	mr r5, r26
/* 814A5840 | 7F 86 E3 78 */	mr r6, r28
/* 814A5844 | 7F A7 EB 78 */	mr r7, r29
/* 814A5848 | 7F C8 F3 78 */	mr r8, r30
/* 814A584C | 7C 79 1A 14 */	add r3, r25, r3
/* 814A5850 | 39 20 00 01 */	li r9, 0x1
/* 814A5854 | 4B FF F0 91 */	bl QEncode
/* 814A5858 | 48 00 00 08 */	b .L_814A5860
.L_814A585C:
/* 814A585C | 38 60 FF FC */	li r3, -0x4
.L_814A5860:
/* 814A5860 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5864 | 41 82 00 0C */	beq .L_814A5870
/* 814A5868 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A586C | 40 82 00 28 */	bne .L_814A5894
.L_814A5870:
/* 814A5870 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814A5874 | 7C 19 FA 14 */	add r0, r25, r31
/* 814A5878 | 38 A0 00 00 */	li r5, 0x0
/* 814A587C | 7C A4 01 AE */	stbx r5, r4, r0
/* 814A5880 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814A5884 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A5888 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A588C | 48 00 00 08 */	b .L_814A5894
.L_814A5890:
/* 814A5890 | 38 60 FF F8 */	li r3, -0x8
.L_814A5894:
/* 814A5894 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A5898 | 48 15 3C 6D */	bl _restgpr_25
/* 814A589C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A58A0 | 7C 08 03 A6 */	mtlr r0
/* 814A58A4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A58A8 | 4E 80 00 20 */	blr
.endfn ConcatEncodedText

# .text:0x22DC | 0x814A58AC | size: 0x150
.fn ExtractCharset, local
/* 814A58AC | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814A58B0 | 7C 08 02 A6 */	mflr r0
/* 814A58B4 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814A58B8 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A58BC | 48 15 3B F1 */	bl _savegpr_22
/* 814A58C0 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A58C4 | 7C 7D 1B 78 */	mr r29, r3
/* 814A58C8 | 7C 9E 23 78 */	mr r30, r4
/* 814A58CC | 7C BF 2B 78 */	mr r31, r5
/* 814A58D0 | 7C D6 33 78 */	mr r22, r6
/* 814A58D4 | 7C F8 3B 78 */	mr r24, r7
/* 814A58D8 | 40 82 00 0C */	bne .L_814A58E4
/* 814A58DC | 38 60 FF FD */	li r3, -0x3
/* 814A58E0 | 48 00 01 04 */	b .L_814A59E4
.L_814A58E4:
/* 814A58E4 | 3B 8D 9B 3C */	li r28, lbl_81697B7C@sda21
/* 814A58E8 | 7F 83 E3 78 */	mr r3, r28
/* 814A58EC | 4B FF 74 91 */	bl Mail_strlen
/* 814A58F0 | 7C 7B 1B 78 */	mr r27, r3
/* 814A58F4 | 3B 40 00 00 */	li r26, 0x0
/* 814A58F8 | 48 00 00 28 */	b .L_814A5920
.L_814A58FC:
/* 814A58FC | 7E F6 D2 14 */	add r23, r22, r26
/* 814A5900 | 7F 84 E3 78 */	mr r4, r28
/* 814A5904 | 7E E3 BB 78 */	mr r3, r23
/* 814A5908 | 7F 65 DB 78 */	mr r5, r27
/* 814A590C | 4B FF 77 05 */	bl Mail_strncmp
/* 814A5910 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5914 | 40 82 00 08 */	bne .L_814A591C
/* 814A5918 | 48 00 00 14 */	b .L_814A592C
.L_814A591C:
/* 814A591C | 3B 5A 00 01 */	addi r26, r26, 0x1
.L_814A5920:
/* 814A5920 | 7C 1A C0 40 */	cmplw r26, r24
/* 814A5924 | 40 81 FF D8 */	ble .L_814A58FC
/* 814A5928 | 3A E0 00 00 */	li r23, 0x0
.L_814A592C:
/* 814A592C | 2C 17 00 00 */	cmpwi r23, 0x0
/* 814A5930 | 40 82 00 0C */	bne .L_814A593C
/* 814A5934 | 38 60 FF FC */	li r3, -0x4
/* 814A5938 | 48 00 00 AC */	b .L_814A59E4
.L_814A593C:
/* 814A593C | 3B 4D 9B 40 */	li r26, lbl_81697B80@sda21
/* 814A5940 | 7F 43 D3 78 */	mr r3, r26
/* 814A5944 | 4B FF 74 39 */	bl Mail_strlen
/* 814A5948 | 3B 37 00 02 */	addi r25, r23, 0x2
/* 814A594C | 7C 7B 1B 78 */	mr r27, r3
/* 814A5950 | 7C 16 C8 50 */	subf r0, r22, r25
/* 814A5954 | 3B 80 00 00 */	li r28, 0x0
/* 814A5958 | 7F 00 C0 50 */	subf r24, r0, r24
/* 814A595C | 48 00 00 30 */	b .L_814A598C
.L_814A5960:
/* 814A5960 | 7F 23 CB 78 */	mr r3, r25
/* 814A5964 | 7F 44 D3 78 */	mr r4, r26
/* 814A5968 | 7F 65 DB 78 */	mr r5, r27
/* 814A596C | 4B FF 76 A5 */	bl Mail_strncmp
/* 814A5970 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5974 | 40 82 00 10 */	bne .L_814A5984
/* 814A5978 | 7C 77 E2 14 */	add r3, r23, r28
/* 814A597C | 38 03 00 02 */	addi r0, r3, 0x2
/* 814A5980 | 48 00 00 18 */	b .L_814A5998
.L_814A5984:
/* 814A5984 | 3B 39 00 01 */	addi r25, r25, 0x1
/* 814A5988 | 3B 9C 00 01 */	addi r28, r28, 0x1
.L_814A598C:
/* 814A598C | 7C 1C C0 40 */	cmplw r28, r24
/* 814A5990 | 40 81 FF D0 */	ble .L_814A5960
/* 814A5994 | 38 00 00 00 */	li r0, 0x0
.L_814A5998:
/* 814A5998 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814A599C | 40 82 00 0C */	bne .L_814A59A8
/* 814A59A0 | 38 60 FF FC */	li r3, -0x4
/* 814A59A4 | 48 00 00 40 */	b .L_814A59E4
.L_814A59A8:
/* 814A59A8 | 38 97 00 02 */	addi r4, r23, 0x2
/* 814A59AC | 7E E4 00 50 */	subf r23, r4, r0
/* 814A59B0 | 7C 17 F0 40 */	cmplw r23, r30
/* 814A59B4 | 40 80 00 1C */	bge .L_814A59D0
/* 814A59B8 | 7F A3 EB 78 */	mr r3, r29
/* 814A59BC | 7E E5 BB 78 */	mr r5, r23
/* 814A59C0 | 4B FF 75 45 */	bl Mail_strncpy
/* 814A59C4 | 38 00 00 00 */	li r0, 0x0
/* 814A59C8 | 7C 1D B9 AE */	stbx r0, r29, r23
/* 814A59CC | 48 00 00 0C */	b .L_814A59D8
.L_814A59D0:
/* 814A59D0 | 38 60 FF F8 */	li r3, -0x8
/* 814A59D4 | 48 00 00 10 */	b .L_814A59E4
.L_814A59D8:
/* 814A59D8 | 38 17 00 02 */	addi r0, r23, 0x2
/* 814A59DC | 38 60 00 00 */	li r3, 0x0
/* 814A59E0 | 90 1F 00 00 */	stw r0, 0x0(r31)
.L_814A59E4:
/* 814A59E4 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814A59E8 | 48 15 3B 11 */	bl _restgpr_22
/* 814A59EC | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814A59F0 | 7C 08 03 A6 */	mtlr r0
/* 814A59F4 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814A59F8 | 4E 80 00 20 */	blr
.endfn ExtractCharset

# .text:0x242C | 0x814A59FC | size: 0x21C
.fn ExtractEncodedText, local
/* 814A59FC | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814A5A00 | 7C 08 02 A6 */	mflr r0
/* 814A5A04 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814A5A08 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A5A0C | 48 15 3A 9D */	bl _savegpr_21
/* 814A5A10 | 2C 07 00 00 */	cmpwi r7, 0x0
/* 814A5A14 | 7C 78 1B 78 */	mr r24, r3
/* 814A5A18 | 7C 99 23 78 */	mr r25, r4
/* 814A5A1C | 7C BA 2B 78 */	mr r26, r5
/* 814A5A20 | 7C DB 33 78 */	mr r27, r6
/* 814A5A24 | 7C FC 3B 78 */	mr r28, r7
/* 814A5A28 | 7D 15 43 78 */	mr r21, r8
/* 814A5A2C | 7D 3D 4B 78 */	mr r29, r9
/* 814A5A30 | 40 82 00 0C */	bne .L_814A5A3C
/* 814A5A34 | 38 60 FF FD */	li r3, -0x3
/* 814A5A38 | 48 00 01 C8 */	b .L_814A5C00
.L_814A5A3C:
/* 814A5A3C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814A5A40 | 40 82 00 0C */	bne .L_814A5A4C
/* 814A5A44 | 38 60 FF FD */	li r3, -0x3
/* 814A5A48 | 48 00 01 B8 */	b .L_814A5C00
.L_814A5A4C:
/* 814A5A4C | 38 00 00 00 */	li r0, 0x0
/* 814A5A50 | 2C 09 00 00 */	cmpwi r9, 0x0
/* 814A5A54 | 90 05 00 00 */	stw r0, 0x0(r5)
/* 814A5A58 | 40 82 00 0C */	bne .L_814A5A64
/* 814A5A5C | 38 60 FF FD */	li r3, -0x3
/* 814A5A60 | 48 00 01 A0 */	b .L_814A5C00
.L_814A5A64:
/* 814A5A64 | 3B ED 9B 40 */	li r31, lbl_81697B80@sda21
/* 814A5A68 | 90 09 00 00 */	stw r0, 0x0(r9)
/* 814A5A6C | 7F E3 FB 78 */	mr r3, r31
/* 814A5A70 | 4B FF 73 0D */	bl Mail_strlen
/* 814A5A74 | 7C 77 1B 78 */	mr r23, r3
/* 814A5A78 | 3A C0 00 00 */	li r22, 0x0
/* 814A5A7C | 48 00 00 28 */	b .L_814A5AA4
.L_814A5A80:
/* 814A5A80 | 7F DC B2 14 */	add r30, r28, r22
/* 814A5A84 | 7F E4 FB 78 */	mr r4, r31
/* 814A5A88 | 7F C3 F3 78 */	mr r3, r30
/* 814A5A8C | 7E E5 BB 78 */	mr r5, r23
/* 814A5A90 | 4B FF 75 81 */	bl Mail_strncmp
/* 814A5A94 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5A98 | 40 82 00 08 */	bne .L_814A5AA0
/* 814A5A9C | 48 00 00 14 */	b .L_814A5AB0
.L_814A5AA0:
/* 814A5AA0 | 3A D6 00 01 */	addi r22, r22, 0x1
.L_814A5AA4:
/* 814A5AA4 | 7C 16 A8 40 */	cmplw r22, r21
/* 814A5AA8 | 40 81 FF D8 */	ble .L_814A5A80
/* 814A5AAC | 3B C0 00 00 */	li r30, 0x0
.L_814A5AB0:
/* 814A5AB0 | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814A5AB4 | 40 82 00 0C */	bne .L_814A5AC0
/* 814A5AB8 | 38 60 FF FC */	li r3, -0x4
/* 814A5ABC | 48 00 01 44 */	b .L_814A5C00
.L_814A5AC0:
/* 814A5AC0 | 3A CD 9B 44 */	li r22, lbl_81697B84@sda21
/* 814A5AC4 | 7E C3 B3 78 */	mr r3, r22
/* 814A5AC8 | 4B FF 72 B5 */	bl Mail_strlen
/* 814A5ACC | 38 1E 00 01 */	addi r0, r30, 0x1
/* 814A5AD0 | 7C 77 1B 78 */	mr r23, r3
/* 814A5AD4 | 7C 1C 00 50 */	subf r0, r28, r0
/* 814A5AD8 | 3B E0 00 00 */	li r31, 0x0
/* 814A5ADC | 7E A0 A8 50 */	subf r21, r0, r21
/* 814A5AE0 | 48 00 00 30 */	b .L_814A5B10
.L_814A5AE4:
/* 814A5AE4 | 7C 7E FA 14 */	add r3, r30, r31
/* 814A5AE8 | 7E C4 B3 78 */	mr r4, r22
/* 814A5AEC | 7E E5 BB 78 */	mr r5, r23
/* 814A5AF0 | 38 63 00 01 */	addi r3, r3, 0x1
/* 814A5AF4 | 4B FF 75 1D */	bl Mail_strncmp
/* 814A5AF8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5AFC | 40 82 00 10 */	bne .L_814A5B0C
/* 814A5B00 | 7C 7E FA 14 */	add r3, r30, r31
/* 814A5B04 | 3B E3 00 01 */	addi r31, r3, 0x1
/* 814A5B08 | 48 00 00 14 */	b .L_814A5B1C
.L_814A5B0C:
/* 814A5B0C | 3B FF 00 01 */	addi r31, r31, 0x1
.L_814A5B10:
/* 814A5B10 | 7C 1F A8 40 */	cmplw r31, r21
/* 814A5B14 | 40 81 FF D0 */	ble .L_814A5AE4
/* 814A5B18 | 3B E0 00 00 */	li r31, 0x0
.L_814A5B1C:
/* 814A5B1C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A5B20 | 40 82 00 0C */	bne .L_814A5B2C
/* 814A5B24 | 38 60 FF FC */	li r3, -0x4
/* 814A5B28 | 48 00 00 D8 */	b .L_814A5C00
.L_814A5B2C:
/* 814A5B2C | 7F 60 07 74 */	extsb r0, r27
/* 814A5B30 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 814A5B34 | 2C 00 00 42 */	cmpwi r0, 0x42
/* 814A5B38 | 7C 83 F8 50 */	subf r4, r3, r31
/* 814A5B3C | 41 82 00 0C */	beq .L_814A5B48
/* 814A5B40 | 2C 00 00 62 */	cmpwi r0, 0x62
/* 814A5B44 | 40 82 00 44 */	bne .L_814A5B88
.L_814A5B48:
/* 814A5B48 | 7F 05 C3 78 */	mr r5, r24
/* 814A5B4C | 7F 47 D3 78 */	mr r7, r26
/* 814A5B50 | 38 7E 00 01 */	addi r3, r30, 0x1
/* 814A5B54 | 38 D9 FF FF */	subi r6, r25, 0x1
/* 814A5B58 | 4B FF EA 25 */	bl NWC24Base64Decode
/* 814A5B5C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5B60 | 41 82 00 0C */	beq .L_814A5B6C
/* 814A5B64 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A5B68 | 40 82 00 84 */	bne .L_814A5BEC
.L_814A5B6C:
/* 814A5B6C | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814A5B70 | 38 80 00 00 */	li r4, 0x0
/* 814A5B74 | 7C 98 01 AE */	stbx r4, r24, r0
/* 814A5B78 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814A5B7C | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A5B80 | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A5B84 | 48 00 00 68 */	b .L_814A5BEC
.L_814A5B88:
/* 814A5B88 | 2C 00 00 51 */	cmpwi r0, 0x51
/* 814A5B8C | 41 82 00 0C */	beq .L_814A5B98
/* 814A5B90 | 2C 00 00 71 */	cmpwi r0, 0x71
/* 814A5B94 | 40 82 00 50 */	bne .L_814A5BE4
.L_814A5B98:
/* 814A5B98 | 7C 87 23 78 */	mr r7, r4
/* 814A5B9C | 7F 03 C3 78 */	mr r3, r24
/* 814A5BA0 | 7F 45 D3 78 */	mr r5, r26
/* 814A5BA4 | 38 99 FF FF */	subi r4, r25, 0x1
/* 814A5BA8 | 38 DE 00 01 */	addi r6, r30, 0x1
/* 814A5BAC | 39 00 00 00 */	li r8, 0x0
/* 814A5BB0 | 39 20 00 01 */	li r9, 0x1
/* 814A5BB4 | 4B FF F0 5D */	bl QDecode
/* 814A5BB8 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5BBC | 41 82 00 0C */	beq .L_814A5BC8
/* 814A5BC0 | 2C 03 FF F8 */	cmpwi r3, -0x8
/* 814A5BC4 | 40 82 00 28 */	bne .L_814A5BEC
.L_814A5BC8:
/* 814A5BC8 | 80 1A 00 00 */	lwz r0, 0x0(r26)
/* 814A5BCC | 38 80 00 00 */	li r4, 0x0
/* 814A5BD0 | 7C 98 01 AE */	stbx r4, r24, r0
/* 814A5BD4 | 80 9A 00 00 */	lwz r4, 0x0(r26)
/* 814A5BD8 | 38 04 00 01 */	addi r0, r4, 0x1
/* 814A5BDC | 90 1A 00 00 */	stw r0, 0x0(r26)
/* 814A5BE0 | 48 00 00 0C */	b .L_814A5BEC
.L_814A5BE4:
/* 814A5BE4 | 38 60 FF FC */	li r3, -0x4
/* 814A5BE8 | 48 00 00 18 */	b .L_814A5C00
.L_814A5BEC:
/* 814A5BEC | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814A5BF0 | 41 82 00 10 */	beq .L_814A5C00
/* 814A5BF4 | 7C 9C F8 50 */	subf r4, r28, r31
/* 814A5BF8 | 38 04 00 02 */	addi r0, r4, 0x2
/* 814A5BFC | 90 1D 00 00 */	stw r0, 0x0(r29)
.L_814A5C00:
/* 814A5C00 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814A5C04 | 48 15 38 F1 */	bl _restgpr_21
/* 814A5C08 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814A5C0C | 7C 08 03 A6 */	mtlr r0
/* 814A5C10 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814A5C14 | 4E 80 00 20 */	blr
.endfn ExtractEncodedText

# .text:0x2648 | 0x814A5C18 | size: 0xA0
.fn NWC24FStreamInit, global
/* 814A5C18 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814A5C1C | 7C 08 02 A6 */	mflr r0
/* 814A5C20 | 39 20 00 00 */	li r9, 0x0
/* 814A5C24 | 7C 8A 23 78 */	mr r10, r4
/* 814A5C28 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814A5C2C | 54 A0 00 34 */	clrrwi r0, r5, 5
/* 814A5C30 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814A5C34 | 7C 7F 1B 78 */	mr r31, r3
/* 814A5C38 | 90 A3 00 10 */	stw r5, 0x10(r3)
/* 814A5C3C | 38 A0 00 00 */	li r5, 0x0
/* 814A5C40 | 90 83 00 00 */	stw r4, 0x0(r3)
/* 814A5C44 | 7C 04 03 78 */	mr r4, r0
/* 814A5C48 | 90 C3 00 18 */	stw r6, 0x18(r3)
/* 814A5C4C | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814A5C50 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814A5C54 | 91 23 00 14 */	stw r9, 0x14(r3)
/* 814A5C58 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814A5C5C | 7D 43 53 78 */	mr r3, r10
/* 814A5C60 | 4B FF 84 95 */	bl NWC24FSeek
/* 814A5C64 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814A5C68 | 41 82 00 08 */	beq .L_814A5C70
/* 814A5C6C | 48 00 00 38 */	b .L_814A5CA4
.L_814A5C70:
/* 814A5C70 | 80 7F 00 10 */	lwz r3, 0x10(r31)
/* 814A5C74 | 80 1F 00 18 */	lwz r0, 0x18(r31)
/* 814A5C78 | 80 BF 00 0C */	lwz r5, 0xc(r31)
/* 814A5C7C | 7C 03 02 14 */	add r0, r3, r0
/* 814A5C80 | 80 9F 00 08 */	lwz r4, 0x8(r31)
/* 814A5C84 | 7C 65 00 50 */	subf r3, r5, r0
/* 814A5C88 | 7C 04 18 40 */	cmplw r4, r3
/* 814A5C8C | 40 81 00 0C */	ble .L_814A5C98
/* 814A5C90 | 38 03 00 1F */	addi r0, r3, 0x1f
/* 814A5C94 | 54 04 00 34 */	clrrwi r4, r0, 5
.L_814A5C98:
/* 814A5C98 | 80 7F 00 04 */	lwz r3, 0x4(r31)
/* 814A5C9C | 80 BF 00 00 */	lwz r5, 0x0(r31)
/* 814A5CA0 | 4B FF 86 45 */	bl NWC24FRead
.L_814A5CA4:
/* 814A5CA4 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814A5CA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814A5CAC | 7C 08 03 A6 */	mtlr r0
/* 814A5CB0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814A5CB4 | 4E 80 00 20 */	blr
.endfn NWC24FStreamInit

# 0x8166D9C8..0x8166DA10 | size: 0x48
.data
.balign 8

# .data:0x0 | 0x8166D9C8 | size: 0x48
.obj lbl_8166D9C8, global
	.4byte 0x41424344
	.4byte 0x45464748
	.4byte 0x494A4B4C
	.4byte 0x4D4E4F50
	.4byte 0x51525354
	.4byte 0x55565758
	.4byte 0x595A6162
	.4byte 0x63646566
	.4byte 0x6768696A
	.4byte 0x6B6C6D6E
	.4byte 0x6F707172
	.4byte 0x73747576
	.4byte 0x7778797A
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38392B2F
	.4byte 0x3D000000
	.4byte 0x00000000
.endobj lbl_8166D9C8

# 0x81697B78..0x81697B88 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81697B78 | size: 0x4
.obj MIMEEncStr, local
	.4byte lbl_8166D9C8
.endobj MIMEEncStr

# .sdata:0x4 | 0x81697B7C | size: 0x4
.obj lbl_81697B7C, global
	.4byte 0x3D3F0000
.endobj lbl_81697B7C

# .sdata:0x8 | 0x81697B80 | size: 0x4
.obj lbl_81697B80, global
	.4byte 0x3F000000
.endobj lbl_81697B80

# .sdata:0xC | 0x81697B84 | size: 0x4
.obj lbl_81697B84, global
	.4byte 0x3F3D0000
.endobj lbl_81697B84
