#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_decode_iquant_rc(TMCCJPEGDecState* state, s32* block, u32* data, TMCJpegDecWork* work) {
    TMCCJPEGDecState* st;
    s32* bl;
    u32* dt;
    TMCJpegDecWork* wk;
    s32 bit_pos;
    u16* dc_fast;
    u32 bit_data;
    u16* ac_fast;
    u32* ac_vl;
    u8* ac_sym;
    s32 blk_size;
    s32 blk_mul;
    s32 idx;
    u32 tmp;
    s32 val;
    s32 extra;
    s32 r;
    s32 t;
    s32 zz;

    st = state;
    bl = block;
    dt = data;
    wk = work;

    {
        s32 bit_pos_check = work->mBitCount;
        dc_fast = work->mpDCFast;
        if (bit_pos_check <= 8) {
            r = TMCJPEGDEC_load_buff(wk);
            if (r < 0) return r;
        }
    }

    bit_pos = wk->mBitCount;
    bit_data = wk->mBitBuf;
    t = bit_pos - 8;
    tmp = bit_data >> t;
    tmp = (tmp & 0xFF) << 2;
    val = dc_fast[tmp >> 1];
    if (val != 0) {
        tmp = *(u16*)((u8*)dc_fast + tmp + 2);
        bit_pos -= val;
        wk->mBitCount = bit_pos;
        val = tmp;
    } else {
        val = TMCJPEGDEC_vl_decode_rc(wk->mpDCHuffTbl, wk->mpDCHuffSym, wk);
        if (val < 0) return val;
    }

    if (val != 0) {
        bit_pos = wk->mBitCount;
        if (bit_pos <= val) {
            r = TMCJPEGDEC_load_buff(wk);
            if (r < 0) return r;
            bit_pos = wk->mBitCount;
            bit_data = wk->mBitBuf;
        }
        bit_pos = wk->mBitCount;
        bit_data = wk->mBitBuf;
        tmp = 1 << val;
        extra = tmp - 1;
        bit_pos -= val;
        wk->mBitCount = bit_pos;
        extra = extra & (bit_data >> bit_pos);
        if ((tmp >> 1) <= (u32)extra) {
            extra = extra;
        } else {
            extra = extra - (tmp - 1);
        }
        dt[0] += extra;
    }

    *(s32*)((u8*)st + 0) = dt[0] * bl[0];

    ac_fast = wk->mpACFast;
    ac_vl = wk->mpACHuffTbl;
    ac_sym = wk->mpACHuffSym;
    blk_size = wk->mBlockSize;
    blk_mul = wk->mBlockSizeMul;

    memset((u8*)st + 4, 0, blk_mul);

    idx = 1;
    if (idx < 64) do {
        bit_pos = wk->mBitCount;
        if (bit_pos <= 8) {
            r = TMCJPEGDEC_load_buff(wk);
            if (r < 0) return r;
        }

        bit_pos = wk->mBitCount;
        bit_data = wk->mBitBuf;
        t = bit_pos - 8;
        tmp = bit_data >> t;
        tmp = (tmp & 0xFF) << 2;
        {
            u16* ac_entry = (u16*)((u8*)ac_fast + tmp);
            val = *ac_entry;
            if (val != 0) {
                bit_pos -= val;
                val = *(ac_entry + 1);
                wk->mBitCount = bit_pos;
            } else {
                val = TMCJPEGDEC_vl_decode_rc(ac_vl, ac_sym, wk);
                if (val < 0) return val;
            }
        }

        t = val & 0x0F;
        if (t != 0) {
            val = val >> 4;
            idx = idx + val;

            bit_pos = wk->mBitCount;
            if (bit_pos <= t) {
                r = TMCJPEGDEC_load_buff(wk);
                if (r < 0) return r;
            }

            if (idx > blk_size) {
                bit_pos = wk->mBitCount;
                bit_pos -= t;
                wk->mBitCount = bit_pos;
                if (idx >= 64) return -100;
                idx++;
            } else {
                bit_pos = wk->mBitCount;
                tmp = 1 << t;
                extra = tmp - 1;
                bit_pos -= t;
                wk->mBitCount = bit_pos;
                bit_data = wk->mBitBuf;
                extra = extra & (bit_data >> bit_pos);
                if ((tmp >> 1) <= (u32)extra) {
                    extra = extra;
                } else {
                    extra = extra - (tmp - 1);
                }

                if (idx >= 64) return -100;

                zz = TMCJPEGDEC_Zigzag_data[idx];
                zz = zz << 2;
                t = bl[zz >> 2];
                *(s32*)((u8*)st + zz) = extra * t;
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
        if (i > 16) return -100;

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

            if ((u32)code > (u32)th) continue;

            code = code - (u32)local.t + (u32)local.o;
        }
        return huff_sym[code & 0xFF];
    } while (1);
}
