#ifndef REVOLUTION_OS_CACHE_H
#define REVOLUTION_OS_CACHE_H

#include <revolution/types.h>
#include <revolution/os/OSError.h>

#ifdef __cplusplus
extern "C" {
#endif

#define LC_MAX_DMA_BLOCKS   (128)
#define LC_MAX_DMA_BYTES    (LC_MAX_DMA_BLOCKS * 32)

void    DCEnable();

void    DCInvalidateRange(void* addr, u32 len);

void    DCFlushRange(void* addr, u32 len);
void    DCFlushRangeNoSync(void* addr, u32 len);

void    DCStoreRange(void* addr, u32 len);

void    DCZeroRange(void* addr, u32 len);

void    ICEnable();
void    ICFlashInvalidate();
void    ICInvalidateRange(void* addr, u32 len);

void    LCDisable();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_CACHE_H
