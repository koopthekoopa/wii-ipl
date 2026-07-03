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
    u8    unk_0x10[0x10];
    u8    mExifFlags;      // 0x20
    u8    mThumbFlag;      // 0x21
    u8    unk_0x22[0x2A];
    u8    mExifParsedData[0x0C]; // 0x4C
    u16   mOrientation;    // 0x58
    u8    unk_0x5A[0x02];
    u32   mXResNum;        // 0x5C
    u32   mXResDen;        // 0x60
    u32   mYResNum;        // 0x64
    u32   mYResDen;        // 0x68
    u16   mResUnit;        // 0x6C
    u16   mTransferFunc[0x300]; // 0x6E (3*256 entries)
    u8    mDateTime[20];   // 0x66E
    u16   mYCbCrPos;       // 0x682
    u32   mNextIfdOffset;  // 0x684
    u8    mExifVer[4];     // 0x688
    u8    mFlashVer[4];    // 0x68C
    u8    mPixelDim[4];    // 0x690
    u16   mColorSpace;     // 0x694
    u32   mPixelXDim;      // 0x698
    u32   mPixelYDim;      // 0x69C
    u16   mCompressionIFD1; // 0x6A0
    u32   mXResNumIFD1;    // 0x6A4
    u32   mXResDenIFD1;    // 0x6A8
    u32   mPlanarConfigIFD1; // 0x6AC
    u32   mYResDenIFD1;    // 0x6B0
    u16   mResUnitIFD1;    // 0x6B4
    u32   mThumbnailOffset; // 0x6B8
    u32   mThumbnailLength; // 0x6BC
    u32   mThumbData;      // 0x6C0
    u32   mDataEnd;        // 0x6C4
    void* mpWorkBuf;       // 0x6C8
    u8    unk_0x6CC[0x04];
    u8    mConverterType;  // 0x6D0
    u8    unk_0x6D1[0x03];
} TMCCJPEGDecExifInfo;

typedef struct {
    u16   mPosX;           // 0x00
    u16   mPosY;           // 0x02
    s32   mPosition;       // 0x04
    u8    unk_0x08[0x04];
    u32   mResult;         // 0x0C
    u16   mMaxX;           // 0x10
    u16   mMaxY;           // 0x12
    u8    mStepX;          // 0x14
    u8    mStepY;          // 0x15
    u8    unk_0x16[0x0A];
    u8    mFlag20;         // 0x20
    u8    mFlag21;         // 0x21
    u8    unk_0x22[0x02];
    u16   mJpegWidth;      // 0x24
    u16   mJpegHeight;     // 0x26
    u8    unk_0x28[0x20];
    void* mpTexBuffer;     // 0x48
    u8    unk_0x4C[0x67C];
    void* mpWorkBuf;       // 0x6C8
    s32   mDecodeResult;   // 0x6CC
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
