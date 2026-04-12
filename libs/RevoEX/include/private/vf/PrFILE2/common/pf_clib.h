#ifndef PRFILE2_VFMOD_PF_C_LIBRARY_IMPLEMENTATION_H
#define PRFILE2_VFMOD_PF_C_LIBRARY_IMPLEMENTATION_H

#include <private/vf/PrFILE2/pf_types.h>

pf_s32 VFipf_toupper(pf_s32 c);

void* VFipf_memcpy(void* dst, void* src, pf_u32 length);
void* VFipf_memset(void* dst, pf_s32 c, pf_u32 length);

pf_u32 VFipf_strlen(const pf_s8* s);
pf_s8* VFipf_strcpy(pf_s8* dst, const pf_s8* src);
pf_s32 VFipf_strcmp(const pf_s8* s1, const pf_s8* s2);
pf_s32 VFipf_strncmp(const pf_s8* s1, const pf_s8* s2, pf_u32 length);

#endif  // PRFILE2_VFMOD_PF_C_LIBRARY_IMPLEMENTATION_H
