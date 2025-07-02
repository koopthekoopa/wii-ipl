#ifndef NW4R_SND_AXFX_IMPL_H
#define NW4R_SND_AXFX_IMPL_H

#include <revolution/axfx.h>

#include <revolution/mem/frameHeap.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            class AxfxImpl {
                public:
                    AxfxImpl() :
                    mIsActive(false),
                    mHeap(NULL),
                    mAllocCount(0) {}

                    bool    CreateHeap(void* buffer, u32 size);
                    void    DestroyHeap();

                    u32     GetHeapTotalSize()  { return MEMGetHeapTotalSize(mHeap); }

                    static void*    Alloc(u32 size);
                    static void     Free(void* block);

                    static const u32 HEAP_SIZE_MIN = MEM_FRM_HEAP_MIN_SIZE + 32;
                                
                public:
                    bool                mIsActive;      // 0x00
                    MEMHeapHandle       mHeap;          // 0x04
                    u32                 mAllocCount;    // 0x08

                    static AxfxImpl*    mCurrentFx;
                    static u32          mAllocatedSize;
            };
        }
    }
}

#endif // NW4R_SND_AXFX_IMPL_H
