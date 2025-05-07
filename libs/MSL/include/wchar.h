#ifndef MSL_WCHAR_H
#define MSL_WCHAR_H

#include <size_t.h>
#include <stdarg.h>

#ifndef __cplusplus
typedef unsigned short wchar_t;
#endif

#ifdef __cplusplus
extern "C" {
#endif

wchar_t*    wmemset(wchar_t* dest, wchar_t ch, size_t count);

size_t      wcslen(const wchar_t *str);
wchar_t*    wcsncpy(wchar_t* dest, const wchar_t* src, size_t count);

int         vswprintf(wchar_t * ws, size_t len, const wchar_t * format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif // MSL_WCHAR_H
