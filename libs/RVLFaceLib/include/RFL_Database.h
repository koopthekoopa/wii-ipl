#ifndef RFL_DATABASE_H
#define RFL_DATABASE_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_MAX_DATABASE   (100)

BOOL        RFLIsAvailableOfficialData(u16 index);
u16         RFLGetAvailableOfficialDataNum();
BOOL        RFLSearchOfficialData(const RFLCreateID* id, u16* index);

RFLErrcode  RFLGetStoreData(RFLStoreData* data, RFLDataSource source, u16 index);

#ifdef __cplusplus
}
#endif

#endif // RFL_DATABASE_H
