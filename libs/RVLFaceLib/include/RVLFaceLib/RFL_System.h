#ifndef REVOLUTION_FACE_SYSTEM_H
#define REVOLUTION_FACE_SYSTEM_H

#include <RVLFacelib/RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32         RFLGetWorkSize(BOOL useDeluxTex);

RFLErrcode  RFLInitRes(void* workBuffer, void* resBuffer, u32 resSize, BOOL useDeluxTex);

RFLErrcode  RFLWaitAsync();
RFLErrcode  RFLGetAsyncStatus();

char*       RFLGetArcFilePath();

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FACE_SYSTEM_H
