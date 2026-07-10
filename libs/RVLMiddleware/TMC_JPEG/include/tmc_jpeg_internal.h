#ifndef TMC_JPEG_INTERNAL_H
#define TMC_JPEG_INTERNAL_H

#include <revolution/types.h>

#include <tmc_jpeg.h>

typedef s32(TMCDecodeFunc)(s32* block, u8* conv_row_ptr, u32* dcPredictRowPtr, TMCCJPEGDecWork* work);
typedef void(TMCIdctFunc)(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
typedef void(TMCConverterFunc)(TMCCJPEGDecWork*, s32 x, s32 y);

#ifdef __cplusplus
extern "C" {
#endif

// TODO: The following two structs are subsets of TMCCJPEGDecWork.
//       Their members in TMCCJPEGDecWork should eventually be removed and replaced with these structs as a member.
//       Some code accesses scaleFlag, frameWidth and convBuf as a pointer and uses them as a base to do further pointer arithmetic on,
//       so they likely were nested structs.
typedef struct {
    u8 scaleFlag;  // 0x00
    u8 unk_0x01[0x3E7];
    u8* pDCACPtrs[6];   // 0x03E8-0x03FF
    u8 zigzagData[64];  // 0x0400-0x043F
    u16* pDCFast;       // 0x0440
    u32* pDCHuffTbl;    // 0x0444
    u8* pDCHuffSym;     // 0x0448
    u32 unk_0x4A4;      // 0x044C
    u16* pACFast;       // 0x0450
    u32* pACHuffTbl;    // 0x0454
    u8* pACHuffSym;     // 0x0458
    u32 unk_0x4C5;
    u8 unk_0x460[0x1B4];
    u32 thumbHuffSize[3];  // 0x0614
    u8 unk_0x620[0x1E8];
    u8 huffDecTblDC1[0x400];  // 0x0808-0x0C07
    u8 huffDecTblAC0[0x400];  // 0x0C08-0x1007
    u8 huffDecTblAC1[0x400];  // 0x1008-0x1407
    u8 valPtrDC0[0x44];       // 0x1408-0x144B
    u8 valPtrDC1[0x44];       // 0x144C-0x148F
    u8 valPtrAC0[0x44];       // 0x1490-0x14D3
    u8 valPtrAC1[0x44];       // 0x14D4-0x1517
    u8 maxCodeDC0[0x10];      // 0x1518-0x1527
    u8 maxCodeDC1[0x10];      // 0x1528-0x1537
    u8 maxCodeAC0[0x100];     // 0x1538-0x1637
    u8 maxCodeAC1[0x100];     // 0x1638-0x1737
    u8 unk_0x1738[0x04];
    u8 huffTblInitFlag[4];  // 0x173C
    u8 unk_0x1740[0x50];
    u8 quantTblFlag[4];  // 0x1790
    u8 dcTblFlag[2];     // 0x1794
    u8 acTblFlag[2];     // 0x1796
} TMCUnknownInfo;

typedef struct {
    u16 frameWidth;     // 0x00
    u16 frameHeight;    // 0x02
    u32 mcuCount;       // 0x04
    u32 mcuRemCount;    // 0x08
    u8 componentCount;  // 0x0C
    u8 mcuXCount;       // 0x0D
    u8 mcuXRem;         // 0x0E
    u8 mcuYRem;         // 0x0F
    u16 mcuYCount;      // 0x10
    u16 mcuXCount2;     // 0x12
    u32 unk_0x14;
    u8 unk_0x18;
    u8 unk_0x19;
    u8 compCount;         // 0x1A
    u8 scanCompCount;     // 0x1B
    u8 blockCount[4];     // 0x1C
    u8 hSampFactor[4];    // 0x20
    u8 vSampFactor[4];    // 0x24
    u8 maxHSamp;          // 0x28
    u8 maxVSamp;          // 0x29
    u16 restartInterval;  // 0x2A
    u8 scanCount;         // 0x2C
    u8 unk_0x2D[0x03];
} TMCJpegFrameInfo;

struct TMCCJPEGDecWork_t {
    u32 bitBuf;                   // 0x00
    s32 bitCount;                 // 0x04
    u8* pBufStart;                // 0x08
    u8* pBufCur;                  // 0x0C
    u8* pBufEnd;                  // 0x10
    u8* pBufMark;                 // 0x14
    u8* pBufOrg;                  // 0x18
    u32 bufLen;                   // 0x1C
    s32 remaining;                // 0x20
    TMCCReadCallback* pCallback;  // 0x24
    void* pCbCtx;                 // 0x28
    u8 compMap[4];                // 0x2C
    u32 dcPredict[4];             // 0x30
    u8 compId[4];                 // 0x40
    u8 compQTbl[4];               // 0x44
    u8 copDCTbl[4];               // 0x48
    u8 copACTbl[4];               // 0x4C
    u16 restartCnt;               // 0x50
    u16 rstMarkerIdx;             // 0x52
    u32 mcuPos;                   // 0x54
    // Section below is likely a nested struct
    u8 scaleFlag;  // 0x58
    u8 unk_0x59[0x3E7];
    u8* pDCACPtrs[6];   // 0x440
    u8 zigzagData[64];  // 0x458
    u16* pDCFast;       // 0x498
    u32* pDCHuffTbl;    // 0x49C
    u8* pDCHuffSym;     // 0x4A0
    u32 unk_0x4A4;
    u16* pACFast;     // 0x4A8
    u32* pACHuffTbl;  // 0x4AC
    u8* pACHuffSym;   // 0x4B0
    u8 unk_0x4B4[0x1B8];
    u32 thumbHuffSize[3];  // 0x66C
    u8 unk_0x678[0x1E8];
    u8 huffDecTblDC1[0x400];  // 0x860-0xC5F
    u8 huffDecTblAC0[0x400];  // 0xC60-0x105F
    u8 huffDecTblAC1[0x400];  // 0x1060-0x145F
    u8 valPtrDC0[0x44];       // 0x1460-0x14A3
    u8 valPtrDC1[0x44];       // 0x14A4-0x14E7
    u8 valPtrAC0[0x44];       // 0x14E8-0x152B
    u8 valPtrAC1[0x44];       // 0x152C-0x156F
    u8 maxCodeDC0[0x10];      // 0x1570-0x157F
    u8 maxCodeDC1[0x10];      // 0x1580-0x158F
    u8 maxCodeAC0[0x100];     // 0x1590-0x168F
    u8 maxCodeAC1[0x100];     // 0x1690-0x178F
    u8 unk_0x1790[0x04];
    u8 huffTblInitFlag[4];  // 0x1794
    u8 unk_0x1798[0x50];
    u8 quantTblFlag[4];  // 0x17E8
    u8 dcTblFlag[2];     // 0x17EC
    u8 acTblFlag[2];     // 0x17EE
    // Section below is likely a nested struct
    u16 frameWidth;     // 0x17F0
    u16 frameHeight;    // 0x17F2
    u32 mcuCount;       // 0x17F4
    u32 mcuRemCount;    // 0x17F8
    u8 componentCount;  // 0x17FC
    u8 mcuXCount;       // 0x17FD
    u8 mcuXRem;         // 0x17FE
    u8 mcuYRem;         // 0x17FF
    u16 mcuYCount;      // 0x1800
    u16 mcuXCount2;     // 0x1802
    u32 unk_0x1804;
    u8 unk_0x1808;
    u8 unk_0x1809;
    u8 compCount;         // 0x180A
    u8 scanCompCount;     // 0x180B
    u8 blockCount[4];     // 0x180C
    u8 hSampFactor[4];    // 0x1810
    u8 vSampFactor[4];    // 0x1814
    u8 maxHSamp;          // 0x1818
    u8 maxVSamp;          // 0x1819
    u16 restartInterval;  // 0x181A
    u8 scanCount;         // 0x181C
    u8 unk_0x181D[0x03];
    TMCIdctFunc* idctPtr;                  // 0x1820
    TMCIdctFunc* idctLumiPtr;              // 0x1824
    TMCDecodeFunc* decodePtr;              // 0x1828
    TMCConverterFunc* pConverterFunc;      // 0x182C
    TMCConverterFunc* pConverterFuncEdge;  // 0x1830
    u32 blockSize;                         // 0x1834
    u32 blockSizeMul;                      // 0x1838
    u8* pConvRowPtrs[7];                   // 0x183C
    u8 convBuf[0x184];                     // 0x1858
    u8 idctMode;                           // 0x19DC
    u8 unk_0x19DD;
    u16 pitch;          // 0x19DE
    u8 converterFlags;  // 0x19E0
    u8 unk_0x19E1[0x03];
    TMCCJPEGDecState* pState;  // 0x19E4
};

s32 TMCJPEGDEC_init_ptr_buff(TMCCJPEGDecWork* work, void* param);
s32 TMCJPEGDEC_get_byte(u8* dst, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_move_ptr(s32 offset, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_load_buff(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_get_position(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_chk_possible_size(TMCCJPEGDecWork* work);

s32 TMCJPEGDEC_init_buff_thumbnail(TMCCJPEGDecWork* work, u8* dst, u8* src);
s32 TMCJPEGDEC_init_buff(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_rewind_ptr(TMCCJPEGDecWork* work);

typedef struct {
    u32* huffTable;  // 0x00
    u8* valptr;      // 0x04
    u32* maxCode;    // 0x08
    u8 count;        // 0x0C
} TMCHuffParam;

s32 TMCJPEGDEC_make_huffdec(const u8* dht_spec, const u8* tbl, TMCHuffParam* hp);
void TMCJPEGDEC_set_HuffmanTable(TMCHuffParam* tbl, s32 tblType, s32 tblID, TMCUnknownInfo* work);

s32 TMCJPEGDEC_decompmcu(u32 maxMCU, u32 mcuCount, TMCCJPEGDecWork* work, void* buf);
s32 TMCJPEGDEC_imagestart(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_imageend(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_scanstart(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_scan_varinit(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_restart_interval(TMCCJPEGDecWork* work, u32 maxMCU, u32 mcuCount);
s32 TMCJPEGDEC_err_restart(TMCCJPEGDecWork* work);
void TMCJPEGDEC_set_entropytbl(TMCCJPEGDecWork* work, s32 idx, u8 data);

s32 TMCJPEGDEC_Decompscan(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_Setsize(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_HeaderAnalyze(TMCCJPEGDecWork* work);

void TMCJPEGDEC_IdctBlock_Lumi(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);

s32 TMCJPEGDEC_decode_iquant(s32* block, u8* conv_row_ptr, u32* dc_predict_row_ptr, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_decode_iquant_rc(s32* block, u8* conv_row_ptr, u32* dc_predict_row_ptr, TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_vl_decode_rc(u32* huff_tbl, u8* huff_sym, TMCCJPEGDecWork* work);

void TMCJPEGDEC_IdctBlock4x4(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock2x2(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock1x1(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock4x4_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock2x2_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);
void TMCJPEGDEC_IdctBlock1x1_Col(s32* block, u8* conv_row_ptr, u16 pitch, s32 zigzag);

s32 TMCJPEGDEC_set_converterY8U8V8(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_set_converterRGB565(TMCCJPEGDecWork* work);
s32 TMCJPEGDEC_set_converterRGBA8(TMCCJPEGDecWork* work);

extern const u8 TMCJPEGDEC_SampleH_N[24];
extern const u8 TMCJPEGDEC_SampleV_N[24];
extern const u8 TMCJPEGDEC_Zigzag_data[64];
extern const u32 TMCJPEGDEC_Zigzag_loop[64];
extern const u8 TMCJPEGDEC_SampleComps[6];

#ifdef __cplusplus
}
#endif

#endif  // TMC_JPEG_INTERNAL_H
