#ifndef REVOLUTION_OS_MUTEX_H
#define REVOLUTION_OS_MUTEX_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/os/OSThread.h>

typedef struct OSMutex {
    OSThreadQueue   queue;
    OSThread*       thread;
    s32             count;
    OSMutexLink     link;
};

typedef struct OSCond {
    OSThreadQueue   queue;
};

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_MUTEX_H