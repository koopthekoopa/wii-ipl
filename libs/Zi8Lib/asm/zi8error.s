.include "macros.inc"
.file "zi8error.c"

# 0x8148447C..0x81484484 | size: 0x8
.text
.balign 4

# .text:0x0 | 0x8148447C | size: 0x4
.fn Zi8LogError, global
/* 8148447C | 4E 80 00 20 */	blr
.endfn Zi8LogError

# .text:0x4 | 0x81484480 | size: 0x4
.fn Zi8ReplaceLastError, global
/* 81484480 | 4E 80 00 20 */	blr
.endfn Zi8ReplaceLastError
