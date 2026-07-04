#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_make_huffdec(const u8* dht, const u8* tb, TMCHuffParam* hp)
{
    u32 huffCount[256];
    u32 huffVal[256];
    u32* huffTable;
    u32* valptr;
    u32* destTable;
    u32 count;
    u32 one;
    s32 sym_idx;
    u32 remaining;
    u32 bit_len;
    const u8* bits;

    remaining = 1;
    bit_len = 1;
    bits = dht + 1;
    sym_idx = 0;

    count = hp->count;
    huffTable = (u32*)hp->huffTable;
    valptr = (u32*)hp->valptr;
    destTable = (u32*)hp->destTable;

    for (;;)
    {
        u32 cnt;

        cnt = *bits;
        if (remaining > cnt)
        {
            bit_len++;
            remaining = 1;
            bits++;
            if (bit_len > 16)
            {
                huffCount[sym_idx] = 0;
                break;
            }
        }
        else
        {
            huffCount[sym_idx] = bit_len;
            sym_idx++;
            if (sym_idx > (s32)count)
                return -0x40;
            remaining++;
        }
    }

    {
        u32* hv;
        s32 i;
        u32 sv_idx;
        u32 cur;

        hv = huffVal;
        i = 0;
        sv_idx = 0;
        one = 1;
        cur = huffCount[0] & 0xFF;

        while (cur != 0)
        {
            while (i < (s32)count && (huffCount[i] & 0xFF) == cur) {
                hv[0] = sv_idx & 0xFFFF;
                hv++;
                sv_idx++;
                i++;
            }
            if (sv_idx > (one << cur))
                return -0x40;
            sv_idx <<= 1;
            cur = huffCount[i] & 0xFF;
        }
    }

    memset(valptr, 0, 0x44);

    {
        s32 i;

        for (i = 0; i < (s32)count; i++)
        {
            u32 bl;

            bl = huffCount[i];
            if (bl <= 16)
            {
                valptr[bl] = (i << 16) | (huffVal[i] & 0xFFFF);
            }
        }
    }

    {
        const u8* bits_ptr;
        u32* hv_ptr;
        s32 sym;
        u32 bl;

        bits_ptr = dht + 1;
        hv_ptr = huffVal;
        sym = 0;

        for (bl = 1; bl <= 8; bl++)
        {
            u32 cnt;
            u32 step;
            u32 n;

            cnt = *bits_ptr;
            step = 1 << (8 - bl);

            for (n = 0; n < cnt; n++)
            {
                u32 code;
                u32 base;
                s32 kk;

                code = *hv_ptr;
                hv_ptr++;
                base = code << (8 - bl);

                for (kk = 0; kk < (s32)step; kk++)
                {
                    ((u16*)huffTable)[(base + kk) * 2] = bl;
                    ((u16*)huffTable)[(base + kk) * 2 + 1] = tb[sym];
                }

                sym++;
            }

            bits_ptr++;
        }
    }

    memcpy(destTable, tb, count);

    return 0;
}

void TMCJPEGDEC_set_HuffmanTable(TMCHuffTblSet* tbl, s32 tblType, s32 tblID,
                                 TMCJpegDecWork* work)
{
    void* hufftable;
    register void* maxcode;
    void* valptr;

    if (tblType != 0) goto ac_dispatch;

    if (tblID == 1) goto dc1;
    if (tblID >= 1) return;
    if (tblID >= 0) goto dc0;
    return;

dc0:
    hufftable = &work->mZigzagData[8];
    maxcode = work->mMaxCode_DC0;
    tbl->hufftable = hufftable;
    tbl->maxcode = maxcode;
    tbl->valptr = work->mValPtr_DC0;
    work->mHuffTblInitFlag[0] = 1;
    memset(hufftable, 0, 0x400);
    memset(work->mMaxCode_DC0, 0, 0x10);
    memset(work->mValPtr_DC0, 0, 0x44);
    return;

dc1:
    hufftable = work->mHuffDecTbl_DC1;
    maxcode = work->mMaxCode_DC1;
    valptr = work->mValPtr_DC1;
    tbl->hufftable = hufftable;
    tbl->maxcode = maxcode;
    tbl->valptr = valptr;
    work->mHuffTblInitFlag[1] = 1;
    memset(hufftable, 0, 0x400);
    memset(work->mMaxCode_DC1, 0, 0x10);
    memset(work->mValPtr_DC1, 0, 0x44);
    return;

ac_dispatch:
    if (tblID == 1) goto ac1;
    if (tblID >= 1) return;
    if (tblID >= 0) goto ac0;
    return;

ac0:
    hufftable = work->mHuffDecTbl_AC0;
    maxcode = work->mMaxCode_AC0;
    valptr = work->mValPtr_AC0;
    tbl->hufftable = hufftable;
    tbl->maxcode = maxcode;
    tbl->valptr = valptr;
    work->mHuffTblInitFlag[2] = 1;
    memset(hufftable, 0, 0x400);
    memset(work->mMaxCode_AC0, 0, 0x100);
    memset(work->mValPtr_AC0, 0, 0x44);
    return;

ac1:
    hufftable = work->mHuffDecTbl_AC1;
    maxcode = work->mMaxCode_AC1;
    valptr = work->mValPtr_AC1;
    tbl->hufftable = hufftable;
    tbl->maxcode = maxcode;
    tbl->valptr = valptr;
    work->mHuffTblInitFlag[3] = 1;
    memset(hufftable, 0, 0x400);
    memset(work->mMaxCode_AC1, 0, 0x100);
    memset(work->mValPtr_AC1, 0, 0x44);
    return;
}
