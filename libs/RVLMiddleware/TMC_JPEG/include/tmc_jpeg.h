#ifndef TMC_JPEG_H
#define TMC_JPEG_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8    unk_0x00[0x10];
    void* mpBuf2;          // 0x10
    u32   mBuf2Size;       // 0x14
    u32   mDataSize;       // 0x18
    void* mpCallback;      // 0x1C
    void* mpContext;       // 0x20
    u8    mFlag1;          // 0x24
    u8    unk_0x25[0x03];
    void* mpBuf1;          // 0x28
    u8    mFlag2;          // 0x2C
    u8    unk_0x2D[0x03];
} TMCCJPEGDecInitParam;

typedef struct {
    u8    unk_0x00[0x04];
    s32   mPosition;       // 0x04
    u8    unk_0x08[0x04];
    u32   mState;          // 0x0C
    u8    unk_0x10[0x3C];
    u8    mExifParsedData[0x0C]; // 0x4C
    u16   mOrientation;    // 0x58
    u8    unk_0x5A[0x66E];
    void* mpWorkBuf;       // 0x6C8
    u8    unk_0x6CC[0x04];
    u8    mConverterType;  // 0x6D0
    u8    unk_0x6D1[0x03];
} TMCCJPEGDecExifInfo;

typedef struct {
    u8    unk_0x00[0x04];
    s32   mPosition;       // 0x04
    u8    unk_0x08[0x04];
    u32   mResult;         // 0x0C
    u8    unk_0x10[0x10];
    u8    mFlag20;         // 0x20
    u8    mFlag21;         // 0x21
    u8    unk_0x22[0x02];
    u16   mJpegWidth;      // 0x24
    u16   mJpegHeight;     // 0x26
    u8    unk_0x28[0x6A0];
    void* mpWorkBuf;       // 0x6C8
    u8    unk_0x6CC[0x04];
    u8    mConverterType;  // 0x6D0
    u8    unk_0x6D1[0x03];
} TMCCJPEGDecState;

s32 TMCCJPEGDecInit(TMCCJPEGDecState* state, TMCCJPEGDecInitParam* param);
s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u8 scale);
s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer);
s32 TMCCJPEGDecGetOffsetEXIF(u32* pOffset, u32* pSize, TMCCJPEGDecInitParam* pParam);
s32 TMCCJPEGDecGetInfoEXIF(TMCCJPEGDecExifInfo* pInfo, TMCCJPEGDecInitParam* pParam);

#ifdef __cplusplus
}
#endif

#endif // TMC_JPEG_H
