#ifndef TMC_JPEG_H
#define TMC_JPEG_H

#include <revolution/types.h>

#define TMCC_ERROR_HEADER (-80)
#define TMCC_ERROR_OVERFLOW (-100)
#define TMCC_ERROR_FORMAT (-112)
#define TMCC_ERROR_UNDERFLOW (-144)
#define TMCC_ERROR_USER_CALLBACK (-240)

#ifdef __cplusplus
extern "C" {
#endif

#define TMCC_JPEG_DEC_WORK_SIZE 0x1C00

typedef struct TMCCJPEGDecWork_t TMCCJPEGDecWork;

typedef s32(TMCCReadCallback)(void*, u8*, unsigned int);

typedef struct {
    u8 unk_0x00[0x10];
    void* pBuf2;                  // 0x10
    u32 buf2Size;                 // 0x14
    u32 dataSize;                 // 0x18
    TMCCReadCallback* pCallback;  // 0x1C
    void* pContext;               // 0x20
    u8 unk_0x24;                  // 0x24
    u8 pad_0x25[0x03];
    TMCCJPEGDecWork* pBuf1;  // 0x28
    u8 unk_0x2C;             // 0x2C
    u8 pad_0x2D[0x03];
} TMCCJPEGDecInitParam;

typedef struct {
    u8 unk_0x00[0x0C];
    u16 orientation;           // 0x0C
    u32 xResNum;               // 0x10
    u32 xResDen;               // 0x14
    u32 yResNum;               // 0x18
    u32 yResDen;               // 0x1C
    u16 resUnit;               // 0x20
    u16 transferFunc[3][256];  // 0x22
    s8 dateTime[20];           // 0x622
    u16 yCbCrPos;              // 0x636
    u32 nextIfdOffset;         // 0x638
    s8 exifVer[4];             // 0x63C
    u8 flashVer[4];            // 0x640
    s8 flashPixVer[4];         // 0x644
    u16 colorSpace;            // 0x648
    u8 unk_0x64A[0x02];
    u32 pixelXDim;        // 0x64C
    u32 pixelYDim;        // 0x650
    u16 compressionIfd1;  // 0x654
    u8 unk_0x656[0x02];
    u32 xResNumIfd1;       // 0x658
    u32 xResDenIfd1;       // 0x65C
    u32 planarConfigIfd1;  // 0x660
    u32 yResDenIfd1;       // 0x664
    u16 resUnitIfd1;       // 0x668
    u8 unk_0x66A[0x02];
    u32 thumbnailOffset;  // 0x66C
    u32 thumbnailLength;  // 0x670
    u8* thumbnailData;    // 0x674
    u8* dataEnd;          // 0x678
} TMCCJPEGDecExifData;

typedef struct {
    u8 unk_0x00[0x04];
    s32 position;  // 0x04
    u8 unk_0x08[0x04];
    u32 state;  // 0x0C
    u8 unk_0x10[0x10];
    u8 exifFlags;  // 0x20
    u8 thumbFlag;  // 0x21
    u8 unk_0x22[0x2A];
    TMCCJPEGDecExifData exifData;  // 0x4C
    TMCCJPEGDecWork* pWorkBuf;     // 0x6C8
    u8 unk_0x6CC[0x04];
    u8 converterType;  // 0x6D0
    u8 unk_0x6D1[0x03];
} TMCCJPEGDecExifInfo;

typedef struct {
    u16 posX;      // 0x00
    u16 posY;      // 0x02
    s32 position;  // 0x04
    u8 unk_0x08[0x04];
    u32 result;         // 0x0C
    u16 maxX;           // 0x10
    u16 maxY;           // 0x12
    u8 stepX;           // 0x14
    u8 stepY;           // 0x15
    u8 stepXExt;        // 0x16
    u8 stepYExt;        // 0x17
    u32 dataSizeX;      // 0x18
    u32 dataSizeY;      // 0x1C
    u8 scaleFactor;     // 0x20
    u8 unk_0x21;        // 0x21
    u8 componentCount;  // 0x22
    u8 unk_0x23;        // 0x23
    u16 jpegWidth;      // 0x24
    u16 jpegHeight;     // 0x26
    u16 outputWidth;    // 0x28
    u16 outputHeight;   // 0x2A
    u32 convWidth;      // 0x2C
    u32 convHeight;     // 0x30
    u8 unk_0x34[0x14];  // 0x34
    void* pTexBuffer;   // 0x48
    u8 unk_0x4C[0x67C];
    TMCCJPEGDecWork* pWorkBuf;  // 0x6C8
    s32 decodeResult;           // 0x6CC
    u8 converterType;           // 0x6D0
    u8 unk_0x6D1[0x03];
} TMCCJPEGDecState;

s32 TMCCJPEGDecInit(TMCCJPEGDecState* state, TMCCJPEGDecInitParam* param);
s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u32 scale);
s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer);
s32 TMCCJPEGDecGetOffsetEXIF(u32* pOffset, u32* pSize, TMCCJPEGDecInitParam* pParam);
s32 TMCCJPEGDecGetInfoEXIF(TMCCJPEGDecExifInfo* pInfo, TMCCJPEGDecInitParam* pParam);

#ifdef __cplusplus
}
#endif

#endif  // TMC_JPEG_H
