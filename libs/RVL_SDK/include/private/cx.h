#ifndef PRIVATE_CX_H
#define PRIVATE_CX_H

#include <revolution/types.h>

#define IN_BUFFER_AT(type_, buf_, offset_)    (*((__typeof__(type_)*)((u32)(buf_) + (u32)(offset_))))

#define CXiConvertEndian32_    CXiConvertEndian_

static inline u32 CXiConvertEndian_(u32 x) {
    return ((x & 0xFF000000) >> 24) | ((x & 0x00FF0000) >>  8) | ((x & 0x0000FF00) <<  8) | ((x & 0x000000FF) << 24);
}

static inline u16 CXiConvertEndian16_(u16 x) {
    return ((x & 0xFF00) >> 8) | ((x & 0x00FF) << 8);
}

BOOL CXiVerifyHuffmanTable_(void const *, u8);

#endif  // PRIVATE_CX_H
