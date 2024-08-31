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
typedef struct OSMutex  OSMutex;

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
    u16             flags;                              // 0x2CA
    
    s32             suspend;                            // 0x2CC
    OSPriority      priority;                           // 0x2D0
    
    s32             base;                               // 0x2D4
    u32             val;                                // 0x2D8
    
    OSThreadQueue*  queue;                              // 0x2DC
    OSThread*       next;                               // 0x2E0
    OSThread*       prev;                               // 0x2E4
    
    OSThreadQueue   queueJoin;                          // 0x2E8
    
    OSMutex*        mutex;                              // 0x2F0
    OSMutexQueue    queueMutex;                         // 0x2F4
    
    OSThread*       nextActive;                         // 0x2FC
    OSThread*       prevActive;                         // 0x300
    
    u32*            stackBegin;                         // 0x304
    u32*            stackEnd;                           // 0x308
    
    s32             error;                              // 0x30C
    void*           specific[OS_THREAD_SPECIFIC_MAX];   // 0x310
};

typedef void (*OSIdleFunction)(void* pParam);
typedef void (*OSSwitchThreadCallback)(OSThread* pFrom, OSThread* pTo);

BOOL        OSCreateThread(OSThread* pThread, void* (*ThreadFunc)(void*), void* pParam, void* pStack, u32 stackSize, OSPriority priority, u16 attr);
BOOL        OSJoinThread(OSThread* pThread, void* val);
BOOL        OSIsThreadTerminated(OSThread* pThread);
BOOL        OSIsThreadSuspended(OSThread* pThread);
BOOL        OSSetThreadPriority(OSThread* pThread, OSPriority priority);

s32         OSResumeThread(OSThread* pThread);
s32         OSSuspendThread(OSThread* pThread);

OSThread*   OSGetCurrentThread();

void        OSCancelThread(OSThread* pThread);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_THREAD_H



