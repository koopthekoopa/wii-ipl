#ifndef MSL_SEARCH_H
#define MSL_SEARCH_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef int (*compare_func)(const void*, const void*);

void* bsearch(const void* key, const void* ptr, size_t count, size_t size, compare_func comp);

void qsort(void* ptr, size_t count, size_t size, compare_func comp);

#ifdef __cplusplus
}
#endif

#endif  // MSL_SEARCH_H
