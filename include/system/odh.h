#ifndef ODH_H
#define ODH_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ODHGetWorkSizeByWidthHeight(w, h)   ((w * h) * 3)
#define ODHGetWorkSize(s)                   (s * 3)

int ODHEncodeRGB565(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);
int ODHEncodeRGBA8(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);
int ODHEncodeY8U8V8(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);

int ODHDecodeRGB565(u8* src, int srcSize, u8* dest, int destSize, u8* work, int workSize);
int ODHDecodeRGBA8(u8* src, int srcSize, u8* dest, int destSize, u8* work, int workSize);
int ODHDecodeY8U8V8(u8* src, int srcSize, u8* dest, int destSize, u8* work, int workSize);

int ODHGetWidth(u8* data);
int ODHGetHeight(u8* data);

#ifdef __cplusplus
}
#endif

#endif // ODH_H
