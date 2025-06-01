#ifndef MSL_WCHAR_H
#define MSL_WCHAR_H

#include <stddef.h>
#include <stdarg.h>

#include <internal/file_struct.h>

#ifndef __cplusplus
typedef unsigned short wchar_t;
#endif

#ifdef __cplusplus
extern "C" {
#endif

int         fwide(FILE* stream, int mode);

wchar_t*    wmemcpy(wchar_t* dest, const wchar_t* src, size_t num);
wchar_t*    wmemset(wchar_t* dest, wchar_t ch, size_t num);
wchar_t*    wmemchr(wchar_t* ptr, wchar_t ch, size_t num);

size_t      wcslen(const wchar_t* str);
wchar_t*    wcscpy(wchar_t* dest, const wchar_t* src);
wchar_t*    wcsncpy(wchar_t* dest, const wchar_t* src, size_t num);
wchar_t*    wcscat(wchar_t* dest, const wchar_t* src);
wchar_t*    wcsncat(wchar_t* dest, const wchar_t* src, size_t num);
int         wcsncmp(const wchar_t* s1, const wchar_t* s2, size_t num);
wchar_t*    wcschr(wchar_t* ws, wchar_t wc);
wchar_t*    wcsstr(const wchar_t* s1, const wchar_t* s2);

int         swprintf(wchar_t* ws, size_t len, const wchar_t* format, ...);
int         vswprintf(wchar_t* ws, size_t len, const wchar_t* format, va_list arg);

int         wcsnicmp(const char* dst, const char* src, size_t num);

#ifdef __cplusplus
}
#endif

#endif // MSL_WCHAR_H
