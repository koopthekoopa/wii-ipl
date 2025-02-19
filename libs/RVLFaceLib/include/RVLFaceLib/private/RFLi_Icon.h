#ifndef RFL_INTERVAL_ICON_H
#define RFL_INTERVAL_ICON_H

#include <revolution/types.h>

#include <RVLFacelib/private/RFLi_Types.h>
#include <RVLFacelib/RFL_Icon.h>

#ifdef __cplusplus
extern "C" {
#endif

RFLErrcode  RFLiMakeIcon(void* buffer, RFLiCharInfo* charInfo, RFLExpression expression, const RFLIconSetting* setting);
void        RFLiMakeIconFromData(void* buffer, RFLiCharData* charInfo, RFLExpression expression, const RFLIconSetting* setting);

#ifdef __cplusplus
}
#endif

#endif // RFL_INTERVAL_ICON_H
