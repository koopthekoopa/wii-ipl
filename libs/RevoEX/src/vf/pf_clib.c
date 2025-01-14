#include <private/vf/pf_clib.h>

s32 VFipf_toupper(s32 c) {
    if (c >= 'a' && c <= 'z') {
        c -= ('a' - 'A');
    }
    return c;
}

void* VFipf_memcpy(void* dst, void* src, u32 length) {
    u8  *d, *s;
    u32 *ld, *ls;

    ld = (u32*)dst;
    ls = (u32*)src;
    if (((u32)ld & 3) == 0 && ((u32)ls & 3) == 0) {
        while (length > 3) {
            *ld++ = *ls++;
            length -= 4;
        }
    }

    d = (u8*)ld;
    s = (u8*)ls;
    while (length-- > 0) {
        *d++ = *s++;
    }

    return dst;
}

void* VFipf_memset(void* dst, s32 c, u32 length) {
    u8*  d;
    u32* ldst, lc;

    d = (u8*)dst;
    while (((u32)d & 3) != 0 && length > 0) {
        *d++ = c;
        length--;
    }

    ldst = (u32*)d;
    lc = (c << 24 | c << 16 | c << 8 | c);
    while (length > 3) {
        *ldst++ = lc;
        length -= 4;
    }

    d = (u8*)ldst;
    while (length-- > 0) {
        *d++ = (u8)c;
    }

    return dst;
}

u32 VFipf_strlen(const char* s) {
    char* t = (char*)s;
    while (*t) { t++; }
    return t - s;
}

char* VFipf_strcpy(char* dst, const char* src) {
    char* d = dst;
    while((*d = *src) != 0) { src++; d++; }
    return dst;
}

s32 VFipf_strcmp(const char* s1, const char* s2) {
    u8 *p1 = (u8*)s1, *p2 = (u8*)s2;
    while ((*p1 != '\0' && *p2 != '\0') && *p1 == *p2) { p1++; p2++; }
    return *p1 - *p2;
}

s32 VFipf_strncmp(const char* s1, const char* s2, u32 length) {
    u8 *p1 = (u8*)s1, *p2 = (u8*)s2;
    while (length-- > 0) {
        if (*p1 == '\0' || *p2 == '\0' || *p1 != *p2) { return (*p1 - *p2); }
        p1++; p2++;
    }
    return 0;
}
