#ifndef MSL_INTERNAL_STRING_API_H
#define MSL_INTERNAL_STRING_API_H

#include <stddef.h>

void* __memrchr(const void* s, int c, size_t n);

unsigned long __strtoul(int base, int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg, int* chars_scanned, int* negative,
                        int* overflow);
unsigned long long __strtoull(int base, int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg, int* chars_scanned, int* negative,
                              int* overflow);
long double __strtold(int max_width, int (*ReadProc)(void*, int, int), void* ReadProcArg, int* chars_scanned, int* overflow);

#endif  // MSL_INTERNAL_STRING_API_H
