#include <nw4r/snd/InstancePool.h>

#include <nw4r/ut.h>

namespace nw4r {
    namespace snd {
        namespace detail {
            u32 PoolImpl::CreateImpl(void* buffer, u32 size, u32 stride) {
                ut::AutoInterruptLock lock;

                u8* pPtr = static_cast<u8*>(ut::RoundUp(buffer, 4));
                stride = ut::RoundUp(stride, 4);

                u32 length = (size - ut::GetOffsetFromPtr(buffer, pPtr)) / stride;

                for (u32 i = 0; i < length; i++, pPtr += stride) {
                    PoolImpl* pHead = reinterpret_cast<PoolImpl*>(pPtr);
                    pHead->mNext = mNext;
                    mNext = pHead;
                }

                return length;
            }

            void PoolImpl::DestroyImpl(void* buffer, u32 size) {
                ut::AutoInterruptLock lock;

                void* begin = buffer;
                void* end = static_cast<u8*>(begin) + size;

                PoolImpl* it = mNext;
                PoolImpl* pPrev = this;

                for (; it != NULL; it = it->mNext) {
                    if (begin <= it && it < end) {
                        pPrev->mNext = it->mNext;
                    }
                    else {
                        pPrev = it;
                    }
                }
            }

            int PoolImpl::CountImpl() const {
                ut::AutoInterruptLock lock;

                int num = 0;

                for (PoolImpl* it = mNext; it != NULL; it = it->mNext) {
                    num++;
                }

                return num;
            }

            void* PoolImpl::AllocImpl() {
                ut::AutoInterruptLock lock;

                if (mNext == NULL) {
                    return NULL;
                }

                PoolImpl* pHead = mNext;
                mNext = pHead->mNext;

                return pHead;
            }

            void PoolImpl::FreeImpl(void* pElem) {
                ut::AutoInterruptLock lock;

                PoolImpl* pHead = static_cast<PoolImpl*>(pElem);
                pHead->mNext = mNext;
                mNext = pHead;
            }
        }
    }
}
