#ifndef MSL_STRING_H
#define MSL_STRING_H

#include <size_t.h>
#include <MSL/memory.h>

#ifdef __cplusplus
extern "C" {
#endif

char*   stricmp(char* dst, const char* src);

char*   strncpy(char* dst, const char* src, size_t length);
char*   strncat(char* dst, const char* src, size_t length);

size_t  strlen(const char* str);

int     sprintf(char* buffer, const char* format, ...);

#ifdef __cplusplus
}
#endif

#endif // MSL_STRING_H


