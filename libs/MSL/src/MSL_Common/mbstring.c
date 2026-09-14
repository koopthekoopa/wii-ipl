#include <internal/locale.h>
#include <string.h>

int mbtowc(wchar_t* pwc, const char* s, size_t n) {
    return _current_locale.ctype_cmpt_ptr->decode_mb(pwc, s, n);
}

int __mbtowc_noconv(wchar_t* pwc, const char* s, size_t n) {
    if (s == NULL) {
        return 0;
    }

    if (n == 0) {
        return -1;
    }

    if (pwc != NULL) {
        *pwc = (unsigned char)*s;
    }

    if (!*s) {
        return 0;
    }

    return 1;
}

int __wctomb_noconv(char* s, wchar_t wchar) {
    if (s == NULL) {
        return 0;
    }

    *s = (char)wchar;
    return 1;
}

size_t mbstowcs(wchar_t* dest, const char* src, size_t len) {
    int count;
    char* src_ptr;
    size_t slen;

    slen = strlen(src);

    if (dest != NULL) {
        src_ptr = (char*)src;

        for (count = 0; count < len; count++) {
            if (*src_ptr) {
                int res = mbtowc(dest++, src_ptr, slen);

                if (res > 0) {
                    src_ptr += res;
                    slen -= res;
                } else {
                    return -1;
                }
            } else {
                *dest = 0;
                break;
            }
        }
    } else {
        count = 0;
    }

    return count;
}

size_t wcstombs(char* s, const wchar_t* pwcs, size_t n) {
    int result;
    int chars_written = 0;
    char temp[3];
    wchar_t* source;

    if (s == NULL || pwcs == NULL) {
        return 0;
    }

    source = (wchar_t*)pwcs;

    while (chars_written <= n) {
        if (!*source) {
            *(s + chars_written) = '\0';
            break;
        }

        result = _current_locale.ctype_cmpt_ptr->encode_wc(temp, *source++);
        if (chars_written + result > n) {
            break;
        }

        strncpy(s + chars_written, temp, result);
        chars_written += result;
    }

    return chars_written;
}
