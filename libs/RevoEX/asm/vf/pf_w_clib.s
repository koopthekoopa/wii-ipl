.include "macros.inc"
.file "pf_w_clib.c"

# 0x814B6130..0x814B61C4 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x814B6130 | size: 0x24
.fn VFipf_w_strlen, global
/* 814B6130 | 7C 64 1B 78 */	mr r4, r3
/* 814B6134 | 48 00 00 08 */	b .L_814B613C
.L_814B6138:
/* 814B6138 | 38 84 00 02 */	addi r4, r4, 0x2
.L_814B613C:
/* 814B613C | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814B6140 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6144 | 40 82 FF F4 */	bne .L_814B6138
/* 814B6148 | 7C 03 20 50 */	subf r0, r3, r4
/* 814B614C | 7C 03 0E 70 */	srawi r3, r0, 1
/* 814B6150 | 4E 80 00 20 */	blr
.endfn VFipf_w_strlen

# .text:0x24 | 0x814B6154 | size: 0x24
.fn VFipf_w_strcpy, global
/* 814B6154 | 7C 65 1B 78 */	mr r5, r3
/* 814B6158 | 48 00 00 0C */	b .L_814B6164
.L_814B615C:
/* 814B615C | 38 84 00 02 */	addi r4, r4, 0x2
/* 814B6160 | 38 A5 00 02 */	addi r5, r5, 0x2
.L_814B6164:
/* 814B6164 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814B6168 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B616C | B0 05 00 00 */	sth r0, 0x0(r5)
/* 814B6170 | 40 82 FF EC */	bne .L_814B615C
/* 814B6174 | 4E 80 00 20 */	blr
.endfn VFipf_w_strcpy

# .text:0x48 | 0x814B6178 | size: 0x4C
.fn VFipf_w_strncmp, global
/* 814B6178 | 7C A9 03 A6 */	mtctr r5
/* 814B617C | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B6180 | 41 82 00 3C */	beq .L_814B61BC
.L_814B6184:
/* 814B6184 | A0 A3 00 00 */	lhz r5, 0x0(r3)
/* 814B6188 | 2C 05 00 00 */	cmpwi r5, 0x0
/* 814B618C | 41 82 00 18 */	beq .L_814B61A4
/* 814B6190 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814B6194 | 2C 00 00 00 */	cmpwi r0, 0x0
/* 814B6198 | 41 82 00 0C */	beq .L_814B61A4
/* 814B619C | 7C 05 00 40 */	cmplw r5, r0
/* 814B61A0 | 41 82 00 10 */	beq .L_814B61B0
.L_814B61A4:
/* 814B61A4 | A0 04 00 00 */	lhz r0, 0x0(r4)
/* 814B61A8 | 7C 60 28 50 */	subf r3, r0, r5
/* 814B61AC | 4E 80 00 20 */	blr
.L_814B61B0:
/* 814B61B0 | 38 63 00 02 */	addi r3, r3, 0x2
/* 814B61B4 | 38 84 00 02 */	addi r4, r4, 0x2
/* 814B61B8 | 42 00 FF CC */	bdnz .L_814B6184
.L_814B61BC:
/* 814B61BC | 38 60 00 00 */	li r3, 0x0
/* 814B61C0 | 4E 80 00 20 */	blr
.endfn VFipf_w_strncmp
