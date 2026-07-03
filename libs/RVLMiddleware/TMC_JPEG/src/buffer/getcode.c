#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_init_buff_thumbnail(TMCJpegDecWork* work, u8* dst, u8* src) {
    u32 val;
    u32* src32;
    u32* dst32;
    u32 tmp;

    src32 = (u32*)src;
    dst32 = (u32*)dst;

    if (src32[1] == 0)
        return -1;
    if (src32[2] == 0)
        return -1;

    tmp = src32[0];
    dst32[6] = tmp;
    dst32[7] = src32[1];
    dst32[8] = src32[2];
    dst32[9] = src32[3];
    dst32[10] = src32[4];
    dst32[2] = tmp;

    val = work->mThumbHuffSize[2] + work->mThumbHuffSize[0];
    dst32[3] = val;
    val += work->mThumbHuffSize[1];
    dst32[8] = 0;
    dst32[4] = val;
    dst32[5] = val - 0x22;

    return 0;
}

void TMCJPEGDEC_init_buff(TMCJpegDecWork* work, s32 mode) {
    work->mBitBuf = 0;
    work->mBitCount = 0;
    TMCJPEGDEC_load_buff(work);
}

s32 TMCJPEGDEC_rewind_ptr(TMCJpegDecWork* work) {
    u32 bitBuf;
    s32 bitCount;
    bitBuf = work->mBitBuf;
    bitCount = work->mBitCount;
    bitCount -= 8;
    goto loop_test;

loop_body: {
    s32 r = TMCJPEGDEC_move_ptr(-1, work);
    if (r >= 0) goto check_ff;
    return r;
}

check_ff:
    if ((u8)bitBuf != 0xFF) goto shift;
    {
        s32 r = TMCJPEGDEC_move_ptr(-1, work);
        if (r >= 0) goto shift;
        return r;
    }

shift:
    bitBuf >>= 8;
    bitCount -= 8;

loop_test:
    if (bitCount >= 0) goto loop_body;

    work->mBitCount = 0;
    work->mBitBuf = 0;
    return 0;
}
