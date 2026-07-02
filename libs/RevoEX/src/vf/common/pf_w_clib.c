#include <private/vf/PrFILE2/pf_types.h>

pf_u32 VFipf_w_strlen(const pf_u16* s) {
    const pf_u16* t = s;

    while (*t != 0) {
        t++;
    }

    return ((pf_s8*)t - (pf_s8*)s) >> 1;
}

pf_u16* VFipf_w_strcpy(pf_u16* dst, const pf_u16* src) {
    pf_u16* d;

    for (d = dst; (*d = *src) != 0; src++, d++) {
    }

    return dst;
}

pf_s32 VFipf_w_strncmp(const pf_u16* s1, const pf_u16* s2, pf_u32 length) {
    const pf_u16* p1 = (pf_u16*)s1;
    const pf_u16* p2 = (pf_u16*)s2;

    while (length-- != 0) {
        if (*p1 == 0 || *p2 == 0 || *p1 != *p2) {
            return *p1 - *p2;
        }
        p1++;
        p2++;
    }

    return 0;
}
