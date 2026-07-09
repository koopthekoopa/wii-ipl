#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_decode_iquant(s32* block, u8* conv_row_ptr, u32* dc_predict_row_ptr, TMCCJPEGDecWork* work) {
    volatile u32 ac_comb;
    u16* ac_fast;
    u8* huff_sym;
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
    const u8* zztbl;

    bit_pos = work->bitCount;
    dc_fast = work->pDCFast;

    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff(work);
        if (r < 0) {
            return r;
        }
        bit_pos = work->bitCount;
    }

    bit_data = work->bitBuf;
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
        work->bitCount = bit_pos;
        r = extra;
    } else {
        u32 code;
        unsigned int i;
        u16* entry;
        s32 thresh;
        s32 offs;

        huff_sym = work->pDCHuffSym;
        huff_tbl = work->pDCHuffTbl;

        if (bit_pos <= 17) {
            r = TMCJPEGDEC_load_buff(work);
            if (r < 0) {
                return r;
            }
        }
        bit_pos = work->bitCount;
        bit_data = work->bitBuf;
        bit_pos -= 9;
        code = (bit_data >> bit_pos) & 0x1FF;
        work->bitCount = bit_pos;

        i = 9;
        entry = (u16*)((u8*)huff_tbl + 0x24);

        goto dc_entry;

        while (1) {
            i++;
            entry += 2;
            if (i > 16) {
                r = TMCC_ERROR_OVERFLOW;
                goto dc_end;
            }

            bit_pos = work->bitCount;
            code <<= 1;
            bit_data = work->bitBuf;
            bit_pos--;
            work->bitCount = bit_pos;
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

            if (code > (u32)thresh) {
                continue;
            }

            code = code - entry[0] + offs;
            r = huff_sym[code & 0xFF];
            break;
        }

    dc_end:
        if (r < 0) {
            return r;
        }
    }

    blk0 = ((s32*)conv_row_ptr)[0];
    if (r != 0) {
        bit_pos = work->bitCount;
        if (bit_pos <= r) {
            s32 load_ret = TMCJPEGDEC_load_buff(work);
            if (load_ret < 0) {
                return load_ret;
            }
            bit_pos = work->bitCount;
        }
        bit_data = work->bitBuf;
        tmp = 1 << r;
        extra = tmp - 1;
        bit_pos -= r;
        work->bitCount = bit_pos;
        extra = extra & (bit_data >> bit_pos);
        if ((s32)tmp >> 1 <= extra) {
            extra = extra;
        } else {
            extra = extra - (tmp - 1);
        }
        dc_predict_row_ptr[0] += extra;
    }

    *block = dc_predict_row_ptr[0] * blk0;

    ac_fast = work->pACFast;
    huff_tbl = work->pACHuffTbl;
    huff_sym = work->pACHuffSym;

    memset((u8*)block + 4, 0, 0xFC);

    bit_pos = work->bitCount;
    idx = 1;
    if (bit_pos <= 8) {
        r = TMCJPEGDEC_load_buff(work);
        if (r < 0)
            return r;
    }

    bit_pos = work->bitCount;
    zztbl = TMCJPEGDEC_Zigzag_data;
    bit_data = work->bitBuf;
    t = bit_pos - 8;
    {
        u32 tbl_idx = ((bit_data >> t) & 0xFF) << 2;
        s32 thresh_val = ac_fast[tbl_idx >> 1];
        s32 offs_val = *(u16*)((u8*)ac_fast + tbl_idx + 2);
        *(u16*)&ac_comb = thresh_val;
        *((u16*)&ac_comb + 1) = offs_val;
    }

    while (idx < 64) {
        s32 ac_thresh = *(u16*)&ac_comb;
        if (ac_thresh != 0) {
            bit_pos = work->bitCount;
            bit_pos -= ac_thresh;
            work->bitCount = bit_pos;
            r = *((u16*)&ac_comb + 1);
        } else {
            u32 code;
            unsigned int i;
            u16* entry;
            s32 thresh;
            s32 offs;

            bit_pos = work->bitCount;
            if (bit_pos <= 17) {
                r = TMCJPEGDEC_load_buff(work);
                if (r < 0) {
                    return r;
                }
                bit_pos = work->bitCount;
            }
            bit_data = work->bitBuf;
            bit_pos -= 9;
            code = (bit_data >> bit_pos) & 0x1FF;
            work->bitCount = bit_pos;

            i = 9;
            entry = (u16*)((u8*)work->pACHuffTbl + 0x24);

            goto ac_entry_huff;

            while (1) {
                i++;
                entry += 2;
                if (i > 16) {
                    r = TMCC_ERROR_OVERFLOW;
                    goto ac_end;
                }

                bit_pos = work->bitCount;
                code <<= 1;
                bit_data = work->bitBuf;
                bit_pos--;
                work->bitCount = bit_pos;
                code |= (bit_data >> bit_pos) & 1;

            ac_entry_huff:
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

                if (code > (u32)thresh) {
                    continue;
                }

                code = code - entry[0] + offs;
                r = huff_sym[code & 0xFF];
                break;
            }

        ac_end:
            if (r < 0) {
                return r;
            }
        }

        t = r & 0x0F;
        if (t != 0) {
            r >>= 4;
            idx += r;

            if (idx >= 64) {
                return TMCC_ERROR_OVERFLOW;
            }

            zz = zztbl[idx];

            bit_pos = work->bitCount;
            if (bit_pos <= t + 8) {
                r = TMCJPEGDEC_load_buff(work);
                if (r < 0) {
                    return r;
                }
                bit_pos = work->bitCount;
            }
            tmp = 1 << t;
            bit_data = work->bitBuf;
            extra = tmp - 1;
            bit_pos -= t;
            work->bitCount = bit_pos;
            t = bit_pos - 8;
            {
                u32 next_tbl = ((bit_data >> t) & 0xFF) << 2;
                s32 next_th = ac_fast[next_tbl >> 1];
                s32 next_of = *(u16*)((u8*)ac_fast + next_tbl + 2);
                extra = extra & (bit_data >> bit_pos);
                *(u16*)&ac_comb = next_th;
                *((u16*)&ac_comb + 1) = next_of;
            }

            if ((s32)tmp >> 1 <= extra) {
                extra = extra;
            } else {
                extra = extra - (tmp - 1);
            }

            q = ((s32*)conv_row_ptr)[zz];
            block[zz] = extra * q;

            idx++;
        } else {
            if (r == 0) {
                break;
            }
            bit_pos = work->bitCount;
            if (bit_pos <= 8) {
                r = TMCJPEGDEC_load_buff(work);
                if (r < 0) {
                    return r;
                }
            }
            bit_data = work->bitBuf;
            bit_pos = work->bitCount;
            t = bit_pos - 8;
            tmp = ((bit_data >> t) & 0xFF) << 2;
            {
                s32 next_thresh = ac_fast[tmp >> 1];
                s32 next_offs = *(u16*)((u8*)ac_fast + tmp + 2);
                *(u16*)&ac_comb = next_thresh;
                *((u16*)&ac_comb + 1) = next_offs;
            }

            idx += 16;
        }
    }

    if (idx > 64) {
        return TMCC_ERROR_OVERFLOW;
    }

    idx--;
    return TMCJPEGDEC_Zigzag_loop[idx];
}
