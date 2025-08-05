#ifndef ODH_H
#define ODH_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ODH_WORK_SIZE   0x14000

int ODHEncodeRGB565(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);
int ODHEncodeRGBA8(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);
int ODHEncodeY8U8V8(u8* src, u8* dest, int width, int height, u32 sizeLimit, int quality, u8* work);

int ODHDecodeRGB565(u8* src, int srcSize, u8* dest, int destSize, u8* work, int unk);
int ODHDecodeRGBA8(u8* src, int srcSize, u8* dest, int destSize, u8* work, int unk);
int ODHDecodeY8U8V8(u8* src, int srcSize, u8* dest, int destSize, u8* work, int unk);

int ODHGetWidth(u8* data);
int ODHGetHeight(u8* data);

#ifdef __cplusplus
}
#endif

#endif // ODH_H
