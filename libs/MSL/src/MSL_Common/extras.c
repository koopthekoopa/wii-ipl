#include <ctype.h>
#include <internal/file_io.h>
#include <stdbool.h>
#include <string.h>

int stricmp(const char* s1, const char* s2) {
    char c1, c2;

    while (true) {
        c1 = tolower(*s1++);
        c2 = tolower(*s2++);

        if (c1 < c2) {
            return -1;
        }

        if (c1 > c2) {
            return 1;
        }

        if (c1 == 0) {
            return 0;
        }
    }
}

int strnicmp(const char* s1, const char* s2, size_t n) {
    return __msl_strnicmp(s1, s2, n);
}

int strcmpi(const char* s1, const char* s2) {
    return stricmp(s1, s2);
}

char* itoa(int value, char* buffer, int radix) {
    return __msl_itoa(value, buffer, radix);
}

int wcsnicmp(const char* s1, const char* s2, size_t n) {
    const wchar_t* p1 = (const wchar_t*)s1;
    const wchar_t* p2 = (const wchar_t*)s2;
    unsigned int c1;
    unsigned int c2;
    struct _loc_ctype_cmpt* ctype_cmpt = _current_locale.ctype_cmpt_ptr;
    size_t i;

    for (i = 0; i < n; i++) {
        c1 = *p1++;
        c1 = (c1 >= 256) ? c1 : ctype_cmpt->wlower_map_ptr[(unsigned short)c1];
        c1 &= 0xFFFF;

        c2 = *p2++;
        c2 = (c2 >= 256) ? c2 : ctype_cmpt->wlower_map_ptr[(unsigned short)c2];
        c2 &= 0xFFFF;

        if (c1 < c2) {
            return -1;
        }

        if (c1 > c2) {
            return 1;
        }

        if (c1 == 0) {
            return 0;
        }
    }

    return 0;
}
