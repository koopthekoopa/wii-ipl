#ifndef REVOLUTION_WENC_H
#define REVOLUTION_WENC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    WENC_FLAG_USER_INFO = (1 << 0),
} WENCFlag;

typedef struct WENCInfo {
    s32 xn;         // 0x00
    s32 dl;         // 0x04
    s32 qn;         // 0x08
    s32 dn;         // 0x0C
    s32 dlh;        // 0x10
    s32 dlq;        // 0x14

    u8 padding[8];  // 0x18
} WENCInfo;

s32 WENCGetEncodeData(WENCInfo* info, u32 flag, const s16* pcmData, s32 samples, u8* adpcmData);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_WENC_H
