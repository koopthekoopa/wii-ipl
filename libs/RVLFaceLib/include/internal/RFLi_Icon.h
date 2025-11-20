#ifndef RFLi_ICON_H
#define RFLi_ICON_H

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <RFL_Icon.h>

#ifdef __cplusplus
extern "C" {
#endif

void    RFLiMakeIconFromData(void* buf, const RFLiCharData* data, RFLExpression expression, const RFLIconSetting* setting);
void    RFLiMakeIcon(void* buf, const RFLiCharInfo* info, RFLExpression expression, const RFLIconSetting* setting);

#ifdef __cplusplus
}
#endif

#endif // RFLi_ICON_H
