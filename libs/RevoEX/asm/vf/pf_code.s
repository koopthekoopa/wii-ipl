.include "macros.inc"
.file "pf_code.c"

# 0x814B5AC8..0x814B5AE4 | size: 0x1C
.text
.balign 4

# .text:0x0 | 0x814B5AC8 | size: 0xC
.fn VFiPFCODE_Combine_Width, global
/* 814B5AC8 | 54 60 80 1E */	slwi r0, r3, 16
/* 814B5ACC | 7C 60 22 14 */	add r3, r0, r4
/* 814B5AD0 | 4E 80 00 20 */	blr
.endfn VFiPFCODE_Combine_Width

# .text:0xC | 0x814B5AD4 | size: 0x10
.fn VFiPFCODE_Divide_Width, global
/* 814B5AD4 | 54 60 84 3E */	srwi r0, r3, 16
/* 814B5AD8 | B0 04 00 00 */	sth r0, 0x0(r4)
/* 814B5ADC | B0 65 00 00 */	sth r3, 0x0(r5)
/* 814B5AE0 | 4E 80 00 20 */	blr
.endfn VFiPFCODE_Divide_Width

# 0x81618D90..0x81618DF0 | size: 0x60
.rodata
.balign 8

# .rodata:0x0 | 0x81618D90 | size: 0x60
.obj VFipf_valid_fn_char_81618D90, global
	.4byte 0x01030003
	.4byte 0x03030303
	.4byte 0x03030001
	.4byte 0x01030300
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030001
	.4byte 0x00010000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030301
	.4byte 0x00010303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x00030300
.endobj VFipf_valid_fn_char_81618D90
