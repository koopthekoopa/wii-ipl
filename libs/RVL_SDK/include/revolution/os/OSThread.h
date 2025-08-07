#ifndef REVOLUTION_OS_THREAD_H
#define REVOLUTION_OS_THREAD_H

#include <revolution/types.h>
#include <revolution/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef s32 OSPriority;

#define OS_PRIORITY_MIN         0
#define OS_PRIORITY_MAX         31

#define OS_THREAD_SPECIFIC_MAX  2

typedef struct OSThread OSThread;
typedef struct OSMutex  OSMutex;
typedef struct OSCond   OSCond;

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

void    OSInitMutexQueue(OSMutexQueue* queue);

struct OSThread {
    OSContext       context;                            // 0x00
    u16             state;                              // 0x2C8
    u16             attr;                               // 0x2CA
    s32             suspend;                            // 0x2CC
    OSPriority      priority;                           // 0x2D0
    OSPriority      base;                               // 0x2D4

    void*           value;                              // 0x2D8

    OSThreadQueue*  queue;                              // 0x2DC
    OSThreadLink    link;                               // 0x2E0

    OSThreadQueue   queueJoin;                          // 0x2E8
    OSMutex*        mutex;                              // 0x2F0
    OSMutexQueue    queueMutex;                         // 0x2F4

    OSThreadLink    linkActive;                         // 0x2FC

    u8*             stackBase;                          // 0x304
    u32*            stackEnd;                           // 0x308

    s32             error;                              // 0x30C

    void*           specific[OS_THREAD_SPECIFIC_MAX];   // 0x310
};

#define OS_THREAD_STATE_UNINITIALIZED   0
#define OS_THREAD_STATE_READY           1
#define OS_THREAD_STATE_RUNNING         2
#define OS_THREAD_STATE_WAITING         4
#define OS_THREAD_STATE_DEAD            8

#define OS_THREAD_ATTR_DETACH           1

typedef void (*OSIdleFunction)(void* param);
typedef void (*OSSwitchThreadCallback)(OSThread* from, OSThread* to);

void                    OSInitThreadQueue(OSThreadQueue* queue);

void                    OSSleepThread(OSThreadQueue* queue);
void                    OSWakeupThread(OSThreadQueue* queue);

void                    OSSetCurrentThread(OSThread* thread);
OSThread*               OSGetCurrentThread();

s32                     OSEnableScheduler();
s32                     OSDisableScheduler();

BOOL                    OSIsThreadSuspended(OSThread* thread);
BOOL                    OSIsThreadTerminated(OSThread* thread);

BOOL                    OSCreateThread(OSThread* thread, void* (*ThreadFunc)(void*), void* param, void* stack, u32 stackSize, OSPriority priority, u16 attr);
void                    OSExitThread(void* val);
void                    OSCancelThread(OSThread* thread);
BOOL                    OSJoinThread(OSThread* thread, void* val);
void                    OSDetachThread(OSThread* thread);

void                    OSYieldThread();

s32                     OSSuspendThread(OSThread* thread);
s32                     OSResumeThread(OSThread* thread);

BOOL                    OSSetThreadPriority(OSThread* thread, OSPriority priority);
s32                     OSGetThreadPriority(OSThread* thread);

s32                     OSCheckActiveThreads();

void                    OSSetThreadSpecific(s32 index, void* ptr);
void*                   OSGetThreadSpecific(s32 index);

OSSwitchThreadCallback  OSSetSwitchThreadCallback(OSSwitchThreadCallback callback);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_THREAD_H
