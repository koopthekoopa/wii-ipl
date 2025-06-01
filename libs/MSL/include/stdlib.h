#ifndef MSL_STDLIB_H
#define MSL_STDLIB_H

#include <malloc.h>
#include <math.h>
#include <search.h>

#include <stddef.h>
#include <wchar.h>

#ifdef __cplusplus
extern "C" {
#endif

int                     rand();
void                    srand(unsigned int seed);

int                     mbtowc(wchar_t* pwc, const char* s, size_t n);
size_t                  mbstowcs(wchar_t* dst, const char* src, size_t len);

size_t                  wcstombs(char* dest, const wchar_t* src, size_t max);

long int                strtol(const char* str, char** endptr, int base);
unsigned long int       strtoul(const char* str, char** endptr, int base);
unsigned long long int  strtoull(const char* str, char** endptr, int base);

double                  strtod(const char* str, char** endptr);

int                     atoi(const char* str);
long                    atol(const char* str);

char*                   itoa(int val, char* buffer, int radix);

#ifdef __cplusplus
}
#endif

#endif // MSL_STDLIB_H
