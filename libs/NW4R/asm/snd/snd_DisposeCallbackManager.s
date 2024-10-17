.include "macros.inc"
.file "snd_DisposeCallbackManager.cpp"

# 0x81105C70..0x81105C88 | size: 0x18
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81105C70 | size: 0xC
.obj lbl_81105C70, global
	.skip 0xC
.endobj lbl_81105C70

# .bss:0xC | 0x81105C7C | size: 0xC
.obj instance$7141, local
	.skip 0xC
.endobj instance$7141

# 0x814FE5E4..0x814FE9EC | size: 0x408
.text
.balign 4

# .text:0x0 | 0x814FE5E4 | size: 0x88
# nw4r::snd::detail::DisposeCallbackManager::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv, global
/* 814FE5E4 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FE5E8 | 7C 08 02 A6 */	mflr r0
/* 814FE5EC | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FE5F0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FE5F4 | 48 03 22 91 */	bl OSDisableInterrupts
/* 814FE5F8 | 88 0D AE 98 */	lbz r0, "@GUARD@instance$7213"@sda21(r0)
/* 814FE5FC | 7C 7F 1B 78 */	mr r31, r3
/* 814FE600 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE604 | 40 82 00 44 */	bne .L_814FE648
/* 814FE608 | 3C C0 81 10 */	lis r6, instance$7141@ha
/* 814FE60C | 38 00 00 00 */	li r0, 0x0
/* 814FE610 | 38 66 5C 7C */	addi r3, r6, instance$7141@l
/* 814FE614 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 814FE618 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FE61C | 38 E3 00 04 */	addi r7, r3, 0x4
/* 814FE620 | 3C A0 81 10 */	lis r5, lbl_81105C70@ha
/* 814FE624 | 38 84 E6 6C */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 814FE628 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FE62C | 38 A5 5C 70 */	addi r5, r5, lbl_81105C70@l
/* 814FE630 | 90 06 5C 7C */	stw r0, instance$7141@l(r6)
/* 814FE634 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FE638 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FE63C | 48 0F A9 A5 */	bl __register_global_object
/* 814FE640 | 38 00 00 01 */	li r0, 0x1
/* 814FE644 | 98 0D AE 98 */	stb r0, "@GUARD@instance$7213"@sda21(r0)
.L_814FE648:
/* 814FE648 | 7F E3 FB 78 */	mr r3, r31
/* 814FE64C | 48 03 22 61 */	bl OSRestoreInterrupts
/* 814FE650 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FE654 | 3C 60 81 10 */	lis r3, instance$7141@ha
/* 814FE658 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FE65C | 38 63 5C 7C */	addi r3, r3, instance$7141@l
/* 814FE660 | 7C 08 03 A6 */	mtlr r0
/* 814FE664 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FE668 | 4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv

# .text:0x88 | 0x814FE66C | size: 0x5C
# nw4r::snd::detail::DisposeCallbackManager::~DisposeCallbackManager()
.fn __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv, global
/* 814FE66C | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FE670 | 7C 08 02 A6 */	mflr r0
/* 814FE674 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FE678 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FE67C | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FE680 | 7C 9F 23 78 */	mr r31, r4
/* 814FE684 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FE688 | 7C 7E 1B 78 */	mr r30, r3
/* 814FE68C | 41 82 00 20 */	beq .L_814FE6AC
/* 814FE690 | 41 82 00 0C */	beq .L_814FE69C
/* 814FE694 | 38 80 00 00 */	li r4, 0x0
/* 814FE698 | 48 01 3C CD */	bl fn_81512364
.L_814FE69C:
/* 814FE69C | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FE6A0 | 40 81 00 0C */	ble .L_814FE6AC
/* 814FE6A4 | 7F C3 F3 78 */	mr r3, r30
/* 814FE6A8 | 48 0F 9A 3D */	bl __dl__FPv
.L_814FE6AC:
/* 814FE6AC | 7F C3 F3 78 */	mr r3, r30
/* 814FE6B0 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FE6B4 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FE6B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FE6BC | 7C 08 03 A6 */	mtlr r0
/* 814FE6C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FE6C4 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv

# .text:0xE4 | 0x814FE6C8 | size: 0x64
# nw4r::snd::detail::DisposeCallbackManager::RegisterDisposeCallback(nw4r::snd::detail::DisposeCallback*)
.fn RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback, global
/* 814FE6C8 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FE6CC | 7C 08 02 A6 */	mflr r0
/* 814FE6D0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FE6D4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FE6D8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FE6DC | 7C 9E 23 78 */	mr r30, r4
/* 814FE6E0 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FE6E4 | 7C 7D 1B 78 */	mr r29, r3
/* 814FE6E8 | 48 03 21 9D */	bl OSDisableInterrupts
/* 814FE6EC | 38 1D 00 04 */	addi r0, r29, 0x4
/* 814FE6F0 | 7C 7F 1B 78 */	mr r31, r3
/* 814FE6F4 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FE6F8 | 7F A3 EB 78 */	mr r3, r29
/* 814FE6FC | 7F C5 F3 78 */	mr r5, r30
/* 814FE700 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FE704 | 48 01 3D 71 */	bl fn_81512474
/* 814FE708 | 7F E3 FB 78 */	mr r3, r31
/* 814FE70C | 48 03 21 A1 */	bl OSRestoreInterrupts
/* 814FE710 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FE714 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FE718 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FE71C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FE720 | 7C 08 03 A6 */	mtlr r0
/* 814FE724 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FE728 | 4E 80 00 20 */	blr
.endfn RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback

# .text:0x148 | 0x814FE72C | size: 0x58
# nw4r::snd::detail::DisposeCallbackManager::UnregisterDisposeCallback(nw4r::snd::detail::DisposeCallback*)
.fn UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback, global
/* 814FE72C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FE730 | 7C 08 02 A6 */	mflr r0
/* 814FE734 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FE738 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FE73C | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FE740 | 7C 9E 23 78 */	mr r30, r4
/* 814FE744 | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FE748 | 7C 7D 1B 78 */	mr r29, r3
/* 814FE74C | 48 03 21 39 */	bl OSDisableInterrupts
/* 814FE750 | 7C 7F 1B 78 */	mr r31, r3
/* 814FE754 | 7F A3 EB 78 */	mr r3, r29
/* 814FE758 | 7F C4 F3 78 */	mr r4, r30
/* 814FE75C | 48 01 3D 45 */	bl fn_815124A0
/* 814FE760 | 7F E3 FB 78 */	mr r3, r31
/* 814FE764 | 48 03 21 49 */	bl OSRestoreInterrupts
/* 814FE768 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FE76C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FE770 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FE774 | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FE778 | 7C 08 03 A6 */	mtlr r0
/* 814FE77C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FE780 | 4E 80 00 20 */	blr
.endfn UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback

# .text:0x1A0 | 0x814FE784 | size: 0x134
# nw4r::snd::detail::DisposeCallbackManager::Dispose(void*, unsigned long, void*)
.fn Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv, global
/* 814FE784 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814FE788 | 7C 08 02 A6 */	mflr r0
/* 814FE78C | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814FE790 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FE794 | 48 0F AD 11 */	bl _savegpr_20
/* 814FE798 | 7C 7F 1B 78 */	mr r31, r3
/* 814FE79C | 7F C3 22 14 */	add r30, r3, r4
/* 814FE7A0 | 48 03 20 E5 */	bl OSDisableInterrupts
/* 814FE7A4 | 7C 7D 1B 78 */	mr r29, r3
/* 814FE7A8 | 48 03 20 DD */	bl OSDisableInterrupts
/* 814FE7AC | 88 0D AE 98 */	lbz r0, "@GUARD@instance$7213"@sda21(r0)
/* 814FE7B0 | 7C 7C 1B 78 */	mr r28, r3
/* 814FE7B4 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE7B8 | 40 82 00 44 */	bne .L_814FE7FC
/* 814FE7BC | 3C C0 81 10 */	lis r6, instance$7141@ha
/* 814FE7C0 | 38 00 00 00 */	li r0, 0x0
/* 814FE7C4 | 38 66 5C 7C */	addi r3, r6, instance$7141@l
/* 814FE7C8 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 814FE7CC | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FE7D0 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 814FE7D4 | 3C A0 81 10 */	lis r5, lbl_81105C70@ha
/* 814FE7D8 | 38 84 E6 6C */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 814FE7DC | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FE7E0 | 38 A5 5C 70 */	addi r5, r5, lbl_81105C70@l
/* 814FE7E4 | 90 06 5C 7C */	stw r0, instance$7141@l(r6)
/* 814FE7E8 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FE7EC | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FE7F0 | 48 0F A7 F1 */	bl __register_global_object
/* 814FE7F4 | 38 00 00 01 */	li r0, 0x1
/* 814FE7F8 | 98 0D AE 98 */	stb r0, "@GUARD@instance$7213"@sda21(r0)
.L_814FE7FC:
/* 814FE7FC | 7F 83 E3 78 */	mr r3, r28
/* 814FE800 | 48 03 20 AD */	bl OSRestoreInterrupts
/* 814FE804 | 3E 80 81 10 */	lis r20, instance$7141@ha
/* 814FE808 | 3A C0 00 00 */	li r22, 0x0
/* 814FE80C | 3A B4 5C 7C */	addi r21, r20, instance$7141@l
/* 814FE810 | 3E E0 81 50 */	lis r23, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 814FE814 | 83 95 00 04 */	lwz r28, 0x4(r21)
/* 814FE818 | 3B 55 00 04 */	addi r26, r21, 0x4
/* 814FE81C | 3F 00 81 10 */	lis r24, lbl_81105C70@ha
/* 814FE820 | 3B 20 00 01 */	li r25, 0x1
/* 814FE824 | 48 00 00 24 */	b .L_814FE848
.L_814FE828:
/* 814FE828 | 81 9C 00 08 */	lwz r12, 0x8(r28)
/* 814FE82C | 7F 83 E3 78 */	mr r3, r28
/* 814FE830 | 7F E4 FB 78 */	mr r4, r31
/* 814FE834 | 7F C5 F3 78 */	mr r5, r30
/* 814FE838 | 81 8C 00 0C */	lwz r12, 0xc(r12)
/* 814FE83C | 83 9C 00 00 */	lwz r28, 0x0(r28)
/* 814FE840 | 7D 89 03 A6 */	mtctr r12
/* 814FE844 | 4E 80 04 21 */	bctrl
.L_814FE848:
/* 814FE848 | 48 03 20 3D */	bl OSDisableInterrupts
/* 814FE84C | 88 0D AE 98 */	lbz r0, "@GUARD@instance$7213"@sda21(r0)
/* 814FE850 | 7C 7B 1B 78 */	mr r27, r3
/* 814FE854 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE858 | 40 82 00 30 */	bne .L_814FE888
/* 814FE85C | 92 D5 00 04 */	stw r22, 0x4(r21)
/* 814FE860 | 38 D5 00 04 */	addi r6, r21, 0x4
/* 814FE864 | 7E A3 AB 78 */	mr r3, r21
/* 814FE868 | 38 97 E6 6C */	addi r4, r23, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 814FE86C | 92 D5 00 08 */	stw r22, 0x8(r21)
/* 814FE870 | 38 B8 5C 70 */	addi r5, r24, lbl_81105C70@l
/* 814FE874 | 92 D4 5C 7C */	stw r22, instance$7141@l(r20)
/* 814FE878 | 90 D5 00 04 */	stw r6, 0x4(r21)
/* 814FE87C | 90 D5 00 08 */	stw r6, 0x8(r21)
/* 814FE880 | 48 0F A7 61 */	bl __register_global_object
/* 814FE884 | 9B 2D AE 98 */	stb r25, "@GUARD@instance$7213"@sda21(r0)
.L_814FE888:
/* 814FE888 | 7F 63 DB 78 */	mr r3, r27
/* 814FE88C | 48 03 20 21 */	bl OSRestoreInterrupts
/* 814FE890 | 7C 1C D0 40 */	cmplw r28, r26
/* 814FE894 | 40 82 FF 94 */	bne .L_814FE828
/* 814FE898 | 7F A3 EB 78 */	mr r3, r29
/* 814FE89C | 48 03 20 11 */	bl OSRestoreInterrupts
/* 814FE8A0 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FE8A4 | 48 0F AC 4D */	bl _restgpr_20
/* 814FE8A8 | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814FE8AC | 7C 08 03 A6 */	mtlr r0
/* 814FE8B0 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814FE8B4 | 4E 80 00 20 */	blr
.endfn Dispose__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv

# .text:0x2D4 | 0x814FE8B8 | size: 0x134
# nw4r::snd::detail::DisposeCallbackManager::DisposeWave(void*, unsigned long, void*)
.fn DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv, global
/* 814FE8B8 | 94 21 FF C0 */	stwu r1, -0x40(r1)
/* 814FE8BC | 7C 08 02 A6 */	mflr r0
/* 814FE8C0 | 90 01 00 44 */	stw r0, 0x44(r1)
/* 814FE8C4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FE8C8 | 48 0F AB DD */	bl _savegpr_20
/* 814FE8CC | 7C 7F 1B 78 */	mr r31, r3
/* 814FE8D0 | 7F C3 22 14 */	add r30, r3, r4
/* 814FE8D4 | 48 03 1F B1 */	bl OSDisableInterrupts
/* 814FE8D8 | 7C 7D 1B 78 */	mr r29, r3
/* 814FE8DC | 48 03 1F A9 */	bl OSDisableInterrupts
/* 814FE8E0 | 88 0D AE 98 */	lbz r0, "@GUARD@instance$7213"@sda21(r0)
/* 814FE8E4 | 7C 7C 1B 78 */	mr r28, r3
/* 814FE8E8 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE8EC | 40 82 00 44 */	bne .L_814FE930
/* 814FE8F0 | 3C C0 81 10 */	lis r6, instance$7141@ha
/* 814FE8F4 | 38 00 00 00 */	li r0, 0x0
/* 814FE8F8 | 38 66 5C 7C */	addi r3, r6, instance$7141@l
/* 814FE8FC | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 814FE900 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FE904 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 814FE908 | 3C A0 81 10 */	lis r5, lbl_81105C70@ha
/* 814FE90C | 38 84 E6 6C */	addi r4, r4, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 814FE910 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FE914 | 38 A5 5C 70 */	addi r5, r5, lbl_81105C70@l
/* 814FE918 | 90 06 5C 7C */	stw r0, instance$7141@l(r6)
/* 814FE91C | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FE920 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FE924 | 48 0F A6 BD */	bl __register_global_object
/* 814FE928 | 38 00 00 01 */	li r0, 0x1
/* 814FE92C | 98 0D AE 98 */	stb r0, "@GUARD@instance$7213"@sda21(r0)
.L_814FE930:
/* 814FE930 | 7F 83 E3 78 */	mr r3, r28
/* 814FE934 | 48 03 1F 79 */	bl OSRestoreInterrupts
/* 814FE938 | 3E 80 81 10 */	lis r20, instance$7141@ha
/* 814FE93C | 3A C0 00 00 */	li r22, 0x0
/* 814FE940 | 3A B4 5C 7C */	addi r21, r20, instance$7141@l
/* 814FE944 | 3E E0 81 50 */	lis r23, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@ha
/* 814FE948 | 83 95 00 04 */	lwz r28, 0x4(r21)
/* 814FE94C | 3B 55 00 04 */	addi r26, r21, 0x4
/* 814FE950 | 3F 00 81 10 */	lis r24, lbl_81105C70@ha
/* 814FE954 | 3B 20 00 01 */	li r25, 0x1
/* 814FE958 | 48 00 00 24 */	b .L_814FE97C
.L_814FE95C:
/* 814FE95C | 81 9C 00 08 */	lwz r12, 0x8(r28)
/* 814FE960 | 7F 83 E3 78 */	mr r3, r28
/* 814FE964 | 7F E4 FB 78 */	mr r4, r31
/* 814FE968 | 7F C5 F3 78 */	mr r5, r30
/* 814FE96C | 81 8C 00 10 */	lwz r12, 0x10(r12)
/* 814FE970 | 83 9C 00 00 */	lwz r28, 0x0(r28)
/* 814FE974 | 7D 89 03 A6 */	mtctr r12
/* 814FE978 | 4E 80 04 21 */	bctrl
.L_814FE97C:
/* 814FE97C | 48 03 1F 09 */	bl OSDisableInterrupts
/* 814FE980 | 88 0D AE 98 */	lbz r0, "@GUARD@instance$7213"@sda21(r0)
/* 814FE984 | 7C 7B 1B 78 */	mr r27, r3
/* 814FE988 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE98C | 40 82 00 30 */	bne .L_814FE9BC
/* 814FE990 | 92 D5 00 04 */	stw r22, 0x4(r21)
/* 814FE994 | 38 D5 00 04 */	addi r6, r21, 0x4
/* 814FE998 | 7E A3 AB 78 */	mr r3, r21
/* 814FE99C | 38 97 E6 6C */	addi r4, r23, __dt__Q44nw4r3snd6detail22DisposeCallbackManagerFv@l
/* 814FE9A0 | 92 D5 00 08 */	stw r22, 0x8(r21)
/* 814FE9A4 | 38 B8 5C 70 */	addi r5, r24, lbl_81105C70@l
/* 814FE9A8 | 92 D4 5C 7C */	stw r22, instance$7141@l(r20)
/* 814FE9AC | 90 D5 00 04 */	stw r6, 0x4(r21)
/* 814FE9B0 | 90 D5 00 08 */	stw r6, 0x8(r21)
/* 814FE9B4 | 48 0F A6 2D */	bl __register_global_object
/* 814FE9B8 | 9B 2D AE 98 */	stb r25, "@GUARD@instance$7213"@sda21(r0)
.L_814FE9BC:
/* 814FE9BC | 7F 63 DB 78 */	mr r3, r27
/* 814FE9C0 | 48 03 1E ED */	bl OSRestoreInterrupts
/* 814FE9C4 | 7C 1C D0 40 */	cmplw r28, r26
/* 814FE9C8 | 40 82 FF 94 */	bne .L_814FE95C
/* 814FE9CC | 7F A3 EB 78 */	mr r3, r29
/* 814FE9D0 | 48 03 1E DD */	bl OSRestoreInterrupts
/* 814FE9D4 | 39 61 00 40 */	addi r11, r1, 0x40
/* 814FE9D8 | 48 0F AB 19 */	bl _restgpr_20
/* 814FE9DC | 80 01 00 44 */	lwz r0, 0x44(r1)
/* 814FE9E0 | 7C 08 03 A6 */	mtlr r0
/* 814FE9E4 | 38 21 00 40 */	addi r1, r1, 0x40
/* 814FE9E8 | 4E 80 00 20 */	blr
.endfn DisposeWave__Q44nw4r3snd6detail22DisposeCallbackManagerFPvUlPv

# 0x81698ED8..0x81698EE0 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698ED8 | size: 0x4
.obj "@GUARD@instance$7213", local
	.skip 0x4
.endobj "@GUARD@instance$7213"

# .sbss:0x4 | 0x81698EDC | size: 0x4
.obj gap_12_81698EDC_sbss, global
.hidden gap_12_81698EDC_sbss
	.skip 0x4
.endobj gap_12_81698EDC_sbss
