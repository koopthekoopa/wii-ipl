#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_decode_iquant(TMCCJPEGDecState* state,
                              void* block, u8* data,
                              s32 offset, s32 val) {
    TMCCJPEGDecState* st;
    s32* bl;
    TMCJpegDecWork* wk;
    u8* dt;
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
    s32 one;
    const u8* zztbl;

    st = state;
    bl = (s32*)block;
    dt = data;
    wk = (TMCJpegDecWork*)offset;
    one = 1;

    bit_pos = wk->mBitCount;
    dc_fast = wk->mpDCFast;

    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff(wk);
        if (r < 0) return r;
        bit_pos = wk->mBitCount;
    }

    bit_data = wk->mBitBuf;
    tmp = bit_pos - 8;
    tmp = ((bit_data >> tmp) & 0xFF) << 2;
    r = dc_fast[tmp >> 1];
    extra = *(u16*)((u8*)dc_fast + tmp + 2);

    {
        volatile u32 dc_comb;
        *(u16*)&dc_comb = r;
        *((u16*)&dc_comb + 1) = extra;
    }

    if (r != 0) {
        bit_pos -= r;
        wk->mBitCount = bit_pos;
        r = extra;
    } else {
        bit_pos = wk->mBitCount;
        if (bit_pos <= 17) {
            r = TMCJPEGDEC_load_buff(wk);
            if (r < 0) return r;
            bit_pos = wk->mBitCount;
        }
        huff_tbl = wk->mpDCHuffTbl;
        huff_sym = wk->mpDCHuffSym;
        bit_data = wk->mBitBuf;
        bit_pos -= 9;
        code = (bit_data >> bit_pos) & 0x1FF;
        wk->mBitCount = bit_pos;

        entry = (u16*)((u8*)huff_tbl + 0x24);
        i = 9;

        goto dc_entry;

        while (1) {
            i++;
            entry += 2;
            if (i > 16) { r = -100; goto dc_end; }

            bit_pos = wk->mBitCount;
            code <<= 1;
            bit_data = wk->mBitBuf;
            bit_pos--;
            wk->mBitCount = bit_pos;
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

    if (r != 0) {
        bit_pos = wk->mBitCount;
        if (bit_pos <= r) {
            r = TMCJPEGDEC_load_buff(wk);
            if (r < 0) return r;
            bit_pos = wk->mBitCount;
        }
        blk0 = bl[0];
        bit_data = wk->mBitBuf;
        tmp = one << r;
        extra = tmp - 1;
        bit_pos -= r;
        wk->mBitCount = bit_pos;
        extra = extra & (bit_data >> bit_pos);
        if ((s32)tmp >> 1 <= extra) {
            extra = extra;
        } else {
            extra = extra - (tmp - 1);
        }
        ((u32*)dt)[0] += extra;
    }

    *(s32*)st = ((u32*)dt)[0] * bl[0];

    ac_fast = wk->mpACFast;
    huff_tbl = wk->mpACHuffTbl;
    ac_sym = wk->mpACHuffSym;

    memset((u8*)st + 4, 0, 0xFC);

    idx = 1;

    bit_pos = wk->mBitCount;
    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff(wk);
        if (r < 0) return r;
        bit_pos = wk->mBitCount;
    }
    bit_data = wk->mBitBuf;
    zztbl = TMCJPEGDEC_Zigzag_data;
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

    while (idx < 64) {
        if (thresh != 0) {
            bit_pos = wk->mBitCount;
            bit_pos -= thresh;
            wk->mBitCount = bit_pos;
            r = offs;
        } else {
            bit_pos = wk->mBitCount;
            if (bit_pos <= 17) {
                r = TMCJPEGDEC_load_buff(wk);
                if (r < 0) return r;
                bit_pos = wk->mBitCount;
            }
            bit_data = wk->mBitBuf;
            bit_pos -= 9;
            code = (bit_data >> bit_pos) & 0x1FF;
            wk->mBitCount = bit_pos;

            entry = (u16*)((u8*)huff_tbl + 0x24);
            i = 9;

            goto ac_entry;

            while (1) {
                i++;
                entry += 2;
                if (i > 16) { r = -100; goto ac_end; }

                bit_pos = wk->mBitCount;
                code <<= 1;
                bit_data = wk->mBitBuf;
                bit_pos--;
                wk->mBitCount = bit_pos;
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

            if (idx >= 64) return -100;

            zz = zztbl[idx];

            bit_pos = wk->mBitCount;
            if (bit_pos <= t + 8) {
                r = TMCJPEGDEC_load_buff(wk);
                if (r < 0) return r;
                bit_pos = wk->mBitCount;
            }
            bit_data = wk->mBitBuf;

            tmp = one << t;
            extra = tmp - 1;
            bit_pos -= t;
            wk->mBitCount = bit_pos;
            extra = extra & (bit_data >> bit_pos);
            if ((s32)tmp >> 1 <= extra) {
                extra = extra;
            } else {
                extra = extra - (tmp - 1);
            }

            q = bl[zz];
            ((s32*)st)[zz] = extra * q;

            bit_pos = wk->mBitCount;
            bit_data = wk->mBitBuf;
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

            bit_pos = wk->mBitCount;
            if (bit_pos <= 8) {
                r = TMCJPEGDEC_load_buff(wk);
                if (r < 0) return r;
            }
            bit_data = wk->mBitBuf;
            bit_pos = wk->mBitCount;
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

    if (idx > 64) return -100;

    idx--;
    return TMCJPEGDEC_Zigzag_loop[idx];
}
