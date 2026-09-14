#include <wchar.h>

size_t wcslen(const wchar_t* str) {
    const wchar_t* p = str - 1;
    size_t len = -1;

    do {
        len++;
    } while (*++p != 0);

    return len;
}

wchar_t* wcscpy(wchar_t* dest, const wchar_t* src) {
    const wchar_t* s = src - 1;
    wchar_t* d = dest - 1;
    wchar_t c;

    do {
        c = *++s;
        *++d = c;
    } while (c != 0);

    return dest;
}

wchar_t* wcsncpy(wchar_t* dest, const wchar_t* src, size_t num) {
    const wchar_t* s = src - 1;
    wchar_t* d = dest - 1;
    wchar_t c;
    size_t n = num + 1;

    while (--n != 0) {
        c = *++s;
        *++d = c;
        if (c == 0) {
            while (--n != 0) {
                *++d = 0;
            }
            break;
        }
    }

    return dest;
}

wchar_t* wcscat(wchar_t* dest, const wchar_t* src) {
    const wchar_t* s = src - 1;
    wchar_t* d = dest - 1;

    while (*++d != 0)
        ;
    d--;
    do {
        *++d = *++s;
    } while (*s != 0);

    return dest;
}

wchar_t* wcsncat(wchar_t* dest, const wchar_t* src, size_t num) {
    const wchar_t* s = src - 1;
    wchar_t* d = dest - 1;
    wchar_t c;
    size_t n;

    while (*++d != 0)
        ;
    d--;
    n = num + 1;

    while (--n != 0) {
        c = *++s;
        *++d = c;
        if (c == 0) {
            d--;
            break;
        }
    }

    *++d = 0;
    return dest;
}

int wcsncmp(const wchar_t* s1, const wchar_t* s2, size_t num) {
    wchar_t c2;
    wchar_t c1;
    const wchar_t* p1;
    const wchar_t* p2;
    size_t n;

    p1 = s1 - 1;
    p2 = s2 - 1;
    n = num + 1;

    while (--n != 0) {
        c1 = *++p1;
        c2 = *++p2;
        if (c1 != c2) {
            return (int)(c1 - c2);
        }
        if (c1 == 0) {
            break;
        }
    }

    return 0;
}

wchar_t* wcschr(wchar_t* ws, wchar_t wc) {
    wchar_t* p = ws - 1;
    wchar_t ch;

    while ((ch = *++p) != 0) {
        if (ch == wc) {
            return p;
        }
    }

    if (wc == 0) {
        return p;
    }
    return 0;
}

wchar_t* wcsstr(const wchar_t* s1, const wchar_t* s2) {
    const wchar_t* p1;
    wchar_t c;
    wchar_t c1;
    wchar_t c2;

    c = *s2;
    p1 = s1 - 1;
    if (c == 0) {
        return (wchar_t*)s1;
    }

    while ((c1 = *++p1) != 0) {
        if (c1 == c) {
            wchar_t ic1;
            const wchar_t* ps1;
            const wchar_t* p2;
            ps1 = p1 - 1;
            p2 = s2 - 1;
            do {
                ic1 = *++ps1;
                c2 = *++p2;
                if (ic1 != c2) {
                    break;
                }
            } while (ic1 != 0);

            if (c2 == 0) {
                return (wchar_t*)p1;
            }
        }
    }

    return 0;
}
