#include <tmc_jpeg.h>
#include <tmc_jpeg_internal.h>
#include <string.h>

static s32 TMCJPEGDEC_exif_parse(const u8* data, u32 size, TMCCJPEGDecExifData* pInfo);
static void TMCJPEGDEC_IFD0_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry);
static void TMCJPEGDEC_IFD1_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry);
static s32 TMCJPEGDEC_ThumbnailCheck(TMCCJPEGDecInitParam* param, TMCCJPEGDecExifInfo* info, u32 totalSize);

static u16 read_u16(const u8* p, u16 byteOrder)
{
    u32 raw = (p[1] << 8) | p[0];
    u32 tmp = ((raw & 0xFF) << 8) | ((raw >> 8) & 0xFF);
    if (byteOrder == 0x4949)
        tmp = raw;
    return tmp;
}

static u32 read_u32(const u8* p, u16 byteOrder)
{
    u32 raw = (p[1] << 8) | p[0];
    u32 tmp;
    raw = raw | (p[2] << 16) | (p[3] << 24);
    tmp = ((raw & 0xFF) << 24) | ((raw & 0xFF00) << 8) |
          ((raw >> 8) & 0xFF00) | ((raw >> 24) & 0xFF);
    if (byteOrder == 0x4949)
        tmp = raw;
    return tmp;
}

s32 TMCCJPEGDecGetOffsetEXIF(u32* pOffset, u32* pSize, TMCCJPEGDecInitParam* pParam)
{
    u8* buf1;
    TMCJpegDecWork* work;
    u16 marker;
    u32 dataSize;
    u16 segSize;
    s32 result;
    u8 sig[4];

    buf1 = pParam->mpBuf1;
    if (buf1 == NULL)
        return -1;

    work = (TMCJpegDecWork*)buf1;
    memset(work, 0, 0x19E8);

    TMCJPEGDEC_init_ptr_buff(work, &pParam->mpBuf2);
    dataSize = pParam->mDataSize;

    result = TMCJPEGDEC_get_wbyte(&marker, work);
    if (result < 0)
        return -1;

    if (marker != 0xFFD8)
        return -0x20;

    for (;;) {
        result = TMCJPEGDEC_get_wbyte(&marker, work);
        if (result < 0)
            return -1;

        if (marker == 0xFFE1) {
            result = TMCJPEGDEC_get_wbyte(&segSize, work);
            if (result < 0)
                return -1;

            if (segSize < 2)
                return -0x45;

            result = TMCJPEGDEC_get_sbyte(sig, 4, work);
            if (result < 0)
                return -1;

            if (sig[0] == 0x45 && sig[1] == 0x78 &&
                sig[2] == 0x69 && sig[3] == 0x66) {
                *pOffset = dataSize - work->mRemaining - TMCJPEGDEC_chk_possible_size(work) - 8;
                *pSize = segSize + 2;
                return 0;
            }

            return -0x45;
        }

        result = TMCJPEGDEC_get_wbyte(&segSize, work);
        if (result < 0)
            return -1;

        if (segSize < 2)
            return -0x45;

        segSize -= 2;

        if (marker >= 0xFFE0 && marker <= 0xFFEF) {
            TMCJPEGDEC_move_ptr(segSize, work);
            continue;
        }

        if (marker >= 0xFFD9) {
            if (marker == 0xFFD9)
                return -2;
            if (marker == 0xFFFE) {
                TMCJPEGDEC_move_ptr(segSize, work);
                continue;
            }
            if (marker >= 0xFFDE)
                return -0x2F;
            if (marker >= 0xFFDB) {
                TMCJPEGDEC_move_ptr(segSize, work);
                continue;
            }
            return -2;
        }

        if (marker >= 0xFFC2) {
            if (marker == 0xFFC2 || marker == 0xFFC4) {
                TMCJPEGDEC_move_ptr(segSize, work);
                continue;
            }
            return -0x2F;
        }

        if (marker == 0xFFC0) {
            TMCJPEGDEC_move_ptr(segSize, work);
            continue;
        }

        return -0x2F;
    }
}

s32 TMCCJPEGDecGetInfoEXIF(TMCCJPEGDecExifInfo* pInfo, TMCCJPEGDecInitParam* pParam)
{
    u8* buf1;
    TMCJpegDecWork* work;
    u16 segSize;
    u8* src;
    s32 result;

    buf1 = pParam->mpBuf1;
    if (buf1 == NULL)
        return -1;

    memset(pInfo, 0, 0x6D4);
    memset(buf1, 0, 0x19E8);

    work = (TMCJpegDecWork*)buf1;
    work->mpState = pInfo;
    pInfo->mpWorkBuf = work;

    src = pParam->mpBuf2;
    {
        u32 hi = src[1];
        u32 lo = src[0];
        u32 raw = (hi << 8) | lo;
        raw = ((raw & 0xFF) << 8) | ((raw >> 8) & 0xFF);
        if (raw != 0xFFE1)
            return -0x45;
    }

    {
        u32 hi = src[3];
        u32 lo = src[2];
        u32 raw = (hi << 8) | lo;
        raw = ((raw & 0xFF) << 8) | ((raw >> 8) & 0xFF);
        segSize = raw;
    }
    if (segSize < 2)
        return -0x45;

    result = TMCJPEGDEC_exif_parse(src + 10, segSize - 8, &pInfo->mExifData);
    if (result < 0)
        return result;

    if (pParam->mFlag1 == 0)
        return 0;

    if (pParam->mFlag1 != 1)
        return -1;

    result = TMCJPEGDEC_ThumbnailCheck(pParam, pInfo, segSize - 2);
    if (result < 0)
        return result;

    TMCJPEGDEC_init_buff_thumbnail((TMCJpegDecWork*)&pInfo->mExifData, (u8*)work, (u8*)pParam->mpBuf2);

    result = TMCJPEGDEC_HeaderAnalyze(work);
    if (result < 0)
        return -2;

    result = TMCJPEGDEC_Decompscan(work);
    if (result < 0)
        return -2;

    if (work->mScanCount != 0)
        return -2;

    result = TMCJPEGDEC_Setsize(work);
    if (result < 0)
        return -2;

    if (pInfo->mConverterType == 0) {
        result = TMCJPEGDEC_set_converterRGB565(work);
    } else if (pInfo->mConverterType == 1) {
        result = TMCJPEGDEC_set_converterRGBA8(work);
    } else if (pInfo->mConverterType == 2) {
        result = TMCJPEGDEC_set_converterY8U8V8(work);
    }

    if (result < 0)
        return -2;

    pInfo->mPosition = TMCJPEGDEC_get_position(work);
    return pInfo->mState;
}

static s32 TMCJPEGDEC_exif_parse(const u8* data, u32 size, TMCCJPEGDecExifData* pInfo)
{
    u16 byteOrder;
    u32 ifd0Offset;
    u32 ifd1Offset;
    u32 exifIfdOffset;
    u16 count;
    u32 remaining;
    u32 entriesSize;
    u32 i;
    const u8* p;
    s32 sval;
    u32 raw;

    pInfo->mThumbData = (u32)data;
    pInfo->mDataEnd = (u32)(data + size);
    pInfo->mNextIfdOffset = 0;

    if (size < 8)
        return -161;

    raw = (data[1] << 8) | data[0];
    if (raw != 0x4D4D && raw != 0x4949)
        return -161;
    byteOrder = raw;

    {
        s16 s = *(s16*)(data + 2);
        if (byteOrder == 0x4949) {
            s = ((u16)data[3] << 8) | data[2];
        }
        if (s != 0x002A)
            return -161;
    }

    ifd0Offset = read_u32(data + 4, byteOrder);
    if (ifd0Offset > size)
        return -161;

    sval = size - (u16)ifd0Offset;
    if (sval < 2)
        return -161;

    p = data + (u16)ifd0Offset;
    count = read_u16(p, byteOrder);
    entriesSize = count * 12;
    sval = (u32)(sval - 2);
    if (sval < entriesSize)
        return -161;

    p += 2;
    for (i = 0; i < count; i++) {
        TMCJPEGDEC_IFD0_tag_parse(pInfo, byteOrder, p);
        p += 12;
    }

    sval -= entriesSize;
    if (sval < 4)
        return -161;

    ifd1Offset = read_u32(p, byteOrder);
    if (ifd1Offset != 0) {
        if (ifd1Offset > size)
            return -161;

        sval = size - (u16)ifd1Offset;
        if (sval < 2)
            return -161;

        p = data + (u16)ifd1Offset;
        count = read_u16(p, byteOrder);
        entriesSize = count * 12;
        sval = (u32)(sval - 2);
        if (sval < entriesSize)
            return -161;

        p += 2;
        for (i = 0; i < count; i++) {
            TMCJPEGDEC_IFD1_tag_parse(pInfo, byteOrder, p);
            p += 12;
        }
    }

    exifIfdOffset = pInfo->mNextIfdOffset;
    if (exifIfdOffset == 0 || exifIfdOffset > size)
        return -161;

    sval = size - (u16)exifIfdOffset;
    if (sval < 2)
        return -161;

    p = data + (u16)exifIfdOffset;
    count = read_u16(p, byteOrder);
    entriesSize = count * 12;
    sval = (u32)(sval - 2);
    if (sval < entriesSize)
        return -161;

    p += 2;
    for (i = 0; i < count; i++) {
        TMCJPEGDEC_IFD0_tag_parse(pInfo, byteOrder, p);
        p += 12;
    }

    return 0;
}

static void TMCJPEGDEC_IFD0_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry)
{
    u16 tag;
    u16 type;

    tag = read_u16(entry, byteOrder);
    type = read_u16(entry + 2, byteOrder);
    {
    u32 offset;
    u32 raw32;
    u16 raw16;
    const u8* p;
    u32 i;
    u32 j;

    if (tag >= 0x201) {
        if (tag == 0x201)
            return;
        if (tag == 0x202)
            return;
        if (tag < 0x213) {
            if (tag == 0x213) {
                raw16 = read_u16(entry + 8, byteOrder);
                pInfo->mYCbCrPos = raw16;
                return;
            }
            return;
        }
        if (tag == 0x8769) {
            pInfo->mNextIfdOffset = offset;
            return;
        }
        if (tag == 0x8825)
            return;
        if (tag < 0x9000)
            return;
        if (tag == 0x9000) {
            p = (const u8*)(pInfo->mThumbData + offset);
            if ((u32)p < pInfo->mThumbData)
                return;
            if ((u32)(p + 4) > pInfo->mDataEnd)
                return;
            *(u32*)pInfo->mExifVer = read_u32(p, byteOrder);
            return;
        }
        if (tag == 0x9101) {
            p = (const u8*)(pInfo->mThumbData + offset);
            if ((u32)p < pInfo->mThumbData)
                return;
            if ((u32)(p + 4) > pInfo->mDataEnd)
                return;
            *(u32*)pInfo->mFlashVer = read_u32(p, byteOrder);
            return;
        }
        if (tag < 0xA000)
            return;
        if (tag == 0xA000) {
            p = (const u8*)(pInfo->mThumbData + offset);
            if ((u32)p < pInfo->mThumbData)
                return;
            if ((u32)(p + 4) > pInfo->mDataEnd)
                return;
            *(u32*)pInfo->mFlashPixVer = read_u32(p, byteOrder);
            return;
        }
        if (tag == 0xA002) {
            raw32 = offset;
            if (type == 4) {
                p = (const u8*)(pInfo->mThumbData + offset);
                if ((u32)p < pInfo->mThumbData)
                    return;
                if ((u32)(p + 4) > pInfo->mDataEnd)
                    return;
                raw32 = read_u32(p, byteOrder);
            } else if (type == 3) {
                raw16 = read_u16(entry + 8, byteOrder);
                raw32 = raw16;
            }
            pInfo->mPixelXDim = raw32;
            return;
        }
        if (tag == 0xA003) {
            raw32 = offset;
            if (type == 4) {
                p = (const u8*)(pInfo->mThumbData + offset);
                if ((u32)p < pInfo->mThumbData)
                    return;
                if ((u32)(p + 4) > pInfo->mDataEnd)
                    return;
                raw32 = read_u32(p, byteOrder);
            } else if (type == 3) {
                raw16 = read_u16(entry + 8, byteOrder);
                raw32 = raw16;
            }
            pInfo->mPixelYDim = raw32;
            return;
        }
        if (tag == 0xA004) {
            pInfo->mColorSpace = offset;
            return;
        }
        return;
    }

    if (tag == 0x11B) {
        p = (const u8*)(pInfo->mThumbData + offset);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mYResNum = raw32;
        p = (const u8*)(pInfo->mThumbData + offset + 4);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mYResDen = raw32;
        return;
    }

    if (tag > 0x11B) {
        if (tag == 0x12D) {
            p = (const u8*)(pInfo->mThumbData + offset);
            for (j = 0; j < 3; j++) {
                for (i = 0; i < 256; i++) {
                    if ((u32)p < pInfo->mThumbData)
                        return;
                    if ((u32)(p + 2) > pInfo->mDataEnd)
                        return;
                    pInfo->mTransferFunc[j][i] = read_u16(p, byteOrder);
                    p += 2;
                }
            }
            return;
        }
        if (tag > 0x12D)
            return;
        if (tag == 0x128) {
            raw16 = read_u16(entry + 8, byteOrder);
            pInfo->mResUnit = raw16;
            return;
        }
        return;
    }

    if (tag == 0x111)
        return;
    if (tag < 0x111) {
        if (tag == 0x103)
            return;
        return;
    }
    if (tag >= 0x11A) {
        p = (const u8*)(pInfo->mThumbData + offset);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mXResNum = raw32;
        p = (const u8*)(pInfo->mThumbData + offset + 4);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mXResDen = raw32;
        return;
    }
    if (tag >= 0x113)
        return;
    raw16 = read_u16(entry + 8, byteOrder);
    pInfo->mOrientation = raw16;
    }
}

static void TMCJPEGDEC_IFD1_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry)
{
    u16 tag;
    u32 offset;
    u32 raw32;
    u16 raw16;
    const u8* p;

    tag = read_u16(entry, byteOrder);

    if (tag == 0x132)
        return;

    if (tag > 0x132) {
        if (tag == 0x8769)
            return;
        if (tag >= 0x8769) {
            if (tag > 0x9101) {
                if (tag >= 0xA004)
                    return;
                return;
            }
            if (tag == 0x9101 || tag == 0x9000)
                return;
            return;
        }
        offset = read_u32(entry + 8, byteOrder);
        if (tag == 0x202) {
            pInfo->mThumbnailLength = offset;
            return;
        }
        if (tag > 0x202)
            return;
        if (tag == 0x201) {
            pInfo->mThumbnailOffset = offset;
            return;
        }
        return;
    }

    if (tag >= 0x11A) {
        offset = read_u32(entry + 8, byteOrder);
        if (tag == 0x11A) {
            p = (const u8*)(pInfo->mThumbData + offset);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mXResNumIFD1 = raw32;
        p = (const u8*)(pInfo->mThumbData + offset + 4);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mXResDenIFD1 = raw32;
        return;
        }
        if (tag > 0x11A) {
            if (tag >= 0x128) {
                if (tag == 0x128) {
                    raw16 = read_u16(entry + 8, byteOrder);
                    pInfo->mResUnitIFD1 = raw16;
                    return;
                }
                return;
            }
            p = (const u8*)(pInfo->mThumbData + offset);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mPlanarConfigIFD1 = raw32;
        p = (const u8*)(pInfo->mThumbData + offset + 4);
        if ((u32)p < pInfo->mThumbData)
            return;
        if ((u32)(p + 4) > pInfo->mDataEnd)
            return;
        raw32 = read_u32(p, byteOrder);
        pInfo->mYResDenIFD1 = raw32;
        return;
        }
    }

    if (tag < 0x11A) {
        if (tag >= 0x111) {
            if (tag == 0x111)
                return;
            return;
        }
        if (tag == 0x103) {
            raw16 = read_u16(entry + 8, byteOrder);
            pInfo->mCompressionIFD1 = raw16;
            return;
        }
        return;
    }
}

static s32 TMCJPEGDEC_ThumbnailCheck(TMCCJPEGDecInitParam* param, TMCCJPEGDecExifInfo* info, u32 totalSize)
{
    s32 total;
    s32 length;
    s32 tmp;

    total = (s32)info->mExifData.mThumbnailOffset;
    if (total == 0)
        return -0xA0;

    length = (s32)info->mExifData.mThumbnailLength;
    if (length == 0)
        return -0xA0;

    if (info->mExifData.mCompressionIFD1 != 6)
        return -0xA0;

    total += length;
    tmp = (s32)info->mExifData.mThumbData - (s32)param->mpBuf2;
    total += tmp;

    if ((u32)total > param->mBuf2Size)
        return -0xF1;

    if ((u32)total > totalSize)
        return -0xF1;

    info->mExifFlags = 1;

    if (param->mFlag1 != 1)
        return -1;

    info->mThumbFlag = 0;

    if (param->mFlag2 != 0 && param->mFlag2 != 1 && param->mFlag2 != 2)
        return -1;

    info->mConverterType = param->mFlag2;
    return 0;
}
