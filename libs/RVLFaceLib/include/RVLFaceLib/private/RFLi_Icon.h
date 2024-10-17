#ifndef RFL_INTERVAL_ICON_H
#define RFL_INTERVAL_ICON_H

#include <decomp_types.h>

#include <revolution/types.h>

#include <RVLFacelib/private/RFLi_Types.h>
#include <RVLFacelib/RFL_Icon.h>

#ifdef __cplusplus
extern "C" {
#endif

RFLErrcode  RFLiMakeIcon(void* pBuffer, RFLiCharInfo* pCharInfo, RFLExpression expression, const RFLIconSetting* setting);
void        RFLiMakeIconFromData(void* pBuffer, RFLiCharData* pCharData, RFLExpression expression, const RFLIconSetting* setting);

#ifdef __cplusplus
}
#endif

#endif // RFL_INTERVAL_ICON_H


