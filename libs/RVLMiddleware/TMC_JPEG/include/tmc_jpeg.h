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
    char* mImageName;       // 0x00
    char* mMake;            // 0x04
    char* mModel;           // 0x08
    u16   mOrientation;     // 0x0C
    u32   mXResNum;         // 0x10
    u32   mXResDen;         // 0x14
    u32   mYResNum;         // 0x18
    u32   mYResDen;         // 0x1C
    u16   mResUnit;         // 0x20
    u16   mTransferFunc[3][256]; // 0x22
    s8    mDateTime[20];    // 0x622
    u16   mYCbCrPos;        // 0x636
    u32   mNextIfdOffset;   // 0x638
    s8    mExifVer[4];      // 0x63C
    u8    mFlashVer[4];     // 0x640
    s8    mFlashPixVer[4];  // 0x644
    u16   mColorSpace;      // 0x648
    u8    unk_0x64A[0x02];
    u32   mPixelXDim;       // 0x64C
    u32   mPixelYDim;       // 0x650
    u16   mCompressionIFD1;  // 0x654
    u8    unk_0x656[0x02];
    u32   mXResNumIFD1;     // 0x658
    u32   mXResDenIFD1;     // 0x65C
    u32   mPlanarConfigIFD1; // 0x660
    u32   mYResDenIFD1;     // 0x664
    u16   mResUnitIFD1;     // 0x668
    u8    unk_0x66A[0x02];
    u32   mThumbnailOffset; // 0x66C
    u32   mThumbnailLength; // 0x670
    u8*   mThumbData;       // 0x674
    u8*   mDataEnd;         // 0x678
} TMCCJPEGDecExifData;

typedef struct {
    u8    unk_0x00[0x04];
    s32   mPosition;       // 0x04
    u8    unk_0x08[0x04];
    u32   mState;          // 0x0C
    u8    unk_0x10[0x10];
    u8    mExifFlags;      // 0x20
    u8    mThumbFlag;      // 0x21
    u8    unk_0x22[0x2A];
    TMCCJPEGDecExifData mExifData; // 0x4C
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
    u8    mStepXExt;       // 0x16
    u8    mStepYExt;       // 0x17
    u32   mDataSizeX;      // 0x18
    u32   mDataSizeY;      // 0x1C
    u8    mScaleFactor;    // 0x20
    u8    unk_0x21;        // 0x21
    u8    mComponentState; // 0x22
    u8    unk_0x23;        // 0x23
    u16   mJpegWidth;      // 0x24
    u16   mJpegHeight;     // 0x26
    u16   mOutputWidth;    // 0x28
    u16   mOutputHeight;   // 0x2A
    u32   mConvWidth;      // 0x2C
    u32   mConvHeight;     // 0x30
    u8    unk_0x34[0x14];  // 0x34
    void* mpTexBuffer;     // 0x48
    u8    unk_0x4C[0x67C];
    void* mpWorkBuf;       // 0x6C8
    s32   mDecodeResult;   // 0x6CC
    u8    mConverterType;  // 0x6D0
    u8    unk_0x6D1[0x03];
} TMCCJPEGDecState;

s32 TMCCJPEGDecInit(TMCCJPEGDecState* state, TMCCJPEGDecInitParam* param);
s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u32 scale);
s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer);
s32 TMCCJPEGDecGetOffsetEXIF(u32* pOffset, u32* pSize, TMCCJPEGDecInitParam* pParam);
s32 TMCCJPEGDecGetInfoEXIF(TMCCJPEGDecExifInfo* pInfo, TMCCJPEGDecInitParam* pParam);

#ifdef __cplusplus
}
#endif

#endif // TMC_JPEG_H
