#ifndef RFL_ICON_H
#define RFL_ICON_H

#include <internal/RFLi_LibConfig.h>

#include <RFL_Types.h>
#include <internal/RFLi_Types.h>

#include <RFL_MiddleDatabase.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    RFLIconBG_Favorite = 0,
    RFLIconBG_Direct,
} RFLIconBG;

typedef struct {
    u16 width;   // 0x00
    u16 height;  // 0x02

    RFLIconBG bgType;  // 0x04
    GXColor bgColor;   // 0x08

    BOOL drawXluOnly;  // 0x0C
} RFLIconSetting;

RFLErrcode RFLMakeIcon(void* buf, RFLDataSource source, RFLMiddleDatabase* middleDB, u16 index, RFLExpression expression,
                       const RFLIconSetting* setting);

#ifdef RFL_USE_ICON_CALLBACK
void RFLSetIconDrawDoneCallback(RFLSimpleCB cb);
#endif  // RFL_USE_ICON_CALLBACK

#ifdef __cplusplus
}
#endif

#endif  // RFL_ICON_H
