#include <eztx.h>

#include <zi8clib/zi8cinfo.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zierror.h>

const u8 zi8CangjieCodes[0x20] = {
    0x01, 0x02, 0x03, 0x05, 0x06, 0x07, 0x09, 0x0A, 0x0B, 0x0D, 0x0E, 0x0F, 0x11,
    0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x19, 0x1A, 0x1B, 0x1D, 0x1E, 0x1F,
};

ziU8 Zi8GetCJInfo(ziU8* cangjieData, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziS32 i, j;
    ziS32 value;
    ziS32 part;
    ziS32 count;

    ZI_WORK;

    ZI_WORK->unk_0x16 = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 0x02;
    if (ZI_WORK->unk_0x16 == 0) {
        Zi8LogError(0x8FC, ZI_WORK);
        return 0;
    }
    if (maxInfoBufSize < 6) {
        Zi8LogError(0x322, ZI_WORK);
        return 0;
    }

    count = cangjieData[0] & 7;
    value = cangjieData[0] | (cangjieData[1] << 8) | (cangjieData[2] << 16) | (cangjieData[3] << 24);
    value >>= 3;
    for (i = 0; i < count; i++) {
        part = value & 0x1F;
        value >>= 5;
        for (j = 0; j < 0x19; j++) {
            if (zi8CangjieCodes[j] == part)
                break;
        }
        if (j >= 0x19) {
            Zi8LogError(0x26D, ZI_WORK);
            return 0;
        }
        charInfoBuffer[i] = j + 'A';
    }

    charInfoBuffer[i] = 0;
    Zi8LogError(0x64, ZI_WORK);
    return i;
}

ziU8 Zi8GetPInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziU16 chHiBits, chMidBits, chLoBits;
    ziU8 infoLen = 0;

    if (maxInfoBufSize < 8) {
        Zi8LogError(0x322, ZI_WORK);
        return 0;
    }
    if (ch == 0) {
        Zi8LogError(0x276, ZI_WORK);
        return 0;
    }

    chHiBits = ch >> 9 & 0x3F;
    chMidBits = ch >> 3 & 0x3F;
    chLoBits = ch & 7;
    if (chHiBits != 1) {
        switch (chHiBits) {
            case 0x3C:
                charInfoBuffer[infoLen] = 0xF362;
                break;
            case 0x3F:
                charInfoBuffer[infoLen] = 0xF370;
                break;
            case 0x02:
                charInfoBuffer[infoLen] = 0xF364;
                break;
            case 0x05:
                charInfoBuffer[infoLen] = 0xF374;
                break;
            case 0x34:
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x37:
                charInfoBuffer[infoLen] = 0xF36B;
                break;
            case 0x06:
                charInfoBuffer[infoLen] = 0xF36A;
                break;
            case 0x09:
                charInfoBuffer[infoLen] = 0xF371;
                break;
            case 0x1C:
                charInfoBuffer[infoLen] = 0xF37A;
                break;
            case 0x18:
                charInfoBuffer[infoLen] = 0xF363;
                break;
            case 0x0A:
                charInfoBuffer[infoLen] = 0xF378;
                break;
            case 0x0C:
                charInfoBuffer[infoLen] = 0xF36D;
                break;
            case 0x38:
                charInfoBuffer[infoLen] = 0xF366;
                break;
            case 0x26:
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x2B:
                charInfoBuffer[infoLen] = 0xF36C;
                break;
            case 0x3B:
                charInfoBuffer[infoLen] = 0xF368;
                break;
            case 0x1A:
                charInfoBuffer[infoLen] = 0xF373;
                break;
            case 0x2C:
                charInfoBuffer[infoLen] = 0xF372;
                break;
            case 0x11:
                charInfoBuffer[infoLen] = 0xF377;
                break;
            case 0x0D:
                charInfoBuffer[infoLen] = 0xF379;
                break;

            case 0x1D:
                charInfoBuffer[infoLen++] = 0xF37A;
                charInfoBuffer[infoLen] = 0xF368;
                break;
            case 0x19:
                charInfoBuffer[infoLen++] = 0xF363;
                charInfoBuffer[infoLen] = 0xF368;
                break;
            case 0x1B:
                charInfoBuffer[infoLen++] = 0xF373;
                charInfoBuffer[infoLen] = 0xF368;
                break;
            default:
                Zi8LogError(0x277, ZI_WORK);
                return 0;
        }
        infoLen++;
    }
    if (chMidBits != 0) {
        switch (chMidBits) {
            case 0x01:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36F;
                break;
            case 0x02:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x03:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x04:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen] = 0xF361;
                break;
            case 0x08:
                charInfoBuffer[infoLen] = 0xF369;
                break;
            case 0x09:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen] = 0xF365;
                break;
            case 0x0B:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen] = 0xF375;
                break;
            case 0x0C:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x0D:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x0F:
                charInfoBuffer[infoLen++] = 0xF369;
                charInfoBuffer[infoLen++] = 0xF36F;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x10:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x11:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x13:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF369;
                break;
            case 0x17:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen] = 0xF361;
                break;
            case 0x18:
                charInfoBuffer[infoLen] = 0xF375;
                break;
            case 0x1C:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x1D:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen] = 0xF369;
                break;
            case 0x1E:
                charInfoBuffer[infoLen++] = 0xF375;
                charInfoBuffer[infoLen] = 0xF36F;
                break;
            case 0x1F:
                if ((chHiBits == 0x26) || (chHiBits == 0x2B)) {
                    charInfoBuffer[infoLen++] = 0xF376;
                    charInfoBuffer[infoLen] = 0xF365;
                } else {
                    charInfoBuffer[infoLen++] = 0xF375;
                    charInfoBuffer[infoLen] = 0xF365;
                }
                break;
            case 0x20:
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x21:
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x23:
                charInfoBuffer[infoLen] = 0xF361;
                break;
            case 0x25:
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF369;
                break;
            case 0x26:
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36F;
                break;
            case 0x28:
                charInfoBuffer[infoLen++] = 0xF36F;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x2A:
                charInfoBuffer[infoLen++] = 0xF36F;
                charInfoBuffer[infoLen] = 0xF375;
                break;
            case 0x2B:
                charInfoBuffer[infoLen] = 0xF36F;
                break;
            case 0x30:
                charInfoBuffer[infoLen++] = 0xF365;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            case 0x31:
                charInfoBuffer[infoLen++] = 0xF365;
                charInfoBuffer[infoLen++] = 0xF36E;
                charInfoBuffer[infoLen] = 0xF367;
                break;
            case 0x33:
                charInfoBuffer[infoLen++] = 0xF365;
                charInfoBuffer[infoLen] = 0xF372;
                break;
            case 0x34:
                charInfoBuffer[infoLen] = 0xF365;
                break;
            case 0x35:
                charInfoBuffer[infoLen++] = 0xF365;
                charInfoBuffer[infoLen] = 0xF369;
                break;
            case 0x38:
                charInfoBuffer[infoLen] = 0xF376;
                break;
            case 0x39:
                charInfoBuffer[infoLen++] = 0xF376;
                charInfoBuffer[infoLen++] = 0xF361;
                charInfoBuffer[infoLen] = 0xF36E;
                break;
            default:
                Zi8LogError(0x278, ZI_WORK);
                return 0;
        }
        infoLen++;
    }
    switch (chLoBits) {
        case 1:
            charInfoBuffer[infoLen++] = 0xF331;
            break;
        case 2:
            charInfoBuffer[infoLen++] = 0xF332;
            break;
        case 3:
            charInfoBuffer[infoLen++] = 0xF333;
            break;
        case 4:
            charInfoBuffer[infoLen++] = 0xF334;
            break;
        case 5:
            charInfoBuffer[infoLen++] = 0xF335;
            break;
    }
    charInfoBuffer[infoLen] = 0;
    Zi8LogError(100, ZI_WORK);
    return infoLen;
}
ziU8 Zi8GetZInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziU16 chHiBits, chMidBits, chLoBits;
    ziU8 infoLen = 0;

    if (maxInfoBufSize < 5) {
        Zi8LogError(0x322, ZI_WORK);
        return 0;
    }
    if (ch == 0) {
        Zi8LogError(0x280, ZI_WORK);
        return 0;
    }

    chHiBits = ch >> 9 & 0x3F;
    chMidBits = ch >> 3 & 0x3F;
    chLoBits = ch & 7;
    switch (chHiBits) {
        case 0x3C:
            charInfoBuffer[infoLen++] = 0xF305;
            break;
        case 0x19:
            charInfoBuffer[infoLen++] = 0xF314;
            break;
        case 0x18:
            charInfoBuffer[infoLen++] = 0xF318;
            break;
        case 0x02:
            charInfoBuffer[infoLen++] = 0xF309;
            break;
        case 0x38:
            charInfoBuffer[infoLen++] = 0xF308;
            break;
        case 0x34:
            charInfoBuffer[infoLen++] = 0xF30D;
            break;
        case 0x3B:
            charInfoBuffer[infoLen++] = 0xF30F;
            break;
        case 0x06:
            charInfoBuffer[infoLen++] = 0xF310;
            break;
        case 0x37:
            charInfoBuffer[infoLen++] = 0xF30E;
            break;
        case 0x2B:
            charInfoBuffer[infoLen++] = 0xF30C;
            break;
        case 0x0C:
            charInfoBuffer[infoLen++] = 0xF307;
            break;
        case 0x26:
            charInfoBuffer[infoLen++] = 0xF30B;
            break;
        case 0x3F:
            charInfoBuffer[infoLen++] = 0xF306;
            break;
        case 0x09:
            charInfoBuffer[infoLen++] = 0xF311;
            break;
        case 0x2C:
            charInfoBuffer[infoLen++] = 0xF316;
            break;
        case 0x1B:
            charInfoBuffer[infoLen++] = 0xF315;
            break;
        case 0x1A:
            charInfoBuffer[infoLen++] = 0xF319;
            break;
        case 0x05:
            charInfoBuffer[infoLen++] = 0xF30A;
            break;
        case 0x0A:
            charInfoBuffer[infoLen++] = 0xF312;
            break;
        case 0x1D:
            charInfoBuffer[infoLen++] = 0xF313;
            break;
        case 0x1C:
            charInfoBuffer[infoLen++] = 0xF317;
            break;

        case 0x01:
            break;
        default:
            Zi8LogError(0x281, ZI_WORK);
            return 0;
    }

    switch (chMidBits) {
        case 0x00:
            if (chHiBits != 0x0C && chHiBits != 0x26)
                return 0;
            break;
        case 0x11:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF31A;
            break;
        case 0x17:
            charInfoBuffer[infoLen++] = 0xF327;
            break;
        case 0x12:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF31B;
            break;
        case 0x1A:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF320;
            break;
        case 0x15:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF31D;
            break;
        case 0x1B:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF321;
            break;
        case 0x1C:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF322;
            break;
        case 0x1E:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF323;
            break;
        case 0x1D:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF324;
            break;
        case 0x1F:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF325;
            break;
        case 0x3F:
            charInfoBuffer[infoLen++] = 0xF329;
            charInfoBuffer[infoLen++] = 0xF325;
            break;
        case 0x37:
            charInfoBuffer[infoLen++] = 0xF329;
            break;
        case 0x27:
            charInfoBuffer[infoLen++] = 0xF328;
            break;
        case 0x25:
        case 0x35:
            charInfoBuffer[infoLen++] = 0xF329;
            charInfoBuffer[infoLen++] = 0xF31D;
            break;
        case 0x3C:
            charInfoBuffer[infoLen++] = 0xF329;
            charInfoBuffer[infoLen++] = 0xF322;
            break;
        case 0x2C:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF322;
            break;
        case 0x3E:
            charInfoBuffer[infoLen++] = 0xF329;
            charInfoBuffer[infoLen++] = 0xF323;
            break;
        case 0x2E:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF323;
            break;
        case 0x21:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF31A;
            break;
        case 0x22:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF31B;
            break;
        case 0x28:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF31E;
            break;
        case 0x29:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF31F;
            break;
        case 0x2D:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF324;
            break;
        case 0x2F:
            charInfoBuffer[infoLen++] = 0xF328;
            charInfoBuffer[infoLen++] = 0xF325;
            break;
        case 0x01:
            charInfoBuffer[infoLen++] = 0xF31A;
            break;
        case 0x02:
            charInfoBuffer[infoLen++] = 0xF31B;
            break;
        case 0x03:
            charInfoBuffer[infoLen++] = 0xF31C;
            break;
        case 0x04:
            charInfoBuffer[infoLen++] = 0xF326;
            break;
        case 0x08:
            charInfoBuffer[infoLen++] = 0xF31E;
            break;
        case 0x18:
            charInfoBuffer[infoLen++] = 0xF327;
            charInfoBuffer[infoLen++] = 0xF31E;
            break;
        case 0x09:
            charInfoBuffer[infoLen++] = 0xF31F;
            break;
        case 0x0A:
            charInfoBuffer[infoLen++] = 0xF320;
            break;
        case 0x0B:
            charInfoBuffer[infoLen++] = 0xF321;
            break;
        case 0x0C:
            charInfoBuffer[infoLen++] = 0xF322;
            break;
        case 0x0E:
            charInfoBuffer[infoLen++] = 0xF323;
            break;
        case 0x0D:
            charInfoBuffer[infoLen++] = 0xF324;
            break;
        case 0x0F:
            charInfoBuffer[infoLen++] = 0xF325;
            break;

        case 0x07:
            break;
        default:
            Zi8LogError(0x282, ZI_WORK);
            return 0;
    }

    switch (chLoBits) {
        case 1:
            charInfoBuffer[infoLen++] = 0xF331;
            break;
        case 2:
            charInfoBuffer[infoLen++] = 0xF332;
            break;
        case 3:
            charInfoBuffer[infoLen++] = 0xF333;
            break;
        case 4:
            charInfoBuffer[infoLen++] = 0xF334;
            break;
        case 5:
            charInfoBuffer[infoLen++] = 0xF335;
            break;
    }
    charInfoBuffer[infoLen] = 0;
    Zi8LogError(100, ZI_WORK);
    return infoLen;
}

ziU16 zi8StrokeCode(ziU32 stroke ZI_NEED_WORK) {
    switch (stroke) {
        case 0x0:
            return 0xEF02;
        case 0x1:
            return 0xEF04;
        case 0x2:
            return 0xEF01;
        case 0x3:
            return 0xEF07;
        case 0x4:
            return 0xEF06;
        case 0x5:
            return 0xEF03;
        case 0x6:
            return 0xEF05;
        case 0x7:
            return 0xEF08;
        case 0x8:
            return 0xEF02;
        case 0xB:
            return 0xEF07;
    }
    Zi8LogError(0x14A, ZI_WORK);
    return 0;
}
ziU8 Zi8GetSInfo(ziU8* strokeInfoA, ziU8* strokeInfoB, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize ZI_NEED_WORK) {
    ziS32 i;
    ziS32 count;

    ziU8 offset;

    offset = 0;
    Zi8LogError(0x64, ZI_WORK);
    if (maxInfoBufSize <= 0x17) {
        Zi8ReplaceLastError(0x322, ZI_WORK);
        return 0;
    }

    for (i = 0; i < 4; i++) {
        if (i != 0) {
            charInfoBuffer[offset] = zi8StrokeCode((strokeInfoA[i] & 0xF0) >> 4, ZI_WORK);
            if (charInfoBuffer[offset++] == 0) {
            GOT_BLANK_STROKE:
                charInfoBuffer[--offset] = 0;
                return offset;
            }
        }

        charInfoBuffer[offset] = zi8StrokeCode(strokeInfoA[i] & 0x0F, ZI_WORK);
        if (charInfoBuffer[offset++] == 0)
            goto GOT_BLANK_STROKE;
    }

    charInfoBuffer[offset] = zi8StrokeCode(strokeInfoB[0] & 0x0F, ZI_WORK);

    if (charInfoBuffer[offset++] == 0)
        goto GOT_BLANK_STROKE;

    count = (*strokeInfoB++ & 0x70) >> 4;
    for (i = 0; i < count; i++) {
        charInfoBuffer[offset] = zi8StrokeCode((strokeInfoB[i] & 0xF0) >> 4, ZI_WORK);
        if (charInfoBuffer[offset++] == 0)
            goto GOT_BLANK_STROKE;

        charInfoBuffer[offset] = zi8StrokeCode(strokeInfoB[i] & 0x0F, ZI_WORK);
        if (charInfoBuffer[offset++] == 0)
            goto GOT_BLANK_STROKE;
    }

    charInfoBuffer[offset] = 0;
    return offset;
}

ziU16 Zi81KeyPYinfo(ziWChar ch ZI_NEED_WORK) {
    switch (ch) {
        case 0xF361:
            return 0xEFF2;
        case 0xF362:
            return 0xEFF2;
        case 0xF363:
            return 0xEFF2;
        case 0xF364:
            return 0xEFF3;
        case 0xF365:
            return 0xEFF3;
        case 0xF366:
            return 0xEFF3;
        case 0xF367:
            return 0xEFF4;
        case 0xF368:
            return 0xEFF4;
        case 0xF369:
            return 0xEFF4;
        case 0xF36A:
            return 0xEFF5;
        case 0xF36B:
            return 0xEFF5;
        case 0xF36C:
            return 0xEFF5;
        case 0xF36D:
            return 0xEFF6;
        case 0xF36E:
            return 0xEFF6;
        case 0xF36F:
            return 0xEFF6;
        case 0xF370:
            return 0xEFF7;
        case 0xF371:
            return 0xEFF7;
        case 0xF372:
            return 0xEFF7;
        case 0xF373:
            return 0xEFF7;
        case 0xF374:
            return 0xEFF8;
        case 0xF375:
            return 0xEFF8;
        case 0xF376:
            return 0xEFF8;
        case 0xF377:
            return 0xEFF9;
        case 0xF378:
            return 0xEFF9;
        case 0xF379:
            return 0xEFF9;
        case 0xF37A:
            return 0xEFF9;
        case 0xF331:
            return 0xEFF1;
        case 0xF332:
            return 0xEFF2;
        case 0xF333:
            return 0xEFF3;
        case 0xF334:
            return 0xEFF4;
        case 0xF335:
            return 0xEFF5;
        default:
            Zi8LogError(0x14B, ZI_WORK);
            break;
    }
    return ch;
}
ziU16 Zi81KeyZYinfo(ziWChar ch ZI_NEED_WORK) {
    switch (ch) {
        case 0xF305:
            return 0xEFF1;
        case 0xF306:
            return 0xEFF1;
        case 0xF307:
            return 0xEFF1;
        case 0xF308:
            return 0xEFF1;
        case 0xF309:
            return 0xEFF2;
        case 0xF30A:
            return 0xEFF2;
        case 0xF30B:
            return 0xEFF2;
        case 0xF30C:
            return 0xEFF2;
        case 0xF30D:
            return 0xEFF3;
        case 0xF30E:
            return 0xEFF3;
        case 0xF30F:
            return 0xEFF3;
        case 0xF310:
            return 0xEFF4;
        case 0xF311:
            return 0xEFF4;
        case 0xF312:
            return 0xEFF4;
        case 0xF313:
            return 0xEFF5;
        case 0xF314:
            return 0xEFF5;
        case 0xF315:
            return 0xEFF5;
        case 0xF316:
            return 0xEFF5;
        case 0xF317:
            return 0xEFF6;
        case 0xF318:
            return 0xEFF6;
        case 0xF319:
            return 0xEFF6;
        case 0xF31A:
            return 0xEFF7;
        case 0xF31B:
            return 0xEFF7;
        case 0xF31C:
            return 0xEFF7;
        case 0xF31D:
            return 0xEFF7;
        case 0xF31E:
            return 0xEFF8;
        case 0xF31F:
            return 0xEFF8;
        case 0xF320:
            return 0xEFF8;
        case 0xF321:
            return 0xEFF8;
        case 0xF322:
            return 0xEFF9;
        case 0xF323:
            return 0xEFF9;
        case 0xF324:
            return 0xEFF9;
        case 0xF325:
            return 0xEFF9;
        case 0xF326:
            return 0xEFF9;
        case 0xF327:
            return 0xEFFA;
        case 0xF328:
            return 0xEFFA;
        case 0xF329:
            return 0xEFFA;
        case 0xF331:
            return 0xEFF1;
        case 0xF332:
            return 0xEFF2;
        case 0xF333:
            return 0xEFF3;
        case 0xF334:
            return 0xEFF4;
        case 0xF335:
            return 0xEFF5;
        default:
            Zi8LogError(0x14C, ZI_WORK);
            break;
    }
    return ch;
}

ziU8 Zi8GetCharInfo(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode ZI_NEED_WORK) {
    return Zi8GetCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, 0, 0, ZI_WORK);
}

ziU8 ZiCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK) {
    TableEntry* tableData;
    ziU8* table34Data;
    Table5Entry* table5Data;

    ziU16 ord;
    ziU8 isOkToFinish;

    ziU8 scratchBuf[12];
    ziU8* scratchBufPtr = scratchBuf;
    ziU8 scratchDataLen;

    ziU16 tableCount;
    ziWChar code;

    ziU16 i;
    ziS32 j;
    ziU16 table5Rem;

    ziU8 chHi;
    ziU8 chLo;

    table34Data = 0;
    if (!charInfoBuffer || maxInfoBufSize == 0) {
        Zi8LogError(300, ZI_WORK);
        return 0;
    }
    if ((hetMode & 0x80) != 0) {
        hetMode &= 0x7F;
        if (Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 4) {
            tableCount = Zi8GetTableCount(ZI8_LANG_ZH, 0x19, ZI_WORK);
            tableData = (TableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x19, ZI_WORK);
        } else {
            tableCount = 0;
            tableData = 0;
        }
        if (hetMode == 1) {
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
        } else {
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
        }
        if (hetMode == CHAR_INFO_HET_UNK_x01 || hetMode == CHAR_INFO_HET_UNK_x02) {
            if (tableCount <= Zi8GetTableCount(ZI8_LANG_ZH, 8, ZI_WORK)) {
                chHi = (ch >> 8) & 0xFF;
                chLo = ch;
                for (i = 0; i < tableCount;) {
                    if (chHi == tableData->tables->t19.chHi && chLo == tableData->tables->t19.chLo) {
                        ord = GET_TABLE19_ENTRY_TABLE34_IDX(&tableData->tables->t19);
                        code = table34Data[ord] + (ziU16)((ziU16)table34Data[ord + 1] << 8) + (tableData->tables->t19.codeOffs & 0xFFFF);

                        if (hetMode == CHAR_INFO_HET_UNK_x01) {
                            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
                        } else {
                            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
                        }
                    FINISH:
                        if (hetMode == CHAR_INFO_HET_UNK_x11) {
                            for (j = 0; j < scratchDataLen; j++) {
                                switch (charInfoBuffer[j]) {
                                    case 0xEF03:
                                    case 0xEF05:
                                    case 0xEF06:
                                    case 0xEF08:
                                        charInfoBuffer[j] = 0xEF0A;
                                        break;
                                }
                            }
                        }
                        Zi8LogError(100, ZI_WORK);
                        return scratchDataLen;
                    }
                    i++;
                    tableData += 4;
                }
            }
        }
    }

    ord = Zi8Uni2Ptr(ch, (Table0Entry*)scratchBufPtr, ZI_WORK);
    if (ord == 0xFFFF) {
        scratchDataLen = 0;
        goto FINISH;
    }
    tableData = (TableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    tableData += GET_TABLE0_ENTRY_TABLE1_OFFS((Table0Entry*)scratchBufPtr);
    ZI_WORK->unk_0x16 = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 2;
    if (ZI_WORK->unk_0x16 != 0 && hetMode != CHAR_INFO_HET_UNK_x07 && hetMode != CHAR_INFO_HET_UNK_x0A && hetMode != CHAR_INFO_HET_UNK_x08 &&
        hetMode != CHAR_INFO_HET_UNK_x09) {
        switch (tableData->raw[0] & 7) {
            case 2:
                tableData += 2;
                break;
            case 3:
            case 4:
                tableData += 3;
                break;
            case 5:
                tableData += 4;
                break;
            default:
                tableData += 1;
                break;
        }
    }
    switch (hetMode) {
        case CHAR_INFO_HET_UNK_x07:
        case CHAR_INFO_HET_UNK_x08:
        case CHAR_INFO_HET_UNK_x09:
        case CHAR_INFO_HET_UNK_x0A:
            scratchDataLen = Zi8GetCJInfo(tableData->raw, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            if ((hetMode == CHAR_INFO_HET_UNK_x09 || hetMode == CHAR_INFO_HET_UNK_x0A) && scratchDataLen > 2) {
                charInfoBuffer[1] = charInfoBuffer[scratchDataLen - 1];
                charInfoBuffer[2] = 0;
                scratchDataLen = 2;
            }
            break;
        case CHAR_INFO_HET_UNK_x00:
        case CHAR_INFO_HET_UNK_x10:
        case CHAR_INFO_HET_UNK_x11:
            scratchDataLen = Zi8GetSInfo(scratchBufPtr, tableData->raw, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;
        case CHAR_INFO_HET_UNK_x01:
        case CHAR_INFO_HET_UNK_x03:
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
            code = Zi8GetPCode(table34Data, scratchBufPtr);
            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;
        case CHAR_INFO_HET_UNK_x02:
        case CHAR_INFO_HET_UNK_x04:
            table34Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
            code = Zi8GetPCode(table34Data, scratchBufPtr);
            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
            break;
        default:
            scratchDataLen = 0;
            break;
    }
    if (elementCount == 0 || (scratchBufPtr[0] & 0x80) == 0 || (hetMode != CHAR_INFO_HET_UNK_x03 && hetMode != CHAR_INFO_HET_UNK_x04))
        goto FINISH;
    table5Data = (Table5Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 5, ZI_WORK);
    table5Rem = Zi8GetTableCount(ZI8_LANG_ZH, 5, ZI_WORK);
    for (; table5Rem != 0;) {
        if (ord == GET_TABLE5_ENTRY_ORD(table5Data))
            break;
        table5Rem--;
        table5Data++;
    }

    while (1) {
        if (scratchDataLen >= elementCount) {
            isOkToFinish = 1;
            for (i = 0; i < scratchDataLen; i++) {
                if (i == elementCount)
                    break;
                if (hetMode == CHAR_INFO_HET_UNK_x03) {
                    if (elements[i] != Zi81KeyPYinfo(charInfoBuffer[i], ZI_WORK)) {
                        isOkToFinish = 0;
                        break;
                    }
                } else {
                    if (elements[i] != Zi81KeyZYinfo(charInfoBuffer[i], ZI_WORK)) {
                        isOkToFinish = 0;
                        break;
                    }
                }
            }
            if (isOkToFinish)
                goto FINISH;
        }
        if (table5Rem == 0)
            goto FINISH;
        if (ord != GET_TABLE5_ENTRY_ORD(table5Data))
            goto FINISH;

        code = GET_TABLE5_ENTRY_TABLE34_IDX(table5Data);
        code = table34Data[code] + ((ziU16)table34Data[code + 1] << 8) + GET_TABLE5_ENTRY_CODE_OFFS(table5Data);
        table5Rem--;
        table5Data++;

        if (hetMode == CHAR_INFO_HET_UNK_x03) {
            scratchDataLen = Zi8GetPInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
        } else {
            scratchDataLen = Zi8GetZInfo(code, charInfoBuffer, maxInfoBufSize, ZI_WORK);
        }
    }
}

ziU8 Zi8GetCharInfo2(ziWChar ch, ziWChar* charInfoBuffer, ziU8 maxInfoBufSize, ziU8 hetMode, ziWChar* elements, ziU8 elementCount ZI_NEED_WORK) {
    ziU8 oldUnk_x18;
    ziU8 output;

    ZI_WORK;

    oldUnk_x18 = ZI_WORK->unk_0x18;
    output = ZiCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, elements, elementCount, ZI_WORK);
    if (output == 0) {
        if ((oldUnk_x18 & 0x80) || (oldUnk_x18 & 0x40) || (oldUnk_x18 & 0x01)) {
            ZI_WORK->unk_0x18 = 0b00000110;
        } else {
            ZI_WORK->unk_0x18 = 0b00000001;
        }
        output = ZiCharInfo2(ch, charInfoBuffer, maxInfoBufSize, hetMode, elements, elementCount, ZI_WORK);
        ZI_WORK->unk_0x18 = oldUnk_x18;
    }
    return output;
}
