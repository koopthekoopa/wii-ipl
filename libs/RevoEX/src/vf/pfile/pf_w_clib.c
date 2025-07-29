#include <private/vf/pf_w_clib.h>

u32 VFipf_w_strlen(const u16* s) {
    u16* t = (u16*)s;
    while (*t) { t++; }
    return ((char*)t - (char*)s) >> 1;
}

u16* VFipf_w_strcpy(u16* dst, const u16* src) {
    u16* d = dst;
    while ((*d = *src) != 0) { src++; d++; }
    return dst;
}

s32 VFipf_w_strncmp(const u16* s1, const u16* s2, u32 length) {
    u16 *p1 = (u16*)s1, *p2 = (u16*)s2;
    while (length-- > 0) {
        if (*p1 == '\0' || *p2 == '\0' || *p1 != *p2) { return *p1 - *p2; }
        p1++; p2++;
    }
    return 0;
}
