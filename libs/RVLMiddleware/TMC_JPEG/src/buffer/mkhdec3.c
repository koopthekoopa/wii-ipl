#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_make_huffdec(const u8* dht, const u8* tb, TMCHuffParam* hp) {
    u32 huffCount[256];
    u32 huffVal[256];
    u32* huffTable;
    u32* destTable;
    u8* valptr;
    u32 count;

    {
        u32* dest = huffCount;
        s32 bit_len = 1;
        s32 remaining = 1;
        const u8* bits = dht + 1;
        s32 sym_idx;

        huffTable = hp->huffTable;
        valptr = hp->valptr;
        destTable = hp->maxCode;
        count = hp->count;

        sym_idx = 0;

        for (;;) {
            s32 cnt = *bits;

            if (remaining > cnt) {
                bit_len++;
                remaining = 1;
                bits++;
                if (bit_len > 16) {
                    huffCount[sym_idx] = 0;
                    break;
                }
            } else {
                *dest = bit_len;
                dest++;
                sym_idx++;
                if (sym_idx > (s32)count) {
                    return -0x40;
                }
                remaining++;
            }
        }
    }

    {
        s32 sv_idx = 0;
        s32 i = 0;
        u32 cur = huffCount[0] & 0xFF;

        while (cur != 0) {
            while (i < (s32)count && (huffCount[i] & 0xFF) == cur) {
                huffVal[i] = sv_idx & 0xFFFF;
                sv_idx++;
                i++;
            }
            if (sv_idx > (1 << cur)) {
                return -0x40;
            }
            sv_idx <<= 1;
            cur = huffCount[i] & 0xFF;
        }
    }

    memset(valptr, 0, 0x44);

    {
        s32 i;

        for (i = 0; i < (s32)count; i++) {
            u32 bl = huffCount[i];

            if (bl <= 16) {
                valptr[bl] = (i << 16) | (huffVal[i] & 0xFFFF);
            }
        }
    }

    {
        const u8* bits_ptr = dht + 1;
        u32* hv_ptr = huffVal;
        s32 sym = 0;
        u32 bl;
        u32 cnt;
        u32 step;
        u32 n;
        u32 code;
        u32 base;
        s32 kk;

        for (bl = 1; bl <= 8; bl++) {
            cnt = *bits_ptr;
            step = 1 << (8 - bl);

            for (n = 0; n < cnt; n++) {
                code = *hv_ptr;
                hv_ptr++;
                base = code << (8 - bl);

                for (kk = 0; kk < (s32)step; kk++) {
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

void TMCJPEGDEC_set_HuffmanTable(TMCHuffParam* tbl, s32 tblType, s32 tblID, TMCUnknownInfo* work) {
    void* hufftable;
    void* maxcode;
    void* valptr;

    if (tblType == 0) {
        switch (tblID) {
            case 0: {
                hufftable = &work->zigzagData[8];
                maxcode = work->maxCodeDC0;
                tbl->huffTable = hufftable;
                tbl->maxCode = maxcode;
                tbl->valptr = work->valPtrDC0;
                work->huffTblInitFlag[0] = 1;
                memset(hufftable, 0, 0x400);
                memset(work->maxCodeDC0, 0, 0x10);
                memset(work->valPtrDC0, 0, 0x44);
                break;
            }
            case 1: {
                hufftable = work->huffDecTblDC1;
                maxcode = work->maxCodeDC1;
                valptr = work->valPtrDC1;
                tbl->huffTable = hufftable;
                tbl->maxCode = maxcode;
                tbl->valptr = valptr;
                work->huffTblInitFlag[1] = 1;
                memset(hufftable, 0, 0x400);
                memset(work->maxCodeDC1, 0, 0x10);
                memset(work->valPtrDC1, 0, 0x44);
                break;
            }
        }
    } else {
        switch (tblID) {
            case 0: {
                hufftable = work->huffDecTblAC0;
                maxcode = work->maxCodeAC0;
                valptr = work->valPtrAC0;
                tbl->huffTable = hufftable;
                tbl->maxCode = maxcode;
                tbl->valptr = valptr;
                work->huffTblInitFlag[2] = 1;
                memset(hufftable, 0, 0x400);
                memset(work->maxCodeAC0, 0, 0x100);
                memset(work->valPtrAC0, 0, 0x44);
                break;
            }
            case 1: {
                hufftable = work->huffDecTblAC1;
                maxcode = work->maxCodeAC1;
                valptr = work->valPtrAC1;
                tbl->huffTable = hufftable;
                tbl->maxCode = maxcode;
                tbl->valptr = valptr;
                work->huffTblInitFlag[3] = 1;
                memset(hufftable, 0, 0x400);
                memset(work->maxCodeAC1, 0, 0x100);
                memset(work->valPtrAC1, 0, 0x44);
                break;
            }
        }
    }
}
