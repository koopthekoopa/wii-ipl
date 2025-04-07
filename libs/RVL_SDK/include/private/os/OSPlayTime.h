#ifndef PRIVATE_OS_PLAYTIME_H
#define PRIVATE_OS_PLAYTIME_H

#include <revolution/types.h>

#include <revolution/os/OSAlarm.h>

#include <revolution/esp.h>

typedef enum OSPlayTimeType {
    OS_PLAYTIME_PERMANENT       = 0,
    OS_PLAYTIME_TIME_LIMIT      = 1,
    OS_PLAYTIME_LAUNCH_LIMIT    = 4,
    OS_PLAYTIME_UNKNOWN         = 9,
} OSPlayTimeType;

typedef void (*OSPlayTimeCallbackFunc)();

BOOL    __OSWriteExpiredFlag();
BOOL    __OSWriteExpiredFlagIfSet();

s32     __OSPlayTimeGetConsumption(ESTicketView *ticket, ESLpEntry *lpEntry, u32 *entries);

s32     __OSGetPlayTime(ESTicketView* ticket, OSPlayTimeType* type, u32* arg);

#endif // PRIVATE_OS_PLAYTIME_H
