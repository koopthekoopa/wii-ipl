#ifndef PRIVATE_PF_CHAR_CODE_H
#define PRIVATE_PF_CHAR_CODE_H

#include <revolution/types.h>

#include <stddef.h>

typedef struct PF_CHARCODE {
    s32 (*oem2unicode)(char*, wchar_t*);        // 0x00
    s32 (*unicode2oem)(wchar_t*, char*);        // 0x04
    s32 (*oem_char_width)(char*);               // 0x08
    u32 (*is_oem_mb_char)(char, u32);           // 0x0C
    s32 (*unicode_char_width)(wchar_t*);        // 0x10
    u32 (*is_unicode_mb_char)(wchar_t, u32);    // 0x14
} PF_CHARCODE;

#endif // PRIVATE_PF_CHAR_CODE_H
