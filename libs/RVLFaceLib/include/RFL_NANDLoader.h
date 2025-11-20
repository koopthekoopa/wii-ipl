#ifndef RFL_NAND_LOADER_H
#define RFL_NAND_LOADER_H

#include <RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

RFLErrcode  RFLCacheResource(void* resBuffer, u32 resSize);
RFLErrcode  RFLFreeCachedResource();
BOOL        RFLIsResourceCached();

u16         RFLGetResourceVersion();

#ifdef __cplusplus
}
#endif

#endif // RFL_NAND_LOADER_H
