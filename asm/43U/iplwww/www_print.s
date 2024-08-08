.include "macros.inc"
.file "www_print.cpp"

# 0x8136E894..0x8136E900 | size: 0x6C
.text
.balign 4

# .text:0x0 | 0x8136E894 | size: 0x68
# ext_ead::www::print::IPLWWWReport(int, const char*, ...)
.fn IPLWWWReport__Q37ext_ead3www5printFiPCce, global
/* 8136E894 0003CC94  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8136E898 0003CC98  40 86 00 24 */	bne cr1, .L_8136E8BC
/* 8136E89C 0003CC9C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8136E8A0 0003CCA0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8136E8A4 0003CCA4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8136E8A8 0003CCA8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8136E8AC 0003CCAC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8136E8B0 0003CCB0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8136E8B4 0003CCB4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8136E8B8 0003CCB8  D9 01 00 60 */	stfd f8, 0x60(r1)
.L_8136E8BC:
/* 8136E8BC 0003CCBC  39 61 00 88 */	addi r11, r1, 0x88
/* 8136E8C0 0003CCC0  38 01 00 08 */	addi r0, r1, 0x8
/* 8136E8C4 0003CCC4  3D 80 02 00 */	lis r12, 0x200
/* 8136E8C8 0003CCC8  90 61 00 08 */	stw r3, 0x8(r1)
/* 8136E8CC 0003CCCC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8136E8D0 0003CCD0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8136E8D4 0003CCD4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8136E8D8 0003CCD8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8136E8DC 0003CCDC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8136E8E0 0003CCE0  91 21 00 20 */	stw r9, 0x20(r1)
/* 8136E8E4 0003CCE4  91 41 00 24 */	stw r10, 0x24(r1)
/* 8136E8E8 0003CCE8  91 81 00 68 */	stw r12, 0x68(r1)
/* 8136E8EC 0003CCEC  91 61 00 6C */	stw r11, 0x6c(r1)
/* 8136E8F0 0003CCF0  90 01 00 70 */	stw r0, 0x70(r1)
/* 8136E8F4 0003CCF4  38 21 00 80 */	addi r1, r1, 0x80
/* 8136E8F8 0003CCF8  4E 80 00 20 */	blr
.endfn IPLWWWReport__Q37ext_ead3www5printFiPCce

# .text:0x68 | 0x8136E8FC | size: 0x4
# ext_ead::www::print::IPLWWWVReport(int, const char*, __va_list_struct*)
.fn IPLWWWVReport__Q37ext_ead3www5printFiPCcP16__va_list_struct, global
/* 8136E8FC 0003CCFC  4E 80 00 20 */	blr
.endfn IPLWWWVReport__Q37ext_ead3www5printFiPCcP16__va_list_struct
