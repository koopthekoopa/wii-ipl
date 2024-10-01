.include "macros.inc"
.file "pf_fatfs.c"

# 0x814C673C..0x814C6740 | size: 0x4
.text
.balign 4

# .text:0x0 | 0x814C673C | size: 0x4
.fn VFiPFFATFS_initializeFATFS, global
/* 814C673C | 48 00 6D 30 */	b VFiPFVOL_InitModule
.endfn VFiPFFATFS_initializeFATFS
