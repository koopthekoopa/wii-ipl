#include "string.h"

#include <tmc_jpeg_internal.h>

static s32 TMCJPEGDEC_vl_decode_rc(u32* huff_tbl, u8* huff_sym, TMCJpegDecWork* work);

s32 TMCJPEGDEC_decode_iquant_rc(s32* block, u8* conv_row_ptr, u32* dc_predict_row_ptr, TMCJpegDecWork* work) {

    const u8* zztbl;
    u16* ac_fast;
    s32 t;
    s32 idx;
    s32 blk_size;

    u32 tmp;
    u32* ac_vl;
    u8* ac_sym;
    s32 r;
    s32 extra;
    s32 val;

    s32 blk_mul;
    s32 bit_pos;
    u32 bit_data;

    u16 *dcf;
    s32* conv_row;

    conv_row = (s32*)conv_row_ptr;
    dcf = work->mpDCFast;
    if (work->mBitCount <= 8) {
        if (r = TMCJPEGDEC_load_buff(work), r < 0)
            return r;
    }

    bit_pos = work->mBitCount;
    tmp = (work->mBitBuf >> (bit_pos - 8) & 0xFF) << 2;
    val = dcf[tmp >> 1];
    if (val != 0) {
        tmp = *(u16*)((u8*)dcf + tmp + 2);
        work->mBitCount -= val;
        val = tmp;
    } else {
        val = TMCJPEGDEC_vl_decode_rc(work->mpDCHuffTbl, work->mpDCHuffSym, work);
        if (val < 0) return val;
    }

    if (val != 0) {
        if (work->mBitCount <= val) {
            if (r = TMCJPEGDEC_load_buff(work), r < 0)
                return r;
        }
        tmp = 1UL << val;
        bit_pos = work->mBitCount - val;
        work->mBitCount = bit_pos;
        bit_data = work->mBitBuf;

        extra = tmp - 1;
        extra = extra & (bit_data >> bit_pos);
        if (tmp >> 1 > (u32)extra) {
            extra -= (tmp - 1);
        }
        dc_predict_row_ptr[0] += extra;
    }

    *block = dc_predict_row_ptr[0] * conv_row[0];

    ac_fast = work->mpACFast;
    ac_vl = work->mpACHuffTbl;
    ac_sym = work->mpACHuffSym;
    blk_size = work->mBlockSize;
    blk_mul = work->mBlockSizeMul;

    memset((u8*)block + 4, 0, blk_mul);

    zztbl = TMCJPEGDEC_Zigzag_data;
    idx = 1;
    do {
        if (work->mBitCount <= 8) {
            if (r = TMCJPEGDEC_load_buff(work), r < 0)
                return r;
        }

        {
            u16* ac_entry = (u16*)((u8*)ac_fast + ((work->mBitBuf >> (work->mBitCount - 8) & 0xFF) << 2));
            val = *ac_entry;
            if (val != 0) {
                tmp = val;
                val = *(ac_entry + 1);
                work->mBitCount -= tmp;
            } else {
                if (val = TMCJPEGDEC_vl_decode_rc(ac_vl, ac_sym, work), val < 0) return val;
            }
        }

        t = val & 0x0F;
        if (t != 0) {
            val = val >> 4;
            idx += val;

            if (work->mBitCount <= t) {
                if (r = TMCJPEGDEC_load_buff(work), r < 0) return r;
            }

            if (idx > blk_size) {
                work->mBitCount -= t;
                if (idx >= 64) return TMCC_ERROR_OVERFLOW;
                idx++;
            } else {
                bit_pos = work->mBitCount - t;
                work->mBitCount = bit_pos;
                bit_data = work->mBitBuf;

                tmp = 1UL << t;
                extra = tmp - 1;
                extra = extra & (bit_data >> bit_pos);
                if (tmp >> 1 > extra) {
                    extra -= tmp - 1;
                }

                if (idx >= 64) return TMCC_ERROR_OVERFLOW;
                *(s32*)((u8*)block + zztbl[idx] * 4) = extra * conv_row[zztbl[idx]];
                idx++;
            }
        } else {
            if (val == 0) return 0;
            idx += 16;
        }
    } while (idx < 64);

    return 0;
}

static s32 TMCJPEGDEC_vl_decode_rc(u32* huff_tbl, u8* huff_sym, TMCJpegDecWork* work) {
    s32 bit_pos;
    u32 bit_data;
    u16* entry;
    u32 code;
    unsigned int i;
    s32 r;

    bit_pos = work->mBitCount;

    if (bit_pos <= 17) {
        r = TMCJPEGDEC_load_buff(work);
        if (r < 0) return r;
    }

    bit_pos = work->mBitCount;
    entry = (u16*)((u8*)huff_tbl + 0x24);
    bit_data = work->mBitBuf;
    i = 9;
    bit_pos -= 9;
    code = (bit_data >> bit_pos) & 0x1FF;
    work->mBitCount = bit_pos;

    goto entry_check;

    do {
        i++;
        entry += 2;
        if (i > 16) return TMCC_ERROR_OVERFLOW;

        bit_pos = work->mBitCount;
        code <<= 1;
        bit_data = work->mBitBuf;
        bit_pos--;
        work->mBitCount = bit_pos;
        code |= (bit_data >> bit_pos) & 1;

entry_check:
        {
            typedef struct { u16 t; u16 o; } HuffEnt;
            HuffEnt local = *(HuffEnt*)entry;
            u32 combined = *(u32*)&local;
            u32 combined2 = combined;
            u16 th = *(u16*)&combined2;
            s32 tmp;

            if (code > (u32)th) continue;

            tmp = code - local.t;
            code = tmp + (u32)local.o;
        }
        return huff_sym[code & 0xFF];
    } while (1);
}
