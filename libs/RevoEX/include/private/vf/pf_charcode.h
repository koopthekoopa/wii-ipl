#ifndef PRIVATE_PF_CHAR_CODE_H
#define PRIVATE_PF_CHAR_CODE_H

#include <revolution/types.h>

#include <wchar.h>

typedef struct PF_CHARCODE {
    s32 (*oem2unicode)(s8*, u16*);          // 0x00
    s32 (*unicode2oem)(u16*, s8*);          // 0x04
    s32 (*oem_char_width)(s8*);             // 0x08
    u32 (*is_oem_mb_char)(s8, u32);         // 0x0C
    s32 (*unicode_char_width)(u16*);        // 0x10
    u32 (*is_unicode_mb_char)(u16, u32);    // 0x14
} PF_CHARCODE;

#endif // PRIVATE_PF_CHAR_CODE_H
