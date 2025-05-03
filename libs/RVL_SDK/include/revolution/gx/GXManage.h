#ifndef REVOLUTION_GX_MANAGE_H
#define REVOLUTION_GX_MANAGE_H

#include <revolution/types.h>
#include <revolution/gx/GXStruct.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*GXDrawSyncCallback)(u16 token);
typedef void (*GXDrawDoneCallback)();

// Init
GXFifoObj*          GXInit(void* base, u32 size);

// Misc
void                GXSetMisc(GXMiscToken token, u32 val);

void                GXFlush();

void                GXResetWriteGatherPipe();

void                GXAbortFrame();

void                GXSetDrawSync(u16 token);
u16                 GXReadDrawSync();

void                GXSetDrawDone();
void                GXWaitDrawDone();
void                GXDrawDone();

void                GXPixModeSync();
void                GXTexModeSync();

GXDrawSyncCallback  GXSetDrawSyncCallback(GXDrawSyncCallback cb);
GXDrawDoneCallback  GXSetDrawDoneCallback(GXDrawDoneCallback cb);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_GX_MANAGE_H
