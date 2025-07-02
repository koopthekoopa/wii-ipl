#include <nw4r/snd/FrameHeap.h>

#include <new>

namespace nw4r {
    namespace snd {
        namespace detail {
            FrameHeap::FrameHeap() :
            mHandle(NULL) {}

            FrameHeap::~FrameHeap() {
                if (IsValid()) {
                    Destroy();
                }
            }

            bool FrameHeap::Create(void* base, u32 size) {
                if (IsValid()) {
                    Destroy();
                }

                void* end = static_cast<u8*>(base) + size;
                base = ut::RoundUp(base, 4);
                if (base > end) {
                    return false;
                }

                mHandle = MEMCreateFrmHeap(base, ut::GetOffsetFromPtr(base, end));
                if (mHandle == NULL) {
                    return false;
                }

                if (!NewSection()) {
                    return false;
                }

                return true;
            }

            void FrameHeap::Destroy() {
                if (!IsValid()) {
                    return;
                }

                ClearSection();
                MEMFreeToFrmHeap(mHandle, MEM_FRM_HEAP_FREE_ALL);

                MEMDestroyFrmHeap(mHandle);
                mHandle = NULL;
            }

            void FrameHeap::Clear() {
                ClearSection();
                MEMFreeToFrmHeap(mHandle, MEM_FRM_HEAP_FREE_ALL);

                NewSection();
            }

            void* FrameHeap::Alloc(u32 size, FreeCallback callback, void* callbackArg) {
                void* buffer = MEMAllocFromFrmHeapEx(mHandle, BLOCK_BUFFER_SIZE + ut::RoundUp(size, HEAP_ALIGN), HEAP_ALIGN);

                if (buffer == NULL) {
                    return NULL;
                }

                Block* pBlock = new(buffer) Block(size, callback, callbackArg);
                mSectionList.GetBack().AppendBlock(pBlock);

                return pBlock->GetBufferAddr();
            }

            int FrameHeap::SaveState() {
                if (!MEMRecordStateForFrmHeap(mHandle, mSectionList.GetSize())) {
                    return -1;
                }

                if (!NewSection()) {
                    MEMFreeByStateToFrmHeap(mHandle, 0);
                    return -1;
                }

                return GetCurrentLevel();
            }

            void FrameHeap::LoadState(int id) {
                if (id == 0) {
                    Clear();
                    return;
                }

                while (id < static_cast<int>(mSectionList.GetSize())) {
                    Section& rSection = mSectionList.GetBack();
                    rSection.~Section();
                    mSectionList.Erase(&rSection);
                }

                MEMFreeByStateToFrmHeap(mHandle, id);
                MEMRecordStateForFrmHeap(mHandle, mSectionList.GetSize());

                NewSection();
            }

            int FrameHeap::GetCurrentLevel() const {
                return mSectionList.GetSize() - 1;
            }

            u32 FrameHeap::GetFreeSize() const {
                u32 freeSize = MEMGetAllocatableSizeForFrmHeapEx(mHandle, HEAP_ALIGN);
                if (freeSize < BLOCK_BUFFER_SIZE) {
                    return 0;
                }

                return ut::RoundDown(freeSize - BLOCK_BUFFER_SIZE, HEAP_ALIGN);
            }

            bool FrameHeap::NewSection() {
                void* pSection = MEMAllocFromFrmHeap(mHandle, sizeof(Section));
                if (pSection == NULL) {
                    return false;
                }

                mSectionList.PushBack(new(pSection) Section());
                return true;
            }

            void FrameHeap::ClearSection() {
                while (!mSectionList.IsEmpty()) {
                    Section& rSection = mSectionList.GetBack();
                    rSection.~Section();
                    mSectionList.Erase(&rSection);
                }
            }
        }
    }
}
