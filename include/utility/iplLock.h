#ifndef IPL_LOCK_H
#define IPL_LOCK_H

#include <revolution/os/OSMutex.h>

namespace ipl {
    namespace utility {
        class autoMutexLock {
            public:
                autoMutexLock(OSMutex& lockObj) : mLockObj(lockObj) {
                    OSLockMutex(&lockObj);
                }
                ~autoMutexLock() {
                    OSUnlockMutex(&mLockObj);
                }
            private:
                OSMutex&  mLockObj;   // 0x00
        };
    }
}

#endif // IPL_LOCK_H
