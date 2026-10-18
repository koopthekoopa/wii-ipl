#ifndef PRIVATE_AXFX_H
#define PRIVATE_AXFX_H

#include <revolution/axfx.h>

#ifdef __cplusplus
extern "C" {
#endif

extern AXFXAllocHook __AXFXAlloc;
extern AXFXFreeHook __AXFXFree;

s32* __AXFXGetLfoSinTable();
f32* __AXFXGetSrcCoef(u32 i);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_AXFX_H
