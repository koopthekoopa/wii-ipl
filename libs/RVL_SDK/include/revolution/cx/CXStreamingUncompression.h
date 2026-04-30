#ifndef REVOLUTION_CX_STREAMING_UNCOMPRESS_H
#define REVOLUTION_CX_STREAMING_UNCOMPRESS_H

#ifdef __cplusplus
extern "C" {
#endif

#include <revolution/types.h>

typedef s32 CXStreamingResult;
#define CX_STREAMING_ERR_OK 0
#define CX_STREAMING_ERR_BAD_FILE_TYPE -1
#define CX_STREAMING_ERR_BUFFER_TOO_SMALL -2
#define CX_STREAMING_ERR_BUFFER_TOO_LARGE -3
#define CX_STREAMING_ERR_BAD_FILE_SIZE -4
#define CX_STREAMING_ERR_BAD_FILE_TABLE -5

typedef struct CXUncompContextRL {
    u8* unk_0x00;  // 0x00
    int unk_0x04;  // 0x04
    int unk_0x08;  // 0x08
    u16 unk_0x0c;  // 0x0C
    u8 unk_0x0e;   // 0x0E
    u8 unk_0x0f;   // 0x0F
} CXUncompContextRL;

typedef struct CXUncompContextLZ {
    u8* unk_0x00;  // 0x00
    int unk_0x04;  // 0x04
    int unk_0x08;  // 0x08
    int unk_0x0c;  // 0x0C
    u8 unk_0x10;   // 0x10
    u8 unk_0x11;   // 0x11
    u8 unk_0x12;   // 0x12
    u8 unk_0x13;   // 0x13
    u8 unk_0x14;   // 0x14
    u8 padding[3];
} CXUncompContextLZ;

typedef union CXHuffmanDecodeTableEntry {
    u8 raw;
    struct {
        u8 leafR : 1;      // 10000000
        u8 leafL : 1;      // 01000000
        u8 idxOffset : 6;  // 00111111
    };
} CXHuffmanDecodeTableEntry;

typedef struct CXUncompContextHuffman {
    u32* outData;                                      // 0x00
    int outDataLen;                                    // 0x04
    int unk_0x08;                                      // 0x08
    CXHuffmanDecodeTableEntry* decodeTable;            // 0x0C
    u32 bits;                                          // 0x10
    u32 unk_0x14;                                      // 0x14
    s16 decodeTableSize;                               // 0x18
    u8 bitsLeft;                                       // 0x1A
    u8 unk_0x1b;                                       // 0x1B
    u8 depth;                                          // 0x1C
    u8 hdrLen;                                         // 0x1D
    u8 padding[2];                                     // 0x1E
    CXHuffmanDecodeTableEntry decodeTableData[0x200];  // 0x20
} CXUncompContextHuffman;

void CXInitUncompContextRL(CXUncompContextRL* context, u8* param_2);
void CXInitUncompContextLZ(CXUncompContextLZ* context, u8* param_2);
void CXInitUncompContextHuffman(CXUncompContextHuffman* context, u8* param_2);

CXStreamingResult CXReadUncompRL(CXUncompContextRL* context, const void* src, u32 size);
CXStreamingResult CXReadUncompLZ(CXUncompContextLZ* context, const void* src, u32 size);
CXStreamingResult CXReadUncompHuffman(CXUncompContextHuffman* context, const void* src, u32 size);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_CX_STREAMING_UNCOMPRESS_H
