#ifndef REVOLUTION_OS_ALARM_H
#define REVOLUTION_OS_ALARM_H

#include <revolution/types.h>
#include <revolution/os/OSContext.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSAlarm OSAlarm;

typedef void (*OSAlarmHandler)(OSAlarm* alarm, OSContext* context);

struct OSAlarm {
    OSAlarmHandler  handler;
    u32             tag;
    OSTime          fire;
    OSAlarm*        prev;
    OSAlarm*        next;

    OSTime          period;
    OSTime          start;

    void*           userData;
};

void OSCreateAlarm(OSAlarm* alarm);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_ALARM_H


