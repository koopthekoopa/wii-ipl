#define TMCJPEGDEC_restart_interval __hidden_restart_interval
#define TMCJPEGDEC_init_buff __hidden_init_buff
#include <tmc_jpeg_internal.h>
#undef TMCJPEGDEC_restart_interval
#undef TMCJPEGDEC_init_buff

extern void* memset(void* dest, s32 val, u32 count);

static const u32 lbl_8161E080[64] = {
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
    u8* scaleInfo = &work->mScaleFlag;
    TMCCJPEGDecState* state = (TMCCJPEGDecState*)work->mpState;
    void* decodeFunc = work->mDecodePtr;
    void* idctFunc = work->mIdctPtr;
    void* idctLumiFunc = work->mIdctLumiPtr;
    u16 pitch = work->mPitch;
    u8* mcuDataInfo = (u8*)(work->mDCPredict);
    u8 mcuIdx = 0;

    while (mcuIdx < work->mScanCompCount) {
        u8 compIdx = work->mCompMap[mcuIdx];
        u8 hSamp = work->mCompQTbl[compIdx];
        u8 vSamp = work->mCompDCTbl[compIdx];
        u8 qTbl = work->mCompACTbl[compIdx];
        u8* entTblBase = scaleInfo + ((u32)hSamp << 8);
        s32 blockIdx = 0;
        u8* curBlockInfo = (u8*)(work->mpConvRowPtrs);

        TMCJPEGDEC_set_entropytbl((TMCJpegDecWork*)scaleInfo, (s32)vSamp, qTbl);

        while (blockIdx < work->mBlockCount[mcuIdx]) {
            s32 stackBlock[64];
            s32 ret;

            ret = ((s32 (*)(s32*, u8*, void*, TMCJpegDecWork*))decodeFunc)(
                stackBlock, entTblBase, mcuDataInfo, work);
            if (ret < 0)
                return ret;

            if (compIdx == 0) {
                ((void (*)(s32*, u8*, u16, s32))idctFunc)(
                    stackBlock, *(u8**)(curBlockInfo + 0), pitch, ret);
            } else {
                ((void (*)(s32*, u8*, u16, s32))idctLumiFunc)(
                    stackBlock, (u8*)work->mpConvRowPtrs[4 + (u32)compIdx], pitch, ret);
            }

            blockIdx++;
            curBlockInfo += 4;
        }

        mcuDataInfo += 4;
        mcuIdx++;
    }

    {
        u32 stateDataSizeX = state->mDataSizeX;
        u32 stateDataSizeY = state->mDataSizeY;

        if (maxMCU == stateDataSizeX || mcuCount == stateDataSizeY) {
            ((void (*)(TMCJpegDecWork*, u32, u32))work->mpConverterFunc)(
                work, maxMCU, mcuCount);
        } else {
            ((void (*)(TMCJpegDecWork*, u32, u32))work->mpConverterFuncEdge)(
                work, maxMCU, stateDataSizeX);
        }
    }

    if (work->mRestartInterval != 0) {
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
    const u8* zigzag = TMCJPEGDEC_Zigzag_data;
    u32 off;

    work->mRestartInterval = 0;
    work->mScanCount = 0;

    for (off = 0; off < 64; ) {
        work->mZigzagData[off + 0] = (zigzag[0]  & 0x3F) << 2;
        work->mZigzagData[off + 1] = (zigzag[1]  & 0x3F) << 2;
        work->mZigzagData[off + 2] = (zigzag[2]  & 0x3F) << 2;
        work->mZigzagData[off + 3] = (zigzag[3]  & 0x3F) << 2;
        work->mZigzagData[off + 4] = (zigzag[4]  & 0x3F) << 2;
        work->mZigzagData[off + 5] = (zigzag[5]  & 0x3F) << 2;
        work->mZigzagData[off + 6] = (zigzag[6]  & 0x3F) << 2;
        work->mZigzagData[off + 7] = (zigzag[7]  & 0x3F) << 2;
        off += 8;
        work->mZigzagData[off + 0] = (zigzag[8]  & 0x3F) << 2;
        work->mZigzagData[off + 1] = (zigzag[9]  & 0x3F) << 2;
        work->mZigzagData[off + 2] = (zigzag[10] & 0x3F) << 2;
        work->mZigzagData[off + 3] = (zigzag[11] & 0x3F) << 2;
        work->mZigzagData[off + 4] = (zigzag[12] & 0x3F) << 2;
        work->mZigzagData[off + 5] = (zigzag[13] & 0x3F) << 2;
        work->mZigzagData[off + 6] = (zigzag[14] & 0x3F) << 2;
        work->mZigzagData[off + 7] = (zigzag[15] & 0x3F) << 2;
        off += 8;
        zigzag += 16;
    }

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
    u8 compCount = work->mComponentCount;
    u8 flag = work->mScanCompCount;

    work->mComponentCount = compCount | 0x100;

    if (flag == 1) {
        u8 compId = work->mCompMap[0];
        u8 hSamp = work->mMaxHSamp;
        u8 vSamp = work->mMaxVSamp;
        u8 qTblH = work->mHSampFactor[ compId];
        u8 qTblV = work->mVSampFactor[ compId];
        u8 mcuX = (hSamp << 3) / qTblH;
        u8 mcuY = (vSamp << 3) / qTblV;

        work->mMCUXCount = mcuX;
        work->mMCUXRem = mcuY;

        {
            u16 mcuCountX = work->mFrameWidth / mcuX;
            u16 mcuCountY = work->mFrameHeight / mcuY;
            work->mMCUYCount = mcuCountX;
            work->mMCUXCount2 = mcuCountY;
        }
    } else {
        u8 hSamp = work->mMaxHSamp & 0x07;
        u8 vSamp = work->mMaxVSamp & 0x07;
        u16 width = work->mFrameWidth;
        u16 height = work->mFrameHeight;

        work->mMCUXCount = hSamp;
        work->mMCUXRem = vSamp;

        {
            u16 mcuCountX = width / hSamp;
            u16 mcuCountY = height / vSamp;
            work->mMCUYCount = mcuCountX;
            work->mMCUXCount2 = mcuCountY;
        }
    }

    {
        u16 width = work->mFrameWidth;
        u16 height = work->mFrameHeight;
        u8 mcuX = work->mMCUXCount;
        u8 mcuY = work->mMCUXRem;
        u16 mcuCountX = work->mMCUYCount;
        u16 mcuCountY = work->mMCUXCount2;
        u16 remX = width - (width / mcuX) * mcuX;
        u16 remY = height - (height / mcuY) * mcuY;

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
    }

    {
        u32 idx;

        for (idx = 0; idx < work->mScanCompCount; idx++) {
            u8 compId = work->mCompMap[idx];
            u8 blocks;

            if (compId == 1) {
                blocks = 1;
            } else {
                blocks = work->mHSampFactor[ compId] * work->mVSampFactor[ compId];
            }
            work->mBlockCount[idx] = blocks;
        }

        for (; idx < 4; idx++) {
            work->mBlockCount[idx] = 0;
        }
    }

    return 0;
}

s32 TMCJPEGDEC_restart_interval(TMCJpegDecWork* work, u32 maxMCU, u32 mcuCount)
{
    TMCCJPEGDecState* state = (TMCCJPEGDecState*)work->mpState;
    u16 restartCount = work->mRestartCnt;
    u16 interval = work->mRestartInterval;
    s32 r;

    restartCount++;
    work->mRestartCnt = restartCount;

    if (restartCount != interval)
        return 0;

    r = TMCJPEGDEC_rewind_ptr(work);
    if (r < 0)
        return r;

    {
        u16 marker;

        r = TMCJPEGDEC_get_wbyte(&marker, work);
        if (marker == 0xFFD9) {
            work->mScanCount = 1;
        }
        if (r < 0)
            return r;

        if (marker >= 0xFFC0 && marker < 0xFFD0) {
            r = TMCJPEGDEC_move_ptr(-2, work);
            if (r < 0)
                return r;
        } else {
            u16 scanCount = work->mRstMarkerIdx;
            if (marker != (scanCount + 0xFFD0))
                return -0x23;
        }
    }

    {
        work->mRstMarkerIdx = (work->mRstMarkerIdx + 1) & 7;
        work->mDCPredict[0] = 0;
        work->mDCPredict[1] = 0;
        work->mDCPredict[2] = 0;
        work->mDCPredict[3] = 0;
        work->mRestartCnt = 0;

        {
            u32 blockCount = mcuCount / state->mStepY;
            u16 pitch = state->mMaxX;
            u32 mcux = blockCount * pitch;
            u32 temp = mcux + maxMCU / state->mStepX + 1;
            u32 div = temp / pitch;
            u32 rem = temp - div * pitch;

            work->mMcuPos = (rem << 16) | div;
        }
    }

    r = ((s32 (*)(TMCJpegDecWork*))TMCJPEGDEC_init_buff)(work);
    if (r < 0)
        return r;

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

    result = 0;
    keepGoing = 0;
    firstMarker = *marker;

    do {
        result = TMCJPEGDEC_get_wbyte(&local, work);
        if (result < 0) {
            if (result != -0x90)
                return result;
            if (local != 0xFFD9)
                return result;
            result = 0;
        }

        while (local == 0xFFFF) {
            result = TMCJPEGDEC_get_byte(&byte, work);
            if (result < 0)
                return result;
            local = 0xFF00 | byte;
        }

        if (local >= 0xFFE0 && local <= 0xFFEF) {
            result = TMCJPEGDEC_get_wbyte(&appSize, work);
            if (result < 0)
                ;
            else if (appSize < 2)
                result = -0x45;
            else {
                appSize -= 2;
                result = TMCJPEGDEC_move_ptr(appSize, work);
                result = result & (result >> 31);
                result = result & (result >> 31);
            }
        } else if (local < 0xFFD9) {
            switch ((s32)local) {
            case 0xFFC0:
                keepGoing = 1;
                break;
            case 0xFFC2:
                keepGoing = 1;
                break;
            case 0xFFC4:
                result = TMCJPEGDEC_parse_dht(firstMarker, work);
                break;
            default:
                result = -0x2F;
                break;
            }
        } else {
            switch ((s32)local) {
            case 0xFFD9:
                work->mScanCount = 1;
                keepGoing = 1;
                break;
            case 0xFFDA:
                keepGoing = 1;
                break;
            case 0xFFDB:
                result = TMCJPEGDEC_parse_dqt(work);
                break;
            case 0xFFDC:
                result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                if (result < 0)
                    break;
                if (dnlSize != 4) {
                    result = -0x43;
                    break;
                }
                result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                if (result < 0)
                    break;
                work->mFrameHeight = dnlSize;
                result = 0;
                break;
            case 0xFFDD:
                result = TMCJPEGDEC_get_wbyte(&driSize, work);
                if (result < 0)
                    break;
                if (driSize != 4) {
                    result = -0x42;
                    break;
                }
                result = TMCJPEGDEC_get_wbyte(&driSize, work);
                if (result < 0)
                    break;
                work->mRestartInterval = driSize;
                result = 0;
                break;
            case 0xFFFE:
                result = TMCJPEGDEC_get_wbyte(&comSize, work);
                if (result < 0)
                    break;
                if (comSize < 2) {
                    result = -0x44;
                    break;
                }
                comSize -= 2;
                result = TMCJPEGDEC_move_ptr(comSize, work);
                result = result & (result >> 31);
                result = result & (result >> 31);
                break;
            default:
                result = -0x2F;
                break;
            }
        }

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
    u8 symBuf[256];

    memset(countBuf, 0, 17);

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    len -= 2;

    while (len != 0) {
        u8 htByte;
        u8 tblClass;
        u8 tblID;
        u8* pCount;
        u32 idx;
        u32 totalCodes;
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

        r = TMCJPEGDEC_get_sbyte(symBuf, totalCodes, work);
        if (r < 0)
            return r;

        countBuf[0] = totalCodes;

        TMCJPEGDEC_set_HuffmanTable(&tblSet, tblClass, tblID, (TMCJpegDecWork*)&work->mScaleFlag);
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
    u32 tblCopy[64];
    const u8* zig = TMCJPEGDEC_Zigzag_data;
    const u32* s;
    u32* d;

    s = lbl_8161E080;
    d = tblCopy;
    do {
        *d++ = *s++;
        *d++ = *s++;
    } while ((u32*)(d - tblCopy) < (u32*)&tblCopy[64]);

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    len -= 2;

    while (len != 0) {
        u8 qtInfo;

        len -= 0x41;
        r = TMCJPEGDEC_get_byte(&qtInfo, work);
        if (r < 0)
            return r;

        if (qtInfo > 4)
            return -0x41;

        {
            u8* scaleInfo = &work->mScaleFlag;
            u8 tblID = qtInfo;
            u32 zzIdx;

            scaleInfo[tblID + 0x1790] = 1;

            for (zzIdx = 0; zzIdx < 64; zzIdx++) {
                u8 zz = zig[zzIdx];
                u8 byte;
                u32 val;

                if (zz > 0x3F)
                    return -0x41;

                r = TMCJPEGDEC_get_byte(&byte, work);
                if (r < 0)
                    return r;

                val = (u32)byte * tblCopy[zzIdx];
                *(u32*)(scaleInfo + ((u32)tblID << 8) + ((u32)zz << 2)) = val;
                if (val == 0)
                    return -0x41;
            }
        }
    }

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
    u8 compCount2;
    u32 idx;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0)
        return r;
    if (len < 2)
        return -0x51;

    r = TMCJPEGDEC_get_byte(&compCount2, work);
    if (r < 0)
        return r;
    if (compCount2 > 4 || compCount2 != work->mCompCount)
        return -0x51;

    work->mScanCompCount = compCount2;

    for (idx = 0; idx < compCount2; idx++) {
        u8 scanCompId;
        u32 ci;

        r = TMCJPEGDEC_get_byte(&scanCompId, work);
        if (r < 0)
            return r;

        for (ci = 0; ci < work->mCompCount; ci++) {
            if (work->mCompId[ci] == scanCompId) {
                work->mCompMap[idx] = ci;
                break;
            }
        }
        if (ci >= work->mCompCount)
            return -0x51;

        {
            u8 huffByte;
            u8 dcTbl;
            u8 acTbl;

            r = TMCJPEGDEC_get_byte(&huffByte, work);
            if (r < 0)
                return r;

            dcTbl = huffByte >> 4;
            acTbl = huffByte & 0xF;

            if (dcTbl > 1 || acTbl > 1)
                return -0x51;

            {
                u8 frameCompIdx = work->mCompMap[idx];

                work->mCompDCTbl[frameCompIdx] = dcTbl;
                work->mCompACTbl[frameCompIdx] = acTbl;

                if (work->mDCTblFlag[dcTbl] != 1)
                    return -0x40;

                if (work->mACTblFlag[acTbl] != 1)
                    return -0x40;

                if (work->mQuantTblFlag[work->mCompQTbl[frameCompIdx]] != 1)
                    return -0x41;
            }
        }
    }

    r = TMCJPEGDEC_move_ptr(3, work);
    if (r < 0)
        return r;

    return 0;
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

        if (byte < 0xD0)
            goto rst_cond;
        if (byte > 0xD7)
            goto rst_cond;

        {
            u16 scanCount2 = work->mRstMarkerIdx;
            u16 interval = work->mRestartInterval;
            u8 rstIdx = (byte + 0x08) - (scanCount2 + 0xCF);
            u8 rstDiff;

            if (byte > scanCount2 + 0xCF)
                rstDiff = byte - (scanCount2 + 0xCF);
            else
                rstDiff = rstIdx;

            work->mRstMarkerIdx = (byte + 1) & 7;
            work->mDCPredict[0] = 0;
            work->mDCPredict[1] = 0;
            work->mDCPredict[2] = 0;
            work->mDCPredict[3] = 0;
            work->mRestartCnt = 0;

            {
                u32 val = work->mMcuPos;
                u16 pitch = state->mMaxX;
                u32 next = (val & 0xFF) * pitch + (val >> 16) + rstDiff * interval;
                u32 div = next / pitch;

                work->mMcuPos = ((next - div * pitch) << 16) | (u16)div;

                r = ((s32 (*)(TMCJpegDecWork*))TMCJPEGDEC_init_buff)(work);
                if (r < 0)
                    return r;

                state->mPosX = next - div * pitch;
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
}

void TMCJPEGDEC_set_entropytbl(TMCJpegDecWork* work, s32 idx, u8 data)
{
    if (idx == 1) goto idx1;
    if (idx >= 1) goto after;
    if (idx >= 0) {
    } else {
        goto after;
    }

idx0:
    work->mDCACPtrs[0] = &work->mZigzagData[8];
    work->mDCACPtrs[2] = work->mMaxCode_DC0;
    work->mDCACPtrs[1] = work->mValPtr_DC0;
    goto after;

idx1:
    work->mDCACPtrs[0] = work->mHuffDecTbl_DC1;
    work->mDCACPtrs[2] = work->mMaxCode_DC1;
    work->mDCACPtrs[1] = work->mValPtr_DC1;

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
