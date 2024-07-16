#ifndef REVOLUTION_OS_MESSAGE_H
#define REVOLUTION_OS_MESSAGE_H

#include <revolution/types.h>
#include <revolution/os/OSThread.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void*   OSMessage;

typedef struct {
    OSThreadQueue   queueSend;
    OSThreadQueue   queueReceive;
    OSMessage*      msgArray;
    s32             msgCount;
    s32             firstIndex;
    s32             usedCount;
} OSMessageQueue;

void OSInitMessageQueue(OSMessageQueue* pMsgQueue, OSMessage* pMsg, s32 msgCount);
BOOL OSSendMessage(OSMessageQueue* pMsgQueue, OSMessage pMsg, s32 flags);
BOOL OSJamMessage(OSMessageQueue* pMsgQueue, OSMessage pMsg, s32 flags);
BOOL OSReceiveMessage(OSMessageQueue* pMsgQueue, OSMessage* pMsg, s32 flags);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_MESSAGE_H


