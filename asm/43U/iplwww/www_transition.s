.include "macros.inc"
.file "www_transition.cpp"

# 0x8108A498..0x8108A4B8 | size: 0x20
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8108A498 | size: 0x20
# www::trasition::cap
.obj cap__Q23www9trasition, global
	.skip 0x20
.endobj cap__Q23www9trasition

# 0x8136F640..0x8136F9D0 | size: 0x390
.text
.balign 4

# .text:0x0 | 0x8136F640 | size: 0x8
# www::trasition::allow_access(const char*, const char*, int)
.fn allow_access__Q23www9trasitionFPCcPCci, global
/* 8136F640 0003DA40  38 60 00 01 */	li r3, 0x1
/* 8136F644 0003DA44  4E 80 00 20 */	blr
.endfn allow_access__Q23www9trasitionFPCcPCci

# .text:0x8 | 0x8136F648 | size: 0x90
# www::trasition::AddJsPlugin()
.fn AddJsPlugin__Q23www9trasitionFv, global
/* 8136F648 0003DA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136F64C 0003DA4C  7C 08 02 A6 */	mflr r0
/* 8136F650 0003DA50  3C A0 81 09 */	lis r5, cap__Q23www9trasition@ha
/* 8136F654 0003DA54  3C E0 81 37 */	lis r7, globalGetter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue@ha
/* 8136F658 0003DA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F65C 0003DA5C  3C C0 81 37 */	lis r6, allow_access__Q23www9trasitionFPCcPCci@ha
/* 8136F660 0003DA60  3C 60 81 64 */	lis r3, lbl_81643FFD@ha
/* 8136F664 0003DA64  38 0D 82 C0 */	li r0, globalNames__Q23www9trasition@sda21
/* 8136F668 0003DA68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8136F66C 0003DA6C  38 85 A4 98 */	addi r4, r5, cap__Q23www9trasition@l
/* 8136F670 0003DA70  3B E0 00 00 */	li r31, 0x0
/* 8136F674 0003DA74  38 E7 F6 D8 */	addi r7, r7, globalGetter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue@l
/* 8136F678 0003DA78  81 8D A8 FC */	lwz r12, WWWAddJSPlugin@sda21(r0)
/* 8136F67C 0003DA7C  38 C6 F6 40 */	addi r6, r6, allow_access__Q23www9trasitionFPCcPCci@l
/* 8136F680 0003DA80  90 05 A4 98 */	stw r0, cap__Q23www9trasition@l(r5)
/* 8136F684 0003DA84  38 63 3F FD */	addi r3, r3, lbl_81643FFD@l
/* 8136F688 0003DA88  38 AD A9 40 */	li r5, gDpdWaitFrm@sda21
/* 8136F68C 0003DA8C  93 E4 00 04 */	stw r31, 0x4(r4)
/* 8136F690 0003DA90  90 E4 00 08 */	stw r7, 0x8(r4)
/* 8136F694 0003DA94  93 E4 00 0C */	stw r31, 0xc(r4)
/* 8136F698 0003DA98  93 E4 00 10 */	stw r31, 0x10(r4)
/* 8136F69C 0003DA9C  93 E4 00 14 */	stw r31, 0x14(r4)
/* 8136F6A0 0003DAA0  93 E4 00 18 */	stw r31, 0x18(r4)
/* 8136F6A4 0003DAA4  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 8136F6A8 0003DAA8  7D 89 03 A6 */	mtctr r12
/* 8136F6AC 0003DAAC  4E 80 04 21 */	bctrl
/* 8136F6B0 0003DAB0  3C 60 81 64 */	lis r3, lbl_8164400E@ha
/* 8136F6B4 0003DAB4  93 ED A9 44 */	stw r31, wiiFlag__Q23www10wiisetting@sda21(r0)
/* 8136F6B8 0003DAB8  38 63 40 0E */	addi r3, r3, lbl_8164400E@l
/* 8136F6BC 0003DABC  4C C6 31 82 */	crclr cr1eq
/* 8136F6C0 0003DAC0  48 1B EF E1 */	bl OSReport
/* 8136F6C4 0003DAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136F6C8 0003DAC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8136F6CC 0003DACC  7C 08 03 A6 */	mtlr r0
/* 8136F6D0 0003DAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8136F6D4 0003DAD4  4E 80 00 20 */	blr
.endfn AddJsPlugin__Q23www9trasitionFv

# .text:0x98 | 0x8136F6D8 | size: 0xBC
# www::trasition::globalGetter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*)
.fn globalGetter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue, global
/* 8136F6D8 0003DAD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136F6DC 0003DADC  7C 08 02 A6 */	mflr r0
/* 8136F6E0 0003DAE0  3C C0 81 64 */	lis r6, lbl_8164402C@ha
/* 8136F6E4 0003DAE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136F6E8 0003DAE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136F6EC 0003DAEC  7C BF 2B 78 */	mr r31, r5
/* 8136F6F0 0003DAF0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8136F6F4 0003DAF4  7C 7E 1B 78 */	mr r30, r3
/* 8136F6F8 0003DAF8  7C 83 23 78 */	mr r3, r4
/* 8136F6FC 0003DAFC  38 86 40 2C */	addi r4, r6, lbl_8164402C@l
/* 8136F700 0003DB00  48 29 2D 81 */	bl strcmp
/* 8136F704 0003DB04  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F708 0003DB08  40 82 00 70 */	bne .L_8136F778
/* 8136F70C 0003DB0C  3C 60 81 64 */	lis r3, lbl_81644039@ha
/* 8136F710 0003DB10  38 63 40 39 */	addi r3, r3, lbl_81644039@l
/* 8136F714 0003DB14  4C C6 31 82 */	crclr cr1eq
/* 8136F718 0003DB18  48 1B EF 89 */	bl OSReport
/* 8136F71C 0003DB1C  80 8D A9 40 */	lwz r4, gDpdWaitFrm@sda21(r0)
/* 8136F720 0003DB20  3C E0 81 37 */	lis r7, ObjectConstructor___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136F724 0003DB24  7F C3 F3 78 */	mr r3, r30
/* 8136F728 0003DB28  39 41 00 08 */	addi r10, r1, 0x8
/* 8136F72C 0003DB2C  81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136F730 0003DB30  38 E7 F7 94 */	addi r7, r7, ObjectConstructor___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136F734 0003DB34  38 80 00 00 */	li r4, 0x0
/* 8136F738 0003DB38  38 A0 00 00 */	li r5, 0x0
/* 8136F73C 0003DB3C  38 C0 00 00 */	li r6, 0x0
/* 8136F740 0003DB40  39 0D 82 C8 */	li r8, lbl_81696308@sda21
/* 8136F744 0003DB44  39 20 00 00 */	li r9, 0x0
/* 8136F748 0003DB48  7D 89 03 A6 */	mtctr r12
/* 8136F74C 0003DB4C  4E 80 04 21 */	bctrl
/* 8136F750 0003DB50  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F754 0003DB54  40 80 00 0C */	bge .L_8136F760
/* 8136F758 0003DB58  38 60 00 0A */	li r3, 0xa
/* 8136F75C 0003DB5C  48 00 00 20 */	b .L_8136F77C
.L_8136F760:
/* 8136F760 0003DB60  38 00 00 00 */	li r0, 0x0
/* 8136F764 0003DB64  38 60 00 07 */	li r3, 0x7
/* 8136F768 0003DB68  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136F76C 0003DB6C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136F770 0003DB70  90 1F 00 08 */	stw r0, 0x8(r31)
/* 8136F774 0003DB74  48 00 00 08 */	b .L_8136F77C
.L_8136F778:
/* 8136F778 0003DB78  38 60 00 08 */	li r3, 0x8
.L_8136F77C:
/* 8136F77C 0003DB7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136F780 0003DB80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136F784 0003DB84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8136F788 0003DB88  7C 08 03 A6 */	mtlr r0
/* 8136F78C 0003DB8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8136F790 0003DB90  4E 80 00 20 */	blr
.endfn globalGetter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue

# .text:0x154 | 0x8136F794 | size: 0x8C
# www::trasition::ObjectConstructor_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn ObjectConstructor___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 8136F794 0003DB94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136F798 0003DB98  7C 08 02 A6 */	mflr r0
/* 8136F79C 0003DB9C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8136F7A0 0003DBA0  7C 83 23 78 */	mr r3, r4
/* 8136F7A4 0003DBA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136F7A8 0003DBA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8136F7AC 0003DBAC  7C FF 3B 78 */	mr r31, r7
/* 8136F7B0 0003DBB0  41 82 00 0C */	beq .L_8136F7BC
/* 8136F7B4 0003DBB4  38 60 00 13 */	li r3, 0x13
/* 8136F7B8 0003DBB8  48 00 00 54 */	b .L_8136F80C
.L_8136F7BC:
/* 8136F7BC 0003DBBC  80 AD A9 40 */	lwz r5, gDpdWaitFrm@sda21(r0)
/* 8136F7C0 0003DBC0  3C 80 81 37 */	lis r4, Getter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue@ha
/* 8136F7C4 0003DBC4  38 E1 00 08 */	addi r7, r1, 0x8
/* 8136F7C8 0003DBC8  38 C0 00 00 */	li r6, 0x0
/* 8136F7CC 0003DBCC  81 85 00 04 */	lwz r12, 0x4(r5)
/* 8136F7D0 0003DBD0  38 84 F8 20 */	addi r4, r4, Getter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue@l
/* 8136F7D4 0003DBD4  38 A0 00 00 */	li r5, 0x0
/* 8136F7D8 0003DBD8  7D 89 03 A6 */	mtctr r12
/* 8136F7DC 0003DBDC  4E 80 04 21 */	bctrl
/* 8136F7E0 0003DBE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F7E4 0003DBE4  40 80 00 0C */	bge .L_8136F7F0
/* 8136F7E8 0003DBE8  38 60 00 12 */	li r3, 0x12
/* 8136F7EC 0003DBEC  48 00 00 20 */	b .L_8136F80C
.L_8136F7F0:
/* 8136F7F0 0003DBF0  38 A0 00 00 */	li r5, 0x0
/* 8136F7F4 0003DBF4  38 60 00 10 */	li r3, 0x10
/* 8136F7F8 0003DBF8  90 BF 00 00 */	stw r5, 0x0(r31)
/* 8136F7FC 0003DBFC  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136F800 0003DC00  90 1F 00 08 */	stw r0, 0x8(r31)
/* 8136F804 0003DC04  80 81 00 08 */	lwz r4, 0x8(r1)
/* 8136F808 0003DC08  90 A4 00 00 */	stw r5, 0x0(r4)
.L_8136F80C:
/* 8136F80C 0003DC0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136F810 0003DC10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8136F814 0003DC14  7C 08 03 A6 */	mtlr r0
/* 8136F818 0003DC18  38 21 00 20 */	addi r1, r1, 0x20
/* 8136F81C 0003DC1C  4E 80 00 20 */	blr
.endfn ObjectConstructor___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x1E0 | 0x8136F820 | size: 0x124
# www::trasition::Getter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*)
.fn Getter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue, global
/* 8136F820 0003DC20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8136F824 0003DC24  7C 08 02 A6 */	mflr r0
/* 8136F828 0003DC28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8136F82C 0003DC2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8136F830 0003DC30  48 28 9C 99 */	bl _savegpr_29
/* 8136F834 0003DC34  7C 9E 23 78 */	mr r30, r4
/* 8136F838 0003DC38  3C 80 81 64 */	lis r4, lbl_8164405E@ha
/* 8136F83C 0003DC3C  7C 7D 1B 78 */	mr r29, r3
/* 8136F840 0003DC40  7C BF 2B 78 */	mr r31, r5
/* 8136F844 0003DC44  7F C3 F3 78 */	mr r3, r30
/* 8136F848 0003DC48  38 84 40 5E */	addi r4, r4, lbl_8164405E@l
/* 8136F84C 0003DC4C  48 29 2C 35 */	bl strcmp
/* 8136F850 0003DC50  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F854 0003DC54  40 82 00 60 */	bne .L_8136F8B4
/* 8136F858 0003DC58  80 8D A9 40 */	lwz r4, gDpdWaitFrm@sda21(r0)
/* 8136F85C 0003DC5C  3C C0 81 37 */	lis r6, LeftScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136F860 0003DC60  38 C6 F9 44 */	addi r6, r6, LeftScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136F864 0003DC64  7F A3 EB 78 */	mr r3, r29
/* 8136F868 0003DC68  81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136F86C 0003DC6C  7C C7 33 78 */	mr r7, r6
/* 8136F870 0003DC70  39 41 00 0C */	addi r10, r1, 0xc
/* 8136F874 0003DC74  38 80 00 00 */	li r4, 0x0
/* 8136F878 0003DC78  38 A0 00 00 */	li r5, 0x0
/* 8136F87C 0003DC7C  39 0D 82 C8 */	li r8, lbl_81696308@sda21
/* 8136F880 0003DC80  39 20 00 00 */	li r9, 0x0
/* 8136F884 0003DC84  7D 89 03 A6 */	mtctr r12
/* 8136F888 0003DC88  4E 80 04 21 */	bctrl
/* 8136F88C 0003DC8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F890 0003DC90  40 80 00 0C */	bge .L_8136F89C
/* 8136F894 0003DC94  38 60 00 0A */	li r3, 0xa
/* 8136F898 0003DC98  48 00 00 94 */	b .L_8136F92C
.L_8136F89C:
/* 8136F89C 0003DC9C  38 00 00 00 */	li r0, 0x0
/* 8136F8A0 0003DCA0  38 60 00 07 */	li r3, 0x7
/* 8136F8A4 0003DCA4  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136F8A8 0003DCA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8136F8AC 0003DCAC  90 1F 00 08 */	stw r0, 0x8(r31)
/* 8136F8B0 0003DCB0  48 00 00 7C */	b .L_8136F92C
.L_8136F8B4:
/* 8136F8B4 0003DCB4  3C 80 81 64 */	lis r4, lbl_81644069@ha
/* 8136F8B8 0003DCB8  7F C3 F3 78 */	mr r3, r30
/* 8136F8BC 0003DCBC  38 84 40 69 */	addi r4, r4, lbl_81644069@l
/* 8136F8C0 0003DCC0  48 29 2B C1 */	bl strcmp
/* 8136F8C4 0003DCC4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F8C8 0003DCC8  40 82 00 60 */	bne .L_8136F928
/* 8136F8CC 0003DCCC  80 8D A9 40 */	lwz r4, gDpdWaitFrm@sda21(r0)
/* 8136F8D0 0003DCD0  3C C0 81 37 */	lis r6, RightScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@ha
/* 8136F8D4 0003DCD4  38 C6 F9 80 */	addi r6, r6, RightScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue@l
/* 8136F8D8 0003DCD8  7F A3 EB 78 */	mr r3, r29
/* 8136F8DC 0003DCDC  81 84 00 00 */	lwz r12, 0x0(r4)
/* 8136F8E0 0003DCE0  7C C7 33 78 */	mr r7, r6
/* 8136F8E4 0003DCE4  39 41 00 08 */	addi r10, r1, 0x8
/* 8136F8E8 0003DCE8  38 80 00 00 */	li r4, 0x0
/* 8136F8EC 0003DCEC  38 A0 00 00 */	li r5, 0x0
/* 8136F8F0 0003DCF0  39 0D 82 C8 */	li r8, lbl_81696308@sda21
/* 8136F8F4 0003DCF4  39 20 00 00 */	li r9, 0x0
/* 8136F8F8 0003DCF8  7D 89 03 A6 */	mtctr r12
/* 8136F8FC 0003DCFC  4E 80 04 21 */	bctrl
/* 8136F900 0003DD00  2C 03 00 00 */	cmpwi r3, 0x0
/* 8136F904 0003DD04  40 80 00 0C */	bge .L_8136F910
/* 8136F908 0003DD08  38 60 00 0A */	li r3, 0xa
/* 8136F90C 0003DD0C  48 00 00 20 */	b .L_8136F92C
.L_8136F910:
/* 8136F910 0003DD10  38 00 00 00 */	li r0, 0x0
/* 8136F914 0003DD14  38 60 00 07 */	li r3, 0x7
/* 8136F918 0003DD18  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8136F91C 0003DD1C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8136F920 0003DD20  90 1F 00 08 */	stw r0, 0x8(r31)
/* 8136F924 0003DD24  48 00 00 08 */	b .L_8136F92C
.L_8136F928:
/* 8136F928 0003DD28  38 60 00 08 */	li r3, 0x8
.L_8136F92C:
/* 8136F92C 0003DD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8136F930 0003DD30  48 28 9B E5 */	bl _restgpr_29
/* 8136F934 0003DD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8136F938 0003DD38  7C 08 03 A6 */	mtlr r0
/* 8136F93C 0003DD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8136F940 0003DD40  4E 80 00 20 */	blr
.endfn Getter___Q23www9trasitionFP14WWWJSPluginObjPCcP16WWWJSPluginValue

# .text:0x304 | 0x8136F944 | size: 0x3C
# www::trasition::LeftScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn LeftScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 8136F944 0003DD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136F948 0003DD48  7C 08 02 A6 */	mflr r0
/* 8136F94C 0003DD4C  3C 80 81 64 */	lis r4, lbl_81644075@ha
/* 8136F950 0003DD50  38 60 00 03 */	li r3, 0x3
/* 8136F954 0003DD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F958 0003DD58  38 84 40 75 */	addi r4, r4, lbl_81644075@l
/* 8136F95C 0003DD5C  4C C6 31 82 */	crclr cr1eq
/* 8136F960 0003DD60  4B FF EF 35 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136F964 0003DD64  38 00 00 01 */	li r0, 0x1
/* 8136F968 0003DD68  38 60 00 11 */	li r3, 0x11
/* 8136F96C 0003DD6C  90 0D A9 44 */	stw r0, wiiFlag__Q23www10wiisetting@sda21(r0)
/* 8136F970 0003DD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136F974 0003DD74  7C 08 03 A6 */	mtlr r0
/* 8136F978 0003DD78  38 21 00 10 */	addi r1, r1, 0x10
/* 8136F97C 0003DD7C  4E 80 00 20 */	blr
.endfn LeftScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x340 | 0x8136F980 | size: 0x3C
# www::trasition::RightScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*)
.fn RightScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue, global
/* 8136F980 0003DD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8136F984 0003DD84  7C 08 02 A6 */	mflr r0
/* 8136F988 0003DD88  3C 80 81 64 */	lis r4, lbl_81644088@ha
/* 8136F98C 0003DD8C  38 60 00 03 */	li r3, 0x3
/* 8136F990 0003DD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8136F994 0003DD94  38 84 40 88 */	addi r4, r4, lbl_81644088@l
/* 8136F998 0003DD98  4C C6 31 82 */	crclr cr1eq
/* 8136F99C 0003DD9C  4B FF EE F9 */	bl IPLWWWReport__Q37ext_ead3www5printFiPCce
/* 8136F9A0 0003DDA0  38 00 00 02 */	li r0, 0x2
/* 8136F9A4 0003DDA4  38 60 00 11 */	li r3, 0x11
/* 8136F9A8 0003DDA8  90 0D A9 44 */	stw r0, wiiFlag__Q23www10wiisetting@sda21(r0)
/* 8136F9AC 0003DDAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8136F9B0 0003DDB0  7C 08 03 A6 */	mtlr r0
/* 8136F9B4 0003DDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8136F9B8 0003DDB8  4E 80 00 20 */	blr
.endfn RightScroll___Q23www9trasitionFP14WWWJSPluginObjP14WWWJSPluginObjiP16WWWJSPluginValueP16WWWJSPluginValue

# .text:0x37C | 0x8136F9BC | size: 0x8
# www::trasition::GetScrollState()
.fn GetScrollState__Q23www9trasitionFv, global
/* 8136F9BC 0003DDBC  80 6D A9 44 */	lwz r3, wiiFlag__Q23www10wiisetting@sda21(r0)
/* 8136F9C0 0003DDC0  4E 80 00 20 */	blr
.endfn GetScrollState__Q23www9trasitionFv

# .text:0x384 | 0x8136F9C4 | size: 0xC
# www::trasition::ResetScrollState()
.fn ResetScrollState__Q23www9trasitionFv, global
/* 8136F9C4 0003DDC4  38 00 00 00 */	li r0, 0x0
/* 8136F9C8 0003DDC8  90 0D A9 44 */	stw r0, wiiFlag__Q23www10wiisetting@sda21(r0)
/* 8136F9CC 0003DDCC  4E 80 00 20 */	blr
.endfn ResetScrollState__Q23www9trasitionFv

# 0x81643FF0..0x816440A0 | size: 0xB0
.data
.balign 8

# .data:0x0 | 0x81643FF0 | size: 0xD
.obj lbl_81643FF0, global
	.string "wiiTrasition"
.endobj lbl_81643FF0

# .data:0xD | 0x81643FFD | size: 0x11
.obj lbl_81643FFD, global
	.string "wiiTrasition.dll"
.endobj lbl_81643FFD

# .data:0x1E | 0x8164400E | size: 0x1E
.obj lbl_8164400E, global
	.string "WWW_TRASITION: AddJSPlugin()\n"
.endobj lbl_8164400E

# .data:0x3C | 0x8164402C | size: 0xD
.obj lbl_8164402C, global
	.string "wiiTrasition"
.endobj lbl_8164402C

# .data:0x49 | 0x81644039 | size: 0x25
.obj lbl_81644039, global
	.string "WWW_TRASITION: call globalGetter_()\n"
.endobj lbl_81644039

# .data:0x6E | 0x8164405E | size: 0xB
.obj lbl_8164405E, global
	.string "LeftScroll"
.endobj lbl_8164405E

# .data:0x79 | 0x81644069 | size: 0xC
.obj lbl_81644069, global
	.string "RightScroll"
.endobj lbl_81644069

# .data:0x85 | 0x81644075 | size: 0x13
.obj lbl_81644075, global
	.string "Left Scroll Set!!\n"
.endobj lbl_81644075

# .data:0x98 | 0x81644088 | size: 0x18
.obj lbl_81644088, global
	.4byte 0x52696768
	.4byte 0x74205363
	.4byte 0x726F6C6C
	.4byte 0x20536574
	.4byte 0x2E21210A
	.4byte 0x00000000
.endobj lbl_81644088

# 0x81696300..0x81696310 | size: 0x10
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x81696300 | size: 0x8
# www::trasition::globalNames
.obj globalNames__Q23www9trasition, global
	.4byte lbl_81643FF0
	.4byte 0x00000000
.endobj globalNames__Q23www9trasition

# .sdata:0x8 | 0x81696308 | size: 0x8
.obj lbl_81696308, global
	.4byte 0x00000000
	.4byte 0x00000000
.endobj lbl_81696308

# 0x81698978..0x81698980 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698978 | size: 0x4
# www::trasition::opera_callbacks
.obj opera_callbacks__Q23www9trasition, global
	.skip 0x4
.endobj opera_callbacks__Q23www9trasition

# .sbss:0x4 | 0x8169897C | size: 0x4
# www::trasition::ScrollState_
.obj ScrollState___Q23www9trasition, global
	.skip 0x4
.endobj ScrollState___Q23www9trasition
