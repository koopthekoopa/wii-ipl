#include <tmc_jpeg_internal.h>

extern void* memset(void* dest, s32 val, u32 count);

extern const u32 lbl_8161E080[64] = {
    0x00000100, 0x000000B9, 0x000000C4, 0x000000DA, 0x00000100, 0x00000146, 0x000001D9, 0x000003A0, 0x000000B9, 0x00000085, 0x0000008D,
    0x0000009D, 0x000000B9, 0x000000EB, 0x00000155, 0x0000029D, 0x000000C4, 0x0000008D, 0x00000096, 0x000000A7, 0x000000C4, 0x000000F9,
    0x0000016A, 0x000002C6, 0x000000DA, 0x0000009D, 0x000000A7, 0x000000B9, 0x000000DA, 0x00000115, 0x00000192, 0x00000315, 0x00000100,
    0x000000B9, 0x000000C4, 0x000000DA, 0x00000100, 0x00000146, 0x000001D9, 0x000003A0, 0x00000146, 0x000000EB, 0x000000F9, 0x00000115,
    0x00000146, 0x0000019F, 0x0000025A, 0x0000049D, 0x000001D9, 0x00000155, 0x0000016A, 0x00000192, 0x000001D9, 0x0000025A, 0x0000036A,
    0x000006B2, 0x000003A0, 0x0000029D, 0x000002C6, 0x00000315, 0x000003A0, 0x0000049D, 0x000006B2, 0x00000D23};

static s32 TMCJPEGDEC_parse_para(u16* marker, TMCCJPEGDecWork* work);
static s32 TMCJPEGDEC_parse_dht(s32 first, TMCCJPEGDecWork* work);
static s32 TMCJPEGDEC_parse_dqt(TMCCJPEGDecWork* work);
static s32 TMCJPEGDEC_parse_sof(TMCCJPEGDecWork* work);
static s32 TMCJPEGDEC_parse_sos(TMCCJPEGDecWork* work);

s32 TMCJPEGDEC_decompmcu(u32 maxMCU, u32 mcuCount, TMCCJPEGDecWork* work, void* buf) {
    u8* compMapBase;
    u8* compMapPtr;
    u32* mcuDataInfo;

    u8* curBlockInfo;
    u8* specificConvRowPtr;

    u8* blockCountPtr;
    u8* entTblBase;

    s32 mcuIdx;
    s32 compIdx;
    s32 blockIdx;
    u16 pitch;

    u8* frameInfo;
    u8* scaleInfo;

    u8* convRowPtrs;
    TMCCJPEGDecState* state;

    TMCIdctFunc* idctFunc;
    TMCIdctFunc* idctLumiFunc;
    TMCDecodeFunc* decodeFunc;

    state = work->pState;
    compMapBase = work->compMap;
    frameInfo = (u8*)work + 0x17f0;
    compMapPtr = compMapBase;
    scaleInfo = (u8*)work + 0x58;
    convRowPtrs = (u8*)work + 0x183c;
    mcuDataInfo = (u32*)(compMapBase + 4);
    mcuIdx = 0;

    decodeFunc = work->decodePtr;
    idctFunc = work->idctPtr;
    idctLumiFunc = work->idctLumiPtr;

    pitch = work->pitch;

    while (mcuIdx < (s32) * (frameInfo + 0x1b)) {
        compIdx = *compMapPtr;
        entTblBase = scaleInfo + ((u32) * (compMapBase + compIdx + 0x18) << 8);
        TMCJPEGDEC_set_entropytbl((TMCCJPEGDecWork*)scaleInfo, *(compMapBase + compIdx + 0x1c), *(compMapBase + compIdx + 0x20));

        curBlockInfo = convRowPtrs;
        specificConvRowPtr = convRowPtrs + (compIdx << 2);
        blockCountPtr = frameInfo + mcuIdx;
        blockIdx = 0;

        while (blockIdx < (s32) * (blockCountPtr + 0x1c)) {
            s32 stackBlock[64];
            s32 ret;

            ret = decodeFunc(stackBlock, entTblBase, mcuDataInfo, work);
            if (ret < 0)
                return ret;

            if (compIdx == 0) {
                idctFunc(stackBlock, *(u8**)(curBlockInfo), pitch, ret);
            } else {
                idctLumiFunc(stackBlock, *(u8**)(specificConvRowPtr + 0x10), pitch, ret);
            }

            curBlockInfo += 4;
            blockIdx++;
        }

        mcuDataInfo = (u32*)((u8*)mcuDataInfo + 4);
        mcuIdx++;
        compMapPtr++;
    }

    if (maxMCU != state->dataSizeX && mcuCount != state->dataSizeY)
        work->pConverterFunc(work, maxMCU, mcuCount);
    else {
        work->pConverterFuncEdge(work, maxMCU, mcuCount);
    }

    if (*(u16*)(frameInfo + 0x2a) != 0) {
        s32 r = TMCJPEGDEC_restart_interval(work, maxMCU, mcuCount);
        if (r < 0) {
            return r;
        }
    }

    return 0;
}

s32 TMCJPEGDEC_imagestart(TMCCJPEGDecWork* work) {
    u16 marker;
    s32 r;
    u32 off;
    u8* p;
    int i;
    const u8* zigzag;

    zigzag = TMCJPEGDEC_Zigzag_data;
    work->restartInterval = 0;
    work->scanCount = 0;
    off = 0;
    i = 4;

    do {
        p = (u8*)work + off;
        off += 8;
        p[0x458] = (zigzag[0] & 0x3F) << 2;
        p[0x459] = (zigzag[1] & 0x3F) << 2;
        p[0x45a] = (zigzag[2] & 0x3F) << 2;
        p[0x45b] = (zigzag[3] & 0x3F) << 2;
        p[0x45c] = (zigzag[4] & 0x3F) << 2;
        p[0x45e] = (zigzag[6] & 0x3F) << 2;
        p[0x45d] = (zigzag[5] & 0x3F) << 2;
        p[0x45f] = (zigzag[7] & 0x3F) << 2;

        p = (u8*)work + off;
        off += 8;
        p[0x458] = (zigzag[8] & 0x3F) << 2;
        p[0x459] = (zigzag[9] & 0x3F) << 2;
        p[0x45a] = (zigzag[10] & 0x3F) << 2;
        p[0x45b] = (zigzag[11] & 0x3F) << 2;
        p[0x45c] = (zigzag[12] & 0x3F) << 2;
        p[0x45d] = (zigzag[13] & 0x3F) << 2;
        p[0x45e] = (zigzag[14] & 0x3F) << 2;
        p[0x45f] = (zigzag[15] & 0x3F) << 2;

        zigzag += 16;
    } while (--i != 0);

    r = TMCJPEGDEC_get_wbyte(&marker, work);
    if (r < 0) {
        return r;
    }

    if (marker != 0xFFD8) {
        return -0x20;
    }

    marker = 0;
    r = TMCJPEGDEC_parse_para(&marker, work);
    if (r < 0) {
        return r;
    }

    if (marker != 0xFFC0) {
        return -0x10;
    }

    r = TMCJPEGDEC_parse_sof(work);
    if (r < 0) {
        return r;
    }

    return 0;
}

s32 TMCJPEGDEC_imageend(TMCCJPEGDecWork* work) {
    if (work->pState->unk_0x21 == 1)
        return 0;

    if (work->scanCount == 0) {
        u16 marker;
        s32 r;

        r = TMCJPEGDEC_rewind_ptr(work);
        if (r < 0) {
            return r;
        }

        r = TMCJPEGDEC_get_wbyte(&marker, work);
        if (r < 0 && r != TMCC_ERROR_UNDERFLOW) {
            return r;
        }

        if (marker != 0xFFD9) {
            work->pState->decodeResult = -0x21;
            return 0;
        }
    }
    return 0;
}

s32 TMCJPEGDEC_scanstart(TMCCJPEGDecWork* work) {
    u16 marker;
    s32 r;

    marker = 0;
    r = TMCJPEGDEC_parse_para(&marker, work);
    if (r < 0) {
        return r;
    }

    if (marker != 0xFFDA) {
        return -0x22;
    }

    r = TMCJPEGDEC_parse_sos(work);
    if (r < 0) {
        return r;
    }

    if (work->frameHeight == 0) {
        return TMCC_ERROR_HEADER;
    }

    r = TMCJPEGDEC_scan_varinit(work);
    if (r < 0) {
        return r;
    }

    work->dcPredict[0] = 0;
    work->dcPredict[1] = 0;
    work->dcPredict[2] = 0;
    work->dcPredict[3] = 0;
    work->restartCnt = 0;
    r = TMCJPEGDEC_init_buff(work);
    if (r < 0) {
        return r;
    }

    work->rstMarkerIdx = 0;
    work->mcuPos = 0;
    return 0;
}

s32 TMCJPEGDEC_scan_varinit(TMCCJPEGDecWork* work) {
    s32 idx;
    TMCJpegFrameInfo* p;
    u16 remX;
    u16 remY;

    p = (TMCJpegFrameInfo*)((u8*)work + 0x17f0);
    work->componentCount = work->componentCount | 0x100;

    if (work->scanCompCount == 1) {
        u8 hSamp;
        u8 vSamp;
        int hMul8;
        int vMul8;
        u8 qTblH;
        u8 qTblV;
        TMCJpegFrameInfo* compPtr;

        hSamp = p->maxHSamp;
        compPtr = (TMCJpegFrameInfo*)((u8*)p + work->compMap[0]);
        vSamp = p->maxVSamp;
        qTblH = compPtr->hSampFactor[0];
        hMul8 = hSamp * 8;
        vMul8 = vSamp * 8;
        p->mcuXCount = (u8)(hMul8 / qTblH);
        qTblV = compPtr->vSampFactor[0];
        p->mcuYCount = p->frameWidth / p->mcuXCount;
        p->mcuXRem = (u8)(vMul8 / qTblV);
        p->mcuXCount2 = p->frameHeight / p->mcuXRem;
    } else {
        u8 vSamp;
        u8 hSamp;

        hSamp = (p->maxHSamp & 0x1f) << 3;
        vSamp = (p->maxVSamp & 0x1f) << 3;
        p->mcuXCount = hSamp;
        p->mcuXRem = vSamp;
        p->mcuYCount = p->frameWidth / hSamp;
        p->mcuXCount2 = p->frameHeight / vSamp;
    }

    remX = p->frameWidth % p->mcuXCount;
    remY = p->frameHeight % p->mcuXRem;

    p->unk_0x18 = remX;
    p->unk_0x19 = remY;

    p->mcuYCount = p->mcuYCount + ((u8)remX != 0 ? 1 : 0);
    p->mcuXCount2 = p->mcuXCount2 + ((u8)remY != 0 ? 1 : 0);
    p->unk_0x14 = (u32)p->mcuYCount * (u32)p->mcuXCount2;

    for (idx = 0; idx < (s32)p->scanCompCount; idx++) {
        u8 compId;
        u32 blocks;

        compId = work->compMap[idx];
        if (p->scanCompCount == 1) {
            blocks = 1;
        } else {
            blocks = p->hSampFactor[compId] * p->vSampFactor[compId];
        }
        p->blockCount[idx] = blocks;
    }

    for (; idx < 4; idx++) {
        p->blockCount[idx] = 0;
    }

    return 0;
}

s32 TMCJPEGDEC_restart_interval(TMCCJPEGDecWork* work, u32 maxMCU, u32 mcuCount) {
    u16 restartCount;
    u16 interval;
    TMCCJPEGDecState* state;

    restartCount = work->restartCnt;
    interval = work->restartInterval;
    restartCount++;
    state = work->pState;
    work->restartCnt = restartCount;

    if (restartCount == interval) {
        s32 result;
        u16 marker;

        result = TMCJPEGDEC_rewind_ptr(work);
        if (result >= 0) {
            result = TMCJPEGDEC_get_wbyte(&marker, work);
            if (marker == 0xFFD9) {
                work->scanCount = 1;
            }
            if (result >= 0) {
                if (marker >= 0xFFC0 && (marker < 0xFFD0 || marker > 0xFFD7)) {
                    result = TMCJPEGDEC_move_ptr(-2, work);
                    if (result < 0) {
                        return result;
                    }
                } else {
                    s32 expected = work->rstMarkerIdx + 0xFFD0;
                    if (marker != expected) {
                        return -0x23;
                    }
                }

                {
                    u16 idx;
                    u8 stepY;
                    u8 stepX;
                    u16 pitch;

                    idx = work->rstMarkerIdx;
                    idx++;
                    idx &= 7;
                    work->rstMarkerIdx = idx;
                    stepY = state->stepY;
                    stepX = state->stepX;
                    pitch = state->maxX;
                    work->dcPredict[0] = 0;
                    work->dcPredict[1] = 0;
                    work->dcPredict[2] = 0;
                    work->dcPredict[3] = 0;
                    work->restartCnt = 0;

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
                        work->mcuPos = ((u32)rem << 16) + div;
                    }
                }

                result = TMCJPEGDEC_init_buff(work);
            }
        }
        return result;
    }
    return 0;
}

static s32 TMCJPEGDEC_parse_para(u16* marker, TMCCJPEGDecWork* work) {
    u8 byte;
    u16 local;
    u16 appSize;
    u16 driSize;
    u16 dnlSize;
    u16 comSize;
    s32 result;

    u32 keepGoing = 0;
    u16 firstMarker = *marker;

    do {
        result = TMCJPEGDEC_get_wbyte(&local, work);
        if (result < 0) {
            if (result == TMCC_ERROR_UNDERFLOW && local == 0xFFD9) {
                result = 0;
            } else {
                return result;
            }
        }

        while (local == 0xFFFF) {
            result = TMCJPEGDEC_get_byte(&byte, work);
            if (result < 0) {
                return result;
            }
            local = 0xFF00 | byte;
        }

        if (local >= 0xFFE0 && local <= 0xFFEF) {
            result = TMCJPEGDEC_get_wbyte(&appSize, work);
            if (result < 0) {
                goto _check;
            }
            if (appSize < 2) {
                result = -0x45;
                goto _check;
            }
            appSize -= 2;
            result = TMCJPEGDEC_move_ptr(appSize, work);
            result = result & (result >> 31);
            result = result & (result >> 31);
        } else {
            switch ((s32)local) {
                case 0xFFC4: {
                    result = TMCJPEGDEC_parse_dht(firstMarker, work);
                    break;
                }
                case 0xFFDB: {
                    result = TMCJPEGDEC_parse_dqt(work);
                    break;
                }
                case 0xFFDD: {
                    result = TMCJPEGDEC_get_wbyte(&driSize, work);
                    if (result >= 0) {
                        if (driSize != 4) {
                            result = -0x42;
                        } else {
                            result = TMCJPEGDEC_get_wbyte(&driSize, work);
                            if (result < 0) {
                                goto _check;
                            }
                            work->restartInterval = driSize;
                            result = 0;
                        }
                    }
                    break;
                }
                case 0xFFDC: {
                    result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                    if (result >= 0) {
                        if (dnlSize != 4) {
                            result = -0x43;
                        } else {
                            result = TMCJPEGDEC_get_wbyte(&dnlSize, work);
                            if (result >= 0) {
                                work->frameHeight = dnlSize;
                                result = 0;
                            }
                        }
                    }
                    break;
                }
                case 0xFFFE: {
                    result = TMCJPEGDEC_get_wbyte(&comSize, work);
                    if (result >= 0) {
                        if (comSize < 2) {
                            result = -0x44;
                        } else {
                            comSize -= 2;
                            result = TMCJPEGDEC_move_ptr(comSize, work);
                            result = result & result >> 31;
                            result = result & result >> 31;
                        }
                    }
                    break;
                }
                case 0xFFC0: {
                    keepGoing = 1;
                    break;
                }
                case 0xFFC2: {
                    keepGoing = 1;
                    break;
                }
                case 0xFFDA: {
                    keepGoing = 1;
                    break;
                }
                case 0xFFD9: {
                    work->scanCount = 1;
                    keepGoing = 1;
                    break;
                }
                default: {
                    result = -0x2F;
                    break;
                }
            }
        }

    _check:
        if (result < 0) {
            keepGoing = 1;
        }
    } while (keepGoing == 0);

    *marker = local;
    return result;
}

static s32 TMCJPEGDEC_parse_dht(s32 first, TMCCJPEGDecWork* work) {
    TMCUnknownInfo* scaleInfo;
    u16 len;
    u8 countBuf[17];
    u8 symBuf[256];
    s32 r;
    TMCHuffParam tblSet;

    scaleInfo = (TMCUnknownInfo*)&work->scaleFlag;

    memset(countBuf, 0, 17);

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0) {
        return r;
    }
    len -= 2;

    do {
        u8 htByte;
        u8* pCount;
        s32 idx;
        s32 totalCodes;

        s32 tblID;
        s32 tblClass;

        len -= 0x11;
        r = TMCJPEGDEC_get_byte(&htByte, work);
        if (r < 0) {
            return r;
        }

        tblClass = htByte >> 4;
        tblID = htByte & 0xF;

        if (tblClass >= 2 || tblID >= 2) {
            return -0x40;
        }

        pCount = &countBuf[1];
        idx = 1;

        countBuf[0] = 0;
        while (idx <= 16) {
            r = TMCJPEGDEC_get_byte(&htByte, work);
            if (r < 0) {
                return r;
            }
            len -= htByte;
            *pCount++ = htByte;
            idx++;
        }

        totalCodes = countBuf[1];
        totalCodes += countBuf[2];
        totalCodes += countBuf[3];
        totalCodes += countBuf[4];
        totalCodes += countBuf[5];
        totalCodes += countBuf[6];
        totalCodes += countBuf[7];
        totalCodes += countBuf[8];
        totalCodes += countBuf[9];
        totalCodes += countBuf[10];
        totalCodes += countBuf[11];
        totalCodes += countBuf[12];
        totalCodes += countBuf[13];
        totalCodes += countBuf[14];
        totalCodes += countBuf[15];
        totalCodes += countBuf[16];

        if (totalCodes > 0xB0) {
            return -0x40;
        }

        r = TMCJPEGDEC_get_sbyte(symBuf, (u8)totalCodes, work);
        if (r < 0) {
            return r;
        }

        tblSet.count = totalCodes;

        TMCJPEGDEC_set_HuffmanTable(&tblSet, tblClass, tblID, scaleInfo);
        r = TMCJPEGDEC_make_huffdec(countBuf, symBuf, &tblSet);
        if (r < 0) {
            return r;
        }
    } while (len != 0);

    return 0;
}

static s32 TMCJPEGDEC_parse_dqt(TMCCJPEGDecWork* work) {
    typedef struct {
        u32 data[64];
    } CopyBlock64;

    u8* scaleInfo;
    u32 tblCopy[65];
    u32* tblPtr;
    u32* d;
    u16 len;
    s32 r;

    d = tblCopy;
    *(CopyBlock64*)(d + 1) = *(CopyBlock64*)lbl_8161E080;

    scaleInfo = (u8*)work + 0x58;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0) {
        return r;
    }
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
        if (r < 0) {
            return r;
        }

        if (qtInfo > 4) {
            return -0x41;
        }

        scaleInfo[qtInfo + 0x1790] = 1;  // quantTblFlag[0..3]

        zigPtr = TMCJPEGDEC_Zigzag_data;
        for (zzIdx = 0; zzIdx < 64; zzIdx++) {
            u32 tmp;

            zz = *zigPtr;
            if (zz > 0x3F) {
                return -0x41;
            }

            r = TMCJPEGDEC_get_byte(&byte, work);
            if (r < 0) {
                return r;
            }

            tmp = (zz << 2) + ((u32)qtInfo << 8);
            val = (u32)byte * tblPtr[zz];
            *(u32*)(tmp + scaleInfo) = val;
            if (val == 0) {
                return -0x41;
            }

            zigPtr++;
        }
    } while (len != 0);

    return 0;
}

static s32 TMCJPEGDEC_parse_sof(TMCCJPEGDecWork* work) {
    TMCJpegFrameInfo* frameInfo = (TMCJpegFrameInfo*)((u8*)work + 0x17f0);

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
    if (r < 0) {
        return r;
    }
    if (len < 2) {
        return TMCC_ERROR_HEADER;
    }

    r = TMCJPEGDEC_get_byte(&precision, work);
    if (r < 0) {
        return r;
    }
    if (precision != 8) {
        return TMCC_ERROR_HEADER;
    }

    r = TMCJPEGDEC_get_wbyte(&height, work);
    if (r < 0) {
        return r;
    }
    frameInfo->frameHeight = height;

    r = TMCJPEGDEC_get_wbyte(&width, work);
    if (r < 0) {
        return r;
    }
    frameInfo->frameWidth = width;

    r = TMCJPEGDEC_get_byte(&compCount, work);
    if (r < 0) {
        return r;
    }
    if (compCount <= 0 || compCount > 4) {
        return TMCC_ERROR_HEADER;
    }

    frameInfo->compCount = compCount;

    for (idx = 0; idx < compCount; idx++) {
        u8 compId;
        u8 hSamp;
        u8 vSamp;
        u8 qTbl;

        r = TMCJPEGDEC_get_byte(&compId, work);
        if (r < 0) {
            return r;
        }
        work->compId[idx] = compId;

        r = TMCJPEGDEC_get_byte(&hSamp, work);
        if (r < 0) {
            return r;
        }
        vSamp = hSamp & 0xF;
        hSamp = hSamp >> 4;

        frameInfo->hSampFactor[idx] = hSamp;
        frameInfo->vSampFactor[idx] = vSamp;

        if (hSamp > maxHSamp)
            maxHSamp = hSamp;

        if (vSamp > maxVSamp)
            maxVSamp = vSamp;

        r = TMCJPEGDEC_get_byte(&qTbl, work);
        if (r < 0) {
            return r;
        }
        work->compQTbl[idx] = qTbl;
    }

    if (maxHSamp == 0 || maxVSamp == 0) {
        return TMCC_ERROR_HEADER;
    }

    frameInfo->maxHSamp = maxHSamp;
    frameInfo->maxVSamp = maxVSamp;
    frameInfo->componentCount = 6;

    {
        u32 sampleIdx;

        for (sampleIdx = 0; sampleIdx < 6; sampleIdx++) {
            u32 c;
            u8 match;

            if (frameInfo->compCount != TMCJPEGDEC_SampleComps[sampleIdx]) {
                continue;
            }

            match = TRUE;
            for (c = 0; c < frameInfo->compCount; c++) {
                if (frameInfo->hSampFactor[c] != TMCJPEGDEC_SampleH_N[sampleIdx * 4 + c] ||
                    frameInfo->vSampFactor[c] != TMCJPEGDEC_SampleV_N[sampleIdx * 4 + c]) {
                    match = FALSE;
                    break;
                }
            }

            if (match) {
                frameInfo->componentCount = sampleIdx;
                break;
            }
        }
    }

    if (frameInfo->componentCount == 6) {
        return -0x70;
    }

    {
        u16 fw = frameInfo->frameWidth;
        u16 fh = frameInfo->frameHeight;
        u8 mcuX = (maxHSamp & 0x07) << 3;
        u8 mcuY = (maxVSamp & 0x07) << 3;
        u16 mcuCountX;
        u16 mcuCountY;
        u16 remX;
        u16 remY;
        u32 compCount2;

        frameInfo->mcuXCount = mcuX;
        frameInfo->mcuXRem = mcuY;

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
            frameInfo->mcuYCount = mcuCountX;
            frameInfo->mcuXCount2 = mcuCountY;
            work->unk_0x1804 = (u32)mcuCountX * (u32)mcuCountY;
        }

        compCount2 = frameInfo->compCount;
        for (idx = 0; idx < compCount2; idx++) {
            u8 hSamp2;
            u8 vSamp2;
            u8 qTbl2;

            hSamp2 = frameInfo->hSampFactor[idx];
            if (hSamp2 < 1 || hSamp2 > 4) {
                return TMCC_ERROR_HEADER;
            }

            vSamp2 = frameInfo->vSampFactor[idx];
            if (vSamp2 < 1 || vSamp2 > 4) {
                return TMCC_ERROR_HEADER;
            }

            qTbl2 = work->compQTbl[idx];
            if (qTbl2 > 4) {
                return TMCC_ERROR_HEADER;
            }
        }
    }

    return 0;
}

static s32 TMCJPEGDEC_parse_sos(TMCCJPEGDecWork* work) {
    s32 idx;
    u8* compPtr;
    TMCUnknownInfo* scalePtr;
    u8* mapPtr;

    s32 dcTbl;
    s32 acTbl;

    u16 len;
    s32 r;
    s32 moveResult;
    s32 ci;
    u8 scanByte;

    compPtr = (u8*)work->compMap;
    scalePtr = (TMCUnknownInfo*)&work->scaleFlag;

    r = TMCJPEGDEC_get_wbyte(&len, work);
    if (r < 0) {
        return r;
    }
    if (len < 2) {
        return -0x51;
    }

    r = TMCJPEGDEC_get_byte(&scanByte, work);
    if (r < 0) {
        return r;
    }

    if (scanByte > 4 || scanByte != work->compCount) {
        return -0x51;
    }

    work->scanCompCount = scanByte;

    for (idx = 0; idx < (s32)work->scanCompCount; idx++) {
        r = TMCJPEGDEC_get_byte(&scanByte, work);
        if (r < 0) {
            return r;
        }

        for (ci = 0; ci < (s32)work->compCount; ci++) {
            if ((s32)compPtr[ci + 0x14] == (s32)scanByte) {
                compPtr[idx] = ci;
                mapPtr = compPtr + idx;
                break;
            }
        }

        // TODO: This isn't right...
        if (ci >= (s32)work->compCount) {
            return -0x51;
        }

        r = TMCJPEGDEC_get_byte(&scanByte, work);
        if (r < 0) {
            return r;
        }

        dcTbl = scanByte >> 4;
        acTbl = scanByte & 0xF;

        if (dcTbl > 1 || acTbl > 1) {
            return -0x51;
        }

        compPtr[*mapPtr + 0x1c] = dcTbl;
        compPtr[*mapPtr + 0x20] = acTbl;

        if (scalePtr->dcTblFlag[dcTbl] != 1) {
            return -0x40;
        }

        if (scalePtr->acTblFlag[acTbl] != 1) {
            return -0x40;
        }

        if (scalePtr->quantTblFlag[mapPtr[0x18]] != 1) {
            return -0x41;
        }
    }

    moveResult = TMCJPEGDEC_move_ptr(3, work);
    return moveResult & (moveResult >> 31);
}

s32 TMCJPEGDEC_err_restart(TMCCJPEGDecWork* work) {
    TMCCJPEGDecState* state;

    u16 interval;
    u16 pitch;
    u32 val;
    s32 rem;
    s32 div;
    s32 next;

    u8 rstDiff;
    u8 byte;
    s32 r;

    state = work->pState;

    if (work->scanCount == 1) {
        state->decodeResult = 0;
        return 0;
    }

    r = TMCJPEGDEC_rewind_ptr(work);
    if (r < 0) {
        return r;
    }

    byte = *work->pBufCur;

    while (TRUE) {
        while (byte != 0xFF) {
            r = TMCJPEGDEC_get_byte(&byte, work);
            if (r < 0) {
                return r;
            }
        }

        r = TMCJPEGDEC_get_byte(&byte, work);

        if (byte == 0xD9) {
            if (r < 0 && r != TMCC_ERROR_UNDERFLOW) {
                return r;
            }
            return 0;
        }

        if (r < 0) {
            return r;
        }

        if (byte < 0xD0 || byte > 0xD7) {
            continue;
        }

        if (byte > work->rstMarkerIdx + 0xCF) {
            rstDiff = byte - (work->rstMarkerIdx + 0xCF);
        } else {
            rstDiff = (byte + 0x08) - (work->rstMarkerIdx + 0xCF);
        }

        work->rstMarkerIdx = (byte + 1) & 7;
        interval = work->restartInterval;
        pitch = state->maxX;
        val = work->mcuPos;

        work->dcPredict[0] = 0;
        work->dcPredict[1] = 0;
        work->dcPredict[2] = 0;
        work->dcPredict[3] = 0;
        work->restartCnt = 0;

        next = (u8)(val & 0xFF) * (s32)pitch + (val >> 16) + (s32)(u8)(rstDiff * interval);
        div = next / (s32)pitch;
        rem = next - div * (s32)pitch;
        work->mcuPos = (rem << 16) + (u16)div;

        r = TMCJPEGDEC_init_buff(work);
        if (r < 0) {
            return r;
        }

        state->posX = rem;
        state->posY = div;
        state->position = TMCJPEGDEC_get_position(work);

        return state->result - (state->posY * state->maxX) - state->posY;
    }
}

void TMCJPEGDEC_set_entropytbl(TMCCJPEGDecWork* work, s32 idx, u8 data) {
    switch (idx) {
        case 0: {
            work->pDCACPtrs[0] = &work->zigzagData[8];
            work->pDCACPtrs[2] = work->maxCodeDC0;
            work->pDCACPtrs[1] = work->valPtrDC0;
            break;
        }
        case 1: {
            work->pDCACPtrs[0] = work->huffDecTblDC1;
            work->pDCACPtrs[2] = work->maxCodeDC1;
            work->pDCACPtrs[1] = work->valPtrDC1;
            break;
        }
    }

    if ((s32)data == 1) {
        goto ac1;
    }
    if ((s32)data < 1 && (s32)data >= 0) {
        work->pDCACPtrs[4] = work->huffDecTblAC0;
        *(void**)work->zigzagData = work->maxCodeAC0;
        work->pDCACPtrs[5] = work->valPtrAC0;
    }
    return;

ac1:
    work->pDCACPtrs[4] = work->huffDecTblAC1;
    *(void**)work->zigzagData = work->maxCodeAC1;
    work->pDCACPtrs[5] = work->valPtrAC1;
}
