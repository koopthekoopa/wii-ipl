#ifndef REVOLUTION_OS_CACHE_H
#define REVOLUTION_OS_CACHE_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

void DCStoreRange(void* addr, u32 size);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_CACHE_H


