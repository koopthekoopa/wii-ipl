#include <revolution/nwc24.h>
#include <private/nwc24.h>

#include <ctype.h>

char* Mail_strcpy(char* dest, const char* src) {
    char* pDest;
    char cSrc;

    for (pDest = dest; *src != 0; pDest++) {
        cSrc = *src++;
        *pDest = cSrc;
    }
    *pDest = 0;
    return dest;
}

int Mail_strlen(const char* str) {
    int i;
    for (i = 0; *str != 0; i++, str++) {}
    return i;
}

int STD_strnlen(const char* str, u32 len) {
    int i;
    for (i = 0; len > 0; i++, str++, len--) {
        if (*str == 0) {
            break;
        }
    }
    return i;
}
