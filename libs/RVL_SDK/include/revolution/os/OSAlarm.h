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
    OSAlarmHandler  handler;    // 0x00
    u32             tag;        // 0x04
    OSTime          fire;       // 0x08
    OSAlarm*        prev;       // 0x10
    OSAlarm*        next;       // 0x14

    OSTime          period;     // 0x18
    OSTime          start;      // 0x20

    void*           userData;   // 0x28
};

void OSCreateAlarm(OSAlarm* pAlarm);
void    OSSetAlarm(OSAlarm* alarm, OSTime tick, OSAlarmHandler handler);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_ALARM_H


