#ifndef PRIVATE_OS_RTC_H
#define PRIVATE_OS_RTC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL    __OSSetRTC(u32  rtc);
BOOL    __OSGetRTC(u32* rtc);

BOOL    __OSGetRTCFlags(u32* flags);

BOOL    __OSClearRTCFlags();

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_OS_RTC_H
