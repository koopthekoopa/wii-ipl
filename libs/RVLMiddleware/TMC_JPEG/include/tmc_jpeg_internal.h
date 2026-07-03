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
    u8 unk_0x2C[0x2C];  // 0x2C
    u8 mScaleFlag;      // 0x58
    u8 unk_0x59[0x1797];
    u16 mFrameWidth;    // 0x17F0
    u8 unk_0x17F2[0x02];
    u32 mMCUCount;      // 0x17F4
    u32 mMCURemCount;   // 0x17F8
    u8 unk_0x17FC;
    u8 mMCUXCount;      // 0x17FD
    u8 mMCUXRem;        // 0x17FE
    u8 mMCUYRem;        // 0x17FF
    u16 mMCUYCount;     // 0x1800
    u16 mMCUXCount2;    // 0x1802
    u8 unk_0x1804[0x16];
    u16 mRestartInterval; // 0x181A
    u8 mScanCount;      // 0x181C
    u8 unk_0x181D[0x03];
    u32 mIdctPtr;       // 0x1820 (Col IDCT ptr)
    u32 mIdctLumiPtr;   // 0x1824 (Lumi IDCT ptr)
    u32 mDecodePtr;     // 0x1828 (decode_iquant ptr)
    u8 unk_0x182C[0x08];
    u32 mBlockSize;     // 0x1834
    u32 mBlockSizeMul;  // 0x1838
    u8 unk_0x183C[0x1A8];
    void* mpState;      // 0x19E4
} TMCJpegDecWork;

s32 TMCJPEGDEC_init_ptr_buff(TMCJpegDecWork* work, void* param);
s32 TMCJPEGDEC_get_byte(u8* dst, TMCJpegDecWork* work);
s32 TMCJPEGDEC_get_wbyte(u16* dst, TMCJpegDecWork* work);
s32 TMCJPEGDEC_get_sbyte(u8* dst, u32 count, TMCJpegDecWork* work);
s32 TMCJPEGDEC_move_ptr(s32 offset, TMCJpegDecWork* work);
s32 TMCJPEGDEC_load_buff(TMCJpegDecWork* work);
u32 TMCJPEGDEC_get_position(TMCJpegDecWork* work);
s32 TMCJPEGDEC_chk_possible_size(TMCJpegDecWork* work, s32 size);

s32 TMCJPEGDEC_init_buff_thumbnail(TMCJpegDecWork* work, u8* dst, u8* src);
void TMCJPEGDEC_init_buff(TMCJpegDecWork* work, s32 mode);
s32 TMCJPEGDEC_rewind_ptr(TMCJpegDecWork* work);

void TMCJPEGDEC_make_huffdec(TMCJpegDecWork* work);
void TMCJPEGDEC_set_HuffmanTable(void* tbl, void* data);

s32 TMCJPEGDEC_decompmcu(u32 maxMCU, u32 mcuCount, TMCJpegDecWork* work, void* buf);
s32 TMCJPEGDEC_imagestart(TMCJpegDecWork* work);
s32 TMCJPEGDEC_imageend(TMCJpegDecWork* work);
s32 TMCJPEGDEC_scanstart(TMCJpegDecWork* work);
s32 TMCJPEGDEC_scan_varinit(TMCJpegDecWork* work);
void TMCJPEGDEC_restart_interval(TMCJpegDecWork* work);
s32 TMCJPEGDEC_err_restart(TMCJpegDecWork* work);
void TMCJPEGDEC_set_entropytbl(TMCJpegDecWork* work, s32 idx, u8* data);

s32 TMCJPEGDEC_Decompscan(TMCJpegDecWork* work);
s32 TMCJPEGDEC_Setsize(TMCJpegDecWork* work);
s32 TMCJPEGDEC_HeaderAnalyze(TMCJpegDecWork* work);

void TMCJPEGDEC_IdctBlock_Lumi(s16* block, s16* buf, s32 pitch);
void TMCJPEGDEC_IdctBlock_Col(s16* block, s16* buf, s32 pitch);

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
