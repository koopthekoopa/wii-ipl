#ifndef RFLi_NWC24_H
#define RFLi_NWC24_H

#include <internal/RFLi_Types.h>
#include <RFL_Types.h>

#include <revolution/nwc24.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL        RFLiNWC24Msg2CharData(RFLiCharData* rawdata, const NWC24MsgObj* obj);

RFLErrcode  RFLiNWC24Msg2HiddenAsync(const NWC24MsgObj* obj);

RFLErrcode  RFLiSetOfficial2NWC24Msg(NWC24MsgObj* obj, RFLCharData* out, u16 index);

RFLErrcode  RFLiMakeNWC24MsgforExchange(NWC24MsgObj* obj, RFLCharData* work);
RFLErrcode  RFLiMakeNWC24MsgforExchange_Debug(NWC24MsgObj* obj, RFLCharData* work);

#ifdef __cplusplus
}
#endif

#endif // RFLi_NWC24_H
