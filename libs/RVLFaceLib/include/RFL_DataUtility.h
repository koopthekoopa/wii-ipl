#ifndef RFL_DATA_UTILITY_H
#define RFL_DATA_UTILITY_H

#include <RFL_Types.h>

#include <RFL_MiddleDatabase.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLCheckError_Same = 0,
    RFLCheckError_Difference,
    RFLCheckError_ErrorLeft,
    RFLCheckError_ErrorRight,
} RFLCheckError;

RFLCheckError   RFLIsSameFace(RFLDataSource lhvs, RFLMiddleDatabase* lhvd, u16 lhvi, RFLDataSource rhvs, RFLMiddleDatabase* rhvd, u16 rhvi);

RFLErrcode      RFLGetAdditionalInfo(RFLAdditionalInfo* info, RFLDataSource source, RFLMiddleDatabase* db, u16 index);

#ifdef __cplusplus
}
#endif

#endif // RFL_DATA_UTILITY_H
