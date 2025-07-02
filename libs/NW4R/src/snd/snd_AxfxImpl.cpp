#include <nw4r/snd/AxfxImpl.h>

#include <nw4r/ut.h>

#include <revolution/mem.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            AxfxImpl*   AxfxImpl::mCurrentFx = NULL;
            u32         AxfxImpl::mAllocatedSize = 0;

            bool AxfxImpl::CreateHeap(void* buffer, u32 size) {
                mHeap = MEMCreateFrmHeap(buffer, size);
                return mHeap != NULL;
            }

            void AxfxImpl::DestroyHeap() {
                if (mHeap != NULL) {
                    MEMDestroyFrmHeap(mHeap);
                }
            }

            void* AxfxImpl::Alloc(u32 size) {
                void* pBlock = MEMAllocFromFrmHeap(mCurrentFx->mHeap, size);

                mCurrentFx->mAllocCount++;
                mAllocatedSize += ut::RoundUp(size, 4);

                return pBlock;
            }

            void AxfxImpl::Free(void* block) {
                if (mCurrentFx->mAllocCount != 0) {
                    mCurrentFx->mAllocCount--;
                }

                if (mCurrentFx->mAllocCount == 0) {
                    MEMFreeToFrmHeap(mCurrentFx->mHeap, MEM_FRM_HEAP_FREE_ALL);
                }
            }
        }
    }
}
