#ifndef MSL_STDIO_H
#define MSL_STDIO_H

#include <size_t.h>
#include <stdarg.h>

#ifdef __cplusplus
extern "C" {
#endif

int sprintf(char* s, const char* format, ...);
int snprintf(char* s, size_t n, const char* format, ...);

int vprintf(const char* format, va_list arg);
int vsnprintf(char* s, size_t n, const char* format, va_list arg);

#ifdef __cplusplus
}
#endif

#endif // MSL_STDIO_H
