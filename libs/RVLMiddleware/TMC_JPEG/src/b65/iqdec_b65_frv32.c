#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_decode_iquant(TMCCJPEGDecState* state,
                              void* block, u8* data,
                              s32 offset, s32 val) {
    u16* ac_fast;
    u8* huff_sym;
    u8* ac_sym;
    u32* huff_tbl;
    s32 bit_pos;
    u32 bit_data;
    u16* dc_fast;
    s32 r;
    s32 blk0;
    s32 idx;
    s32 extra;
    s32 t;
    s32 zz;
    s32 q;
    u32 tmp;
    u32 code;
    unsigned int i;
    u16* entry;
    s32 thresh;
    s32 offs;
    const u8* zztbl;

    bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
    dc_fast = ((TMCJpegDecWork*)offset)->mpDCFast;

    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
        if (r < 0) return r;
        bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
    }

    bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
    tmp = bit_pos - 8;
    tmp = ((bit_data >> tmp) & 0xFF) << 2;
    {
        u16* dc_entry = (u16*)((u8*)dc_fast + tmp);
        r = dc_entry[0];
        extra = dc_entry[1];
    }

    {
        volatile u32 dc_comb;
        *(u16*)&dc_comb = r;
        *((u16*)&dc_comb + 1) = extra;
    }

    if (r != 0) {
        bit_pos -= r;
        ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
        r = extra;
    } else {
        huff_sym = ((TMCJpegDecWork*)offset)->mpDCHuffSym;
        huff_tbl = ((TMCJpegDecWork*)offset)->mpDCHuffTbl;
        if (bit_pos <= 17) {
            r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
            if (r < 0) return r;
        }
        bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
        bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
        bit_pos -= 9;
        code = (bit_data >> bit_pos) & 0x1FF;
        ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;

        i = 9;
        entry = (u16*)((u8*)huff_tbl + 0x24);

        goto dc_entry;

        while (1) {
            i++;
            entry += 2;
            if (i > 16) { r = TMCC_ERROR_OVERFLOW; goto dc_end; }

            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            code <<= 1;
            bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
            bit_pos--;
            ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
            code |= (bit_data >> bit_pos) & 1;

        dc_entry:
            thresh = entry[0];
            offs = entry[1];

            {
                volatile u16 p[2];
                p[0] = thresh;
                p[1] = offs;
                tmp = *(u32*)p;
            }

            {
                volatile u32 cw;
                cw = tmp;
                thresh = *(u16*)&cw;
            }

            if ((u32)code > (u32)thresh) continue;

            code = code - entry[0] + offs;
            r = huff_sym[code & 0xFF];
            break;
        }

dc_end:
        if (r < 0) return r;
    }

    blk0 = ((s32*)block)[0];
    if (r != 0) {
        bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
        if (bit_pos <= r) {
            s32 load_ret = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
            if (load_ret < 0) return load_ret;
            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
        }
        bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
        tmp = 1 << r;
        extra = tmp - 1;
        bit_pos -= r;
        ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
        extra = extra & (bit_data >> bit_pos);
        if ((s32)tmp >> 1 <= extra) {
            extra = extra;
        } else {
            extra = extra - (tmp - 1);
        }
        ((u32*)data)[0] += extra;
    }

    *(s32*)state = ((u32*)data)[0] * blk0;

    ac_fast = ((TMCJpegDecWork*)offset)->mpACFast;
    huff_tbl = ((TMCJpegDecWork*)offset)->mpACHuffTbl;
    ac_sym = ((TMCJpegDecWork*)offset)->mpACHuffSym;

    memset((u8*)state + 4, 0, 0xFC);

    bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
    idx = 1;
    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
        if (r < 0) return r;
    }

    bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
    zztbl = TMCJPEGDEC_Zigzag_data;
    bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
    t = bit_pos - 8;
    {
        u32 tbl_idx = ((bit_data >> t) & 0xFF) << 2;
        thresh = ac_fast[tbl_idx >> 1];
        offs = *(u16*)((u8*)ac_fast + tbl_idx + 2);
    }

    {
        volatile u16 pre[2];
        pre[0] = thresh;
        pre[1] = offs;
        thresh = pre[0];
    }

    while (idx < 64) {
        if (thresh != 0) {
            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            bit_pos -= thresh;
            ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
            r = offs;
        } else {
            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            if (bit_pos <= 17) {
                r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
                if (r < 0) return r;
                bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            }
            bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
            bit_pos -= 9;
            code = (bit_data >> bit_pos) & 0x1FF;
            ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;

            i = 9;
            entry = (u16*)((u8*)huff_tbl + 0x24);

            goto ac_entry;

            while (1) {
                i++;
                entry += 2;
                if (i > 16) { r = TMCC_ERROR_OVERFLOW; goto ac_end; }

                bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
                code <<= 1;
                bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
                bit_pos--;
                ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
                code |= (bit_data >> bit_pos) & 1;

            ac_entry:
                thresh = entry[0];
                offs = entry[1];

                {
                    volatile u16 p[2];
                    p[0] = thresh;
                    p[1] = offs;
                    tmp = *(u32*)p;
                }

                {
                    volatile u32 cw;
                    cw = tmp;
                    thresh = *(u16*)&cw;
                }

                if ((u32)code > (u32)thresh) continue;

                code = code - entry[0] + offs;
                r = ac_sym[code & 0xFF];
                break;
            }

ac_end:
            if (r < 0) return r;
        }

        t = r & 0x0F;
        if (t != 0) {
            r >>= 4;
            idx += r;

            if (idx >= 64) return TMCC_ERROR_OVERFLOW;

            zz = zztbl[idx];

            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            if (bit_pos <= t + 8) {
                r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
                if (r < 0) return r;
                bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            }
            bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;

            tmp = 1 << t;
            extra = tmp - 1;
            bit_pos -= t;
            ((TMCJpegDecWork*)offset)->mBitCount = bit_pos;
            extra = extra & (bit_data >> bit_pos);
            if ((s32)tmp >> 1 <= extra) {
                extra = extra;
            } else {
                extra = extra - (tmp - 1);
            }

            q = ((s32*)block)[zz];
            ((s32*)state)[zz] = extra * q;

            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
            t = bit_pos - 8;
            tmp = ((bit_data >> t) & 0xFF) << 2;
            thresh = ac_fast[tmp >> 1];
            offs = *(u16*)((u8*)ac_fast + tmp + 2);

            {
                volatile u16 pre[2];
                pre[0] = thresh;
                pre[1] = offs;
                thresh = pre[0];
            }

            idx++;
        } else {
            if (r == 0) {
                break;
            }
            idx += 16;

            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            if (bit_pos <= 8) {
                r = TMCJPEGDEC_load_buff((TMCJpegDecWork*)offset);
                if (r < 0) return r;
            }
            bit_data = ((TMCJpegDecWork*)offset)->mBitBuf;
            bit_pos = ((TMCJpegDecWork*)offset)->mBitCount;
            t = bit_pos - 8;
            tmp = ((bit_data >> t) & 0xFF) << 2;
            thresh = ac_fast[tmp >> 1];
            offs = *(u16*)((u8*)ac_fast + tmp + 2);

            {
                volatile u16 pre[2];
                pre[0] = thresh;
                pre[1] = offs;
                thresh = pre[0];
            }
        }
    }

    if (idx > 64) return TMCC_ERROR_OVERFLOW;

    idx--;
    return TMCJPEGDEC_Zigzag_loop[idx];
}
