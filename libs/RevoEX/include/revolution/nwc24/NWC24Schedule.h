#ifndef REVOLUTION_NWC24_SCHEDULE_H
#define REVOLUTION_NWC24_SCHEDULE_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

s32         NWC24SuspendScheduler();
s32         NWC24ResumeScheduler();

NWC24Err    NWC24AdjustUniversalTime();

NWC24Err    NWC24ExecDownloadTask(u32 flags, u16 taskId, u32 subTaskMask);

NWC24Err    NWC24GetSchedulerError(s32* numErrors, s32* errorCode);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_SCHEDULE_H
