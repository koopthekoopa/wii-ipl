#ifndef PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H
#define PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H

#include <revolution/types.h>

#include <wchar.h>

u32         VFipf_w_strlen(const wchar_t* s);
wchar_t*    VFipf_w_strcpy(wchar_t* dst, const wchar_t* src);
s32         VFipf_w_strncmp(const wchar_t* s1, const wchar_t* s2, u32 length);

#endif // PRIVATE_PF_WIDE_CHAR_C_LIBRARY_H
