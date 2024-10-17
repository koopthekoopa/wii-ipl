#ifndef RFL_INTERVAL_DATABASE_H
#define RFL_INTERVAL_DATABASE_H

#include <RVLFacelib/private/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

void RFLiConvertRaw2Info(const RFLiCharData* data, RFLiCharInfo* out);
BOOL RFLiIsValidID(const RFLCreateID* id);

#ifdef __cplusplus
}
#endif

#endif // RFL_INTERVAL_DATABASE_H


