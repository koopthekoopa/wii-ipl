#include <revolution/cx.h>

#define CXiConvertEndian_(n)    ((n >> 24) | ((n & 0xFF0000) >> 8) | ((n & 0xFF00) << 8) | (n << 24))

u32 CXGetUncompressedSize(const void *src) {
    return CXiConvertEndian_(((u32*)src)[0]) >> 8 == 0 ? CXiConvertEndian_(((u32*)src)[1]) : CXiConvertEndian_(((u32*)src)[0]) >> 8;
}
