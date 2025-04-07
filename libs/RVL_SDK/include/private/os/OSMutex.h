#ifndef PRIVATE_OS_MUTEX_H
#define PRIVATE_OS_MUTEX_H

#include <revolution/os/OSMutex.h>

#ifdef __cplusplus
extern "C" {
#endif

void    __OSUnlockAllMutex(OSThread* thread);

BOOL    __OSCheckDeadLock(OSThread* thread);
BOOL    __OSCheckMutex(OSMutex* mutex);
BOOL    __OSCheckMutexes(OSThread* thread);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_OS_MUTEX_H
