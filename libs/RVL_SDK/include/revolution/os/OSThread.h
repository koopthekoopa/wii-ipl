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
    OSThread*  head;
    OSThread*  tail;
} OSThreadQueue;

typedef struct {
    OSThread*  next;
    OSThread*  prev;
} OSThreadLink;

typedef struct {
    OSMutex*   head;
    OSMutex*   tail;
} OSMutexQueue;

typedef struct {
    OSMutex*   next;
    OSMutex*   prev;
} OSMutexLink;

struct OSThread{
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



