#ifndef REVOLUTION_WENC_H
#define REVOLUTION_WENC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    WENC_FLAG_USER_INFO = (1 << 0),
};

typedef struct WENCInfo {
    u8  data[0x20];
} WENCInfo;

s32 WENCGetEncodeData(WENCInfo* info, u32 flag, const s16* pbyPcmData, s32 nSampleNum, u8* pbyAdpcmData);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_WENC_H
