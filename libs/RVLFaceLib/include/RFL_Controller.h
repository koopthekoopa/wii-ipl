#ifndef RFL_CONTROLLER_H
#define RFL_CONTROLLER_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

RFLErrcode  RFLLoadControllerAsync(s32 chan);
RFLErrcode  RFLUnloadController(s32 chan);

BOOL        RFLIsAvailableControllerData(s32 chan, u8 index);

u8          RFLGetAvailableControllerDataNum(s32 chan);

#ifdef __cplusplus
}
#endif

#endif // RFL_CONTROLLER_H
