.include "macros.inc"
.file "RFL_DefaultDatabase.c"

# 0x814E8A7C..0x814E8A94 | size: 0x18
.text
.balign 4

# .text:0x0 | 0x814E8A7C | size: 0x18
.fn RFLiGetDefaultData, global
/* 814E8A7C | 1C 04 00 4A */	mulli r0, r4, 0x4a
/* 814E8A80 | 3C A0 81 62 */	lis r5, scDefaultData@ha
/* 814E8A84 | 7C 64 1B 78 */	mr r4, r3
/* 814E8A88 | 38 A5 DE B0 */	addi r5, r5, scDefaultData@l
/* 814E8A8C | 7C 65 02 14 */	add r3, r5, r0
/* 814E8A90 | 4B FF CF C8 */	b RFLiConvertRaw2Info
.endfn RFLiGetDefaultData

# 0x8161DEB0..0x8161E070 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x8161DEB0 | size: 0x1BC
.obj scDefaultData, local
	.4byte 0x0008006E
	.4byte 0x006F0020
	.4byte 0x006E0061
	.4byte 0x006D0065
	.4byte 0x00000000
	.4byte 0x00004040
	.4byte 0x80000000
	.4byte 0xECFF82D2
	.4byte 0x10048800
	.4byte 0x318008A2
	.4byte 0x088C0858
	.4byte 0x144AB88D
	.4byte 0x008A008A
	.4byte 0x25040000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x006E006F
	.4byte 0x0020006E
	.4byte 0x0061006D
	.4byte 0x00650000
	.4byte 0x00000000
	.4byte 0x40408000
	.4byte 0x0001ECFF
	.4byte 0x82D20004
	.4byte 0x6F803180
	.4byte 0xC8A2088C
	.4byte 0x8858144A
	.4byte 0xB88D008A
	.4byte 0x008A2504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x006F0020
	.4byte 0x006E0061
	.4byte 0x006D0065
	.4byte 0x00000000
	.4byte 0x00004040
	.4byte 0x80000002
	.4byte 0xECFF82D2
	.4byte 0x04044240
	.4byte 0x318028A2
	.4byte 0x088C0858
	.4byte 0x144AB88D
	.4byte 0x008A008A
	.4byte 0x25040000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00004004
	.4byte 0x006E006F
	.4byte 0x0020006E
	.4byte 0x0061006D
	.4byte 0x00650000
	.4byte 0x00000000
	.4byte 0x40408000
	.4byte 0x0003ECFF
	.4byte 0x82D20804
	.4byte 0x30000180
	.4byte 0x08A2106C
	.4byte 0x0858144A
	.4byte 0xB88D008A
	.4byte 0x008A2504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x400C006E
	.4byte 0x006F0020
	.4byte 0x006E0061
	.4byte 0x006D0065
	.4byte 0x00000000
	.4byte 0x00004040
	.4byte 0x80000004
	.4byte 0xECFF82D2
	.4byte 0x00041DC0
	.4byte 0x0180E8A2
	.4byte 0x106CA858
	.4byte 0x144AB88D
	.4byte 0x008A008A
	.4byte 0x25040000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000400E
	.4byte 0x006E006F
	.4byte 0x0020006E
	.4byte 0x0061006D
	.4byte 0x00650000
	.4byte 0x00000000
	.4byte 0x40408000
	.4byte 0x0005ECFF
	.4byte 0x82D20004
	.4byte 0x18400180
	.4byte 0x28A2106C
	.4byte 0x0858144A
	.4byte 0xB88D008A
	.4byte 0x008A2504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj scDefaultData

# .rodata:0x1BC | 0x8161E06C | size: 0x4
.obj gap_07_8161E06C_rodata, global
.hidden gap_07_8161E06C_rodata
	.4byte 0x00000000
.endobj gap_07_8161E06C_rodata
