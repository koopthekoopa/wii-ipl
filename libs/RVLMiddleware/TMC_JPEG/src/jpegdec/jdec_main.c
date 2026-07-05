#define TMCJPEGDEC_restart_interval __hidden_restart_interval
#define TMCJPEGDEC_init_buff __hidden_init_buff
#include <tmc_jpeg_internal.h>
#undef TMCJPEGDEC_restart_interval
#undef TMCJPEGDEC_init_buff

extern void* memset(void* dest, s32 val, u32 count);

extern const u32 lbl_8161E080[64] = {
    0x00000100, 0x000000B9, 0x000000C4, 0x000000DA,
    0x00000100, 0x00000146, 0x000001D9, 0x000003A0,
    0x000000B9, 0x00000085, 0x0000008D, 0x0000009D,
    0x000000B9, 0x000000EB, 0x00000155, 0x0000029D,
    0x000000C4, 0x0000008D, 0x00000096, 0x000000A7,
    0x000000C4, 0x000000F9, 0x0000016A, 0x000002C6,
    0x000000DA, 0x0000009D, 0x000000A7, 0x000000B9,
    0x000000DA, 0x00000115, 0x00000192, 0x00000315,
    0x00000100, 0x000000B9, 0x000000C4, 0x000000DA,
    0x00000100, 0x00000146, 0x000001D9, 0x000003A0,
    0x00000146, 0x000000EB, 0x000000F9, 0x00000115,
    0x00000146, 0x0000019F, 0x0000025A, 0x0000049D,
    0x000001D9, 0x00000155, 0x0000016A, 0x00000192,
    0x000001D9, 0x0000025A, 0x0000036A, 0x000006B2,
    0x000003A0, 0x0000029D, 0x000002C6, 0x00000315,
    0x000003A0, 0x0000049D, 0x000006B2, 0x00000D23
};

static s32 TMCJPEGDEC_parse_para(u16* marker, TMCJpegDecWork* work);
static s32 TMCJPEGDEC_parse_dht(s32 first, TMCJpegDecWork* work);
static s32 TMCJPEGDEC_parse_dqt(TMCJpegDecWork* work);
static s32 TMCJPEGDEC_parse_sof(TMCJpegDecWork* work);
static s32 TMCJPEGDEC_parse_sos(TMCJpegDecWork* work);
void TMCJPEGDEC_init_buff(TMCJpegDecWork* work, s32 mode);
s32 TMCJPEGDEC_restart_interval(TMCJpegDecWork* work, u32 maxMCU, u32 mcuCount);

s32 TMCJPEGDEC_decompmcu(u32 maxMCU, u32 mcuCount, TMCJpegDecWork* work, void* buf)
{
    u8* compMapBase = (u8*)work + 0x2c;
    u8* compMapPtr = compMapBase;
    u8* frameInfo = (u8*)work + 0x17f0;
    u8* scaleInfo = (u8*)work + 0x58;
    u8* convRowPtrs = (u8*)work + 0x183c;
    u8* mcuDataInfo = compMapBase + 4;
    void* decodeFunc = work->mDecodePtr;
    void* idctFunc = work->mIdctPtr;
    void* idctLumiFunc = work->mIdctLumiPtr;
    u16 pitch = work->mPitch;
    s32 mcuIdx = 0;
    TMCCJPEGDecState* state = (TMCCJPEGDecState*)work->mpState;

    while (mcuIdx < (s32)*(frameInfo + 0x1b)) {
        s32 compIdx;
        u8* entTblBase;
        u8* curBlockInfo;
        u8* specificConvRowPtr;
        u8* blockCountPtr;
        s32 blockIdx;

        compIdx = *compMapPtr;
        entTblBase = scaleInfo + ((u32)*(u8*)(compMapBase + compIdx + 0x18) << 8);
        TMCJPEGDEC_set_entropytbl((TMCJpegDecWork*)scaleInfo, (s32)*(u8*)(compMapBase + compIdx + 0x1c), *(u8*)(compMapBase + compIdx + 0x20));

        curBlockInfo = convRowPtrs;
        specificConvRowPtr = convRowPtrs + (compIdx << 2);
        blockCountPtr = frameInfo + mcuIdx;
        blockIdx = 0;

        while (blockIdx < (s32)*(blockCountPtr + 0x1c)) {
            s32 stackBlock[64];
            s32 ret;

            ret = ((s32 (*)(s32*, u8*, u8*, void*))decodeFunc)(
                stackBlock, entTblBase, mcuDataInfo, work);
            if (ret < 0)
                return ret;

            if (compIdx == 0) {
                ((void (*)(s32*, u8*, u16, s32))idctFunc)(
                    stackBlock, *(u8**)(curBlockInfo + 0), pitch, ret);
            } else {
                ((void (*)(s32*, u8*, u16, s32))idctLumiFunc)(
                    stackBlock, *(u8**)(specificConvRowPtr + 0x10), pitch, ret);
            }

            blockIdx++;
            curBlockInfo += 4;
        }

        mcuDataInfo += 4;
        mcuIdx++;
        compMapPtr++;
    }

    if (maxMCU == state->mDataSizeX) goto useEdge;
    if (mcuCount == state->mDataSizeY) goto useEdge;
    ((void (*)(TMCJpegDecWork*, u32, u32))work->mpConverterFunc)(
        work, maxMCU, mcuCount);
    goto after;
useEdge:
    ((void (*)(TMCJpegDecWork*, u32, u32))work->mpConverterFuncEdge)(
        work, maxMCU, mcuCount);
after:;

    if (*(u16*)(frameInfo + 0x2a) != 0) {
        s32 r;

        r = ((s32 (*)(TMCJpegDecWork*, u32, u32))TMCJPEGDEC_restart_interval)(
            work, maxMCU, mcuCount);
        if (r < 0)
            return r;
    }

    return 0;
}

s32 TMCJPEGDEC_imagestart(TMCJpegDecWork* work)
{
    u16 marker;
    s32 r;
    const u8* zigzag;
    u32 off;
    u8* p;
    int i;

    zigzag = TMCJPEGDEC_Zigzag_data;
    work->mRestartInterval = 0;
    work->mScanCount = 0;
    off = 0;
    i = 4;

    do {
        p = (u8*)work + off;
        off += 8;
        p[0x458] = (zigzag[0]  & 0x3F) << 2;
        p[0x459] = (zigzag[1]  & 0x3F) << 2;
        p[0x45a] = (zigzag[2]  & 0x3F) << 2;
        p[0x45b] = (zigzag[3]  & 0x3F) << 2;
        p[0x45c] = (zigzag[4]  & 0x3F) << 2;
        p[0x45d] = (zigzag[5]  & 0x3F) << 2;
        p[0x45e] = (zigzag[6]  & 0x3F) << 2;
        p[0x45f] = (zigzag[7]  & 0x3F) << 2;

        p = (u8*)work + off;
        off += 8;
        p[0x458] = (zigzag[8]  & 0x3F) << 2;
        p[0x459] = (zigzag[9]  & 0x3F) << 2;
        p[0x45a] = (zigzag[10] & 0x3F) << 2;
        p[0x45b] = (zigzag[11] & 0x3F) << 2;
        p[0x45c] = (zigzag[12] & 0x3F) << 2;
        p[0x45d] = (zigzag[13] & 0x3F) << 2;
        p[0x45e] = (zigzag[14] & 0x3F) << 2;
        p[0x45f] = (zigzag[15] & 0x3F) << 2;

        zigzag += 16;
    } while (--i != 0);

    r = TMCJPEGDEC_get_wbyte(&marker, work);
    if (r < 0)
        return r;

    if (marker != 0xFFD8)
        return -0x20;

    marker = 0;
    r = TMCJPEGDEC_parse_para(&marker, work);
    if (r < 0)
        return r;

    if (marker != 0xFFC0)
        return -0x10;

    r = TMCJPEGDEC_parse_sof(work);
    if (r < 0)
        return r;

    return 0;
}

s32 TMCJPEGDEC_imageend(TMCJpegDecWork* work)
{
    if (((TMCCJPEGDecState*)work->mpState)->mFlag21 == 1)
        return 0;

    if (work->mScanCount == 0) {
        u16 marker;
        s32 r;

        r = TMCJPEGDEC_rewind_ptr(work);
        if (r < 0)
            return r;

        r = TMCJPEGDEC_get_wbyte(&marker, work);
        if (r < 0 && r != -0x90)
            return r;

        if (marker != 0xFFD9) {
            ((TMCCJPEGDecState*)work->mpState)->mDecodeResult = -0x21;
            return 0;
        }
    }
    return 0;
}

s32 TMCJPEGDEC_scanstart(TMCJpegDecWork* work)
{
    u16 marker;
    s32 r;

    marker = 0;
    r = TMCJPEGDEC_parse_para(&marker, work);
    if (r < 0)
        return r;

    if (marker != 0xFFDA)
        return -0x22;

    r = TMCJPEGDEC_parse_sos(work);
    if (r < 0)
        return r;

    if (work->mFrameHeight == 0)
        return -0x50;

    r = TMCJPEGDEC_scan_varinit(work);
    if (r < 0)
        return r;

    work->mDCPredict[0] = 0;
    work->mDCPredict[1] = 0;
    work->mDCPredict[2] = 0;
    work->mDCPredict[3] = 0;
    work->mRestartCnt = 0;
    r = ((s32 (*)(TMCJpegDecWork*))TMCJPEGDEC_init_buff)(work);
    if (r < 0)
        return r;

    work->mRstMarkerIdx = 0;
    work->mMcuPos = 0;
    return 0;
}

s32 TMCJPEGDEC_scan_varinit(TMCJpegDecWork* work)
{
    s32 idx;
    u8 compCount;
    u8 compId;
    u8 hSamp;
    u8 vSamp;
    u8 qTblH;
    u8 qTblV;
    u8* p;
    u16 width;
    u16 height;
    u16 mcuCountX;
    u16 mcuCountY;
    u16 remX;
    u16 remY;

    compCount = work->mComponentCount;
    p = (u8*)work + 0x17f0;
    work->mComponentCount = compCount | 0x100;

    if (work->mScanCompCount == 1) {
        compId = work->mCompMap[0];
        hSamp = *(p + 0x28);
        vSamp = *(p + 0x29);
        qTblH = *(p + 0x20 + compId);
        width = *(u16*)(p);
        height = *(u16*)(p + 2);
        *(p + 0x0d) = (u8)((hSamp << 3) / qTblH);
        mcuCountX = width / *(p + 0x0d);
        qTblV = *(p + 0x24 + compId);
        *(p + 0x0e) = (u8)((vSamp << 3) / qTblV);
        mcuCountY = height / *(p + 0x0e);
        *(u16*)(p + 0x10) = mcuCountX;
        *(u16*)(p + 0x12) = mcuCountY;
    } else {
        hSamp = (*(p + 0x28) & 0x1f) << 3;
        vSamp = (*(p + 0x29) & 0x1f) << 3;
        *(p + 0x0d) = hSamp;
        *(p + 0x0e) = vSamp;

        width = *(u16*)(p);
        height = *(u16*)(p + 2);
        mcuCountX = width / hSamp;
        mcuCountY = height / vSamp;
        *(u16*)(p + 0x10) = mcuCountX;
        *(u16*)(p + 0x12) = mcuCountY;
    }

    width = *(u16*)(p);
    height = *(u16*)(p + 2);

    remX = width - (width / *(p + 0x0d)) * *(p + 0x0d);
    remY = height - (height / *(p + 0x0e)) * *(p + 0x0e);

    *(p + 0x18) = remX;
    *(p + 0x19) = remY;

    {
        u16 xr = (remX != 0) ? 1 : 0;
        u16 yr = (remY != 0) ? 1 : 0;
        *(u16*)(p + 0x10) = *(u16*)(p + 0x10) + xr;
        *(u16*)(p + 0x12) = *(u16*)(p + 0x12) + yr;
        *(u32*)(p + 0x14) = (u32)*(u16*)(p + 0x10) * (u32)*(u16*)(p + 0x12);
    }

    for (idx = 0; idx < (s32)*(p + 0x1b); idx++) {
        u32 blocks;

        compId = work->mCompMap[idx];
        if (*(p + 0x1b) == 1) {
            blocks = 1;
        } else {
            blocks = *(p + 0x20 + compId) * *(p + 0x24 + compId);
        }
        *(p + 0x1c + idx) = blocks;
    }

    for (; idx < 4; idx++) {
        *(p + 0x1c + idx) = 0;
    }

    return 0;
}

s32 TMCJPEGDEC_restart_interval(TMCJpegDecWork* work, u32 maxMCU, u32 mcuCount)
{
    u16 restartCount;
    u16 interval;
    TMCCJPEGDecState* state;

    restartCount = work->mRestartCnt;
    interval = work->mRestartInterval;
    restartCount++;
    state = (TMCCJPEGDecState*)work->mpState;
    work->mRestartCnt = restartCount;

    if (restartCount == interval) {
        s32 result;
        u16 marker;

        result = TMCJPEGDEC_rewind_ptr(work);
        if (result >= 0) {
            result = TMCJPEGDEC_get_wbyte(&marker, work);
            if (marker == 0xFFD9) {
                work->mScanCount = 1;
            }
            if (result >= 0) {
                if (marker >= 0xFFC0 && (marker < 0xFFD0 || marker > 0xFFD7)) {
                    result = TMCJPEGDEC_move_ptr(-2, work);
                    if (result < 0)
                        return result;
                } else {
                    s32 expected = work->mRstMarkerIdx + 0xFFD0;
                    if (marker != expected)
                        return -0x23;
                }

                {
                    u16 idx;
                    u8 stepY;
                    u8 stepX;
                    u16 pitch;

                    idx = work->mRstMarkerIdx;
                    idx++;
                    idx &= 7;
                    work->mRstMarkerIdx = idx;
                    stepY = state->mStepY;
                    stepX = state->mStepX;
                    pitch = state->mMaxX;
                    work->mDCPredict[0] = 0;
                    work->mDCPredict[1] = 0;
                    work->mDCPredict[2] = 0;
                    work->mDCPredict[3] = 0;
                    work->mRestartCnt = 0;

                    {
                        u16 blockCount;
                        u16 mcux;
                        u16 temp;
                        u16 div;
                        u16 rem;

                        blockCount = (u16)(mcuCount / stepY);
                        mcux = (u16)(blockCount * pitch);
                        temp = (u16)(mcux + maxMCU / stepX + 1);
                        div = (u16)(temp / pitch);
                        rem = (u16)(temp - div * pitch);
                        work->mMcuPos = ((u32)rem << 16) + div;
                    }
                }

                result = ((s32 (*)(TMCJpegDecWork*))TMCJPEGDEC_init_buff)(work);
            }
        }
        return result;
    }
    return 0;
}

static s32 TMCJPEGDEC_parse_para(u16* marker, TMCJpegDecWork* work)
{
    u8 byte;
    u16 local;
    u16 appSize;
    u16 driSize;
    u16 dnlSize;
    u16 comSize;
    s32 result;
    u32 keepGoing;
    u16 firstMarker;

    keepGoing = 0;
    firstMarker = *marker;

    do {
        result = TMCJPEGDEC_get_wbyte(&local, work);
        if (result < 0) {
            if (result != -0x90)
                goto _end;
            if (local != 0xFFD9)
                goto _end;
            result = 0;
        }
        goto _process;
_end:
        return result;
_process:

        while (local == 0xFFFF) {
            result = TMCJPEGDEC_get_byte(&byte, work);
            if (result < 0)
                return result;
            local = 0xFF00 | byte;
        }

        if (local >= 0xFFE0 && local <= 0xFFEF) {
            result = TMCJPEGDEC_get_wbyte(&appSize, work);
            if (result < 0) goto _check;
            if (appSize < 2) {
                result = -0x45;
                goto _check;
            }
            appSize -= 2;
            result = TMCJPEGDEC_move_ptr(appSize, work);
            result = result & (result >> 31);
            result = result & (result >> 31);
            goto _check;
        } else {
            switch ((s32)local) {
            case 0xFFC4:
                result = TMCJPEGDEC_parse_dht(firstMarker, work);
                break;
            case 0xFFDB:
                result = TMCJPEGDEC_parse_dqt(work);
                break;
            case 0xFFDD:
                result = TMCJPEGDEC_get_wbyte(&driSize, work);
                if (result < 0) goto _check;
                if (driSize != 4) {
                    result = -0x42;
                    goto _check;
                }
                result = TMCJPEGDEC_get_wbyte(&driSize, work);
                if (result < 0) goto _check;
                work->mRestartInterval = driSize;
                result = 0;
                goto _check;
            case 0xFFDC:
                result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                if (result < 0) goto _check;
                if (dnlSize != 4) {
                    result = -0x43;
                    goto _check;
                }
                result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                if (result < 0) goto _check;
                work->mFrameHeight = dnlSize;
                result = 0;
                goto _check;
            case 0xFFFE:
                result = TMCJPEGDEC_get_wbyte(&comSize, work);
                if (result < 0) goto _check;
                if (comSize < 2) {
                    result = -0x44;
                    goto _check;
                }
                comSize -= 2;
                result = TMCJPEGDEC_move_ptr(comSize, work);
                result = result & (result >> 31);
                result = result & (result >> 31);
                goto _check;
            case 0xFFC0:
                keepGoing = 1;
                break;
            case 0xFFC2:
                keepGoing = 1;
                break;
            case 0xFFDA:
                keepGoing = 1;
                break;
            case 0xFFD9:
                work->mScanCount = 1;
                keepGoing = 1;
                break;
            default:
                result = -0x2F;
                break;
            }
        }

_check:
        if (result < 0)
            keepGoing = 1;
    } while (keepGoing == 0);

    *marker = local;
    return result;
}

static s32 TMCJPEGDEC_parse_dht(s32 first, TMCJpegDecWork* work)
{
    u16 len;
    s32 r;
    u8 countBuf[17];
    u8* scaleInfo;
    u8 symBuf[256];

    scaleInfo = (u8*)work + 0x58;

    memset(countBuf, 0, 17);

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    len -= 2;

    while (len != 0) {
        u8 htByte;
        s32 tblClass;
        s32 tblID;
        u8* pCount;
        s32 idx;
        s32 totalCodes;
        TMCHuffTblSet tblSet;

        len -= 0x11;
        r = TMCJPEGDEC_get_byte(&htByte, work);
        if (r < 0)
            return r;

        tblClass = htByte >> 4;
        tblID = htByte & 0xF;

        if (tblClass >= 2 || tblID >= 2)
            return -0x40;

        pCount = &countBuf[1];
        idx = 1;

        countBuf[0] = 0;
        while (idx <= 16) {
            u8 c;

            r = TMCJPEGDEC_get_byte(&c, work);
            if (r < 0)
                return r;
            len -= c;
            *pCount++ = c;
            idx++;
        }

        totalCodes = countBuf[1] + countBuf[2] + countBuf[3] + countBuf[4]
            + countBuf[5] + countBuf[6] + countBuf[7] + countBuf[8]
            + countBuf[9] + countBuf[10] + countBuf[11] + countBuf[12]
            + countBuf[13] + countBuf[14] + countBuf[15] + countBuf[16];

        if (totalCodes > 0xB0)
            return -0x40;

        r = TMCJPEGDEC_get_sbyte(symBuf, (u8)totalCodes, work);
        if (r < 0)
            return r;

        countBuf[0] = totalCodes;

        TMCJPEGDEC_set_HuffmanTable(&tblSet, tblClass, tblID, (TMCJpegDecWork*)scaleInfo);
        r = TMCJPEGDEC_make_huffdec(countBuf, symBuf, (TMCHuffParam*)&tblSet);
        if (r < 0)
            return r;
    }

    return 0;
}

static s32 TMCJPEGDEC_parse_dqt(TMCJpegDecWork* work)
{
    u16 len;
    s32 r;
    u32 tblCopy[65];
    u8* scaleInfo;
    const u32* tblPtr;
    const u32* s = (const u32*)lbl_8161E080 - 1;
    u32* d = tblCopy;
    u32 i = 32;

    do {
        d[1] = s[1];
        d[2] = s[2];
        s += 2;
        d += 2;
    } while (--i != 0);

    scaleInfo = (u8*)work + 0x58;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    len -= 2;

    tblPtr = &tblCopy[1];

    do {
        u8 qtInfo;
        const u8* zigPtr;
        s32 zzIdx;
        u8 byte;
        u32 val;
        s32 zz;

        len -= 0x41;
        r = TMCJPEGDEC_get_byte(&qtInfo, work);
        if (r < 0)
            return r;

        if (qtInfo > 4)
            return -0x41;

        scaleInfo[qtInfo + 0x1790] = 1;

        zigPtr = TMCJPEGDEC_Zigzag_data;
        for (zzIdx = 0; zzIdx < 64; zzIdx++) {
            zz = *zigPtr;
            if (zz > 0x3F)
                return -0x41;

            r = TMCJPEGDEC_get_byte(&byte, work);
            if (r < 0)
                return r;

            val = (u32)byte * tblPtr[zz];
            *(u32*)((zz << 2) + scaleInfo + ((u32)qtInfo << 8)) = val;
            if (val == 0)
                return -0x41;

            zigPtr++;
        }
    } while (len != 0);

    return 0;
}

static s32 TMCJPEGDEC_parse_sof(TMCJpegDecWork* work)
{
    u16 len;
    u8 precision;
    u16 height;
    u16 width;
    u8 compCount;
    s32 r;
    s32 maxHSamp;
    s32 maxVSamp;
    u32 idx;

    maxHSamp = 0;
    maxVSamp = 0;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    if (len < 2)
        return -0x50;

    r = TMCJPEGDEC_get_byte(&precision, work);
    if (r < 0)
        return r;
    if (precision != 8)
        return -0x50;

    r = TMCJPEGDEC_get_wbyte(&height, work);
    if (r < 0)
        return r;
    work->mFrameHeight = height;

    r = TMCJPEGDEC_get_wbyte(&width, work);
    if (r < 0)
        return r;
    work->mFrameWidth = width;

    r = TMCJPEGDEC_get_byte(&compCount, work);
    if (r < 0)
        return r;
    if (compCount <= 0 || compCount > 4)
        return -0x50;

    work->mCompCount = compCount;

    for (idx = 0; idx < compCount; idx++) {
        u8 compId;
        u8 hSamp;
        u8 vSamp;
        u8 qTbl;

        r = TMCJPEGDEC_get_byte(&compId, work);
        if (r < 0)
            return r;
        work->mCompId[idx] = compId;

        r = TMCJPEGDEC_get_byte(&hSamp, work);
        if (r < 0)
            return r;
        vSamp = hSamp & 0xF;
        hSamp = hSamp >> 4;

        work->mHSampFactor[ idx] = hSamp;
        work->mVSampFactor[ idx] = vSamp;

        if (hSamp > maxHSamp)
            maxHSamp = hSamp;

        if (vSamp > maxVSamp)
            maxVSamp = vSamp;

        r = TMCJPEGDEC_get_byte(&qTbl, work);
        if (r < 0)
            return r;
        work->mCompQTbl[idx] = qTbl;
    }

    if (maxHSamp == 0 || maxVSamp == 0)
        return -0x50;

    work->mMaxHSamp = maxHSamp;
    work->mMaxVSamp = maxVSamp;
    work->mComponentCount = 6;

    {
        u32 sampleIdx;

        for (sampleIdx = 0; sampleIdx < 6; sampleIdx++) {
            u32 c;
            u8 match;

            if (work->mCompCount != TMCJPEGDEC_SampleComps[sampleIdx])
                continue;

            match = TRUE;
            for (c = 0; c < work->mCompCount; c++) {
                if (work->mHSampFactor[ c] != TMCJPEGDEC_SampleH_N[sampleIdx * 4 + c]
                    || work->mVSampFactor[ c] != TMCJPEGDEC_SampleV_N[sampleIdx * 4 + c]) {
                    match = FALSE;
                    break;
                }
            }

            if (match) {
                work->mComponentCount = sampleIdx;
                break;
            }
        }
    }

    if (work->mComponentCount == 6)
        return -0x70;

    {
        u16 fw = work->mFrameWidth;
        u16 fh = work->mFrameHeight;
        u8 mcuX = (maxHSamp & 0x07) << 3;
        u8 mcuY = (maxVSamp & 0x07) << 3;
        u16 mcuCountX;
        u16 mcuCountY;
        u16 remX;
        u16 remY;
        u32 compCount2;

        work->mMCUXCount = mcuX;
        work->mMCUXRem = mcuY;

        mcuCountX = fw / mcuX;
        mcuCountY = fh / mcuY;

        remX = fw - mcuCountX * mcuX;
        remY = fh - mcuCountY * mcuY;

        work->unk_0x1808 = remX;
        work->unk_0x1809 = remY;

        {
            u16 xr = (remX != 0) ? 1 : 0;
            u16 yr = (remY != 0) ? 1 : 0;
            mcuCountX += xr;
            mcuCountY += yr;
            work->mMCUYCount = mcuCountX;
            work->mMCUXCount2 = mcuCountY;
            work->unk_0x1804 = (u32)mcuCountX * (u32)mcuCountY;
        }

        compCount2 = work->mCompCount;
        for (idx = 0; idx < compCount2; idx++) {
            u8 hSamp2;
            u8 vSamp2;
            u8 qTbl2;

            hSamp2 = work->mHSampFactor[ idx];
            if (hSamp2 < 1 || hSamp2 > 4)
                return -0x50;

            vSamp2 = work->mVSampFactor[ idx];
            if (vSamp2 < 1 || vSamp2 > 4)
                return -0x50;

            qTbl2 = work->mCompQTbl[idx];
            if (qTbl2 > 4)
                return -0x50;
        }
    }

    return 0;
}

static s32 TMCJPEGDEC_parse_sos(TMCJpegDecWork* work)
{
    u16 len;
    s32 r;
    u8* scalePtr;
    u8* compPtr;
    u8* mapPtr;
    u32 idx;
    s32 ci;
    u8 scanByte;

    compPtr = (u8*)work + 0x2c;
    scalePtr = (u8*)work + 0x58;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    if (len < 2)
        return -0x51;

    r = TMCJPEGDEC_get_byte(&scanByte, work);
    if (r < 0)
        return r;

    work->mScanCompCount = scanByte;

    if (scanByte > 4 || scanByte != work->mCompCount)
        return -0x51;

    for (idx = 0; (s32)idx < (s32)work->mScanCompCount; idx++) {
        r = TMCJPEGDEC_get_byte(&scanByte, work);
        if (r < 0)
            return r;

        for (ci = 0; ci < (s32)work->mCompCount; ci++) {
            if ((s32)compPtr[ci + 0x14] == (s32)scanByte) {
                compPtr[idx] = ci;
                mapPtr = compPtr + idx;
                break;
            }
        }
        if (ci >= (s32)work->mCompCount)
            return -0x51;

        r = TMCJPEGDEC_get_byte(&scanByte, work);
        if (r < 0)
            return r;

        {
            u8 dcTbl = scanByte >> 4;
            u8 acTbl = scanByte & 0xF;

            if ((s32)dcTbl > 1 || (s32)acTbl > 1)
                return -0x51;

            {
                u8 frameCompIdx = *mapPtr;

                compPtr[frameCompIdx + 0x1c] = dcTbl;
                compPtr[frameCompIdx + 0x20] = acTbl;

                if (scalePtr[dcTbl + 0x1794] != 1)
                    return -0x40;

                if (scalePtr[acTbl + 0x1796] != 1)
                    return -0x40;

                if (scalePtr[mapPtr[0x18] + 0x1790] != 1)
                    return -0x41;
            }
        }
    }

    {
        s32 moveResult = TMCJPEGDEC_move_ptr(3, work);
        return moveResult & (moveResult >> 31);
    }
}

s32 TMCJPEGDEC_err_restart(TMCJpegDecWork* work)
{
    TMCCJPEGDecState* state = (TMCCJPEGDecState*)work->mpState;
    u8 scanCount = work->mScanCount;

    if (scanCount == 1) {
        state->mDecodeResult = 0;
        return 0;
    }

    {
        s32 r;
        u8 byte;

        r = TMCJPEGDEC_rewind_ptr(work);
        if (r < 0)
            return r;

        byte = *(u8*)work->mpBufCur;
        goto rst_cond;

    rst_read:
        r = TMCJPEGDEC_get_byte(&byte, work);
        if (r < 0)
            return r;

    rst_cond:
        if (byte != 0xFF)
            goto rst_read;

        r = TMCJPEGDEC_get_byte(&byte, work);

        if (byte == 0xD9) {
            if (r >= 0) goto rst_ret0;
            if (r == -0x90) goto rst_ret0;
            return r;

        rst_ret0:
            return 0;
        }

        if (r < 0)
            return r;

        if (byte < 0xD0) goto rst_cond;
        if (byte <= 0xD7) { goto _process; }
        { goto rst_cond; }
_process: {
            u16 scanCount2;
            u8 rstIdx;
            u8 rstDiff;
            u16 interval;
            u16 pitch;
            u32 val;
            u32 rem;
            u32 div;

            scanCount2 = work->mRstMarkerIdx;
            rstIdx = (byte + 0x08) - (scanCount2 + 0xCF);
            if (byte > scanCount2 + 0xCF)
                rstDiff = byte - (scanCount2 + 0xCF);
            else
                rstDiff = rstIdx;

            work->mRstMarkerIdx = (byte + 1) & 7;
            interval = work->mRestartInterval;
            pitch = state->mMaxX;
            val = work->mMcuPos;

            work->mDCPredict[0] = 0;
            work->mDCPredict[1] = 0;
            work->mDCPredict[2] = 0;
            work->mDCPredict[3] = 0;
            work->mRestartCnt = 0;

            {
                u32 next = (val & 0xFF) * pitch + (val >> 16) + (u8)(rstDiff * interval);
                div = next / pitch;
                rem = next - div * pitch;
                work->mMcuPos = (rem << 16) | (u16)div;
            }

            r = ((s32 (*)(TMCJpegDecWork*))TMCJPEGDEC_init_buff)(work);
            if (r < 0)
                return r;

            state->mPosX = rem;
            state->mPosY = div;
            state->mPosition = TMCJPEGDEC_get_position(work);

            {
                u32 d = state->mPosY * state->mMaxX;
                s32 pos = state->mResult - d - state->mPosX;
                return pos;
            }
        }
    }
}

void TMCJPEGDEC_set_entropytbl(TMCJpegDecWork* work, s32 idx, u8 data)
{
    switch (idx) {
    case 0:
        work->mDCACPtrs[0] = &work->mZigzagData[8];
        work->mDCACPtrs[2] = work->mMaxCode_DC0;
        work->mDCACPtrs[1] = work->mValPtr_DC0;
        break;
    case 1:
        work->mDCACPtrs[0] = work->mHuffDecTbl_DC1;
        work->mDCACPtrs[2] = work->mMaxCode_DC1;
        work->mDCACPtrs[1] = work->mValPtr_DC1;
        break;
    }

after:
    if ((s32)data == 1) goto data1;
    if ((s32)data >= 1) return;
    if ((s32)data < 0) return;

    work->mDCACPtrs[4] = work->mHuffDecTbl_AC0;
    *(void**)work->mZigzagData = work->mMaxCode_AC0;
    work->mDCACPtrs[5] = work->mValPtr_AC0;
    return;

data1:
    work->mDCACPtrs[4] = work->mHuffDecTbl_AC1;
    *(void**)work->mZigzagData = work->mMaxCode_AC1;
    work->mDCACPtrs[5] = work->mValPtr_AC1;
}
