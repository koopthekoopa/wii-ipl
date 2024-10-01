.include "macros.inc"
.file "wireless_macaddr.c"

# 0x81495844..0x81495848 | size: 0x4
.text
.balign 4

# .text:0x0 | 0x81495844 | size: 0x4
.fn NETGetWirelessMacAddress, global
/* 81495844 | 4B FF D3 C0 */	b NCDiGetWirelessMacAddress
.endfn NETGetWirelessMacAddress
