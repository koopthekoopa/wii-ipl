#ifndef RFL_NWC24_H
#define RFL_NWC24_H

#include <RFL_Types.h>

#include <RFL_Model.h>
#include <RFL_Icon.h>

#include <revolution/nwc24.h>

#ifdef __cplusplus
extern "C" {
#endif

RFLErrcode  RFLCommitNWC24Msg(NWC24MsgObj* obj, u16 index);

RFLErrcode  RFLNWC24Msg2Model(RFLCharModel* charModel, const NWC24MsgObj* data, void* bufferPtr, RFLResolution resolution, u32 expressionFlag);
RFLErrcode  RFLNWC24Msg2Icon(void* buf, const NWC24MsgObj* data, RFLExpression expression, const RFLIconSetting* setting);

#ifdef __cplusplus
}
#endif

#endif // RFL_NWC24_H
