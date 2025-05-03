#ifndef REVOLUTION_GX_FIFO_H
#define REVOLUTION_GX_FIFO_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*GXBreakPtCallback)();

void                GXInitFifoBase(GXFifoObj* fifo, void* base, u32 size);
void                GXInitFifoPtrs(GXFifoObj* fifo, void* readPtr, void* writePtr);
void                GXInitFifoLimits(GXFifoObj* fifo, u32 hiWatermark, u32 loWatermark);

void                GXSetCPUFifo(GXFifoObj* fifo);
void                GXSetGPFifo(GXFifoObj* fifo);

void                GXGetGPStatus(GXBool* overhi, GXBool* underlow, GXBool* readIdle, GXBool* cmdIdle, GXBool* brkpt);

GXBreakPtCallback   GXSetBreakPtCallback(GXBreakPtCallback cb);

GXBool              GXGetCPUFifo(GXFifoObj *fifo);
GXFifoObj*          GXGetGPFifo();

u32                 GXGetFifoCount(const GXFifoObj* fifo);
GXBool              GXGetFifoWrap(const GXFifoObj* fifo);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_FIFO_H
