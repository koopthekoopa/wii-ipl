#ifndef TMC_JPEG_INTERNAL_H
#define TMC_JPEG_INTERNAL_H

#include <tmc_jpeg.h>
#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u32 mBitBuf;        // 0x00
    u32 mBitCount;      // 0x04
    u8* mpBufStart;     // 0x08
    u8* mpBufCur;       // 0x0C
    u8* mpBufEnd;       // 0x10
    u8* mpBufMark;      // 0x14
    u8* mpBufOrg;       // 0x18
    u32 mBufLen;        // 0x1C
    s32 mRemaining;     // 0x20
    void* mpCallback;   // 0x24
    void* mpCbCtx;      // 0x28
    u8 mCompMap[4];     // 0x2C
    u32 mDCPredict[4];  // 0x30
    u8 mCompId[4];      // 0x40
    u8 mCompQTbl[4];    // 0x44
    u8 mCompDCTbl[4];   // 0x48
    u8 mCompACTbl[4];   // 0x4C
    u16 mRestartCnt;    // 0x50
    u16 mRstMarkerIdx;  // 0x52
    u32 mMcuPos;        // 0x54
    u8 mScaleFlag;           // 0x58
    u8 unk_0x59[0x3E7];
    void* mDCACPtrs[6];      // 0x440
    u8 mZigzagData[64];      // 0x458
    u16* mpDCFast;           // 0x498
    u32* mpDCHuffTbl;        // 0x49C
    u8* mpDCHuffSym;         // 0x4A0
    u32 unk_0x4A4;           // 0x4A4
    u16* mpACFast;           // 0x4A8
    u32* mpACHuffTbl;        // 0x4AC
    u8* mpACHuffSym;         // 0x4B0
    u8 unk_0x4B4[0x1B8];
    u32 mThumbHuffSize[3];       // 0x66C
    u8 unk_0x678[0x1E8];
    u8 mHuffDecTbl_DC1[0x400];       // 0x860-0xC5F
    u8 mHuffDecTbl_AC0[0x400];       // 0xC60-0x105F
    u8 mHuffDecTbl_AC1[0x400];       // 0x1060-0x145F
    u8 mValPtr_DC0[0x44];            // 0x1460-0x14A3
    u8 mValPtr_DC1[0x44];            // 0x14A4-0x14E7
    u8 mValPtr_AC0[0x44];            // 0x14E8-0x152B
    u8 mValPtr_AC1[0x44];            // 0x152C-0x156F
    u8 mMaxCode_DC0[0x10];           // 0x1570-0x157F
    u8 mMaxCode_DC1[0x10];           // 0x1580-0x158F
    u8 mMaxCode_AC0[0x100];          // 0x1590-0x168F
    u8 mMaxCode_AC1[0x100];          // 0x1690-0x178F
    u8 unk_0x1790[0x04];
    u8 mHuffTblInitFlag[4];      // 0x1794
    u8 unk_0x1798[0x50];
    u8 mQuantTblFlag[4];         // 0x17E8
    u8 mDCTblFlag[2];            // 0x17EC
    u8 mACTblFlag[2];            // 0x17EE
    u16 mFrameWidth;         // 0x17F0
    u16 mFrameHeight;   // 0x17F2
    u32 mMCUCount;      // 0x17F4
    u32 mMCURemCount;   // 0x17F8
    u8 mComponentCount; // 0x17FC
    u8 mMCUXCount;      // 0x17FD
    u8 mMCUXRem;        // 0x17FE
    u8 mMCUYRem;        // 0x17FF
    u16 mMCUYCount;     // 0x1800
    u16 mMCUXCount2;    // 0x1802
    u32 unk_0x1804;     // 0x1804
    u8 unk_0x1808;      // 0x1808
    u8 unk_0x1809;      // 0x1809
    u8 mCompCount;      // 0x180A
    u8 mScanCompCount;  // 0x180B
    u8 mBlockCount[4];  // 0x180C
    u8 mHSampFactor[4];  // 0x1810
    u8 mVSampFactor[4]; // 0x1814
    u8 mMaxHSamp;       // 0x1818
    u8 mMaxVSamp;       // 0x1819
    u16 mRestartInterval; // 0x181A
    u8 mScanCount;      // 0x181C
    u8 unk_0x181D[0x03];
    void* mIdctPtr;     // 0x1820
    void* mIdctLumiPtr; // 0x1824
    void* mDecodePtr;   // 0x1828
    void* mpConverterFunc;    // 0x182C
    void* mpConverterFuncEdge; // 0x1830
    u32 mBlockSize;     // 0x1834
    u32 mBlockSizeMul;  // 0x1838
    void* mpConvRowPtrs[7]; // 0x183C
    u8 mConvBuf[0x184];
    u8 mIdctMode;       // 0x19DC
    u8 unk_0x19DD;      // 0x19DD
    u16 mPitch;         // 0x19DE
    u8 mConverterFlags; // 0x19E0
    u8 unk_0x19E1[0x03];
    TMCCJPEGDecState* mpState;      // 0x19E4
} TMCJpegDecWork;

s32 TMCJPEGDEC_init_ptr_buff(TMCJpegDecWork* work, void* param);
s32 TMCJPEGDEC_get_byte(u8* dst, TMCJpegDecWork* work);
s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCJpegDecWork* work);
s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCJpegDecWork* work);
s32 TMCJPEGDEC_move_ptr(s32 offset, TMCJpegDecWork* work);
s32 TMCJPEGDEC_load_buff(TMCJpegDecWork* work);
u32 TMCJPEGDEC_get_position(TMCJpegDecWork* work);
s32 TMCJPEGDEC_chk_possible_size(TMCJpegDecWork* work);

s32 TMCJPEGDEC_init_buff_thumbnail(TMCJpegDecWork* work, u8* dst, u8* src);
void TMCJPEGDEC_init_buff(TMCJpegDecWork* work, s32 mode);
s32 TMCJPEGDEC_rewind_ptr(TMCJpegDecWork* work);

// Huffman table set (three pointers stored by set_HuffmanTable)
typedef struct {
    void* hufftable; // 0x00
    void* valptr;    // 0x04
    void* maxcode;   // 0x08
} TMCHuffTblSet;

// Parameter block for make_huffdec
typedef struct {
    u32* huffTable;  // 0x00
    u32* valptr;     // 0x04
    u32* destTable;  // 0x08
    u8 count;        // 0x0C
} TMCHuffParam;

s32 TMCJPEGDEC_make_huffdec(const u8* dht_spec, const u8* tbl, TMCHuffParam* hp);
void TMCJPEGDEC_set_HuffmanTable(TMCHuffTblSet* tbl, s32 tblType, s32 tblID, TMCJpegDecWork* work);

s32 TMCJPEGDEC_decompmcu(u32 maxMCU, u32 mcuCount, TMCJpegDecWork* work, void* buf);
s32 TMCJPEGDEC_imagestart(TMCJpegDecWork* work);
s32 TMCJPEGDEC_imageend(TMCJpegDecWork* work);
s32 TMCJPEGDEC_scanstart(TMCJpegDecWork* work);
s32 TMCJPEGDEC_scan_varinit(TMCJpegDecWork* work);
void TMCJPEGDEC_restart_interval(TMCJpegDecWork* work);
s32 TMCJPEGDEC_err_restart(TMCJpegDecWork* work);
void TMCJPEGDEC_set_entropytbl(TMCJpegDecWork* work, s32 idx, u8 data);

s32 TMCJPEGDEC_Decompscan(TMCJpegDecWork* work);
s32 TMCJPEGDEC_Setsize(TMCJpegDecWork* work);
s32 TMCJPEGDEC_HeaderAnalyze(TMCJpegDecWork* work);

void TMCJPEGDEC_IdctBlock_Lumi(s32* block, u8* buf, s32 pitch, s32 count);
void TMCJPEGDEC_IdctBlock_Col(s32* block, u8* buf, s32 pitch, s32 count);

s32 TMCJPEGDEC_decode_iquant(TMCCJPEGDecState* state,
                              void* block, u8* data,
                              s32 offset, s32 val);
s32 TMCJPEGDEC_decode_iquant_rc(TMCCJPEGDecState* state,
                                 s32* block, u32* data,
                                 TMCJpegDecWork* work);
s32 TMCJPEGDEC_vl_decode_rc(u32* huff_tbl, u8* huff_sym,
                              TMCJpegDecWork* work);

void TMCJPEGDEC_IdctBlock4x4(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock2x2(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock1x1(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock4x4_Col(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock2x2_Col(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock1x1_Col(s16* block, s16* buf, s32 pitch);

s32 TMCJPEGDEC_set_converterY8U8V8(TMCJpegDecWork* work);
s32 TMCJPEGDEC_set_converterRGB565(TMCJpegDecWork* work);
s32 TMCJPEGDEC_set_converterRGBA8(TMCJpegDecWork* work);

extern const u8 TMCJPEGDEC_SampleH_N[24];
extern const u8 TMCJPEGDEC_SampleV_N[24];
extern const u8 TMCJPEGDEC_Zigzag_data[64];
extern const u32 TMCJPEGDEC_Zigzag_loop[64];
extern const u8 TMCJPEGDEC_SampleComps[6];

#ifdef __cplusplus
}
#endif

#endif // TMC_JPEG_INTERNAL_H
