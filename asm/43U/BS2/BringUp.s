.include "macros.inc"
.file "BringUp.c"

# 0x813803F0..0x8138049C | size: 0xAC
.text
.balign 4

# .text:0x0 | 0x813803F0 | size: 0x34
.fn enableLegacyDI, global
/* 813803F0 | 3C 60 CD 80 */	lis r3, 0xcd80
/* 813803F4 | 80 03 01 80 */	lwz r0, 0x180(r3)
/* 813803F8 | 54 00 06 B0 */	rlwinm r0, r0, 0, 26, 24
/* 813803FC | 60 00 00 40 */	ori r0, r0, 0x40
/* 81380400 | 90 03 01 80 */	stw r0, 0x180(r3)
/* 81380404 | 80 03 00 70 */	lwz r0, 0x70(r3)
/* 81380408 | 54 00 07 34 */	rlwinm r0, r0, 0, 28, 26
/* 8138040C | 60 00 00 10 */	ori r0, r0, 0x10
/* 81380410 | 90 03 00 70 */	stw r0, 0x70(r3)
/* 81380414 | 80 03 00 3C */	lwz r0, 0x3c(r3)
/* 81380418 | 54 00 03 98 */	rlwinm r0, r0, 0, 14, 12
/* 8138041C | 90 03 00 3C */	stw r0, 0x3c(r3)
/* 81380420 | 4E 80 00 20 */	blr
.endfn enableLegacyDI

# .text:0x34 | 0x81380424 | size: 0x1C
.fn setVI1Cfg, global
/* 81380424 | 3C 80 CD 80 */	lis r4, 0xcd80
/* 81380428 | 54 60 88 1C */	slwi r0, r3, 17
/* 8138042C | 80 64 00 18 */	lwz r3, 0x18(r4)
/* 81380430 | 54 63 03 DA */	rlwinm r3, r3, 0, 15, 13
/* 81380434 | 7C 60 03 78 */	or r0, r3, r0
/* 81380438 | 90 04 00 18 */	stw r0, 0x18(r4)
/* 8138043C | 4E 80 00 20 */	blr
.endfn setVI1Cfg

# .text:0x50 | 0x81380440 | size: 0x1C
.fn setVISolidClrYCol, global
/* 81380440 | 3C 80 CD 80 */	lis r4, 0xcd80
/* 81380444 | 54 60 40 2E */	slwi r0, r3, 8
/* 81380448 | 80 64 00 24 */	lwz r3, 0x24(r4)
/* 8138044C | 54 63 06 1E */	rlwinm r3, r3, 0, 24, 15
/* 81380450 | 7C 60 03 78 */	or r0, r3, r0
/* 81380454 | 90 04 00 24 */	stw r0, 0x24(r4)
/* 81380458 | 4E 80 00 20 */	blr
.endfn setVISolidClrYCol

# .text:0x6C | 0x8138045C | size: 0x10
.fn getVISolidClrYCol, global
/* 8138045C | 3C 60 CD 80 */	lis r3, 0xcd80
/* 81380460 | 80 03 00 24 */	lwz r0, 0x24(r3)
/* 81380464 | 54 03 C6 3E */	extrwi r3, r0, 8, 16
/* 81380468 | 4E 80 00 20 */	blr
.endfn getVISolidClrYCol

# .text:0x7C | 0x8138046C | size: 0x1C
.fn GPIOPPCInit, global
/* 8138046C | 3C 80 00 01 */	lis r4, 0x1
/* 81380470 | 3C 60 CD 80 */	lis r3, 0xcd80
/* 81380474 | 38 04 C3 20 */	subi r0, r4, 0x3ce0
/* 81380478 | 90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8138047C | 38 04 C0 00 */	subi r0, r4, 0x4000
/* 81380480 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 81380484 | 4E 80 00 20 */	blr
.endfn GPIOPPCInit

# .text:0x98 | 0x81380488 | size: 0x14
.fn EjectDisc, global
/* 81380488 | 3C 60 CD 80 */	lis r3, 0xcd80
/* 8138048C | 80 03 00 C0 */	lwz r0, 0xc0(r3)
/* 81380490 | 60 00 02 00 */	ori r0, r0, 0x200
/* 81380494 | 90 03 00 C0 */	stw r0, 0xc0(r3)
/* 81380498 | 4E 80 00 20 */	blr
.endfn EjectDisc
