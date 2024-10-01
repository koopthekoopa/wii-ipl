#ifndef REVOLUTION_OS_MESSAGE_H
#define REVOLUTION_OS_MESSAGE_H

#include <revolution/types.h>
#include <revolution/os/OSThread.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void*   OSMessage;

typedef struct {
    OSThreadQueue   queueSend;      // 0x00
    OSThreadQueue   queueReceive;   // 0x08
    OSMessage*      msgArray;       // 0x10
    s32             msgCount;       // 0x14
    s32             firstIndex;     // 0x18
    s32             usedCount;      // 0x1C
} OSMessageQueue;

void    OSInitMessageQueue(OSMessageQueue* queue, OSMessage* msg, s32 msgCount);
BOOL    OSSendMessage(OSMessageQueue* queue, OSMessage msg, s32 flags);
BOOL    OSJamMessage(OSMessageQueue* queue, OSMessage msg, s32 flags);
BOOL    OSReceiveMessage(OSMessageQueue* queue, OSMessage* msg, s32 flags);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_MESSAGE_H


