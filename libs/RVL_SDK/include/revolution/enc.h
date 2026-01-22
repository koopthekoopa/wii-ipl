#ifndef REVOLUTION_ENC_H
#define REVOLUTION_ENC_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum ENCResult {
    ENC_OK                      =  0,
    ENC_ERR_NO_BUF_LEFT         = -1,
    ENC_ERR_NO_MAP_RULE         = -2,
    ENC_ERR_INVALID_PARAM       = -3,
    ENC_ERR_INVALID_FORMAT      = -4,
    ENC_ERR_UNKNOWN_ENCODING    = -5,
    ENC_ERR_UNSUPPORTED         = -6,

    ENC_ERR_NOT_LOADED          = -7,
} ENCResult;

ENCResult   ENCConvertStringUtf16ToUtf8(u8* dst, s32* dstSize, const u16* src, s32* srcSize);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ENC_H
