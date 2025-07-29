#ifndef PRIVATE_NWC24_TIME_H
#define PRIVATE_NWC24_TIME_H

#include <revolution/types.h>
#include <revolution/os/OSTime.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

NWC24Err    NWC24iGetUniversalTime(OSTime* pTime);
NWC24Err    NWC24iGetTimeDifference(OSTime* pDiff);

NWC24Err    NWC24iSetRtcCounter(u32 rtcCounter, u32 flags);
NWC24Err    NWC24iSynchronizeRtcCounter(BOOL forceSave);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_NWC24_TIME_H
