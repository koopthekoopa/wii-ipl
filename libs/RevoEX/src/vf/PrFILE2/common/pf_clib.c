#include <private/vf/PrFILE2/pf_types.h>

pf_s32 VFipf_toupper(pf_s32 c) {
    if (c >= 'a' && c <= 'z') {
        return c + ('A' - 'a');
    } else {
        return c;
    }
}

void* VFipf_memcpy(void* dst, void* src, pf_u32 length) {
    pf_s8* d;
    const pf_s8* s;

    pf_u32* ld = (pf_u32*)dst;
    const pf_u32* ls = (pf_u32*)src;

    if (((pf_u32)ld & 3) == 0 && ((pf_u32)ls & 3) == 0) {
        for (; length > 3; length -= 4) {
            *ld++ = *ls++;
        }
    }

    d = (pf_s8*)ld;
    s = (pf_s8*)ls;

    while (length-- != 0) {
        *d++ = *s++;
    }

    return dst;
}

void* VFipf_memset(void* dst, pf_s32 c, pf_u32 length) {
    pf_s8* d = (pf_s8*)dst;
    pf_u32* ld;
    pf_u32 lc;

    for (; ((pf_u32)d & 3) != 0 && length != 0; length--) {
        *d++ = c;
    }

    ld = (pf_u32*)d;
    lc = (c << 24) | (c << 16) | (c << 8) | (c);

    for (; length > 3; length -= 4) {
        *ld++ = lc;
    }

    d = (pf_s8*)ld;
    while (length-- != 0) {
        *d++ = c;
    }

    return dst;
}

pf_u32 VFipf_strlen(const pf_s8* s) {
    const pf_s8* t = s;

    while (*t != 0) {
        t++;
    }

    return (pf_u32)(t - s);
}

pf_s8* VFipf_strcpy(pf_s8* dst, const pf_s8* src) {
    pf_s8* d;

    for (d = dst; (*d = *src) != 0; src++, d++) {
    }

    return dst;
}

pf_s32 VFipf_strcmp(const pf_s8* s1, const pf_s8* s2) {
    const pf_u8* p1 = (pf_u8*)s1;
    const pf_u8* p2 = (pf_u8*)s2;

    while (*p1 != 0 && *p2 != 0 && *p1 == *p2) {
        p1++;
        p2++;
    }

    return *p1 - *p2;
}

pf_s32 VFipf_strncmp(const pf_s8* s1, const pf_s8* s2, pf_u32 length) {
    const pf_u8* p1 = (pf_u8*)s1;
    const pf_u8* p2 = (pf_u8*)s2;

    while (length-- != 0) {
        if (!(*p1 != 0 && *p2 != 0 && *p1 == *p2)) {
            return *p1 - *p2;
        }
        p1++;
        p2++;
    }

    return 0;
}
