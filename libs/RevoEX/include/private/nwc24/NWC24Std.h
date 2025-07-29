#ifndef PRIVATE_NWC24_STD_H
#define PRIVATE_NWC24_STD_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#include <stdarg.h>

#ifdef __cplusplus
extern "C" {
#endif

int     STD_strnlen(const char* str, u32 len);

int     Util_xtoi(char ch);

void*   Mail_memcpy(void* dest, void* src, u32 len);
void*   Mail_memset(void* dest, int fill, u32 count);

int     Mail_strlen(const char* str);
char*   Mail_strcpy(char* dest, const char* src);
char*   Mail_strncpy(char* dest, const char* src, u32 len);
char*   Mail_strcat(char* dest, const char* src);
char*   Mail_strncat(char* dest, const char* src, u32 len);
int     Mail_strncmp(const char* str1, const char* str2, u32 len);

BOOL    Mail_islower(int ch);
int     Mail_tolower(int ch);

int     Mail_sprintf(char* buffer, char* format, ...);
int     Mail_vsprintf(char* buffer, char* format, va_list* args);

int     Mail_strnicmp(const char* str1, const char * str2, int len);

#ifdef __cplusplus
}
#endif

#endif  // #define PRIVATE_NWC24_STD_H
