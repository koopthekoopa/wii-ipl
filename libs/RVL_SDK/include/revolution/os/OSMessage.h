#ifndef REVOLUTION_OS_MESSAGE_H
#define REVOLUTION_OS_MESSAGE_H

#include <revolution/types.h>
#include <revolution/os/OSThread.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSMessageQueue   OSMessageQueue;
typedef void*                   OSMessage;

struct OSMessageQueue {
    OSThreadQueue   queueSend;
    OSThreadQueue   queueReceive;
    OSMessage*      msgArray;
    s32             msgCount;
    s32             firstIndex;
    s32             usedCount;
};

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_OSMESSAGE_H


