#ifndef RFLi_DATA_UTILITY_H
#define RFLi_DATA_UTILITY_H

#include <internal/RFLi_LibConfig.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <RFL_MiddleDatabase.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL        RFLiCheckValidInfo(const RFLiCharInfo* info);
BOOL        RFLiCheckValidInfoNoName(const RFLiCharInfo* info);
BOOL        RFLiIsValidOnNAND(const RFLiCharInfo* info);
BOOL        RFLiIsSameFaceCore(const RFLiCharInfo* lhv, const RFLiCharInfo* rhv);

RFLErrcode  RFLiPickupCharInfo(RFLiCharInfo* info, RFLDataSource source, const RFLMiddleDatabase* middleDB, u16 index);

BOOL        RFLiCheckBirthday(u8 month, u8 day);

#ifdef __cplusplus
}
#endif

#endif // RFLi_DATA_UTILITY_H
