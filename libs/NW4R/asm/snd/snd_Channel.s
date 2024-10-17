.include "macros.inc"
.file "snd_Channel.cpp"

# 0x81100458..0x81105C70 | size: 0x5818
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x81100458 | size: 0xC
.obj lbl_81100458, global
	.skip 0xC
.endobj lbl_81100458

# .bss:0xC | 0x81100464 | size: 0xC
.obj lbl_81100464, global
	.skip 0xC
.endobj lbl_81100464

# .bss:0x18 | 0x81100470 | size: 0x57E8
# nw4r::snd::detail::Channel::mChannel
.obj mChannel__Q44nw4r3snd6detail7Channel, global
	.skip 0x57E8
.endobj mChannel__Q44nw4r3snd6detail7Channel

# .bss:0x5800 | 0x81105C58 | size: 0x18
# nw4r::snd::detail::ChannelManager::GetInstance()::instance
.obj "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance", global
	.skip 0x18
.endobj "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"

# 0x814FD65C..0x814FE5E4 | size: 0xF88
.text
.balign 4

# .text:0x0 | 0x814FD65C | size: 0xF8
# nw4r::snd::detail::Channel::Channel()
.fn __ct__Q44nw4r3snd6detail7ChannelFv, global
/* 814FD65C | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FD660 | 7C 08 02 A6 */	mflr r0
/* 814FD664 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FD668 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FD66C | 3B E0 00 00 */	li r31, 0x0
/* 814FD670 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FD674 | 7C 7E 1B 78 */	mr r30, r3
/* 814FD678 | 93 E3 00 00 */	stw r31, 0x0(r3)
/* 814FD67C | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814FD680 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814FD684 | 48 00 1A 01 */	bl __ct__Q44nw4r3snd6detail12EnvGeneratorFv
/* 814FD688 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FD68C | 48 00 3E 91 */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 814FD690 | C0 02 8E 60 */	lfs f0, lbl_81695260@sda21(r0)
/* 814FD694 | 93 FE 00 30 */	stw r31, 0x30(r30)
/* 814FD698 | D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 814FD69C | 9B FE 00 39 */	stb r31, 0x39(r30)
/* 814FD6A0 | 9B FE 00 3A */	stb r31, 0x3a(r30)
/* 814FD6A4 | 9B FE 00 3B */	stb r31, 0x3b(r30)
/* 814FD6A8 | 9B FE 00 C4 */	stb r31, 0xc4(r30)
/* 814FD6AC | 9B FE 00 C5 */	stb r31, 0xc5(r30)
/* 814FD6B0 | B3 FE 00 C6 */	sth r31, 0xc6(r30)
/* 814FD6B4 | B3 FE 00 C8 */	sth r31, 0xc8(r30)
/* 814FD6B8 | 93 FE 00 E0 */	stw r31, 0xe0(r30)
/* 814FD6BC | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FD6C0 | 7C 00 07 75 */	extsb. r0, r0
/* 814FD6C4 | 40 82 00 58 */	bne .L_814FD71C
/* 814FD6C8 | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FD6CC | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FD6D0 | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FD6D4 | 93 E6 5C 58 */	stw r31, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FD6D8 | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FD6DC | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FD6E0 | 93 E3 00 04 */	stw r31, 0x4(r3)
/* 814FD6E4 | 38 E3 00 04 */	addi r7, r3, 0x4
/* 814FD6E8 | 38 C3 00 10 */	addi r6, r3, 0x10
/* 814FD6EC | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FD6F0 | 93 E3 00 08 */	stw r31, 0x8(r3)
/* 814FD6F4 | 93 E3 00 10 */	stw r31, 0x10(r3)
/* 814FD6F8 | 93 E3 00 14 */	stw r31, 0x14(r3)
/* 814FD6FC | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FD700 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FD704 | 93 E3 00 0C */	stw r31, 0xc(r3)
/* 814FD708 | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 814FD70C | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 814FD710 | 48 0F B8 D1 */	bl __register_global_object
/* 814FD714 | 38 00 00 01 */	li r0, 0x1
/* 814FD718 | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FD71C:
/* 814FD71C | 3C 60 81 10 */	lis r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FD720 | 7F C5 F3 78 */	mr r5, r30
/* 814FD724 | 38 63 5C 58 */	addi r3, r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FD728 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FD72C | 38 03 00 04 */	addi r0, r3, 0x4
/* 814FD730 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FD734 | 48 01 4D 41 */	bl fn_81512474
/* 814FD738 | 7F C3 F3 78 */	mr r3, r30
/* 814FD73C | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FD740 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FD744 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FD748 | 7C 08 03 A6 */	mtlr r0
/* 814FD74C | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FD750 | 4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail7ChannelFv

# .text:0xF8 | 0x814FD754 | size: 0x78
# nw4r::snd::detail::ChannelManager::~ChannelManager()
.fn __dt__Q44nw4r3snd6detail14ChannelManagerFv, global
/* 814FD754 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD758 | 7C 08 02 A6 */	mflr r0
/* 814FD75C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD760 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD764 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD768 | 7C 9F 23 78 */	mr r31, r4
/* 814FD76C | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FD770 | 7C 7E 1B 78 */	mr r30, r3
/* 814FD774 | 41 82 00 3C */	beq .L_814FD7B0
/* 814FD778 | 41 82 00 28 */	beq .L_814FD7A0
/* 814FD77C | 34 63 00 0C */	addic. r3, r3, 0xc
/* 814FD780 | 41 82 00 0C */	beq .L_814FD78C
/* 814FD784 | 38 80 00 00 */	li r4, 0x0
/* 814FD788 | 48 01 4B DD */	bl fn_81512364
.L_814FD78C:
/* 814FD78C | 2C 1E 00 00 */	cmpwi r30, 0x0
/* 814FD790 | 41 82 00 10 */	beq .L_814FD7A0
/* 814FD794 | 7F C3 F3 78 */	mr r3, r30
/* 814FD798 | 38 80 00 00 */	li r4, 0x0
/* 814FD79C | 48 01 4B C9 */	bl fn_81512364
.L_814FD7A0:
/* 814FD7A0 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FD7A4 | 40 81 00 0C */	ble .L_814FD7B0
/* 814FD7A8 | 7F C3 F3 78 */	mr r3, r30
/* 814FD7AC | 48 0F A9 39 */	bl __dl__FPv
.L_814FD7B0:
/* 814FD7B0 | 7F C3 F3 78 */	mr r3, r30
/* 814FD7B4 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD7B8 | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FD7BC | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD7C0 | 7C 08 03 A6 */	mtlr r0
/* 814FD7C4 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD7C8 | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail14ChannelManagerFv

# .text:0x170 | 0x814FD7CC | size: 0xC4
# nw4r::snd::detail::Channel::~Channel()
.fn __dt__Q44nw4r3snd6detail7ChannelFv, global
/* 814FD7CC | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD7D0 | 7C 08 02 A6 */	mflr r0
/* 814FD7D4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FD7D8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD7DC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD7E0 | 7C 9F 23 78 */	mr r31, r4
/* 814FD7E4 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FD7E8 | 7C 7E 1B 78 */	mr r30, r3
/* 814FD7EC | 41 82 00 88 */	beq .L_814FD874
/* 814FD7F0 | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FD7F4 | 7C 00 07 75 */	extsb. r0, r0
/* 814FD7F8 | 40 82 00 5C */	bne .L_814FD854
/* 814FD7FC | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FD800 | 38 00 00 00 */	li r0, 0x0
/* 814FD804 | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FD808 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FD80C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FD810 | 39 03 00 04 */	addi r8, r3, 0x4
/* 814FD814 | 38 E3 00 10 */	addi r7, r3, 0x10
/* 814FD818 | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FD81C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FD820 | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FD824 | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FD828 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FD82C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814FD830 | 90 06 5C 58 */	stw r0, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FD834 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 814FD838 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814FD83C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FD840 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814FD844 | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814FD848 | 48 0F B7 99 */	bl __register_global_object
/* 814FD84C | 38 00 00 01 */	li r0, 0x1
/* 814FD850 | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FD854:
/* 814FD854 | 3C 60 81 10 */	lis r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FD858 | 7F C4 F3 78 */	mr r4, r30
/* 814FD85C | 38 63 5C 58 */	addi r3, r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FD860 | 48 01 4C 41 */	bl fn_815124A0
/* 814FD864 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FD868 | 40 81 00 0C */	ble .L_814FD874
/* 814FD86C | 7F C3 F3 78 */	mr r3, r30
/* 814FD870 | 48 0F A8 75 */	bl __dl__FPv
.L_814FD874:
/* 814FD874 | 7F C3 F3 78 */	mr r3, r30
/* 814FD878 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD87C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FD880 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD884 | 7C 08 03 A6 */	mtlr r0
/* 814FD888 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD88C | 4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail7ChannelFv

# .text:0x234 | 0x814FD890 | size: 0x110
# nw4r::snd::detail::Channel::InitParam(void (*)(nw4r::snd::detail::Channel*, nw4r::snd::detail::Channel::ChannelCallbackStatus, unsigned long), unsigned long)
.fn InitParam__Q44nw4r3snd6detail7ChannelFPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl, global
/* 814FD890 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FD894 | 7C 08 02 A6 */	mflr r0
/* 814FD898 | C0 02 8E 60 */	lfs f0, lbl_81695260@sda21(r0)
/* 814FD89C | 38 E0 00 01 */	li r7, 0x1
/* 814FD8A0 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FD8A4 | 38 C0 00 3C */	li r6, 0x3c
/* 814FD8A8 | C0 22 8E 64 */	lfs f1, lbl_81695264@sda21(r0)
/* 814FD8AC | 38 00 00 FF */	li r0, 0xff
/* 814FD8B0 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FD8B4 | 3B E0 00 00 */	li r31, 0x0
/* 814FD8B8 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FD8BC | 7C 7E 1B 78 */	mr r30, r3
/* 814FD8C0 | 93 E3 00 E4 */	stw r31, 0xe4(r3)
/* 814FD8C4 | 90 83 00 D8 */	stw r4, 0xd8(r3)
/* 814FD8C8 | 90 A3 00 DC */	stw r5, 0xdc(r3)
/* 814FD8CC | 9B E3 00 39 */	stb r31, 0x39(r3)
/* 814FD8D0 | 98 E3 00 3C */	stb r7, 0x3c(r3)
/* 814FD8D4 | 93 E3 00 D4 */	stw r31, 0xd4(r3)
/* 814FD8D8 | 90 C3 00 CC */	stw r6, 0xcc(r3)
/* 814FD8DC | 90 C3 00 D0 */	stw r6, 0xd0(r3)
/* 814FD8E0 | D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 814FD8E4 | D0 03 00 B8 */	stfs f0, 0xb8(r3)
/* 814FD8E8 | D0 03 00 BC */	stfs f0, 0xbc(r3)
/* 814FD8EC | D0 23 00 C0 */	stfs f1, 0xc0(r3)
/* 814FD8F0 | D0 23 00 40 */	stfs f1, 0x40(r3)
/* 814FD8F4 | D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 814FD8F8 | D0 23 00 44 */	stfs f1, 0x44(r3)
/* 814FD8FC | D0 03 00 48 */	stfs f0, 0x48(r3)
/* 814FD900 | D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 814FD904 | D0 03 00 50 */	stfs f0, 0x50(r3)
/* 814FD908 | D0 03 00 54 */	stfs f0, 0x54(r3)
/* 814FD90C | D0 03 00 58 */	stfs f0, 0x58(r3)
/* 814FD910 | 90 E3 00 5C */	stw r7, 0x5c(r3)
/* 814FD914 | D0 23 00 60 */	stfs f1, 0x60(r3)
/* 814FD918 | D0 03 00 64 */	stfs f0, 0x64(r3)
/* 814FD91C | D0 03 00 68 */	stfs f0, 0x68(r3)
/* 814FD920 | D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 814FD924 | D0 03 00 70 */	stfs f0, 0x70(r3)
/* 814FD928 | D0 23 00 74 */	stfs f1, 0x74(r3)
/* 814FD92C | D0 03 00 84 */	stfs f0, 0x84(r3)
/* 814FD930 | D0 03 00 94 */	stfs f0, 0x94(r3)
/* 814FD934 | D0 23 00 78 */	stfs f1, 0x78(r3)
/* 814FD938 | D0 03 00 88 */	stfs f0, 0x88(r3)
/* 814FD93C | D0 03 00 98 */	stfs f0, 0x98(r3)
/* 814FD940 | D0 23 00 7C */	stfs f1, 0x7c(r3)
/* 814FD944 | D0 03 00 8C */	stfs f0, 0x8c(r3)
/* 814FD948 | D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 814FD94C | D0 23 00 80 */	stfs f1, 0x80(r3)
/* 814FD950 | D0 03 00 90 */	stfs f0, 0x90(r3)
/* 814FD954 | D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 814FD958 | 98 03 00 C4 */	stb r0, 0xc4(r3)
/* 814FD95C | 98 03 00 C5 */	stb r0, 0xc5(r3)
/* 814FD960 | B3 E3 00 C6 */	sth r31, 0xc6(r3)
/* 814FD964 | B3 E3 00 C8 */	sth r31, 0xc8(r3)
/* 814FD968 | D0 03 00 A8 */	stfs f0, 0xa8(r3)
/* 814FD96C | 93 E3 00 B0 */	stw r31, 0xb0(r3)
/* 814FD970 | 93 E3 00 AC */	stw r31, 0xac(r3)
/* 814FD974 | 38 63 00 08 */	addi r3, r3, 0x8
/* 814FD978 | 48 00 17 45 */	bl Init__Q44nw4r3snd6detail12EnvGeneratorFv
/* 814FD97C | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FD980 | 48 00 3B 9D */	bl Init__Q44nw4r3snd6detail8LfoParamFv
/* 814FD984 | 9B FE 00 38 */	stb r31, 0x38(r30)
/* 814FD988 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FD98C | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FD990 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FD994 | 7C 08 03 A6 */	mtlr r0
/* 814FD998 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FD99C | 4E 80 00 20 */	blr
.endfn InitParam__Q44nw4r3snd6detail7ChannelFPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl

# .text:0x344 | 0x814FD9A0 | size: 0x5B4
# nw4r::snd::detail::Channel::Update(bool)
.fn Update__Q44nw4r3snd6detail7ChannelFb, global
/* 814FD9A0 | 94 21 FE B0 */	stwu r1, -0x150(r1)
/* 814FD9A4 | 7C 08 02 A6 */	mflr r0
/* 814FD9A8 | 90 01 01 54 */	stw r0, 0x154(r1)
/* 814FD9AC | DB E1 01 40 */	stfd f31, 0x140(r1)
/* 814FD9B0 | F3 E1 01 48 */	psq_st f31, 0x148(r1), 0, qr0
/* 814FD9B4 | DB C1 01 30 */	stfd f30, 0x130(r1)
/* 814FD9B8 | F3 C1 01 38 */	psq_st f30, 0x138(r1), 0, qr0
/* 814FD9BC | DB A1 01 20 */	stfd f29, 0x120(r1)
/* 814FD9C0 | F3 A1 01 28 */	psq_st f29, 0x128(r1), 0, qr0
/* 814FD9C4 | DB 81 01 10 */	stfd f28, 0x110(r1)
/* 814FD9C8 | F3 81 01 18 */	psq_st f28, 0x118(r1), 0, qr0
/* 814FD9CC | DB 61 01 00 */	stfd f27, 0x100(r1)
/* 814FD9D0 | F3 61 01 08 */	psq_st f27, 0x108(r1), 0, qr0
/* 814FD9D4 | DB 41 00 F0 */	stfd f26, 0xf0(r1)
/* 814FD9D8 | F3 41 00 F8 */	psq_st f26, 0xf8(r1), 0, qr0
/* 814FD9DC | DB 21 00 E0 */	stfd f25, 0xe0(r1)
/* 814FD9E0 | F3 21 00 E8 */	psq_st f25, 0xe8(r1), 0, qr0
/* 814FD9E4 | DB 01 00 D0 */	stfd f24, 0xd0(r1)
/* 814FD9E8 | F3 01 00 D8 */	psq_st f24, 0xd8(r1), 0, qr0
/* 814FD9EC | DA E1 00 C0 */	stfd f23, 0xc0(r1)
/* 814FD9F0 | F2 E1 00 C8 */	psq_st f23, 0xc8(r1), 0, qr0
/* 814FD9F4 | DA C1 00 B0 */	stfd f22, 0xb0(r1)
/* 814FD9F8 | F2 C1 00 B8 */	psq_st f22, 0xb8(r1), 0, qr0
/* 814FD9FC | DA A1 00 A0 */	stfd f21, 0xa0(r1)
/* 814FDA00 | F2 A1 00 A8 */	psq_st f21, 0xa8(r1), 0, qr0
/* 814FDA04 | DA 81 00 90 */	stfd f20, 0x90(r1)
/* 814FDA08 | F2 81 00 98 */	psq_st f20, 0x98(r1), 0, qr0
/* 814FDA0C | DA 61 00 80 */	stfd f19, 0x80(r1)
/* 814FDA10 | F2 61 00 88 */	psq_st f19, 0x88(r1), 0, qr0
/* 814FDA14 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814FDA18 | 48 0F BA A9 */	bl _savegpr_27
/* 814FDA1C | 88 03 00 3A */	lbz r0, 0x3a(r3)
/* 814FDA20 | 3C A0 43 30 */	lis r5, 0x4330
/* 814FDA24 | 90 A1 00 48 */	stw r5, 0x48(r1)
/* 814FDA28 | 7C 7E 1B 78 */	mr r30, r3
/* 814FDA2C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FDA30 | 7C 9F 23 78 */	mr r31, r4
/* 814FDA34 | 90 A1 00 50 */	stw r5, 0x50(r1)
/* 814FDA38 | 41 82 04 9C */	beq .L_814FDED4
/* 814FDA3C | 88 03 00 39 */	lbz r0, 0x39(r3)
/* 814FDA40 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FDA44 | 41 82 00 08 */	beq .L_814FDA4C
/* 814FDA48 | 3B E0 00 00 */	li r31, 0x0
.L_814FDA4C:
/* 814FDA4C | 38 63 00 20 */	addi r3, r3, 0x20
/* 814FDA50 | 48 00 3B A1 */	bl GetValue__Q44nw4r3snd6detail3LfoCFv
/* 814FDA54 | A0 7E 00 C8 */	lhz r3, 0xc8(r30)
/* 814FDA58 | FE C0 08 90 */	fmr f22, f1
/* 814FDA5C | A0 1E 00 C6 */	lhz r0, 0xc6(r30)
/* 814FDA60 | 7C 03 00 40 */	cmplw r3, r0
/* 814FDA64 | 40 80 00 0C */	bge .L_814FDA70
/* 814FDA68 | 38 03 00 01 */	addi r0, r3, 0x1
/* 814FDA6C | B0 1E 00 C8 */	sth r0, 0xc8(r30)
.L_814FDA70:
/* 814FDA70 | C3 E2 8E 64 */	lfs f31, lbl_81695264@sda21(r0)
/* 814FDA74 | C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 814FDA78 | C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 814FDA7C | EF FF 00 72 */	fmuls f31, f31, f1
/* 814FDA80 | A0 9E 00 C6 */	lhz r4, 0xc6(r30)
/* 814FDA84 | A0 7E 00 C8 */	lhz r3, 0xc8(r30)
/* 814FDA88 | 7C 03 20 40 */	cmplw r3, r4
/* 814FDA8C | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FDA90 | 41 80 00 0C */	blt .L_814FDA9C
/* 814FDA94 | 88 1E 00 C5 */	lbz r0, 0xc5(r30)
/* 814FDA98 | 48 00 00 20 */	b .L_814FDAB8
.L_814FDA9C:
/* 814FDA9C | 88 BE 00 C4 */	lbz r5, 0xc4(r30)
/* 814FDAA0 | 88 1E 00 C5 */	lbz r0, 0xc5(r30)
/* 814FDAA4 | 7C 05 00 50 */	subf r0, r5, r0
/* 814FDAA8 | 7C 03 01 D6 */	mullw r0, r3, r0
/* 814FDAAC | 7C 00 23 D6 */	divw r0, r0, r4
/* 814FDAB0 | 7C 05 02 14 */	add r0, r5, r0
/* 814FDAB4 | 54 00 06 3E */	clrlwi r0, r0, 24
.L_814FDAB8:
/* 814FDAB8 | 90 01 00 4C */	stw r0, 0x4c(r1)
/* 814FDABC | 38 7E 00 08 */	addi r3, r30, 0x8
/* 814FDAC0 | C8 42 8E 78 */	lfd f2, lbl_81695278@sda21(r0)
/* 814FDAC4 | C8 21 00 48 */	lfd f1, 0x48(r1)
/* 814FDAC8 | C0 02 8E 68 */	lfs f0, lbl_81695268@sda21(r0)
/* 814FDACC | EC 21 10 28 */	fsubs f1, f1, f2
/* 814FDAD0 | C3 C2 8E 64 */	lfs f30, lbl_81695264@sda21(r0)
/* 814FDAD4 | EC 01 00 24 */	fdivs f0, f1, f0
/* 814FDAD8 | EF FF 00 32 */	fmuls f31, f31, f0
/* 814FDADC | 48 00 16 2D */	bl GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv
/* 814FDAE0 | 88 1E 00 38 */	lbz r0, 0x38(r30)
/* 814FDAE4 | EF DE 00 72 */	fmuls f30, f30, f1
/* 814FDAE8 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FDAEC | 40 82 00 14 */	bne .L_814FDB00
/* 814FDAF0 | C0 02 8E 6C */	lfs f0, lbl_8169526C@sda21(r0)
/* 814FDAF4 | EC 20 05 B2 */	fmuls f1, f0, f22
/* 814FDAF8 | 48 01 18 25 */	bl CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf
/* 814FDAFC | EF DE 00 72 */	fmuls f30, f30, f1
.L_814FDB00:
/* 814FDB00 | 80 1E 00 08 */	lwz r0, 0x8(r30)
/* 814FDB04 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814FDB08 | 40 82 00 20 */	bne .L_814FDB28
/* 814FDB0C | EC 1F 07 B2 */	fmuls f0, f31, f30
/* 814FDB10 | C0 22 8E 60 */	lfs f1, lbl_81695260@sda21(r0)
/* 814FDB14 | FC 01 00 00 */	fcmpu cr0, f1, f0
/* 814FDB18 | 40 82 00 10 */	bne .L_814FDB28
/* 814FDB1C | 7F C3 F3 78 */	mr r3, r30
/* 814FDB20 | 48 00 04 F9 */	bl Stop__Q44nw4r3snd6detail7ChannelFv
/* 814FDB24 | 48 00 03 B0 */	b .L_814FDED4
.L_814FDB28:
/* 814FDB28 | 80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 814FDB2C | 80 1E 00 CC */	lwz r0, 0xcc(r30)
/* 814FDB30 | C8 62 8E 80 */	lfd f3, lbl_81695280@sda21(r0)
/* 814FDB34 | 7C 03 00 50 */	subf r0, r3, r0
/* 814FDB38 | C0 82 8E 60 */	lfs f4, lbl_81695260@sda21(r0)
/* 814FDB3C | 6C 00 80 00 */	xoris r0, r0, 0x8000
/* 814FDB40 | C0 22 8E 60 */	lfs f1, lbl_81695260@sda21(r0)
/* 814FDB44 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814FDB48 | C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 814FDB4C | C8 01 00 50 */	lfd f0, 0x50(r1)
/* 814FDB50 | FC 01 10 00 */	fcmpu cr0, f1, f2
/* 814FDB54 | EC 00 18 28 */	fsubs f0, f0, f3
/* 814FDB58 | EC 84 00 2A */	fadds f4, f4, f0
/* 814FDB5C | 40 82 00 08 */	bne .L_814FDB64
/* 814FDB60 | 48 00 00 44 */	b .L_814FDBA4
.L_814FDB64:
/* 814FDB64 | 80 1E 00 AC */	lwz r0, 0xac(r30)
/* 814FDB68 | 80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 814FDB6C | 7C 00 20 00 */	cmpw r0, r4
/* 814FDB70 | 41 80 00 08 */	blt .L_814FDB78
/* 814FDB74 | 48 00 00 30 */	b .L_814FDBA4
.L_814FDB78:
/* 814FDB78 | 7C 60 20 50 */	subf r3, r0, r4
/* 814FDB7C | 6C 80 80 00 */	xoris r0, r4, 0x8000
/* 814FDB80 | 6C 63 80 00 */	xoris r3, r3, 0x8000
/* 814FDB84 | 90 01 00 54 */	stw r0, 0x54(r1)
/* 814FDB88 | 90 61 00 4C */	stw r3, 0x4c(r1)
/* 814FDB8C | C8 01 00 50 */	lfd f0, 0x50(r1)
/* 814FDB90 | C8 21 00 48 */	lfd f1, 0x48(r1)
/* 814FDB94 | EC 00 18 28 */	fsubs f0, f0, f3
/* 814FDB98 | EC 21 18 28 */	fsubs f1, f1, f3
/* 814FDB9C | EC 22 00 72 */	fmuls f1, f2, f1
/* 814FDBA0 | EC 21 00 24 */	fdivs f1, f1, f0
.L_814FDBA4:
/* 814FDBA4 | EC 84 08 2A */	fadds f4, f4, f1
/* 814FDBA8 | C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 814FDBAC | 88 1E 00 38 */	lbz r0, 0x38(r30)
/* 814FDBB0 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FDBB4 | EC 84 00 2A */	fadds f4, f4, f0
/* 814FDBB8 | 40 82 00 08 */	bne .L_814FDBC0
/* 814FDBBC | EC 84 B0 2A */	fadds f4, f4, f22
.L_814FDBC0:
/* 814FDBC0 | C0 02 8E 70 */	lfs f0, lbl_81695270@sda21(r0)
/* 814FDBC4 | C2 62 8E 64 */	lfs f19, lbl_81695264@sda21(r0)
/* 814FDBC8 | EC 00 01 32 */	fmuls f0, f0, f4
/* 814FDBCC | C0 5E 00 C0 */	lfs f2, 0xc0(r30)
/* 814FDBD0 | C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 814FDBD4 | EE 73 00 B2 */	fmuls f19, f19, f2
/* 814FDBD8 | FC 00 00 1E */	fctiwz f0, f0
/* 814FDBDC | EE 73 00 72 */	fmuls f19, f19, f1
/* 814FDBE0 | D8 01 00 58 */	stfd f0, 0x58(r1)
/* 814FDBE4 | 80 61 00 5C */	lwz r3, 0x5c(r1)
/* 814FDBE8 | 48 01 15 A5 */	bl CalcPitchRatio__Q44nw4r3snd6detail4UtilFi
/* 814FDBEC | C3 82 8E 60 */	lfs f28, lbl_81695260@sda21(r0)
/* 814FDBF0 | EF A1 04 F2 */	fmuls f29, f1, f19
/* 814FDBF4 | C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 814FDBF8 | 88 1E 00 38 */	lbz r0, 0x38(r30)
/* 814FDBFC | EF 9C 00 2A */	fadds f28, f28, f0
/* 814FDC00 | C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 814FDC04 | 28 00 00 02 */	cmplwi r0, 0x2
/* 814FDC08 | EF 9C 00 2A */	fadds f28, f28, f0
/* 814FDC0C | 40 82 00 08 */	bne .L_814FDC14
/* 814FDC10 | EF 9C B0 2A */	fadds f28, f28, f22
.L_814FDC14:
/* 814FDC14 | C3 62 8E 60 */	lfs f27, lbl_81695260@sda21(r0)
/* 814FDC18 | 2C 1F 00 00 */	cmpwi r31, 0x0
/* 814FDC1C | C0 C2 8E 64 */	lfs f6, lbl_81695264@sda21(r0)
/* 814FDC20 | FD 40 D8 90 */	fmr f10, f27
/* 814FDC24 | C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 814FDC28 | C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 814FDC2C | FF 00 30 90 */	fmr f24, f6
/* 814FDC30 | EF 7B 10 2A */	fadds f27, f27, f2
/* 814FDC34 | C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 814FDC38 | FF 40 50 90 */	fmr f26, f10
/* 814FDC3C | C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 814FDC40 | ED 2A 08 2A */	fadds f9, f10, f1
/* 814FDC44 | C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 814FDC48 | EC EA 10 2A */	fadds f7, f10, f2
/* 814FDC4C | C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 814FDC50 | C2 7E 00 7C */	lfs f19, 0x7c(r30)
/* 814FDC54 | ED 0A 00 2A */	fadds f8, f10, f0
/* 814FDC58 | C1 BE 00 80 */	lfs f13, 0x80(r30)
/* 814FDC5C | EC A6 00 72 */	fmuls f5, f6, f1
/* 814FDC60 | C2 DE 00 4C */	lfs f22, 0x4c(r30)
/* 814FDC64 | EC 46 00 B2 */	fmuls f2, f6, f2
/* 814FDC68 | C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 814FDC6C | EE 66 04 F2 */	fmuls f19, f6, f19
/* 814FDC70 | D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 814FDC74 | ED A6 03 72 */	fmuls f13, f6, f13
/* 814FDC78 | C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 814FDC7C | EF 7B B0 2A */	fadds f27, f27, f22
/* 814FDC80 | C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 814FDC84 | EC 8A 00 2A */	fadds f4, f10, f0
/* 814FDC88 | C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 814FDC8C | C2 9E 00 8C */	lfs f20, 0x8c(r30)
/* 814FDC90 | EC 2A 08 2A */	fadds f1, f10, f1
/* 814FDC94 | C2 BE 00 9C */	lfs f21, 0x9c(r30)
/* 814FDC98 | EC 0A 00 2A */	fadds f0, f10, f0
/* 814FDC9C | C1 9E 00 90 */	lfs f12, 0x90(r30)
/* 814FDCA0 | EE 8A A0 2A */	fadds f20, f10, f20
/* 814FDCA4 | C1 7E 00 A0 */	lfs f11, 0xa0(r30)
/* 814FDCA8 | EE AA A8 2A */	fadds f21, f10, f21
/* 814FDCAC | ED 8A 60 2A */	fadds f12, f10, f12
/* 814FDCB0 | D1 41 00 38 */	stfs f10, 0x38(r1)
/* 814FDCB4 | ED 6A 58 2A */	fadds f11, f10, f11
/* 814FDCB8 | D1 41 00 3C */	stfs f10, 0x3c(r1)
/* 814FDCBC | FF 20 D0 90 */	fmr f25, f26
/* 814FDCC0 | C2 FE 00 50 */	lfs f23, 0x50(r30)
/* 814FDCC4 | C2 DE 00 54 */	lfs f22, 0x54(r30)
/* 814FDCC8 | EC 6A 18 2A */	fadds f3, f10, f3
/* 814FDCCC | EF 5A B8 2A */	fadds f26, f26, f23
/* 814FDCD0 | D1 41 00 40 */	stfs f10, 0x40(r1)
/* 814FDCD4 | EF 39 B0 2A */	fadds f25, f25, f22
/* 814FDCD8 | C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 814FDCDC | FE E0 C0 90 */	fmr f23, f24
/* 814FDCE0 | EF 18 30 2A */	fadds f24, f24, f6
/* 814FDCE4 | C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 814FDCE8 | FE C0 50 90 */	fmr f22, f10
/* 814FDCEC | D1 41 00 18 */	stfs f10, 0x18(r1)
/* 814FDCF0 | EE F7 01 B2 */	fmuls f23, f23, f6
/* 814FDCF4 | C0 DE 00 64 */	lfs f6, 0x64(r30)
/* 814FDCF8 | D1 41 00 08 */	stfs f10, 0x8(r1)
/* 814FDCFC | EE D6 30 2A */	fadds f22, f22, f6
/* 814FDD00 | D1 21 00 38 */	stfs f9, 0x38(r1)
/* 814FDD04 | D1 01 00 3C */	stfs f8, 0x3c(r1)
/* 814FDD08 | D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 814FDD0C | D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 814FDD10 | D0 81 00 18 */	stfs f4, 0x18(r1)
/* 814FDD14 | D0 61 00 08 */	stfs f3, 0x8(r1)
/* 814FDD18 | D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 814FDD1C | D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 814FDD20 | D0 01 00 0C */	stfs f0, 0xc(r1)
/* 814FDD24 | D2 61 00 30 */	stfs f19, 0x30(r1)
/* 814FDD28 | D2 81 00 20 */	stfs f20, 0x20(r1)
/* 814FDD2C | D2 A1 00 10 */	stfs f21, 0x10(r1)
/* 814FDD30 | D1 A1 00 34 */	stfs f13, 0x34(r1)
/* 814FDD34 | D1 81 00 24 */	stfs f12, 0x24(r1)
/* 814FDD38 | D1 61 00 14 */	stfs f11, 0x14(r1)
/* 814FDD3C | 41 82 00 44 */	beq .L_814FDD80
/* 814FDD40 | 88 1E 00 3C */	lbz r0, 0x3c(r30)
/* 814FDD44 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FDD48 | 41 82 00 20 */	beq .L_814FDD68
/* 814FDD4C | 80 7E 00 AC */	lwz r3, 0xac(r30)
/* 814FDD50 | 80 9E 00 B0 */	lwz r4, 0xb0(r30)
/* 814FDD54 | 38 03 00 03 */	addi r0, r3, 0x3
/* 814FDD58 | 7C 00 20 00 */	cmpw r0, r4
/* 814FDD5C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 814FDD60 | 40 81 00 08 */	ble .L_814FDD68
/* 814FDD64 | 90 9E 00 AC */	stw r4, 0xac(r30)
.L_814FDD68:
/* 814FDD68 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FDD6C | 38 80 00 03 */	li r4, 0x3
/* 814FDD70 | 48 00 37 E5 */	bl Update__Q44nw4r3snd6detail3LfoFi
/* 814FDD74 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 814FDD78 | 38 80 00 03 */	li r4, 0x3
/* 814FDD7C | 48 00 13 BD */	bl Update__Q44nw4r3snd6detail12EnvGeneratorFi
.L_814FDD80:
/* 814FDD80 | 38 7E 00 20 */	addi r3, r30, 0x20
/* 814FDD84 | 48 00 38 6D */	bl GetValue__Q44nw4r3snd6detail3LfoCFv
/* 814FDD88 | FE A0 08 90 */	fmr f21, f1
/* 814FDD8C | C2 62 8E 64 */	lfs f19, lbl_81695264@sda21(r0)
/* 814FDD90 | 38 7E 00 08 */	addi r3, r30, 0x8
/* 814FDD94 | 48 00 13 75 */	bl GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv
/* 814FDD98 | 88 1E 00 38 */	lbz r0, 0x38(r30)
/* 814FDD9C | EE 73 00 72 */	fmuls f19, f19, f1
/* 814FDDA0 | 28 00 00 01 */	cmplwi r0, 0x1
/* 814FDDA4 | 40 82 00 14 */	bne .L_814FDDB8
/* 814FDDA8 | C0 02 8E 6C */	lfs f0, lbl_8169526C@sda21(r0)
/* 814FDDAC | EC 20 05 72 */	fmuls f1, f0, f21
/* 814FDDB0 | 48 01 15 6D */	bl CalcVolumeRatio__Q44nw4r3snd6detail4UtilFf
/* 814FDDB4 | EE 73 00 72 */	fmuls f19, f19, f1
.L_814FDDB8:
/* 814FDDB8 | 48 03 2A CD */	bl OSDisableInterrupts
/* 814FDDBC | 80 1E 00 E0 */	lwz r0, 0xe0(r30)
/* 814FDDC0 | 7C 7F 1B 78 */	mr r31, r3
/* 814FDDC4 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FDDC8 | 41 82 01 04 */	beq .L_814FDECC
/* 814FDDCC | FC 20 F8 90 */	fmr f1, f31
/* 814FDDD0 | 7C 03 03 78 */	mr r3, r0
/* 814FDDD4 | 4B FF B8 31 */	bl SetVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDDD8 | FC 20 98 90 */	fmr f1, f19
/* 814FDDDC | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDDE0 | FC 40 F0 90 */	fmr f2, f30
/* 814FDDE4 | 4B FF B8 65 */	bl SetVeVolume__Q44nw4r3snd6detail7AxVoiceFff
/* 814FDDE8 | FC 20 E8 90 */	fmr f1, f29
/* 814FDDEC | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDDF0 | 4B FF B9 21 */	bl SetPitch__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDDF4 | FC 20 E0 90 */	fmr f1, f28
/* 814FDDF8 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDDFC | 4B FF B9 35 */	bl SetPan__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE00 | FC 20 D8 90 */	fmr f1, f27
/* 814FDE04 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE08 | 4B FF B9 6D */	bl SetSurroundPan__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE0C | FC 20 D0 90 */	fmr f1, f26
/* 814FDE10 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE14 | 4B FF B9 A5 */	bl SetPan2__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE18 | FC 20 C8 90 */	fmr f1, f25
/* 814FDE1C | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE20 | 4B FF B9 B9 */	bl SetSurroundPan2__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE24 | FC 20 C0 90 */	fmr f1, f24
/* 814FDE28 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE2C | 4B FF B9 F1 */	bl SetLpfFreq__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE30 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE34 | 80 9E 00 5C */	lwz r4, 0x5c(r30)
/* 814FDE38 | 4B FF BA 29 */	bl SetOutputLine__Q44nw4r3snd6detail7AxVoiceFi
/* 814FDE3C | FC 20 B8 90 */	fmr f1, f23
/* 814FDE40 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE44 | 4B FF BA 3D */	bl SetMainOutVolume__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE48 | FC 20 B0 90 */	fmr f1, f22
/* 814FDE4C | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE50 | 4B FF BA C1 */	bl SetMainSend__Q44nw4r3snd6detail7AxVoiceFf
/* 814FDE54 | 3B 81 00 38 */	addi r28, r1, 0x38
/* 814FDE58 | 3B A0 00 00 */	li r29, 0x0
.L_814FDE5C:
/* 814FDE5C | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE60 | 7F A4 EB 78 */	mr r4, r29
/* 814FDE64 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814FDE68 | 4B FF BA F1 */	bl SetFxSend__Q44nw4r3snd6detail7AxVoiceFQ34nw4r3snd6AuxBusf
/* 814FDE6C | 3B BD 00 01 */	addi r29, r29, 0x1
/* 814FDE70 | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FDE74 | 2C 1D 00 03 */	cmpwi r29, 0x3
/* 814FDE78 | 41 80 FF E4 */	blt .L_814FDE5C
/* 814FDE7C | 3B A1 00 28 */	addi r29, r1, 0x28
/* 814FDE80 | 3B 81 00 18 */	addi r28, r1, 0x18
/* 814FDE84 | 3B 60 00 00 */	li r27, 0x0
.L_814FDE88:
/* 814FDE88 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE8C | 7F 64 DB 78 */	mr r4, r27
/* 814FDE90 | C0 3D 00 00 */	lfs f1, 0x0(r29)
/* 814FDE94 | 4B FF BA 31 */	bl SetRemoteOutVolume__Q44nw4r3snd6detail7AxVoiceFif
/* 814FDE98 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDE9C | 7F 64 DB 78 */	mr r4, r27
/* 814FDEA0 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814FDEA4 | 4B FF BB 01 */	bl SetRemoteSend__Q44nw4r3snd6detail7AxVoiceFif
/* 814FDEA8 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDEAC | 7F 64 DB 78 */	mr r4, r27
/* 814FDEB0 | C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 814FDEB4 | 4B FF BB 41 */	bl SetRemoteFxSend__Q44nw4r3snd6detail7AxVoiceFif
/* 814FDEB8 | 3B 7B 00 01 */	addi r27, r27, 0x1
/* 814FDEBC | 3B 9C 00 04 */	addi r28, r28, 0x4
/* 814FDEC0 | 2C 1B 00 04 */	cmpwi r27, 0x4
/* 814FDEC4 | 3B BD 00 04 */	addi r29, r29, 0x4
/* 814FDEC8 | 41 80 FF C0 */	blt .L_814FDE88
.L_814FDECC:
/* 814FDECC | 7F E3 FB 78 */	mr r3, r31
/* 814FDED0 | 48 03 29 DD */	bl OSRestoreInterrupts
.L_814FDED4:
/* 814FDED4 | E3 E1 01 48 */	psq_l f31, 0x148(r1), 0, qr0
/* 814FDED8 | CB E1 01 40 */	lfd f31, 0x140(r1)
/* 814FDEDC | E3 C1 01 38 */	psq_l f30, 0x138(r1), 0, qr0
/* 814FDEE0 | CB C1 01 30 */	lfd f30, 0x130(r1)
/* 814FDEE4 | E3 A1 01 28 */	psq_l f29, 0x128(r1), 0, qr0
/* 814FDEE8 | CB A1 01 20 */	lfd f29, 0x120(r1)
/* 814FDEEC | E3 81 01 18 */	psq_l f28, 0x118(r1), 0, qr0
/* 814FDEF0 | CB 81 01 10 */	lfd f28, 0x110(r1)
/* 814FDEF4 | E3 61 01 08 */	psq_l f27, 0x108(r1), 0, qr0
/* 814FDEF8 | CB 61 01 00 */	lfd f27, 0x100(r1)
/* 814FDEFC | E3 41 00 F8 */	psq_l f26, 0xf8(r1), 0, qr0
/* 814FDF00 | CB 41 00 F0 */	lfd f26, 0xf0(r1)
/* 814FDF04 | E3 21 00 E8 */	psq_l f25, 0xe8(r1), 0, qr0
/* 814FDF08 | CB 21 00 E0 */	lfd f25, 0xe0(r1)
/* 814FDF0C | E3 01 00 D8 */	psq_l f24, 0xd8(r1), 0, qr0
/* 814FDF10 | CB 01 00 D0 */	lfd f24, 0xd0(r1)
/* 814FDF14 | E2 E1 00 C8 */	psq_l f23, 0xc8(r1), 0, qr0
/* 814FDF18 | CA E1 00 C0 */	lfd f23, 0xc0(r1)
/* 814FDF1C | E2 C1 00 B8 */	psq_l f22, 0xb8(r1), 0, qr0
/* 814FDF20 | CA C1 00 B0 */	lfd f22, 0xb0(r1)
/* 814FDF24 | E2 A1 00 A8 */	psq_l f21, 0xa8(r1), 0, qr0
/* 814FDF28 | CA A1 00 A0 */	lfd f21, 0xa0(r1)
/* 814FDF2C | E2 81 00 98 */	psq_l f20, 0x98(r1), 0, qr0
/* 814FDF30 | CA 81 00 90 */	lfd f20, 0x90(r1)
/* 814FDF34 | E2 61 00 88 */	psq_l f19, 0x88(r1), 0, qr0
/* 814FDF38 | 39 61 00 80 */	addi r11, r1, 0x80
/* 814FDF3C | CA 61 00 80 */	lfd f19, 0x80(r1)
/* 814FDF40 | 48 0F B5 CD */	bl _restgpr_27
/* 814FDF44 | 80 01 01 54 */	lwz r0, 0x154(r1)
/* 814FDF48 | 7C 08 03 A6 */	mtlr r0
/* 814FDF4C | 38 21 01 50 */	addi r1, r1, 0x150
/* 814FDF50 | 4E 80 00 20 */	blr
.endfn Update__Q44nw4r3snd6detail7ChannelFb

# .text:0x8F8 | 0x814FDF54 | size: 0x6C
# nw4r::snd::detail::Channel::Start(const nw4r::snd::detail::WaveData&, long)
.fn Start__Q44nw4r3snd6detail7ChannelFRCQ44nw4r3snd6detail8WaveDatal, global
/* 814FDF54 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FDF58 | 7C 08 02 A6 */	mflr r0
/* 814FDF5C | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FDF60 | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FDF64 | 7C 9F 23 78 */	mr r31, r4
/* 814FDF68 | 93 C1 00 08 */	stw r30, 0x8(r1)
/* 814FDF6C | 7C 7E 1B 78 */	mr r30, r3
/* 814FDF70 | 90 A3 00 D4 */	stw r5, 0xd4(r3)
/* 814FDF74 | 38 63 00 20 */	addi r3, r3, 0x20
/* 814FDF78 | 48 00 35 C9 */	bl Reset__Q44nw4r3snd6detail3LfoFv
/* 814FDF7C | 38 7E 00 08 */	addi r3, r30, 0x8
/* 814FDF80 | 48 00 11 75 */	bl Reset__Q44nw4r3snd6detail12EnvGeneratorFv
/* 814FDF84 | 38 00 00 00 */	li r0, 0x0
/* 814FDF88 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDF8C | 90 1E 00 AC */	stw r0, 0xac(r30)
/* 814FDF90 | 7F E4 FB 78 */	mr r4, r31
/* 814FDF94 | 4B FF B1 99 */	bl Setup__Q44nw4r3snd6detail7AxVoiceFRCQ44nw4r3snd6detail8WaveData
/* 814FDF98 | 80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 814FDF9C | 4B FF B4 CD */	bl Start__Q44nw4r3snd6detail7AxVoiceFv
/* 814FDFA0 | 38 00 00 01 */	li r0, 0x1
/* 814FDFA4 | 98 1E 00 3A */	stb r0, 0x3a(r30)
/* 814FDFA8 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FDFAC | 83 C1 00 08 */	lwz r30, 0x8(r1)
/* 814FDFB0 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FDFB4 | 7C 08 03 A6 */	mtlr r0
/* 814FDFB8 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FDFBC | 4E 80 00 20 */	blr
.endfn Start__Q44nw4r3snd6detail7ChannelFRCQ44nw4r3snd6detail8WaveDatal

# .text:0x964 | 0x814FDFC0 | size: 0x58
# nw4r::snd::detail::Channel::Release()
.fn Release__Q44nw4r3snd6detail7ChannelFv, global
/* 814FDFC0 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FDFC4 | 7C 08 02 A6 */	mflr r0
/* 814FDFC8 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FDFCC | 93 E1 00 0C */	stw r31, 0xc(r1)
/* 814FDFD0 | 7C 7F 1B 78 */	mr r31, r3
/* 814FDFD4 | 80 03 00 08 */	lwz r0, 0x8(r3)
/* 814FDFD8 | 2C 00 00 03 */	cmpwi r0, 0x3
/* 814FDFDC | 41 82 00 20 */	beq .L_814FDFFC
/* 814FDFE0 | 80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 814FDFE4 | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FDFE8 | 41 82 00 0C */	beq .L_814FDFF4
/* 814FDFEC | 38 80 00 01 */	li r4, 0x1
/* 814FDFF0 | 4B FF BA 51 */	bl SetPriority__Q44nw4r3snd6detail7AxVoiceFi
.L_814FDFF4:
/* 814FDFF4 | 38 00 00 03 */	li r0, 0x3
/* 814FDFF8 | 90 1F 00 08 */	stw r0, 0x8(r31)
.L_814FDFFC:
/* 814FDFFC | 38 00 00 00 */	li r0, 0x0
/* 814FE000 | 98 1F 00 39 */	stb r0, 0x39(r31)
/* 814FE004 | 83 E1 00 0C */	lwz r31, 0xc(r1)
/* 814FE008 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FE00C | 7C 08 03 A6 */	mtlr r0
/* 814FE010 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FE014 | 4E 80 00 20 */	blr
.endfn Release__Q44nw4r3snd6detail7ChannelFv

# .text:0x9BC | 0x814FE018 | size: 0x144
# nw4r::snd::detail::Channel::Stop()
.fn Stop__Q44nw4r3snd6detail7ChannelFv, global
/* 814FE018 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FE01C | 7C 08 02 A6 */	mflr r0
/* 814FE020 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FE024 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FE028 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FE02C | 93 A1 00 14 */	stw r29, 0x14(r1)
/* 814FE030 | 7C 7D 1B 78 */	mr r29, r3
/* 814FE034 | 48 03 28 51 */	bl OSDisableInterrupts
/* 814FE038 | 80 1D 00 E0 */	lwz r0, 0xe0(r29)
/* 814FE03C | 7C 7F 1B 78 */	mr r31, r3
/* 814FE040 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FE044 | 40 82 00 0C */	bne .L_814FE050
/* 814FE048 | 48 03 28 65 */	bl OSRestoreInterrupts
/* 814FE04C | 48 00 00 F4 */	b .L_814FE140
.L_814FE050:
/* 814FE050 | 7C 03 03 78 */	mr r3, r0
/* 814FE054 | 4B FF B4 61 */	bl Stop__Q44nw4r3snd6detail7AxVoiceFv
/* 814FE058 | 80 7D 00 E0 */	lwz r3, 0xe0(r29)
/* 814FE05C | 4B FF B0 01 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 814FE060 | 88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 814FE064 | 38 E0 00 00 */	li r7, 0x0
/* 814FE068 | 90 FD 00 E0 */	stw r7, 0xe0(r29)
/* 814FE06C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FE070 | 98 FD 00 39 */	stb r7, 0x39(r29)
/* 814FE074 | 98 FD 00 3A */	stb r7, 0x3a(r29)
/* 814FE078 | 41 82 00 A0 */	beq .L_814FE118
/* 814FE07C | 98 FD 00 3B */	stb r7, 0x3b(r29)
/* 814FE080 | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FE084 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE088 | 40 82 00 58 */	bne .L_814FE0E0
/* 814FE08C | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE090 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FE094 | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE098 | 90 E6 5C 58 */	stw r7, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FE09C | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FE0A0 | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FE0A4 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FE0A8 | 39 03 00 04 */	addi r8, r3, 0x4
/* 814FE0AC | 38 C3 00 10 */	addi r6, r3, 0x10
/* 814FE0B0 | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FE0B4 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FE0B8 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814FE0BC | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814FE0C0 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 814FE0C4 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814FE0C8 | 90 E3 00 0C */	stw r7, 0xc(r3)
/* 814FE0CC | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 814FE0D0 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 814FE0D4 | 48 0F AF 0D */	bl __register_global_object
/* 814FE0D8 | 38 00 00 01 */	li r0, 0x1
/* 814FE0DC | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FE0E0:
/* 814FE0E0 | 3F C0 81 10 */	lis r30, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE0E4 | 3B DE 5C 58 */	addi r30, r30, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE0E8 | 80 1E 00 0C */	lwz r0, 0xc(r30)
/* 814FE0EC | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FE0F0 | 41 82 00 28 */	beq .L_814FE118
/* 814FE0F4 | 7F A4 EB 78 */	mr r4, r29
/* 814FE0F8 | 38 7E 00 0C */	addi r3, r30, 0xc
/* 814FE0FC | 48 01 43 A5 */	bl fn_815124A0
/* 814FE100 | 38 1E 00 04 */	addi r0, r30, 0x4
/* 814FE104 | 7F C3 F3 78 */	mr r3, r30
/* 814FE108 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FE10C | 7F A5 EB 78 */	mr r5, r29
/* 814FE110 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FE114 | 48 01 43 61 */	bl fn_81512474
.L_814FE118:
/* 814FE118 | 81 9D 00 D8 */	lwz r12, 0xd8(r29)
/* 814FE11C | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FE120 | 41 82 00 18 */	beq .L_814FE138
/* 814FE124 | 7F A3 EB 78 */	mr r3, r29
/* 814FE128 | 80 BD 00 DC */	lwz r5, 0xdc(r29)
/* 814FE12C | 38 80 00 00 */	li r4, 0x0
/* 814FE130 | 7D 89 03 A6 */	mtctr r12
/* 814FE134 | 4E 80 04 21 */	bctrl
.L_814FE138:
/* 814FE138 | 7F E3 FB 78 */	mr r3, r31
/* 814FE13C | 48 03 27 71 */	bl OSRestoreInterrupts
.L_814FE140:
/* 814FE140 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FE144 | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FE148 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FE14C | 83 A1 00 14 */	lwz r29, 0x14(r1)
/* 814FE150 | 7C 08 03 A6 */	mtlr r0
/* 814FE154 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FE158 | 4E 80 00 20 */	blr
.endfn Stop__Q44nw4r3snd6detail7ChannelFv

# .text:0xB00 | 0x814FE15C | size: 0x20
# nw4r::snd::detail::Channel::UpdateSweep(int)
.fn UpdateSweep__Q44nw4r3snd6detail7ChannelFi, global
/* 814FE15C | 80 03 00 AC */	lwz r0, 0xac(r3)
/* 814FE160 | 80 A3 00 B0 */	lwz r5, 0xb0(r3)
/* 814FE164 | 7C 00 22 14 */	add r0, r0, r4
/* 814FE168 | 7C 00 28 00 */	cmpw r0, r5
/* 814FE16C | 90 03 00 AC */	stw r0, 0xac(r3)
/* 814FE170 | 4C 81 00 20 */	blelr
/* 814FE174 | 90 A3 00 AC */	stw r5, 0xac(r3)
/* 814FE178 | 4E 80 00 20 */	blr
.endfn UpdateSweep__Q44nw4r3snd6detail7ChannelFi

# .text:0xB20 | 0x814FE17C | size: 0x18
# nw4r::snd::detail::Channel::SetSweepParam(float, int, bool)
.fn SetSweepParam__Q44nw4r3snd6detail7ChannelFfib, global
/* 814FE17C | 38 00 00 00 */	li r0, 0x0
/* 814FE180 | D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 814FE184 | 90 83 00 B0 */	stw r4, 0xb0(r3)
/* 814FE188 | 98 A3 00 3C */	stb r5, 0x3c(r3)
/* 814FE18C | 90 03 00 AC */	stw r0, 0xac(r3)
/* 814FE190 | 4E 80 00 20 */	blr
.endfn SetSweepParam__Q44nw4r3snd6detail7ChannelFfib

# .text:0xB38 | 0x814FE194 | size: 0x13C
# nw4r::snd::detail::Channel::VoiceCallback(nw4r::snd::detail::AxVoice*, nw4r::snd::detail::AxVoice::CallbackStatus, void*)
.fn VoiceCallback__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv, global
/* 814FE194 | 94 21 FF E0 */	stwu r1, -0x20(r1)
/* 814FE198 | 7C 08 02 A6 */	mflr r0
/* 814FE19C | 2C 04 00 01 */	cmpwi r4, 0x1
/* 814FE1A0 | 90 01 00 24 */	stw r0, 0x24(r1)
/* 814FE1A4 | 93 E1 00 1C */	stw r31, 0x1c(r1)
/* 814FE1A8 | 93 C1 00 18 */	stw r30, 0x18(r1)
/* 814FE1AC | 7C BE 2B 78 */	mr r30, r5
/* 814FE1B0 | 41 82 00 2C */	beq .L_814FE1DC
/* 814FE1B4 | 40 80 00 10 */	bge .L_814FE1C4
/* 814FE1B8 | 2C 04 00 00 */	cmpwi r4, 0x0
/* 814FE1BC | 40 80 00 14 */	bge .L_814FE1D0
/* 814FE1C0 | 48 00 00 2C */	b .L_814FE1EC
.L_814FE1C4:
/* 814FE1C4 | 2C 04 00 04 */	cmpwi r4, 0x4
/* 814FE1C8 | 40 80 00 24 */	bge .L_814FE1EC
/* 814FE1CC | 48 00 00 1C */	b .L_814FE1E8
.L_814FE1D0:
/* 814FE1D0 | 3B E0 00 02 */	li r31, 0x2
/* 814FE1D4 | 4B FF AE 89 */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 814FE1D8 | 48 00 00 14 */	b .L_814FE1EC
.L_814FE1DC:
/* 814FE1DC | 3B E0 00 03 */	li r31, 0x3
/* 814FE1E0 | 4B FF AE 7D */	bl Free__Q44nw4r3snd6detail7AxVoiceFv
/* 814FE1E4 | 48 00 00 08 */	b .L_814FE1EC
.L_814FE1E8:
/* 814FE1E8 | 3B E0 00 01 */	li r31, 0x1
.L_814FE1EC:
/* 814FE1EC | 81 9E 00 D8 */	lwz r12, 0xd8(r30)
/* 814FE1F0 | 2C 0C 00 00 */	cmpwi r12, 0x0
/* 814FE1F4 | 41 82 00 18 */	beq .L_814FE20C
/* 814FE1F8 | 7F C3 F3 78 */	mr r3, r30
/* 814FE1FC | 7F E4 FB 78 */	mr r4, r31
/* 814FE200 | 80 BE 00 DC */	lwz r5, 0xdc(r30)
/* 814FE204 | 7D 89 03 A6 */	mtctr r12
/* 814FE208 | 4E 80 04 21 */	bctrl
.L_814FE20C:
/* 814FE20C | 38 E0 00 00 */	li r7, 0x0
/* 814FE210 | 90 FE 00 E0 */	stw r7, 0xe0(r30)
/* 814FE214 | 98 FE 00 39 */	stb r7, 0x39(r30)
/* 814FE218 | 98 FE 00 3A */	stb r7, 0x3a(r30)
/* 814FE21C | 98 FE 00 3B */	stb r7, 0x3b(r30)
/* 814FE220 | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FE224 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE228 | 40 82 00 58 */	bne .L_814FE280
/* 814FE22C | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE230 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FE234 | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE238 | 90 E6 5C 58 */	stw r7, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FE23C | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FE240 | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FE244 | 90 E3 00 04 */	stw r7, 0x4(r3)
/* 814FE248 | 39 03 00 04 */	addi r8, r3, 0x4
/* 814FE24C | 38 C3 00 10 */	addi r6, r3, 0x10
/* 814FE250 | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FE254 | 90 E3 00 08 */	stw r7, 0x8(r3)
/* 814FE258 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814FE25C | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814FE260 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 814FE264 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814FE268 | 90 E3 00 0C */	stw r7, 0xc(r3)
/* 814FE26C | 90 C3 00 10 */	stw r6, 0x10(r3)
/* 814FE270 | 90 C3 00 14 */	stw r6, 0x14(r3)
/* 814FE274 | 48 0F AD 6D */	bl __register_global_object
/* 814FE278 | 38 00 00 01 */	li r0, 0x1
/* 814FE27C | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FE280:
/* 814FE280 | 3F E0 81 10 */	lis r31, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE284 | 3B FF 5C 58 */	addi r31, r31, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE288 | 80 1F 00 0C */	lwz r0, 0xc(r31)
/* 814FE28C | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FE290 | 41 82 00 28 */	beq .L_814FE2B8
/* 814FE294 | 7F C4 F3 78 */	mr r4, r30
/* 814FE298 | 38 7F 00 0C */	addi r3, r31, 0xc
/* 814FE29C | 48 01 42 05 */	bl fn_815124A0
/* 814FE2A0 | 38 1F 00 04 */	addi r0, r31, 0x4
/* 814FE2A4 | 7F E3 FB 78 */	mr r3, r31
/* 814FE2A8 | 90 01 00 08 */	stw r0, 0x8(r1)
/* 814FE2AC | 7F C5 F3 78 */	mr r5, r30
/* 814FE2B0 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FE2B4 | 48 01 41 C1 */	bl fn_81512474
.L_814FE2B8:
/* 814FE2B8 | 80 01 00 24 */	lwz r0, 0x24(r1)
/* 814FE2BC | 83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 814FE2C0 | 83 C1 00 18 */	lwz r30, 0x18(r1)
/* 814FE2C4 | 7C 08 03 A6 */	mtlr r0
/* 814FE2C8 | 38 21 00 20 */	addi r1, r1, 0x20
/* 814FE2CC | 4E 80 00 20 */	blr
.endfn VoiceCallback__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv

# .text:0xC74 | 0x814FE2D0 | size: 0x16C
# nw4r::snd::detail::Channel::AllocChannel(int, int, int, void (*)(nw4r::snd::detail::Channel*, nw4r::snd::detail::Channel::ChannelCallbackStatus, unsigned long), unsigned long)
.fn AllocChannel__Q44nw4r3snd6detail7ChannelFiiiPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl, global
/* 814FE2D0 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FE2D4 | 7C 08 02 A6 */	mflr r0
/* 814FE2D8 | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FE2DC | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FE2E0 | 48 0F B1 D5 */	bl _savegpr_24
/* 814FE2E4 | 7C 7B 1B 78 */	mr r27, r3
/* 814FE2E8 | 7C 9C 23 78 */	mr r28, r4
/* 814FE2EC | 7C BD 2B 78 */	mr r29, r5
/* 814FE2F0 | 7C DE 33 78 */	mr r30, r6
/* 814FE2F4 | 7C FF 3B 78 */	mr r31, r7
/* 814FE2F8 | 48 03 25 8D */	bl OSDisableInterrupts
/* 814FE2FC | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FE300 | 7C 7A 1B 78 */	mr r26, r3
/* 814FE304 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE308 | 40 82 00 5C */	bne .L_814FE364
/* 814FE30C | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE310 | 38 00 00 00 */	li r0, 0x0
/* 814FE314 | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE318 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FE31C | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FE320 | 39 03 00 04 */	addi r8, r3, 0x4
/* 814FE324 | 38 E3 00 10 */	addi r7, r3, 0x10
/* 814FE328 | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FE32C | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FE330 | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FE334 | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FE338 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FE33C | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814FE340 | 90 06 5C 58 */	stw r0, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FE344 | 91 03 00 04 */	stw r8, 0x4(r3)
/* 814FE348 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814FE34C | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FE350 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814FE354 | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814FE358 | 48 0F AC 89 */	bl __register_global_object
/* 814FE35C | 38 00 00 01 */	li r0, 0x1
/* 814FE360 | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FE364:
/* 814FE364 | 3C 60 81 10 */	lis r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE368 | 80 03 5C 58 */	lwz r0, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r3)
/* 814FE36C | 3B 23 5C 58 */	addi r25, r3, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE370 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814FE374 | 40 82 00 0C */	bne .L_814FE380
/* 814FE378 | 3B 00 00 00 */	li r24, 0x0
/* 814FE37C | 48 00 00 30 */	b .L_814FE3AC
.L_814FE380:
/* 814FE380 | 83 19 00 04 */	lwz r24, 0x4(r25)
/* 814FE384 | 7F 23 CB 78 */	mr r3, r25
/* 814FE388 | 38 81 00 08 */	addi r4, r1, 0x8
/* 814FE38C | 93 01 00 08 */	stw r24, 0x8(r1)
/* 814FE390 | 48 01 40 59 */	bl fn_815123E8
/* 814FE394 | 38 19 00 10 */	addi r0, r25, 0x10
/* 814FE398 | 7F 05 C3 78 */	mr r5, r24
/* 814FE39C | 90 01 00 0C */	stw r0, 0xc(r1)
/* 814FE3A0 | 38 79 00 0C */	addi r3, r25, 0xc
/* 814FE3A4 | 38 81 00 0C */	addi r4, r1, 0xc
/* 814FE3A8 | 48 01 40 CD */	bl fn_81512474
.L_814FE3AC:
/* 814FE3AC | 2C 18 00 00 */	cmpwi r24, 0x0
/* 814FE3B0 | 40 82 00 14 */	bne .L_814FE3C4
/* 814FE3B4 | 7F 43 D3 78 */	mr r3, r26
/* 814FE3B8 | 48 03 24 F5 */	bl OSRestoreInterrupts
/* 814FE3BC | 38 60 00 00 */	li r3, 0x0
/* 814FE3C0 | 48 00 00 64 */	b .L_814FE424
.L_814FE3C4:
/* 814FE3C4 | 38 00 00 01 */	li r0, 0x1
/* 814FE3C8 | 98 18 00 3B */	stb r0, 0x3b(r24)
/* 814FE3CC | 4B FF 92 01 */	bl GetInstance__Q44nw4r3snd6detail9AxManagerFv
/* 814FE3D0 | 3C E0 81 50 */	lis r7, VoiceCallback__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@ha
/* 814FE3D4 | 7F 64 DB 78 */	mr r4, r27
/* 814FE3D8 | 7F 85 E3 78 */	mr r5, r28
/* 814FE3DC | 7F A6 EB 78 */	mr r6, r29
/* 814FE3E0 | 7F 08 C3 78 */	mr r8, r24
/* 814FE3E4 | 38 E7 E1 94 */	addi r7, r7, VoiceCallback__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv@l
/* 814FE3E8 | 4B FF 98 7D */	bl AllocVoice__Q44nw4r3snd6detail9AxManagerFiiiPFPQ44nw4r3snd6detail7AxVoiceQ54nw4r3snd6detail7AxVoice14CallbackStatusPv_vPv
/* 814FE3EC | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FE3F0 | 40 82 00 14 */	bne .L_814FE404
/* 814FE3F4 | 7F 43 D3 78 */	mr r3, r26
/* 814FE3F8 | 48 03 24 B5 */	bl OSRestoreInterrupts
/* 814FE3FC | 38 60 00 00 */	li r3, 0x0
/* 814FE400 | 48 00 00 24 */	b .L_814FE424
.L_814FE404:
/* 814FE404 | 90 78 00 E0 */	stw r3, 0xe0(r24)
/* 814FE408 | 7F 03 C3 78 */	mr r3, r24
/* 814FE40C | 7F C4 F3 78 */	mr r4, r30
/* 814FE410 | 7F E5 FB 78 */	mr r5, r31
/* 814FE414 | 4B FF F4 7D */	bl InitParam__Q44nw4r3snd6detail7ChannelFPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl
/* 814FE418 | 7F 43 D3 78 */	mr r3, r26
/* 814FE41C | 48 03 24 91 */	bl OSRestoreInterrupts
/* 814FE420 | 7F 03 C3 78 */	mr r3, r24
.L_814FE424:
/* 814FE424 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FE428 | 48 0F B0 D9 */	bl _restgpr_24
/* 814FE42C | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FE430 | 7C 08 03 A6 */	mtlr r0
/* 814FE434 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FE438 | 4E 80 00 20 */	blr
.endfn AllocChannel__Q44nw4r3snd6detail7ChannelFiiiPFPQ44nw4r3snd6detail7ChannelQ54nw4r3snd6detail7Channel21ChannelCallbackStatusUl_vUl

# .text:0xDE0 | 0x814FE43C | size: 0x18
# nw4r::snd::detail::Channel::FreeChannel(nw4r::snd::detail::Channel*)
.fn FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel, global
/* 814FE43C | 2C 03 00 00 */	cmpwi r3, 0x0
/* 814FE440 | 4D 82 00 20 */	beqlr
/* 814FE444 | 38 00 00 00 */	li r0, 0x0
/* 814FE448 | 90 03 00 D8 */	stw r0, 0xd8(r3)
/* 814FE44C | 90 03 00 DC */	stw r0, 0xdc(r3)
/* 814FE450 | 4E 80 00 20 */	blr
.endfn FreeChannel__Q44nw4r3snd6detail7ChannelFPQ44nw4r3snd6detail7Channel

# .text:0xDF8 | 0x814FE454 | size: 0x11C
# nw4r::snd::detail::Channel::UpdateAllChannel()
.fn UpdateAllChannel__Q44nw4r3snd6detail7ChannelFv, global
/* 814FE454 | 94 21 FF D0 */	stwu r1, -0x30(r1)
/* 814FE458 | 7C 08 02 A6 */	mflr r0
/* 814FE45C | 90 01 00 34 */	stw r0, 0x34(r1)
/* 814FE460 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FE464 | 48 0F B0 51 */	bl _savegpr_24
/* 814FE468 | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FE46C | 7C 00 07 75 */	extsb. r0, r0
/* 814FE470 | 40 82 00 5C */	bne .L_814FE4CC
/* 814FE474 | 3C C0 81 10 */	lis r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE478 | 38 00 00 00 */	li r0, 0x0
/* 814FE47C | 38 66 5C 58 */	addi r3, r6, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE480 | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FE484 | 90 03 00 04 */	stw r0, 0x4(r3)
/* 814FE488 | 39 03 00 04 */	addi r8, r3, 0x4
/* 814FE48C | 38 E3 00 10 */	addi r7, r3, 0x10
/* 814FE490 | 3C A0 81 10 */	lis r5, lbl_81100458@ha
/* 814FE494 | 90 03 00 08 */	stw r0, 0x8(r3)
/* 814FE498 | 38 84 D7 54 */	addi r4, r4, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FE49C | 38 A5 04 58 */	addi r5, r5, lbl_81100458@l
/* 814FE4A0 | 90 03 00 10 */	stw r0, 0x10(r3)
/* 814FE4A4 | 90 03 00 14 */	stw r0, 0x14(r3)
/* 814FE4A8 | 90 06 5C 58 */	stw r0, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r6)
/* 814FE4AC | 91 03 00 04 */	stw r8, 0x4(r3)
/* 814FE4B0 | 91 03 00 08 */	stw r8, 0x8(r3)
/* 814FE4B4 | 90 03 00 0C */	stw r0, 0xc(r3)
/* 814FE4B8 | 90 E3 00 10 */	stw r7, 0x10(r3)
/* 814FE4BC | 90 E3 00 14 */	stw r7, 0x14(r3)
/* 814FE4C0 | 48 0F AB 21 */	bl __register_global_object
/* 814FE4C4 | 38 00 00 01 */	li r0, 0x1
/* 814FE4C8 | 98 0D AE 90 */	stb r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FE4CC:
/* 814FE4CC | 3F 00 81 10 */	lis r24, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@ha
/* 814FE4D0 | 3B 40 00 00 */	li r26, 0x0
/* 814FE4D4 | 3B 38 5C 58 */	addi r25, r24, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l
/* 814FE4D8 | 3F 60 81 50 */	lis r27, __dt__Q44nw4r3snd6detail14ChannelManagerFv@ha
/* 814FE4DC | 83 F9 00 10 */	lwz r31, 0x10(r25)
/* 814FE4E0 | 3B D9 00 10 */	addi r30, r25, 0x10
/* 814FE4E4 | 3F 80 81 10 */	lis r28, lbl_81100458@ha
/* 814FE4E8 | 3B A0 00 01 */	li r29, 0x1
/* 814FE4EC | 48 00 00 14 */	b .L_814FE500
.L_814FE4F0:
/* 814FE4F0 | 7F E3 FB 78 */	mr r3, r31
/* 814FE4F4 | 83 FF 00 00 */	lwz r31, 0x0(r31)
/* 814FE4F8 | 38 80 00 01 */	li r4, 0x1
/* 814FE4FC | 4B FF F4 A5 */	bl Update__Q44nw4r3snd6detail7ChannelFb
.L_814FE500:
/* 814FE500 | 88 0D AE 90 */	lbz r0, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
/* 814FE504 | 7C 00 07 75 */	extsb. r0, r0
/* 814FE508 | 40 82 00 48 */	bne .L_814FE550
/* 814FE50C | 93 59 00 04 */	stw r26, 0x4(r25)
/* 814FE510 | 38 F9 00 04 */	addi r7, r25, 0x4
/* 814FE514 | 38 D9 00 10 */	addi r6, r25, 0x10
/* 814FE518 | 7F 23 CB 78 */	mr r3, r25
/* 814FE51C | 93 59 00 08 */	stw r26, 0x8(r25)
/* 814FE520 | 38 9B D7 54 */	addi r4, r27, __dt__Q44nw4r3snd6detail14ChannelManagerFv@l
/* 814FE524 | 38 BC 04 58 */	addi r5, r28, lbl_81100458@l
/* 814FE528 | 93 59 00 10 */	stw r26, 0x10(r25)
/* 814FE52C | 93 59 00 14 */	stw r26, 0x14(r25)
/* 814FE530 | 93 58 5C 58 */	stw r26, "@LOCAL@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@l(r24)
/* 814FE534 | 90 F9 00 04 */	stw r7, 0x4(r25)
/* 814FE538 | 90 F9 00 08 */	stw r7, 0x8(r25)
/* 814FE53C | 93 59 00 0C */	stw r26, 0xc(r25)
/* 814FE540 | 90 D9 00 10 */	stw r6, 0x10(r25)
/* 814FE544 | 90 D9 00 14 */	stw r6, 0x14(r25)
/* 814FE548 | 48 0F AA 99 */	bl __register_global_object
/* 814FE54C | 9B AD AE 90 */	stb r29, "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"@sda21(r0)
.L_814FE550:
/* 814FE550 | 7C 1F F0 40 */	cmplw r31, r30
/* 814FE554 | 40 82 FF 9C */	bne .L_814FE4F0
/* 814FE558 | 39 61 00 30 */	addi r11, r1, 0x30
/* 814FE55C | 48 0F AF A5 */	bl _restgpr_24
/* 814FE560 | 80 01 00 34 */	lwz r0, 0x34(r1)
/* 814FE564 | 7C 08 03 A6 */	mtlr r0
/* 814FE568 | 38 21 00 30 */	addi r1, r1, 0x30
/* 814FE56C | 4E 80 00 20 */	blr
.endfn UpdateAllChannel__Q44nw4r3snd6detail7ChannelFv

# .text:0xF14 | 0x814FE570 | size: 0x58
.fn "__sinit_\\snd_Channel_cpp", local
/* 814FE570 | 94 21 FF F0 */	stwu r1, -0x10(r1)
/* 814FE574 | 7C 08 02 A6 */	mflr r0
/* 814FE578 | 3C 60 81 10 */	lis r3, mChannel__Q44nw4r3snd6detail7Channel@ha
/* 814FE57C | 3C 80 81 50 */	lis r4, __ct__Q44nw4r3snd6detail7ChannelFv@ha
/* 814FE580 | 3C A0 81 50 */	lis r5, __dt__Q44nw4r3snd6detail7ChannelFv@ha
/* 814FE584 | 90 01 00 14 */	stw r0, 0x14(r1)
/* 814FE588 | 38 C0 00 E8 */	li r6, 0xe8
/* 814FE58C | 38 63 04 70 */	addi r3, r3, mChannel__Q44nw4r3snd6detail7Channel@l
/* 814FE590 | 38 84 D6 5C */	addi r4, r4, __ct__Q44nw4r3snd6detail7ChannelFv@l
/* 814FE594 | 38 A5 D7 CC */	addi r5, r5, __dt__Q44nw4r3snd6detail7ChannelFv@l
/* 814FE598 | 38 E0 00 61 */	li r7, 0x61
/* 814FE59C | 48 0F AC 65 */	bl __construct_array
/* 814FE5A0 | 3C 80 81 50 */	lis r4, __arraydtor$1911@ha
/* 814FE5A4 | 3C A0 81 10 */	lis r5, lbl_81100464@ha
/* 814FE5A8 | 38 84 E5 C8 */	addi r4, r4, __arraydtor$1911@l
/* 814FE5AC | 38 60 00 00 */	li r3, 0x0
/* 814FE5B0 | 38 A5 04 64 */	addi r5, r5, lbl_81100464@l
/* 814FE5B4 | 48 0F AA 2D */	bl __register_global_object
/* 814FE5B8 | 80 01 00 14 */	lwz r0, 0x14(r1)
/* 814FE5BC | 7C 08 03 A6 */	mtlr r0
/* 814FE5C0 | 38 21 00 10 */	addi r1, r1, 0x10
/* 814FE5C4 | 4E 80 00 20 */	blr
.endfn "__sinit_\\snd_Channel_cpp"

# .text:0xF6C | 0x814FE5C8 | size: 0x1C
.fn __arraydtor$1911, local
/* 814FE5C8 | 3C 60 81 10 */	lis r3, mChannel__Q44nw4r3snd6detail7Channel@ha
/* 814FE5CC | 3C 80 81 50 */	lis r4, __dt__Q44nw4r3snd6detail7ChannelFv@ha
/* 814FE5D0 | 38 63 04 70 */	addi r3, r3, mChannel__Q44nw4r3snd6detail7Channel@l
/* 814FE5D4 | 38 A0 00 E8 */	li r5, 0xe8
/* 814FE5D8 | 38 84 D7 CC */	addi r4, r4, __dt__Q44nw4r3snd6detail7ChannelFv@l
/* 814FE5DC | 38 C0 00 61 */	li r6, 0x61
/* 814FE5E0 | 48 0F AD 18 */	b __destroy_arr
.endfn __arraydtor$1911

# 0x8160D228..0x8160D22C | size: 0x4
.section .ctors, "a"
.balign 4
	.4byte "__sinit_\\snd_Channel_cpp"

# 0x81695260..0x81695288 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x81695260 | size: 0x4
.obj lbl_81695260, global
	.float 0
.endobj lbl_81695260

# .sdata2:0x4 | 0x81695264 | size: 0x4
.obj lbl_81695264, global
	.float 1
.endobj lbl_81695264

# .sdata2:0x8 | 0x81695268 | size: 0x4
.obj lbl_81695268, global
	.float 255
.endobj lbl_81695268

# .sdata2:0xC | 0x8169526C | size: 0x4
.obj lbl_8169526C, global
	.float 6
.endobj lbl_8169526C

# .sdata2:0x10 | 0x81695270 | size: 0x4
.obj lbl_81695270, global
	.float 256
.endobj lbl_81695270

# .sdata2:0x14 | 0x81695274 | size: 0x4
.obj gap_09_81695274_sdata2, global
.hidden gap_09_81695274_sdata2
	.4byte 0x00000000
.endobj gap_09_81695274_sdata2

# .sdata2:0x18 | 0x81695278 | size: 0x8
.obj lbl_81695278, global
	.double 4503599627370496
.endobj lbl_81695278

# .sdata2:0x20 | 0x81695280 | size: 0x8
.obj lbl_81695280, global
	.double 4503601774854144
.endobj lbl_81695280

# 0x81698ED0..0x81698ED8 | size: 0x8
.section .sbss, "wa", @nobits
.balign 8

# .sbss:0x0 | 0x81698ED0 | size: 0x1
# nw4r::snd::detail::ChannelManager::GetInstance()::instance guard
.obj "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance", global
	.skip 0x1
.endobj "@GUARD@GetInstance__Q44nw4r3snd6detail14ChannelManagerFv@instance"

# .sbss:0x1 | 0x81698ED1 | size: 0x7
.obj gap_12_81698ED1_sbss, global
.hidden gap_12_81698ED1_sbss
	.skip 0x7
.endobj gap_12_81698ED1_sbss
