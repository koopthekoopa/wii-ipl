#ifndef REVOLUTION_OS_MUTEX_H
#define REVOLUTION_OS_MUTEX_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/os/OSThread.h>

struct OSMutex {
    OSThreadQueue   queue;  // 0x00
    OSThread*       thread; // 0x08
    s32             count;  // 0x0C
    OSMutexLink     link;   // 0x10
};

struct OSCond {
    OSThreadQueue   queue;  // 0x00
};

void    OSInitMutex(OSMutex* mutex);
void    OSLockMutex(OSMutex* mutex);
void    OSUnlockMutex(OSMutex* mutex);
BOOL    OSTryLockMutex(OSMutex* mutex);

#include <revolution/os/OSCond.h>

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_MUTEX_H
