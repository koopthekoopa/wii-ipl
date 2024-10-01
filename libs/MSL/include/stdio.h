#ifndef MSL_STDIO_H
#define MSL_STDIO_H

#include <size_t.h>

#ifdef __cplusplus
extern "C" {
#endif

int sprintf(char* s, const char* format, ...);
int vsnprintf(char * s, size_t n, const char * format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif // MSL_STDIO_H


