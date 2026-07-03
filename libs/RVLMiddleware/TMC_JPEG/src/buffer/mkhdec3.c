#include <tmc_jpeg_internal.h>

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

s32 TMCJPEGDEC_make_huffdec(const u8* dht, const u8* tb, TMCHuffParam* hp)
{
    u32 huffVal[256];
    u32 huffCount[256];
    u32* huffTable;
    u32* valptr;
    u32* destTable;
    s32 count;

    {
        u32* hc;
        s32 sym_idx;
        u32 remaining;
        u32 bit_len;
        u32 cnt;
        const u8* bits;

        count = hp->count;
        hc = huffCount;
        sym_idx = 0;
        remaining = 1;
        bit_len = 1;
        bits = dht + 1;

        for (;;)
        {
            cnt = *bits;
            if (remaining <= cnt)
            {
                sym_idx++;
                *hc = bit_len;
                hc++;
                if (sym_idx > count)
                    return -0x40;
                remaining++;
            }
            else
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
        }
    }

    huffTable = (u32*)hp->huffTable;
    valptr = (u32*)hp->valptr;
    destTable = (u32*)hp->destTable;

    {
        s32 i;
        u32 sv_idx;
        u32 code_counter;
        u32 cur;

        sv_idx = 0;
        code_counter = 0;
        i = 0;

        while (i < count)
        {
            cur = (u8)huffCount[i];
            if (cur == 0)
                break;

            while (i < count && (u8)huffCount[i] == cur)
            {
                huffVal[sv_idx] = (u16)code_counter;
                sv_idx++;
                code_counter++;
                i++;
            }

            if (sv_idx > (1u << cur))
                return -0x40;
            code_counter = (code_counter + 1) << 1;
        }
    }

    memset(valptr, 0, 0x44);

    {
        s32 i;
        u32 bl;
        u32 cd;

        for (i = 0; i < count; i++)
        {
            bl = huffCount[i];
            cd = huffVal[i];
            if (bl <= 16)
            {
                valptr[bl] = (i << 16) | cd;
            }
        }
    }

    {
        const u8* bits_ptr;
        u32* hv_ptr;
        s32 sym_idx;
        u32 bit_len;
        u32 step;
        s32 n;
        s32 kk;
        u32 cnt;
        u32 code;
        u32 base;

        sym_idx = 0;
        bits_ptr = dht + 1;
        hv_ptr = huffVal;

        for (bit_len = 1; bit_len <= 8; bit_len++)
        {
            cnt = *bits_ptr;
            step = 1 << (8 - bit_len);

            for (n = 0; n < (s32)cnt; n++)
            {
                code = *hv_ptr;
                base = code << (8 - bit_len);

                for (kk = 0; kk < (s32)step; kk++)
                {
                    ((u16*)huffTable)[(base + kk) * 2] = (u16)bit_len;
                    ((u16*)huffTable)[(base + kk) * 2 + 1] = (u16)tb[sym_idx];
                }

                hv_ptr++;
                sym_idx++;
            }

            bits_ptr++;
        }
    }

    memcpy(destTable, tb, count);

    return 0;
}
