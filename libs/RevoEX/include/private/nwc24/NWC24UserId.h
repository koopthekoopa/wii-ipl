#ifndef PRIVATE_NWC24_USERID_H
#define PRIVATE_NWC24_USERID_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>
#include <revolution/nwc24/NWC24Types.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL    NWC24CheckUserId(NWC24UserId id);
BOOL    NWC24iCheckUserIdCRC(NWC24UserId id);

#ifdef __cplusplus
}
#endif

#endif  // #define PRIVATE_NWC24_USERID_H
