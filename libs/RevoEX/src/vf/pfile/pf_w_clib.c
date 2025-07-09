#include <private/vf/pf_w_clib.h>

u32 VFipf_w_strlen(const wchar_t* s) {
    wchar_t* t = (wchar_t*)s;
    while (*t) { t++; }
    return ((char*)t - (char*)s) >> 1;
}

wchar_t* VFipf_w_strcpy(wchar_t* dst, const wchar_t* src) {
    wchar_t* d = dst;
    while ((*d = *src) != 0) { src++; d++; }
    return dst;
}

s32 VFipf_w_strncmp(const wchar_t* s1, const wchar_t* s2, u32 length) {
    u16 *p1 = (u16*)s1, *p2 = (u16*)s2;
    while (length-- > 0) {
        if (*p1 == '\0' || *p2 == '\0' || *p1 != *p2) { return *p1 - *p2; }
        p1++; p2++;
    }
    return 0;
}
