#include <egg/core.h>

namespace EGG {
    GraphicsFifo* GraphicsFifo::sGraphicsFifo = NULL;
    GraphicsFifo::GpStatus GraphicsFifo::sGpStatus;

    GraphicsFifo* GraphicsFifo::create(u32 size, Heap* heap) {
        if (heap == NULL) {
            heap = Heap::getCurrentHeap();
        }

        sGraphicsFifo = new (heap) GraphicsFifo(size, heap);
        return sGraphicsFifo;
    }

    GraphicsFifo::~GraphicsFifo() {
        while (isGPActive()) {
        }

        Heap::free(mpBufBase, NULL);
    }

    GraphicsFifo::GraphicsFifo(u32 size, Heap* pHeap) {
        mBufSize = OSRoundUp32B(size);

        mpBufBase = Heap::alloc(mBufSize + sizeof(GXFifoObj) + 32, 32, pHeap);
        mpBufBase = (void*)OSRoundUp32B(mpBufBase);

        mpFifoObj = GXInit(mpBufBase, mBufSize);
    }
}  // namespace EGG
