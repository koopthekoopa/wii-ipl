#pragma ipa file

#include <egg/core/eggGraphicsFifo.h>

#include <revolution/gx/GXManage.h>

namespace EGG {

    GraphicsFifo* GraphicsFifo::sGraphicsFifo;
    GraphicsFifo::GpStatus GraphicsFifo::sGpStatus;

#pragma dont_inline on
    GraphicsFifo* GraphicsFifo::create(u32 size, Heap* pHeap) {
        if (pHeap == NULL) {
            pHeap = Heap::sCurrentHeap;
        }
        sGraphicsFifo = new (pHeap, 4) GraphicsFifo(size, pHeap);
        return sGraphicsFifo;
    }
#pragma dont_inline off

    GraphicsFifo::~GraphicsFifo() {
        while (isGPActive()) {}
        Heap::free(mpBuffer, NULL);
    }

    GraphicsFifo::GraphicsFifo(u32 size, Heap* pHeap) {
        mBufSize = (size + 0x1F) & ~0x1F;
        void* buffer = Heap::alloc(mBufSize + 0xA0, 0x20, pHeap);
        mpBuffer = (void*)(((u32)buffer + 0x1F) & ~0x1F);
        mpFifoObj = GXInit(mpBuffer, mBufSize);
    }

}  // namespace EGG
