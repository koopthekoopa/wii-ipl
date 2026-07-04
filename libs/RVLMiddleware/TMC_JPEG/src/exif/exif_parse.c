#include <tmc_jpeg.h>
#include <tmc_jpeg_internal.h>
#include <string.h>

static s32 TMCJPEGDEC_exif_parse(const u8* data, u32 size, TMCCJPEGDecExifData* pInfo);
static void TMCJPEGDEC_IFD0_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry);
static void TMCJPEGDEC_IFD1_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry);
static s32 TMCJPEGDEC_ThumbnailCheck(TMCCJPEGDecInitParam* param, TMCCJPEGDecExifInfo* info, u32 totalSize);

static u16 read_u16(const u8* p, u16 byteOrder)
{
    u32 raw = p[1] << 8 | p[0];
    if (byteOrder == 0x4949)
        return (u16)raw;
    return (u16)(((raw >> 8) & 0xFF) | ((raw & 0xFF) << 8));
}

static u32 read_u32(const u8* p, u16 byteOrder)
{
    u32 raw = p[1] << 8 | p[0];
    u32 tmp;
    raw = raw | p[2] << 16 | p[3] << 24;
    tmp = (raw >> 24) | ((raw >> 8) & 0xFF00) |
          ((raw & 0xFF00) << 8) | ((raw & 0xFF) << 24);
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
        u32 raw = hi << 8 | lo;
        raw = (raw & 0xFF) << 8 | raw >> 8 & 0xFF;
        if (raw != 0xFFE1)
            return -0x45;
    }

    {
        u32 hi = src[3];
        u32 lo = src[2];
        u32 raw = hi << 8 | lo;
        raw = (raw & 0xFF) << 8 | raw >> 8 & 0xFF;
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
    u32 ifd0Offset;
    u32 ifd1Offset;
    u32 exifIfdOffset;
    u16 count;
    u32 remaining;
    u32 entriesSize;
    u32 i;
    const u8* p;
    s32 sval;
    u16 byteOrder;
    u32 raw;

    pInfo->mThumbData = (u8*)data;
    pInfo->mDataEnd = (u8*)data + size;
    pInfo->mNextIfdOffset = 0;

    if (size < 8)
        return -161;

    raw = data[1] << 8 | data[0];
    if (raw != 0x4D4D && raw != 0x4949)
        return -161;
    byteOrder = raw;

    {
        u16 raw = data[3] << 8 | data[2];
        u16 ver = (raw & 0xFF) << 8 | raw >> 8 & 0xFF;
        if (byteOrder == 0x4949) {
            ver = raw;
        }
        if (ver != 0x002A)
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

    switch (tag) {
    case 0x0103:
    case 0x0111:
    case 0x0201:
    case 0x0202:
    case 0x8825:
    case 0xA004:
        return;

    case 0x0112:
        pInfo->mOrientation = read_u16(entry + 8, byteOrder);
        return;

    case 0x011A:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = (const u8*)(pInfo->mThumbData + offset);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mXResNum = read_u32(p, byteOrder);
            p = (const u8*)(pInfo->mThumbData + offset + 4);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mXResDen = read_u32(p, byteOrder);
        }
        return;

    case 0x011B:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = (const u8*)(pInfo->mThumbData + offset);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mYResNum = read_u32(p, byteOrder);
            p = (const u8*)(pInfo->mThumbData + offset + 4);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mYResDen = read_u32(p, byteOrder);
        }
        return;

    case 0x0128:
        pInfo->mResUnit = read_u16(entry + 8, byteOrder);
        return;

    case 0x012D:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = (const u8*)(pInfo->mThumbData + offset);
            u32 j;
            u32 i;
            for (j = 0; j < 3; j++) {
                for (i = 0; i < 256; i++) {
                    if (p < pInfo->mThumbData)
                        return;
                    if (p + 2 > pInfo->mDataEnd)
                        return;
                    pInfo->mTransferFunc[j][i] = read_u16(p, byteOrder);
                    p += 2;
                }
            }
        }
        return;

    case 0x0132:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = (const u8*)(pInfo->mThumbData + offset);
            if (p < pInfo->mThumbData)
                return;
            if (p + 20 > pInfo->mDataEnd)
                return;
            *(u32*)(pInfo->mDateTime + 0) = *(u32*)(p + 0);
            *(u32*)(pInfo->mDateTime + 4) = *(u32*)(p + 4);
            *(u32*)(pInfo->mDateTime + 8) = *(u32*)(p + 8);
            *(u32*)(pInfo->mDateTime + 12) = *(u32*)(p + 12);
            *(u32*)(pInfo->mDateTime + 16) = *(u32*)(p + 16);
        }
        return;

    case 0x0213:
        pInfo->mYCbCrPos = read_u16(entry + 8, byteOrder);
        return;

    case 0x8769:
        pInfo->mNextIfdOffset = read_u32(entry + 8, byteOrder);
        return;

    case 0x9000:
        pInfo->mExifVer[0] = entry[8];
        pInfo->mExifVer[1] = entry[9];
        pInfo->mExifVer[2] = entry[10];
        pInfo->mExifVer[3] = entry[11];
        return;

    case 0x9101:
        pInfo->mFlashVer[0] = entry[8];
        pInfo->mFlashVer[1] = entry[9];
        pInfo->mFlashVer[2] = entry[10];
        pInfo->mFlashVer[3] = entry[11];
        return;

    case 0xA000:
        pInfo->mFlashPixVer[0] = entry[8];
        pInfo->mFlashPixVer[1] = entry[9];
        pInfo->mFlashPixVer[2] = entry[10];
        pInfo->mFlashPixVer[3] = entry[11];
        return;

    case 0xA001:
        pInfo->mColorSpace = read_u16(entry + 8, byteOrder);
        return;

    case 0xA002:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            if (type == 4) {
                pInfo->mPixelXDim = offset;
            } else if (type == 3) {
                pInfo->mPixelXDim = read_u16(entry + 8, byteOrder);
            }
        }
        return;

    case 0xA003:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            if (type == 4) {
                pInfo->mPixelYDim = offset;
            } else if (type == 3) {
                pInfo->mPixelYDim = read_u16(entry + 8, byteOrder);
            }
        }
        return;

    default:
        return;
    }
}

static void TMCJPEGDEC_IFD1_tag_parse(TMCCJPEGDecExifData* pInfo, u16 byteOrder, const u8* entry)
{
    u16 tag;

    tag = read_u16(entry, byteOrder);

    switch (tag) {
    case 0x0111:
    case 0x012D:
    case 0x0132:
    case 0x0213:
    case 0x8769:
    case 0x9000:
    case 0x9101:
        return;

    case 0x0103:
        pInfo->mCompressionIFD1 = read_u16(entry + 8, byteOrder);
        return;

    case 0x011A:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = pInfo->mThumbData + offset;
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mXResNumIFD1 = read_u32(p, byteOrder);
            p = (const u8*)(pInfo->mThumbData + offset + 4);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mXResDenIFD1 = read_u32(p, byteOrder);
        }
        return;

    case 0x011B:
        {
            u32 offset = read_u32(entry + 8, byteOrder);
            const u8* p = (const u8*)(pInfo->mThumbData + offset);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mPlanarConfigIFD1 = read_u32(p, byteOrder);
            p = (const u8*)(pInfo->mThumbData + offset + 4);
            if (p < pInfo->mThumbData)
                return;
            if (p + 4 > pInfo->mDataEnd)
                return;
            pInfo->mYResDenIFD1 = read_u32(p, byteOrder);
        }
        return;

    case 0x0128:
        pInfo->mResUnitIFD1 = read_u16(entry + 8, byteOrder);
        return;

    case 0x0201:
        pInfo->mThumbnailOffset = read_u32(entry + 8, byteOrder);
        return;

    case 0x0202:
        pInfo->mThumbnailLength = read_u32(entry + 8, byteOrder);
        return;

    default:
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
