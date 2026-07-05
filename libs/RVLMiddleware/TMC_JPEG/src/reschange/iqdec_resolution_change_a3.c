#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_decode_iquant_rc(TMCCJPEGDecState* state, s32* block, u32* data, TMCJpegDecWork* work) {
    s32 bit_pos;
    u32 bit_data;
    u32* ac_vl;
    u16* ac_fast;
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

    u32 tmp2;
    const u8* zztbl;

    {
        u16* dcf = work->mpDCFast;
        bit_pos = work->mBitCount;
        if (bit_pos <= 8) {
            r = TMCJPEGDEC_load_buff(work);
            if (r < 0) return r;
        }

        bit_pos = work->mBitCount;
        bit_data = work->mBitBuf;
        t = bit_pos - 8;
        tmp = bit_data >> t;
        tmp = (tmp & 0xFF) << 2;
        val = dcf[tmp >> 1];
        if (val != 0) {
            tmp = *(u16*)((u8*)dcf + tmp + 2);
            bit_pos -= val;
            work->mBitCount = bit_pos;
            val = tmp;
        } else {
            val = TMCJPEGDEC_vl_decode_rc(work->mpDCHuffTbl, work->mpDCHuffSym, work);
            if (val < 0) return val;
        }
    }

    if (val != 0) {
        bit_pos = work->mBitCount;
        if (bit_pos <= val) {
            r = TMCJPEGDEC_load_buff(work);
            if (r < 0) return r;
        }
        tmp = 1;
        bit_pos = work->mBitCount;
        tmp = tmp << val;
        bit_data = work->mBitBuf;
        extra = tmp - 1;
        bit_pos -= val;
        work->mBitCount = bit_pos;
        extra = extra & (bit_data >> bit_pos);
        if ((tmp >> 1) <= (u32)extra) {
            extra = extra;
        } else {
            extra = extra - (tmp - 1);
        }
        data[0] += extra;
    }

    *(s32*)state = data[0] * block[0];

    ac_fast = work->mpACFast;
    ac_vl = work->mpACHuffTbl;
    ac_sym = work->mpACHuffSym;
    blk_size = work->mBlockSize;
    blk_mul = work->mBlockSizeMul;

    memset((u8*)state + 4, 0, blk_mul);

    zztbl = TMCJPEGDEC_Zigzag_data;
    idx = 1;
    if (idx < 64) do {
        bit_pos = work->mBitCount;
        if (bit_pos <= 8) {
            r = TMCJPEGDEC_load_buff(work);
            if (r < 0) return r;
        }

        bit_pos = work->mBitCount;
        bit_data = work->mBitBuf;
        t = bit_pos - 8;
        tmp = bit_data >> t;
        tmp = (tmp & 0xFF) << 2;
        {
            u16* ac_entry = (u16*)((u8*)ac_fast + tmp);
            val = *ac_entry;
            if (val != 0) {
                bit_pos -= val;
                val = *(ac_entry + 1);
                work->mBitCount = bit_pos;
            } else {
                val = TMCJPEGDEC_vl_decode_rc(ac_vl, ac_sym, work);
                if (val < 0) return val;
            }
        }

        t = val & 0x0F;
        if (t != 0) {
            val = val >> 4;
            idx = idx + val;

            bit_pos = work->mBitCount;
            if (bit_pos <= t) {
                r = TMCJPEGDEC_load_buff(work);
                if (r < 0) return r;
            }

            if (idx > blk_size) {
                bit_pos = work->mBitCount;
                bit_pos -= t;
                work->mBitCount = bit_pos;
                if (idx >= 64) return -100;
                idx++;
            } else {
                bit_pos = work->mBitCount;
                tmp = 1 << t;
                extra = tmp - 1;
                bit_pos -= t;
                work->mBitCount = bit_pos;
                bit_data = work->mBitBuf;
                extra = extra & (bit_data >> bit_pos);
                if ((tmp >> 1) <= (u32)extra) {
                    extra = extra;
                } else {
                    extra = extra - (tmp - 1);
                }

                if (idx >= 64) return -100;

                zz = zztbl[idx];
                t = block[zz];
                *(s32*)((u8*)state + zz * 4) = extra * t;
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
            s32 tmp;

            if ((u32)code > (u32)th) continue;

            tmp = code - local.t;
            code = tmp + (u32)local.o;
        }
        return huff_sym[code & 0xFF];
    } while (1);
}
