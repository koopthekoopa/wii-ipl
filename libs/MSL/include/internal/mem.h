#ifndef MSL_MEMORY_H
#define MSL_MEMORY_H

#include <size_t.h>

#ifdef __cplusplus
extern "C" {
#endif

void* memset(void* dest, int ch, size_t count);
void* memcpy(void* dest, const void* src, size_t count);

void* memmove(void *dest, const void *src, size_t count);

#ifdef __cplusplus
}
#endif

#endif // MSL_MEMORY_H
