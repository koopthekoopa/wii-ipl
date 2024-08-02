#ifndef REVOLUTION_FACE_ICON_H
#define REVOLUTION_FACE_ICON_H

#include <revolution/types.h>
#include <revolution/gx.h>
#include <RVLFacelib/RFL_Types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
	RFLIconBG_Favorite = 0,
	RFLIconBG_Direct
} RFLIconBGType;

typedef struct {
	u16				width;			// 0x00
    u16             height;			// 0x02
	
	RFLIconBGType   bgType;			// 0x04
	GXColor         bgColor;		// 0x08
	
	BOOL			drawXluOnly;	// 0x0C
} RFLIconSetting;

#define RFL_ICON_TEX_FORMAT (GX_TF_RGB5A3)

RFLErrcode	RFLMakeIcon(void* pBuffer, RFLDataSource source, RFLMiddleDB* middleDB, u16 index, RFLExpression expression, const RFLIconSetting* setting);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_FACE_ICON_H


