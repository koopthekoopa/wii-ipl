#ifndef REVOLUTION_OS_ALARM_H
#define REVOLUTION_OS_ALARM_H

#include <revolution/types.h>

#include <revolution/os/OSTime.h>
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

typedef struct OSAlarmQueue {
    OSAlarm*    head;           // 0x00
    OSAlarm*    tail;           // 0x04
} OSAlarmQueue;

void    OSCreateAlarm(OSAlarm* alarm);
void    OSSetAlarm(OSAlarm* alarm, OSTime start, OSAlarmHandler handler);
void    OSCancelAlarm(OSAlarm* alarm);

void    OSSetPeriodicAlarm(OSAlarm* alarm, OSTime start, OSTime period, OSAlarmHandler handler);

void    OSSetAlarmTag(OSAlarm* alarm, u32 tag);

void    OSSetAlarmUserData(OSAlarm* alarm, void* userData);
void*   OSGetAlarmUserData(OSAlarm* alarm);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_OS_ALARM_H
