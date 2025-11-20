#ifndef RFL_SYSTEM_H
#define RFL_SYSTEM_H

#include <RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32         RFLGetWorkSize(BOOL useDeluxTex);

RFLErrcode  RFLInitResAsync(void* workBuffer, void* resBuffer, u32 resSize, BOOL useDeluxTex);
RFLErrcode  RFLInitRes(void* workBuffer, void* resBuffer, u32 resSize, BOOL useDeluxTex);

void        RFLExit();

BOOL        RFLAvailable();

RFLErrcode  RFLGetAsyncStatus();
s32         RFLGetLastReason();

RFLErrcode  RFLWaitAsync();

char*       RFLGetArcFilePath();

#ifdef __cplusplus
}
#endif

#endif // RFL_SYSTEM_H
