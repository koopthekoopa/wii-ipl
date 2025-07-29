#ifndef PRIVATE_PF_C_LIBRARY_H
#define PRIVATE_PF_C_LIBRARY_H

#include <revolution/types.h>

s32     VFipf_toupper(s32 c);

void*   VFipf_memcpy(void* dst, void* src, u32 length);
void*   VFipf_memset(void* dst, s32 c, u32 length);

u32     VFipf_strlen(const s8* s);
s8*     VFipf_strcpy(s8* dst, const s8* src);
s32     VFipf_strcmp(const s8* s1, const s8* s2);
s32     VFipf_strncmp(const s8* s1, const s8* s2, u32 length);

#include <private/vf/pf_w_clib.h>

#endif // PRIVATE_PF_C_LIBRARY_H
