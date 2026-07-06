#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_init_buff_thumbnail(TMCJpegDecWork* work, u8* dst, u8* src) {
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
    dst32[6] = src32[0];
    dst32[7] = src32[1];
    dst32[8] = src32[2];
    dst32[9] = src32[3];
    dst32[10] = src32[4];

    dst32[2] = tmp;
    dst32[3] = work->mThumbHuffSize[2] + work->mThumbHuffSize[0];
    dst32[4] = work->mThumbHuffSize[1] + dst32[3];
    dst32[5] = dst32[4] - 0x22;
    dst32[8] = 0;
    return 0;
}

s32 TMCJPEGDEC_init_buff(TMCJpegDecWork* work) {
    work->mBitBuf = 0;
    work->mBitCount = 0;
    return TMCJPEGDEC_load_buff(work);
}

s32 TMCJPEGDEC_rewind_ptr(TMCJpegDecWork* work) {
    u32 bitBuf = work->mBitBuf;
    s32 bitCount = work->mBitCount;

    bitCount -= 8;
    for (; bitCount >= 0; bitCount -= 8) {
        s32 r = TMCJPEGDEC_move_ptr(-1, work);
        if (r < 0)
            return r;

        if ((u8)bitBuf == 0xFF && (r = TMCJPEGDEC_move_ptr(-1, work), r < 0))
            return r;

        bitBuf >>= 8;
    }

    work->mBitCount = 0;
    work->mBitBuf = 0;
    return 0;
}
