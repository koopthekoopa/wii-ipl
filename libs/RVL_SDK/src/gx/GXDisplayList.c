
#include <private/os.h>
#include <revolution/os.h>

#include <revolution/gx.h>
#include <private/gx.h>

#include <private/hollywood.h>

#include <revolution/base/PPCArch.h>

#include <string.h>

static GXFifoObj    DisplayListFifo;
static GXData       __savedGXdata;
static GXFifoObj    OldCPUFifo;

void GXBeginDisplayList(void* list, u32 size) {
    __GXFifoObj* impl = (__GXFifoObj*)&DisplayListFifo;

    if (__GXData->dirtyState != 0) {
        __GXSetDirtyState();
    }

    if (__GXData->dlSaveContext) {
        memcpy(&__savedGXdata, __GXData, sizeof(GXData));
    }

    impl->base = list;
    impl->top = (u8*)list + size - 4;
    impl->size = size;
    impl->count = 0;
    impl->rdPtr = list;
    impl->wrPtr = list;

    __GXData->inDispList = TRUE;

    GXGetCPUFifo(&OldCPUFifo);
    GXSetCPUFifo(&DisplayListFifo);
    GXResetWriteGatherPipe();
}

u32 GXEndDisplayList() {
    u8 wrap;
    BOOL enabled;
    u32 cpEnable;

    GXGetCPUFifo(&DisplayListFifo);
    wrap = GXGetFifoWrap(&DisplayListFifo);
    GXSetCPUFifo(&OldCPUFifo);

    if (__GXData->dlSaveContext) {
        enabled = OSDisableInterrupts();

        cpEnable = __GXData->cpEnable;
        memcpy(__GXData, &__savedGXdata, sizeof(GXData));
        __GXData->cpEnable = cpEnable;

        OSRestoreInterrupts(enabled);
    }

    __GXData->inDispList = FALSE;

    if (!wrap) {
        return GXGetFifoCount(&DisplayListFifo);
    }

    return 0;
}

void GXCallDisplayList(void* list, u32 nbytes) {
    if (__GXData->dirtyState != 0) {
        __GXSetDirtyState();
    }

    if (*(u32*)&__GXData->vNumNot == 0) {
        __GXSendFlushPrim();
    }

    GX_WRITE_U8(GX_CMD_CALL_DL);
    GX_WRITE_U32(list);
    GX_WRITE_U32(nbytes);
}

// Temporary. If the next unit gets matched, in this case dvd.c, then this is no longer needed.
#pragma force_active on
u32 alignMe[5];
