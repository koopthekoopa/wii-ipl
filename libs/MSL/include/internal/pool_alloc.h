#ifndef MSL_INTERNAL_POOL_ALLOC_H
#define MSL_INTERNAL_POOL_ALLOC_H

#include <stddef.h>

typedef struct __mem_pool {
    void* reserved[14];
} __mem_pool;

void* __sys_alloc(size_t size);
void __sys_free(void* ptr);

#endif  // MSL_INTERNAL_POOL_ALLOC_H
