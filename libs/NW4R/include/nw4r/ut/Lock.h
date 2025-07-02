#ifndef NW4R_UT_LOCK_H
#define NW4R_UT_LOCK_H

#include <revolution/os/OSMutex.h>
#include <revolution/os/OSInterrupt.h>
#include <nw4r/ut/inlines.h>

namespace nw4r {
    namespace ut {
        namespace detail {
            inline void Lock(OSMutex& rMutex) {
                OSLockMutex(&rMutex);
            }
            inline void Unlock(OSMutex& rMutex) {
                OSUnlockMutex(&rMutex);
            }

            template<typename T> class AutoLock : private NonCopyable {
                public:
                    explicit AutoLock(T& rLockObj) : mLockObj(rLockObj) {
                        Lock(rLockObj);
                    }
                    ~AutoLock() {
                        Unlock(mLockObj);
                    }

                private:
                    T&  mLockObj;   // 0x00
            };
        }

        typedef detail::AutoLock<OSMutex>   AutoMutexLock;

        class AutoInterruptLock : private NonCopyable {
            public:
                AutoInterruptLock() : mOldState(OSDisableInterrupts()) {}
                ~AutoInterruptLock() {
                    OSRestoreInterrupts(mOldState);
                }

            private:
                BOOL    mOldState;  // 0x00
        };
    }
}

#endif // NW4R_UT_LIST_H
