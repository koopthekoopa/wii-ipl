#ifndef MSL_INTERNAL_MBSTRING_H
#define MSL_INTERNAL_MBSTRING_H

#include <stddef.h>

int __mbtowc_noconv(wchar_t* pwc, const char* s, size_t n);
int __wctomb_noconv(char* s, wchar_t wchar);

#endif  // MSL_INTERNAL_MBSTRING_H
