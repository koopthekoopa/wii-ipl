#ifndef NW4R_UT_LOCK_H
#define NW4R_UT_LOCK_H

#include <nw4r/ut/inlines.h>
#include <revolution/os/OSInterrupt.h>
#include <revolution/os/OSMutex.h>


namespace nw4r {
    namespace ut {
        namespace detail {
            inline void Lock(OSMutex& rMutex) {
                OSLockMutex(&rMutex);
            }
            inline void Unlock(OSMutex& rMutex) {
                OSUnlockMutex(&rMutex);
            }

            template <typename T>
            class AutoLock : private NonCopyable {
            public:
                explicit AutoLock(T& rLockObj) : mLockObj(rLockObj) { Lock(rLockObj); }
                ~AutoLock() { Unlock(mLockObj); }

            private:
                T& mLockObj;  // 0x00
            };
        }  // namespace detail

        typedef detail::AutoLock<OSMutex> AutoMutexLock;

        class AutoInterruptLock : private NonCopyable {
        public:
            AutoInterruptLock() : mOldState(OSDisableInterrupts()) {}
            ~AutoInterruptLock() { OSRestoreInterrupts(mOldState); }

        private:
            BOOL mOldState;  // 0x00
        };
    }  // namespace ut
}  // namespace nw4r

#endif  // NW4R_UT_LIST_H
