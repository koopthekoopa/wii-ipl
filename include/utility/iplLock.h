#ifndef IPL_LOCK_H
#define IPL_LOCK_H

#include <revolution/os/OSInterrupt.h>
#include <revolution/os/OSMutex.h>

namespace ipl {
    namespace utility {
        class autoMutexLock {
        public:
            autoMutexLock(OSMutex& lockObj, bool tryLock = false) : mLockObj(lockObj) { OSLockMutex(&mLockObj); }
            ~autoMutexLock() { OSUnlockMutex(&mLockObj); }

        private:
            OSMutex& mLockObj;  // 0x00
        };

        class autoInterruptLock {
        public:
            autoInterruptLock() : mOldState(OSDisableInterrupts()) {}
            ~autoInterruptLock() { OSRestoreInterrupts(mOldState); }

        private:
            BOOL mOldState;  // 0x00
        };
    }  // namespace utility
}  // namespace ipl

#endif  // IPL_LOCK_H
