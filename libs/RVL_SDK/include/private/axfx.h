#ifndef PRIVATE_AXFX_H
#define PRIVATE_AXFX_H

#include <revolution/axfx/AXFXHooks.h>

extern AXFXAllocHook    __AXFXAlloc;
extern AXFXFreeHook     __AXFXFree;

f32*    __AXFXGetSrcCoef(u32 i);
s32*    __AXFXGetLfoSinTable();

#endif // PRIVATE_AXFX_H
