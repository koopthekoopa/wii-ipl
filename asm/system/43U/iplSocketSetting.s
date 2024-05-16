.include "macros.inc"
.file "iplSocketSetting.cpp"

# 0x81089720 - 0x81089760
.section .bss, "wa", @nobits
.balign 8

# ipl::socket::SocketSetting::mMac
.obj mMac__Q33ipl6socket13SocketSetting, global
	.skip 0x40
.endobj mMac__Q33ipl6socket13SocketSetting

# 0x81356E48 - 0x813571A8
.text
.balign 4

# ipl::socket::SocketSetting::getLANMacAddrUtf8()
.fn getLANMacAddrUtf8__Q33ipl6socket13SocketSettingFv, global
/* 81356E48 00025248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356E4C 0002524C  7C 08 02 A6 */	mflr r0
/* 81356E50 00025250  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356E54 00025254  88 0D A6 AE */	lbz r0, lbl_816986EE@sda21(r0)
/* 81356E58 00025258  2C 00 00 00 */	cmpwi r0, 0x0
/* 81356E5C 0002525C  40 82 00 1C */	bne .L_81356E78
/* 81356E60 00025260  3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356E64 00025264  3C 80 81 64 */	lis r4, lbl_81638ED8@ha
/* 81356E68 00025268  38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356E6C 0002526C  38 84 8E D8 */	addi r4, r4, lbl_81638ED8@l
/* 81356E70 00025270  4C C6 31 82 */	crclr cr1eq
/* 81356E74 00025274  48 2A 9C 0D */	bl fn_81600A80
.L_81356E78:
/* 81356E78 00025278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356E7C 0002527C  3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356E80 00025280  38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356E84 00025284  7C 08 03 A6 */	mtlr r0
/* 81356E88 00025288  38 21 00 10 */	addi r1, r1, 0x10
/* 81356E8C 0002528C  4E 80 00 20 */	blr
.endfn getLANMacAddrUtf8__Q33ipl6socket13SocketSettingFv

# ipl::socket::SocketSetting::init(void*)
.fn init__Q33ipl6socket13SocketSettingFPv, global
/* 81356E90 00025290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356E94 00025294  7C 08 02 A6 */	mflr r0
/* 81356E98 00025298  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356E9C 0002529C  80 0D A6 A0 */	lwz r0, lbl_816986E0@sda21(r0)
/* 81356EA0 000252A0  2C 00 00 00 */	cmpwi r0, 0x0
/* 81356EA4 000252A4  40 82 00 6C */	bne .L_81356F10
/* 81356EA8 000252A8  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356EAC 000252AC  38 80 40 00 */	li r4, 0x4000
/* 81356EB0 000252B0  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356EB4 000252B4  38 A0 FF E0 */	li r5, -0x20
/* 81356EB8 000252B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 81356EBC 000252BC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356EC0 000252C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 81356EC4 000252C4  7D 89 03 A6 */	mtctr r12
/* 81356EC8 000252C8  4E 80 04 21 */	bctrl
/* 81356ECC 000252CC  90 6D A6 A4 */	stw r3, lbl_816986E4@sda21(r0)
/* 81356ED0 000252D0  38 80 40 00 */	li r4, 0x4000
/* 81356ED4 000252D4  38 A0 00 02 */	li r5, 0x2
/* 81356ED8 000252D8  48 20 37 9D */	bl fn_8155A674
/* 81356EDC 000252DC  90 6D A6 A0 */	stw r3, lbl_816986E0@sda21(r0)
/* 81356EE0 000252E0  38 61 00 08 */	addi r3, r1, 0x8
/* 81356EE4 000252E4  38 80 00 00 */	li r4, 0x0
/* 81356EE8 000252E8  38 A0 00 08 */	li r5, 0x8
/* 81356EEC 000252EC  4B FD 94 49 */	bl memset
/* 81356EF0 000252F0  3C A0 81 35 */	lis r5, allocfunc__Q33ipl6socket13SocketSettingFUll@ha
/* 81356EF4 000252F4  3C 80 81 35 */	lis r4, freefunc__Q33ipl6socket13SocketSettingFUlPvl@ha
/* 81356EF8 000252F8  38 A5 6F 84 */	addi r5, r5, allocfunc__Q33ipl6socket13SocketSettingFUll@l
/* 81356EFC 000252FC  38 61 00 08 */	addi r3, r1, 0x8
/* 81356F00 00025300  38 84 6F A0 */	addi r4, r4, freefunc__Q33ipl6socket13SocketSettingFUlPvl@l
/* 81356F04 00025304  90 A1 00 08 */	stw r5, 0x8(r1)
/* 81356F08 00025308  90 81 00 0C */	stw r4, 0xc(r1)
/* 81356F0C 0002530C  48 15 B0 2D */	bl fn_814B1F38
.L_81356F10:
/* 81356F10 00025310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356F14 00025314  38 60 00 01 */	li r3, 0x1
/* 81356F18 00025318  7C 08 03 A6 */	mtlr r0
/* 81356F1C 0002531C  38 21 00 10 */	addi r1, r1, 0x10
/* 81356F20 00025320  4E 80 00 20 */	blr
.endfn init__Q33ipl6socket13SocketSettingFPv

# ipl::socket::SocketSetting::finish()
.fn finish__Q33ipl6socket13SocketSettingFv, global
/* 81356F24 00025324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81356F28 00025328  7C 08 02 A6 */	mflr r0
/* 81356F2C 0002532C  90 01 00 14 */	stw r0, 0x14(r1)
/* 81356F30 00025330  80 0D A6 A4 */	lwz r0, lbl_816986E4@sda21(r0)
/* 81356F34 00025334  2C 00 00 00 */	cmpwi r0, 0x0
/* 81356F38 00025338  41 82 00 3C */	beq .L_81356F74
/* 81356F3C 0002533C  48 15 B1 C5 */	bl fn_814B2100
/* 81356F40 00025340  80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356F44 00025344  48 20 37 E1 */	bl fn_8155A724
/* 81356F48 00025348  3C 60 81 09 */	lis r3, smArg__Q23ipl6System@ha
/* 81356F4C 0002534C  80 8D A6 A4 */	lwz r4, lbl_816986E4@sda21(r0)
/* 81356F50 00025350  38 63 90 08 */	addi r3, r3, smArg__Q23ipl6System@l
/* 81356F54 00025354  80 63 00 0C */	lwz r3, 0xc(r3)
/* 81356F58 00025358  81 83 00 00 */	lwz r12, 0x0(r3)
/* 81356F5C 0002535C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 81356F60 00025360  7D 89 03 A6 */	mtctr r12
/* 81356F64 00025364  4E 80 04 21 */	bctrl
/* 81356F68 00025368  38 00 00 00 */	li r0, 0x0
/* 81356F6C 0002536C  90 0D A6 A4 */	stw r0, lbl_816986E4@sda21(r0)
/* 81356F70 00025370  90 0D A6 A0 */	stw r0, lbl_816986E0@sda21(r0)
.L_81356F74:
/* 81356F74 00025374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 81356F78 00025378  7C 08 03 A6 */	mtlr r0
/* 81356F7C 0002537C  38 21 00 10 */	addi r1, r1, 0x10
/* 81356F80 00025380  4E 80 00 20 */	blr
.endfn finish__Q33ipl6socket13SocketSettingFv

# ipl::socket::SocketSetting::allocfunc(unsigned long, long)
.fn allocfunc__Q33ipl6socket13SocketSettingFUll, global
/* 81356F84 00025384  2C 04 00 00 */	cmpwi r4, 0x0
/* 81356F88 00025388  38 60 00 00 */	li r3, 0x0
/* 81356F8C 0002538C  4C 81 00 20 */	blelr
/* 81356F90 00025390  80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356F94 00025394  38 A0 00 20 */	li r5, 0x20
/* 81356F98 00025398  48 20 37 BC */	b fn_8155A754
/* 81356F9C 0002539C  4E 80 00 20 */	blr
.endfn allocfunc__Q33ipl6socket13SocketSettingFUll

# ipl::socket::SocketSetting::freefunc(unsigned long, void*, long)
.fn freefunc__Q33ipl6socket13SocketSettingFUlPvl, global
/* 81356FA0 000253A0  2C 04 00 00 */	cmpwi r4, 0x0
/* 81356FA4 000253A4  4D 82 00 20 */	beqlr
/* 81356FA8 000253A8  80 6D A6 A0 */	lwz r3, lbl_816986E0@sda21(r0)
/* 81356FAC 000253AC  48 20 3A 58 */	b fn_8155AA04
/* 81356FB0 000253B0  4E 80 00 20 */	blr
.endfn freefunc__Q33ipl6socket13SocketSettingFUlPvl

.fn fn_81356FB4, global
/* 81356FB4 000253B4  39 4D A6 A8 */	li r10, lbl_816986E8@sda21
/* 81356FB8 000253B8  3C 60 81 09 */	lis r3, mMac__Q33ipl6socket13SocketSetting@ha
/* 81356FBC 000253BC  3C 80 81 64 */	lis r4, lbl_81638EEA@ha
/* 81356FC0 000253C0  88 AD A6 A8 */	lbz r5, lbl_816986E8@sda21(r0)
/* 81356FC4 000253C4  88 CA 00 01 */	lbz r6, 0x1(r10)
/* 81356FC8 000253C8  38 63 97 20 */	addi r3, r3, mMac__Q33ipl6socket13SocketSetting@l
/* 81356FCC 000253CC  88 EA 00 02 */	lbz r7, 0x2(r10)
/* 81356FD0 000253D0  38 84 8E EA */	addi r4, r4, lbl_81638EEA@l
/* 81356FD4 000253D4  89 0A 00 03 */	lbz r8, 0x3(r10)
/* 81356FD8 000253D8  89 2A 00 04 */	lbz r9, 0x4(r10)
/* 81356FDC 000253DC  89 4A 00 05 */	lbz r10, 0x5(r10)
/* 81356FE0 000253E0  4C C6 31 82 */	crclr cr1eq
/* 81356FE4 000253E4  48 2A 9A 9C */	b fn_81600A80
.endfn fn_81356FB4

# ipl::socket::SocketSetting::obtainLANMacAddr(void*)
.fn obtainLANMacAddr__Q33ipl6socket13SocketSettingFPv, global
/* 81356FE8 000253E8  94 21 F6 C0 */	stwu r1, -0x940(r1)
/* 81356FEC 000253EC  7C 08 02 A6 */	mflr r0
/* 81356FF0 000253F0  90 01 09 44 */	stw r0, 0x944(r1)
/* 81356FF4 000253F4  39 61 09 40 */	addi r11, r1, 0x940
/* 81356FF8 000253F8  48 2A 24 CD */	bl _savegpr_28
/* 81356FFC 000253FC  88 0D A6 AE */	lbz r0, lbl_816986EE@sda21(r0)
/* 81357000 00025400  7C 7C 1B 78 */	mr r28, r3
/* 81357004 00025404  2C 00 00 00 */	cmpwi r0, 0x0
/* 81357008 00025408  40 82 01 44 */	bne .L_8135714C
/* 8135700C 0002540C  38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357010 00025410  38 80 00 00 */	li r4, 0x0
/* 81357014 00025414  38 A0 00 06 */	li r5, 0x6
/* 81357018 00025418  4B FD 93 1D */	bl memset
/* 8135701C 0002541C  4B FF FF 99 */	bl fn_81356FB4
/* 81357020 00025420  7F 83 E3 78 */	mr r3, r28
/* 81357024 00025424  4B FF FE 6D */	bl init__Q33ipl6socket13SocketSettingFPv
/* 81357028 00025428  2C 03 00 00 */	cmpwi r3, 0x0
/* 8135702C 0002542C  41 82 01 18 */	beq .L_81357144
/* 81357030 00025430  38 00 00 00 */	li r0, 0x0
/* 81357034 00025434  3B A0 00 64 */	li r29, 0x64
/* 81357038 00025438  7F 80 E9 D6 */	mullw r28, r0, r29
/* 8135703C 0002543C  3F E0 80 00 */	lis r31, 0x8000
/* 81357040 00025440  3B C0 03 E8 */	li r30, 0x3e8
/* 81357044 00025444  48 00 00 20 */	b .L_81357064
.L_81357048:
/* 81357048 00025448  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8135704C 0002544C  54 00 F0 BE */	srwi r0, r0, 2
/* 81357050 00025450  7C 60 F3 96 */	divwu r3, r0, r30
/* 81357054 00025454  7C 03 E8 16 */	mulhwu r0, r3, r29
/* 81357058 00025458  1C 83 00 64 */	mulli r4, r3, 0x64
/* 8135705C 0002545C  7C 60 E2 14 */	add r3, r0, r28
/* 81357060 00025460  48 1D EB 6D */	bl fn_81535BCC
.L_81357064:
/* 81357064 00025464  48 13 BA 59 */	bl fn_81492ABC
/* 81357068 00025468  2C 03 FF F8 */	cmpwi r3, -0x8
/* 8135706C 0002546C  41 82 FF DC */	beq .L_81357048
/* 81357070 00025470  38 61 01 6C */	addi r3, r1, 0x16c
/* 81357074 00025474  38 80 00 00 */	li r4, 0x0
/* 81357078 00025478  38 A0 07 C4 */	li r5, 0x7c4
/* 8135707C 0002547C  4B FD 92 B9 */	bl memset
/* 81357080 00025480  38 00 00 01 */	li r0, 0x1
/* 81357084 00025484  38 61 01 6C */	addi r3, r1, 0x16c
/* 81357088 00025488  90 01 01 6C */	stw r0, 0x16c(r1)
/* 8135708C 0002548C  48 13 B6 2D */	bl fn_814926B8
/* 81357090 00025490  2C 03 00 00 */	cmpwi r3, 0x0
/* 81357094 00025494  41 80 00 6C */	blt .L_81357100
/* 81357098 00025498  38 61 00 0C */	addi r3, r1, 0xc
/* 8135709C 0002549C  38 80 00 00 */	li r4, 0x0
/* 813570A0 000254A0  38 A0 01 5E */	li r5, 0x15e
/* 813570A4 000254A4  4B FD 92 91 */	bl memset
/* 813570A8 000254A8  38 00 00 02 */	li r0, 0x2
/* 813570AC 000254AC  38 61 00 0C */	addi r3, r1, 0xc
/* 813570B0 000254B0  98 01 00 0C */	stb r0, 0xc(r1)
/* 813570B4 000254B4  48 13 B3 99 */	bl fn_8149244C
/* 813570B8 000254B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 813570BC 000254BC  41 80 00 44 */	blt .L_81357100
/* 813570C0 000254C0  38 00 00 00 */	li r0, 0x0
/* 813570C4 000254C4  3B C0 00 64 */	li r30, 0x64
/* 813570C8 000254C8  7F E0 F1 D6 */	mullw r31, r0, r30
/* 813570CC 000254CC  3F 80 80 00 */	lis r28, 0x8000
/* 813570D0 000254D0  3B A0 03 E8 */	li r29, 0x3e8
/* 813570D4 000254D4  48 00 00 20 */	b .L_813570F4
.L_813570D8:
/* 813570D8 000254D8  80 1C 00 F8 */	lwz r0, 0xf8(r28)
/* 813570DC 000254DC  54 00 F0 BE */	srwi r0, r0, 2
/* 813570E0 000254E0  7C 60 EB 96 */	divwu r3, r0, r29
/* 813570E4 000254E4  7C 03 F0 16 */	mulhwu r0, r3, r30
/* 813570E8 000254E8  1C 83 00 64 */	mulli r4, r3, 0x64
/* 813570EC 000254EC  7C 60 FA 14 */	add r3, r0, r31
/* 813570F0 000254F0  48 1D EA DD */	bl fn_81535BCC
.L_813570F4:
/* 813570F4 000254F4  48 13 B9 C9 */	bl fn_81492ABC
/* 813570F8 000254F8  2C 03 00 03 */	cmpwi r3, 0x3
/* 813570FC 000254FC  40 82 FF DC */	bne .L_813570D8
.L_81357100:
/* 81357100 00025500  38 00 00 06 */	li r0, 0x6
/* 81357104 00025504  3C 60 00 01 */	lis r3, 0x1
/* 81357108 00025508  90 01 00 08 */	stw r0, 0x8(r1)
/* 8135710C 0002550C  38 83 FF FE */	subi r4, r3, 0x2
/* 81357110 00025510  38 E1 00 08 */	addi r7, r1, 0x8
/* 81357114 00025514  38 60 00 00 */	li r3, 0x0
/* 81357118 00025518  38 A0 10 04 */	li r5, 0x1004
/* 8135711C 0002551C  38 CD A6 A8 */	li r6, lbl_816986E8@sda21
/* 81357120 00025520  48 15 D6 4D */	bl fn_814B476C
/* 81357124 00025524  2C 03 00 00 */	cmpwi r3, 0x0
/* 81357128 00025528  40 80 00 14 */	bge .L_8135713C
/* 8135712C 0002552C  38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357130 00025530  38 80 00 00 */	li r4, 0x0
/* 81357134 00025534  38 A0 00 06 */	li r5, 0x6
/* 81357138 00025538  4B FD 91 FD */	bl memset
.L_8135713C:
/* 8135713C 0002553C  4B FF FE 79 */	bl fn_81356FB4
/* 81357140 00025540  4B FF FD E5 */	bl finish__Q33ipl6socket13SocketSettingFv
.L_81357144:
/* 81357144 00025544  38 00 00 01 */	li r0, 0x1
/* 81357148 00025548  98 0D A6 AE */	stb r0, lbl_816986EE@sda21(r0)
.L_8135714C:
/* 8135714C 0002554C  39 61 09 40 */	addi r11, r1, 0x940
/* 81357150 00025550  48 2A 23 C1 */	bl _restgpr_28
/* 81357154 00025554  80 01 09 44 */	lwz r0, 0x944(r1)
/* 81357158 00025558  7C 08 03 A6 */	mtlr r0
/* 8135715C 0002555C  38 21 09 40 */	addi r1, r1, 0x940
/* 81357160 00025560  4E 80 00 20 */	blr
.endfn obtainLANMacAddr__Q33ipl6socket13SocketSettingFPv

# ipl::socket::SocketSetting::checkLANMacAddrAvailable()
.fn checkLANMacAddrAvailable__Q33ipl6socket13SocketSettingFv, global
/* 81357164 00025564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 81357168 00025568  7C 08 02 A6 */	mflr r0
/* 8135716C 0002556C  38 80 00 00 */	li r4, 0x0
/* 81357170 00025570  38 A0 00 06 */	li r5, 0x6
/* 81357174 00025574  90 01 00 14 */	stw r0, 0x14(r1)
/* 81357178 00025578  38 61 00 08 */	addi r3, r1, 0x8
/* 8135717C 0002557C  4B FD 91 B9 */	bl memset
/* 81357180 00025580  38 81 00 08 */	addi r4, r1, 0x8
/* 81357184 00025584  38 6D A6 A8 */	li r3, lbl_816986E8@sda21
/* 81357188 00025588  38 A0 00 06 */	li r5, 0x6
/* 8135718C 0002558C  48 2A 70 49 */	bl fn_815FE1D4
/* 81357190 00025590  30 03 FF FF */	subic r0, r3, 0x1
/* 81357194 00025594  7C 60 19 10 */	subfe r3, r0, r3
/* 81357198 00025598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8135719C 0002559C  7C 08 03 A6 */	mtlr r0
/* 813571A0 000255A0  38 21 00 10 */	addi r1, r1, 0x10
/* 813571A4 000255A4  4E 80 00 20 */	blr
.endfn checkLANMacAddrAvailable__Q33ipl6socket13SocketSettingFv

# 0x81638ED8 - 0x81638F08
.data
.balign 8

.obj lbl_81638ED8, global
	.string "00-00-00-00-00-00"
.endobj lbl_81638ED8

.obj lbl_81638EEA, global
	.string "%02x-%02x-%02x-%02x-%02x-%02x"
.endobj lbl_81638EEA

# 0x816986E0 - 0x816986F0
.section .sbss, "wa", @nobits
.balign 8

.obj lbl_816986E0, global
	.skip 0x4
.endobj lbl_816986E0

.obj lbl_816986E4, global
	.skip 0x4
.endobj lbl_816986E4

.obj lbl_816986E8, global
	.skip 0x6
.endobj lbl_816986E8

.obj lbl_816986EE, global
	.skip 0x1
.endobj lbl_816986EE

.obj gap_12_816986EF_sbss, global
.hidden gap_12_816986EF_sbss
	.skip 0x1
.endobj gap_12_816986EF_sbss
