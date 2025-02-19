#ifndef RFL_INTERVAL_NWC24_H
#define RFL_INTERVAL_NWC24_H

#include <revolution/types.h>
#include <revolution/nwc24/NWC24MsgBoard.h>

#include <RVLFacelib/private/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8  data[76]; // 0x00
} RFLiNWC24MsgWork;

RFLErrcode  RFLiNWC24Msg2HiddenAsync(const NWC24MsgObj* obj);
RFLErrcode  RFLiMakeNWC24MsgforExchange(const NWC24MsgObj* obj, RFLiNWC24MsgWork* work);

#ifdef __cplusplus
}
#endif

#endif // RFL_INTERVAL_NWC24_H


