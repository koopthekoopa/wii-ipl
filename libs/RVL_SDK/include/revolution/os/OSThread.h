#ifndef REVOLUTION_OS_THREAD_H
#define REVOLUTION_OS_THREAD_H

#include <revolution/types.h>
#include <revolution/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 OSPriority;

#define OS_THREAD_SPECIFIC_MAX  2

typedef struct OSThread OSThread;
typedef struct OSMutex OSMutex;

typedef struct {
    OSThread*  head;    // 0x00
    OSThread*  tail;    // 0x04
} OSThreadQueue;

typedef struct {
    OSThread*  next;    // 0x00
    OSThread*  prev;    // 0x04
} OSThreadLink;

typedef struct {
    OSMutex*   head;    // 0x00
    OSMutex*   tail;    // 0x04
} OSMutexQueue;

typedef struct {
    OSMutex*   next;    // 0x00
    OSMutex*   prev;    // 0x04
} OSMutexLink;

struct OSThread {
    OSContext       context;                            // 0x00

    u16             state;                              // 0x2C8
    u16             attr;                               // 0x2CA
    s32             suspend;                            // 0x2CC
    OSPriority      priority;                           // 0x2D0
    OSPriority      base;                               // 0x2D4
    void*           val;                                // 0x2D8

    OSThreadQueue*  queue;                              // 0x2DC
    OSThreadLink    link;                               // 0x2E0

    OSThreadQueue   queueJoin;                          // 0x2E8

    OSMutex*        mutex;                              // 0x2F0
    OSMutexQueue    queueMutex;                         // 0x2F8

    OSThreadLink    linkActive;                         // 0x300

    u8*             stackBase;                          // 0x308
    u32*            stackEnd;                           // 0x30C

    s32             error;                              // 0x310
    void*           specific[OS_THREAD_SPECIFIC_MAX];   // 0x314
};

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_THREAD_H



