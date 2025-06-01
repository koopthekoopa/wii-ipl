#ifndef MSL_MALLOC_H
#define MSL_MALLOC_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void*   malloc(size_t size);
void*   realloc(void* ptr, size_t new_size);
void*   calloc(size_t num, size_t size);

void    free(void* ptr);

#ifdef __cplusplus
}
#endif

#endif // MSL_MALLOC_H
