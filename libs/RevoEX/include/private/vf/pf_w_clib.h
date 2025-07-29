#ifndef PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H
#define PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H

#include <revolution/types.h>

#include <wchar.h>

u32         VFipf_w_strlen(const u16* s);
u16*    VFipf_w_strcpy(u16* dst, const u16* src);
s32         VFipf_w_strncmp(const u16* s1, const u16* s2, u32 length);

#endif // PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H
