.include "macros.inc"
.file "ssl_mutex.c"

# 0x814B57BC..0x814B57C8 | size: 0xC
.text
.balign 4

# .text:0x0 | 0x814B57BC | size: 0x4
.fn SSL_InitMutex, global
/* 814B57BC | 48 07 C4 14 */	b fn_81531BD0
.endfn SSL_InitMutex

# .text:0x4 | 0x814B57C0 | size: 0x4
.fn SSL_LockMutex, global
/* 814B57C0 | 48 07 C4 48 */	b fn_81531C08
.endfn SSL_LockMutex

# .text:0x8 | 0x814B57C4 | size: 0x4
.fn SSL_UnlockMutex, global
/* 814B57C4 | 48 07 C5 20 */	b fn_81531CE4
.endfn SSL_UnlockMutex
