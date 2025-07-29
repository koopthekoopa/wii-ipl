#ifndef REVOLUTION_NWC24_SYSTEM_H
#define REVOLUTION_NWC24_SYSTEM_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

NWC24Err    NWC24EnableLedNotification(BOOL enableLed);

NWC24Err    NWC24DoDailyTasks(void* work);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_SYSTEM_H
