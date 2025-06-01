#include <wchar.h>
#include <string.h>

wchar_t* wmemcpy(wchar_t* dest, const wchar_t* src, size_t num) {
    return (wchar_t*)memcpy(dest, src, num * sizeof(wchar_t));
}

wchar_t* wmemset(wchar_t* dest, wchar_t ch, size_t num) {
    wchar_t* ret = dest;
    while (num--) {
        *dest++ = ch;
    }
    return ret;
}

wchar_t* wmemchr(wchar_t* ptr, wchar_t ch, size_t num) {
    while (num != 0) {
        if (*ptr == ch) {
            return (wchar_t*)ptr;
        }

        ptr++;
        num--;
    }

    return 0;
}
