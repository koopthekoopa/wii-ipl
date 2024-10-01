.include "macros.inc"
.file "pf_filelock.c"

# 0x814CFCAC..0x814CFCC0 | size: 0x14
.text
.balign 4

# .text:0x0 | 0x814CFCAC | size: 0xC
.fn VFiPF_InitLockFile, global
/* 814CFCAC | 38 00 00 00 */	li r0, 0x0
/* 814CFCB0 | 90 0D AE 30 */	stw r0, VFipf_sys_set_81698E70@sda21(r0)
/* 814CFCB4 | 4E 80 00 20 */	blr
.endfn VFiPF_InitLockFile

# .text:0xC | 0x814CFCB8 | size: 0x8
.fn VFiPF_UnLockFile, global
/* 814CFCB8 | 38 60 FF FF */	li r3, -0x1
/* 814CFCBC | 4E 80 00 20 */	blr
.endfn VFiPF_UnLockFile
