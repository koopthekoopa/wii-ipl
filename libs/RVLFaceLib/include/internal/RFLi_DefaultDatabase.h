#ifndef RFLi_DEFAULT_DATABASE_H
#define RFLi_DEFAULT_DATABASE_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define RFL_DEFAULT_DATA_MAX    6

RFLiCharData*   RFLiGetDefaultDataPtr(u16 index);
void            RFLiGetDefaultData(RFLiCharInfo* info, u16 index);

#ifdef __cplusplus
}
#endif

#endif // RFLi_DEFAULT_DATABASE_H
