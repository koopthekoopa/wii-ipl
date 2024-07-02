#ifndef REVOLUTION_OS_THREAD_H
#define REVOLUTION_OS_THREAD_H

#include <revolution/os/OSContext.h>
#include <revolution/os/OSMutex.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 OSPriority;

#define OS_THREAD_SPECIFIC_MAX  2

typedef struct OSThreadQueue {
    OSThread*  head;
    OSThread*  tail;
};

typedef struct OSThreadLink {
    OSThread*  next;
    OSThread*  prev;
};

typedef struct OSMutexQueue {
    OSMutex*   head;
    OSMutex*   tail;
};

typedef struct OSMutexLink {
    OSMutex*   next;
    OSMutex*   prev;
};

typedef struct OSThread {
    OSContext       context;

    u16             state;
    u16             attr; 
    s32             suspend;
    OSPriority      priority;
    OSPriority      base;
    void*           val;

    OSThreadQueue*  queue;
    OSThreadLink    link;

    OSThreadQueue   queueJoin;

    OSMutex*        mutex;
    OSMutexQueue    queueMutex;

    OSThreadLink    linkActive;

    u8*             stackBase;
    u32*            stackEnd;

    s32             error;
    void*           specific[OS_THREAD_SPECIFIC_MAX];
};

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_THREAD_H



