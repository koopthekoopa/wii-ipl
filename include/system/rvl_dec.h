#ifndef IPL_DECOMPRESS_H
#define IPL_DECOMPRESS_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif __cplusplus

int         Rvl_decode(u8* dataOut, u8* dataIn);

static int  Rvl_decode_ash_size(u8* dataIn) {
    return (dataIn[5] << 16) | (dataIn[6] << 8) | dataIn[7];
}

#ifdef __cplusplus
}
#endif __cplusplus

#endif // IPL_DECOMPRESS_H


