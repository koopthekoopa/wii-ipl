#ifndef MSL_STRING_H
#define MSL_STRING_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void*   memcpy(void* dest, const void* src, size_t count);
void*   memset(void* dest, int ch, size_t count);
void*   memmove(void* dest, const void* src, size_t count);
void*   memchr(const void* ptr, int ch, size_t count);
int     memcmp(const void* ptr1, const void* ptr2, size_t num);

char*   strcpy(char* dst, const char* src);
char*   strcat(char* dst, const char* src);
size_t  strlen(const char* str);
char*   strchr(const char* str, int ch);
char*   strrchr(const char* str, int ch);
int     strcmp(const char* s1, const char* s2);
char*   strpbrk(const char* s1, const char* s2);
size_t  strspn(const char* s1, const char* s2);
char*   strtok(char* str, const char* delimiters);
char*   strstr(const char* str, const char* pat);

char*   strncpy(char* dst, const char* src, size_t length);
char*   strncat(char* dst, const char* src, size_t length);
size_t  strnlen(const char* str, size_t length);
int     strncmp(const char* s1, const char* s2, size_t length);

size_t  strcspn(const char* s1, const char* s2);

int     stricmp(const char* dst, const char* src);
int     strnicmp(const char* s1, const char* s2, size_t length);
int     strcmpi(const char* s1, const char* s2);

#ifdef __cplusplus
}
#endif

#endif // MSL_STRING_H
