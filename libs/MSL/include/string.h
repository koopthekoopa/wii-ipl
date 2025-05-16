#ifndef MSL_STRING_H
#define MSL_STRING_H

#include <size_t.h>
#include <internal/mem.h>

#ifdef __cplusplus
extern "C" {
#endif

int     strcmp(const char* dst, const char* src);
int     strcpy(char* dst, const char* src);

int     stricmp(const char* dst, const char* src);

char*   strcat(char* dst, const char* src);

char*   strncpy(char* dst, const char* src, size_t length);
char*   strncat(char* dst, const char* src, size_t length);
int     strncmp(const char* dst, const char* src, size_t length);

size_t  strlen(const char* str);
size_t  strnlen(const char* str, size_t length);

char*   strtok(char* str, const char* delimiters);

#ifdef __cplusplus
}
#endif

#endif // MSL_STRING_H
