#include <zi8clib/zprepare.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8is.h>
#include <zi8clib/zi8match.h>

ziBool Zi8PrepareMatch(ziGetParam* getParam, ziMatchStructA* matchInfo, ziU8 param_3 ZI_NEED_WORK) {
    ziU8 i;
    ziU8 maskI;

    ziU8 strokeMask[12];
    ziU8 strokeData[12];
    Table2Entry* component;
    Table6Entry* componentIdxTable;
    ziU8 shortStrokeMask[4];
    ziU8 shortStrokeData[4];
    ziU8* syllTable;
    ziWChar* elements;

    ziU16 local_4a;
    ziU16 syllTableLen;
    ziU16 local_4e;
    ziU16 local_50;
    ziU16 syllTableEntry;
    ziU16 syllTestLen;
    ziU16 syllMask;
    ziU16 syllPhon;
    ziU16 closedSyllMask;
    ziU16 closedSyllPhon;
    ziU16 mostRecentClosedSyllMask;
    ziU16 mostRecentClosedSyllPhon;

    ziU8 local_61;
    ziU8 elCount;
    ziU8 elementI;
    ziU8 local_64;
    ziU8 someMask;
    ziU8 local_66;
    ziU8 local_67;

    local_64 = 0;
    someMask = 0x20;
    Zi8Memset(matchInfo, 0, sizeof(ziMatchStructA));

    local_61 = 0;
    maskI = 0;
    elementI = 0;
    elCount = getParam->elementCount;
    while (elCount != 0) {
        if (getParam->elements[elCount - 1] != ZI8_STROKE_CODE_ENDFILL)
            break;
        elCount--;
    }
    matchInfo->unk_0x000 = elCount;
    i;
    for (i = 0; i < elCount; i++) {
        if (getParam->elements[i] != 0xEF00) {
            matchInfo->unk_0x000 = 0;
            break;
        }
    }
    // bVar3 = local_63;
    if (elCount != 0) {
        matchInfo->unk_0x06A = local_4a = getParam->elements[0];
        if (Zi8IsComponent(local_4a, ZI_WORK)) {
            elementI++;
            local_61 = 1;
            component = (Table2Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 2, ZI_WORK);
            componentIdxTable = (Table6Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 6, ZI_WORK);
            componentIdxTable += local_4a - COMPONENT_BASE;
            matchInfo->unk_0x022 = (((ziU16)componentIdxTable->compIdxHi & 0x3F) << 8) + (ziU16)componentIdxTable->compIdxLo;
            component += matchInfo->unk_0x022;

            switch (component->mask[0] & 0x0F) {
                case 0x1:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x1;
                    break;
                case 0x2:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x2;
                    break;
                case 0x3:
                case 0xB:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x3;
                    break;
                case 0x4:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x4;
                    break;
                case 0x5:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x5;
                    break;
                case 0x6:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x6;
                    break;
                case 0x7:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x7;
                    break;
                case 0x8:
                    matchInfo->unk_0x06A = ZI8_STROKE_CODE_x8;
            }
            for (i = 0; i < (component->maskLen >> 1) + 1; i++) {
                if (i < 4) {
                    matchInfo->strokeData[i] = component->mask[i];
                    matchInfo->strokeMask[i] = 0xFF;
                }
            }
            if (i != 0 && (component->maskLen & 1) == 0) {
                i--;
                matchInfo->strokeData[i] &= 0xF0;
                matchInfo->strokeMask[i] &= 0xF0;
            }
            maskI = component->maskLen + 1;
            if (maskI > 8) {
                maskI++;
            }
        }
    }

    matchInfo->strokeMask[0] = matchInfo->strokeMask[0] & 0x0F;
    matchInfo->strokeData[0] = matchInfo->strokeData[0] & 0x0F;
    if (param_3 == 0) {
        local_66 = 0;
        if ((getParam->subLanguage & 0b10000000) != 0 || (getParam->subLanguage & 0b01000000) != 0) {
            local_66 = 0b0001;
        } else if ((getParam->subLanguage & 0b00001000) != 0) {
            local_66 = 0b0100;
        } else if ((getParam->subLanguage & 0b00100000) != 0 || (getParam->subLanguage & 0b00010000) != 0) {
            local_66 = 0b0010;
        }

        if (local_66 == 0) {
            local_66 = getParam->subLanguage;
        }
        switch (local_66) {
            case 1:
            case 2:
            case 4:
                matchInfo->strokeMask[0] |= (ziU8)(local_66 << 4);
                matchInfo->strokeData[0] |= (ziU8)(local_66 << 4);
                break;
        }
    }
    if (maskI == 0) {
        maskI = 1;
    }
    if (getParam->getMode == ZI8_GET_MODE_UNK_x00 || getParam->getMode == ZI8_GET_MODE_UNK_x10 || getParam->getMode == ZI8_GET_MODE_UNK_x05) {
        Zi8Memcpy(strokeMask, matchInfo->strokeMask, sizeof(matchInfo->strokeMask));
        Zi8Memcpy(strokeData, matchInfo->strokeData, sizeof(matchInfo->strokeData));
        do {
            while (elementI < elCount) {
                local_4a = getParam->elements[elementI++];
                switch (local_4a) {
                    case ZI8_STROKE_CODE_x0:
                        local_64 = 0b0000;
                        break;
                    case ZI8_STROKE_CODE_x1:
                        local_64 = 0b0001;
                        break;
                    case ZI8_STROKE_CODE_x2:
                        local_64 = 0b0010;
                        break;
                    case ZI8_STROKE_CODE_x3:
                        local_64 = 0b0011;
                        break;
                    case ZI8_STROKE_CODE_x4:
                        local_64 = 0b0100;
                        break;
                    case ZI8_STROKE_CODE_x5:
                        local_64 = 0b0101;
                        break;
                    case ZI8_STROKE_CODE_x6:
                        local_64 = 0b0110;
                        break;
                    case ZI8_STROKE_CODE_x7:
                        local_64 = 0b0111;
                        break;
                    case ZI8_STROKE_CODE_PARTIAL_8:
                        local_64 = 0b1000;
                        break;
                    case ZI8_STROKE_CODE_PARTIAL_4:
                        local_64 = 0b0100;
                        break;

                    case PINYIN_CHAR('`'):
                        local_64 = -1;
                        break;

                    case ZI8_STROKE_CODE_ENDFILL:
                    default:
                        local_64 = 0b0000;
                        break;
                }

                if (local_64 == (ziU8)-1)
                    break;
                if (maskI > 23) {
                    matchInfo->maskIdx = 24;
                    return ZI8_FALSE;
                }
                if (maskI == 8) {
                    maskI++;
                }
                if ((maskI & 1) != 0) {
                    strokeData[maskI >> 1] |= local_64;
                    if (local_4a == ZI8_STROKE_CODE_PARTIAL_8) {
                        strokeMask[maskI >> 1] |= 0b00001000;
                    } else if (local_4a == ZI8_STROKE_CODE_PARTIAL_4) {
                        strokeMask[maskI >> 1] |= 0b00000100;
                    } else if (local_4a != ZI8_STROKE_CODE_BLANK) {
                        strokeMask[maskI >> 1] |= 0b00000111;
                    }
                } else {
                    strokeData[maskI >> 1] |= local_64 << 4;
                    if (local_4a == ZI8_STROKE_CODE_PARTIAL_8) {
                        strokeMask[maskI >> 1] |= 0b10000000;
                    } else if (local_4a == ZI8_STROKE_CODE_PARTIAL_4) {
                        strokeMask[maskI >> 1] |= 0b01000000;
                    } else if (local_4a != ZI8_STROKE_CODE_BLANK) {
                        strokeMask[maskI >> 1] |= 0b01110000;
                    }
                }
                maskI++;
            }
            local_67 = maskI;
            for (i = 0; i < 4; i++) {
                shortStrokeMask[i] = strokeMask[i];
                shortStrokeData[i] = strokeData[i];
            }

            // Add the stop stroke (0xF) at the end of the short stroke buffers
            if (1 < maskI && maskI < 8) {
                i = maskI >> 1;
                if ((maskI & 1) != 0) {
                    shortStrokeMask[i] = shortStrokeMask[i] | 0x0F;
                    shortStrokeData[i] = shortStrokeData[i] | 0x0F;
                } else {
                    shortStrokeMask[i] = shortStrokeMask[i] | 0xF0;
                    shortStrokeData[i] = shortStrokeData[i] | 0xF0;
                }
            }

            if (matchInfo->multicharStrokeCount == 0) {
                Zi8Memcpy(matchInfo->strokeMask, strokeMask, sizeof(matchInfo->strokeMask));
                Zi8Memcpy(matchInfo->strokeData, strokeData, sizeof(matchInfo->strokeData));
                Zi8Memcpy(matchInfo->shortStrokeMask, shortStrokeMask, sizeof(matchInfo->shortStrokeMask));
                Zi8Memcpy(matchInfo->shortStrokeData, shortStrokeData, sizeof(matchInfo->shortStrokeData));
                matchInfo->maskIdx = local_67;
            }

            Zi8Memcpy(matchInfo->multicharStrokeMask[matchInfo->multicharStrokeCount], strokeMask,
                      sizeof(matchInfo->multicharStrokeMask[matchInfo->multicharStrokeCount]));
            Zi8Memcpy(matchInfo->multicharStrokeData[matchInfo->multicharStrokeCount], strokeData,
                      sizeof(matchInfo->multicharStrokeData[matchInfo->multicharStrokeCount]));
            matchInfo->multicharStrokeCount++;

            if (local_64 == (ziU8)-1 && elementI < elCount && matchInfo->multicharStrokeCount < 0x10) {
                Zi8Memset(strokeMask, 0, sizeof(strokeMask));
                Zi8Memset(strokeData, 0, sizeof(strokeMask));
                strokeMask[0] = matchInfo->strokeMask[0] & 0xF0;
                strokeData[0] = matchInfo->strokeData[0] & 0xF0;
                maskI = 1;
            } else {
                return ZI8_TRUE;
            }
        } while (1);
    }

    matchInfo->maskIdx = maskI;
    if (elCount != 0) {
        if (getParam->getMode == ZI8_GET_MODE_PINYIN_A || getParam->getMode == ZI8_GET_MODE_PINYIN_B) {
            syllTable = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
            syllTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 3, ZI_WORK);
        } else {
            syllTable = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
            syllTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 4, ZI_WORK);
        }
        if (getParam->getMode == ZI8_GET_MODE_PINYIN_A || getParam->getMode == ZI8_GET_MODE_PINYIN_B) {
            matchInfo->syllCount = Zi8GetPyPhonetic(getParam->elements, elCount, matchInfo->syllMasks, matchInfo->syllPhons, &getParam->letters,
                                                    &matchInfo->closedSyllMask, &matchInfo->closedSyllPhon, ZI_WORK);
        } else {
            syllMask = 0;
            syllPhon = 0;
            closedSyllMask = 0;
            closedSyllPhon = 0;
            mostRecentClosedSyllMask = 0;
            mostRecentClosedSyllPhon = 0;
            elements = getParam->elements;
            matchInfo->syllCount = 0;
            getParam->letters = getParam->elementCount;
            syllTestLen = 1;
            for (i = 0; i < elCount;) {
                local_64 = Zi8GetBpmfPhonetic(elements, syllTestLen, &syllMask, &syllPhon, &closedSyllMask, &closedSyllPhon, ZI_WORK);
                if (local_64 != 0) {
                    mostRecentClosedSyllMask = closedSyllMask;
                    mostRecentClosedSyllPhon = closedSyllPhon;
                BPMF_APPEND_SYLLABLE:
                    matchInfo->syllMasks[matchInfo->syllCount] = syllMask;
                    matchInfo->syllPhons[matchInfo->syllCount] = syllPhon;
                    if (matchInfo->syllCount == 0) {
                        matchInfo->closedSyllMask = closedSyllMask;
                        matchInfo->closedSyllPhon = closedSyllPhon;
                    }
                } else {
                    if (i == 0 ||
                        (syllTestLen > 1 && elements[syllTestLen - 2] == PINYIN_CHAR('`') && elements[syllTestLen - 1] == PINYIN_CHAR('`')) ||
                        ++matchInfo->syllCount == 0x10) {
                        syllMask = -1;
                        syllPhon = -1;
                        closedSyllMask = -1;
                        closedSyllPhon = -1;
                        matchInfo->syllCount = 0;
                        break;
                    }
                    if (elements[syllTestLen - 1] == PINYIN_CHAR('`')) {
                        matchInfo->syllCount--;
                        syllMask = closedSyllMask = mostRecentClosedSyllMask;
                        syllPhon = closedSyllPhon = mostRecentClosedSyllPhon;
                        goto BPMF_APPEND_SYLLABLE;
                    }
                    if (matchInfo->syllCount == 1) {
                        getParam->letters = syllTestLen - 1;
                    }
                    elements = elements + syllTestLen - 1;
                    syllTestLen = 0;
                    i--;
                }
                i++;
                syllTestLen++;
            }
            if (elCount != 0) {
                matchInfo->syllMasks[matchInfo->syllCount] = syllMask;
                matchInfo->syllPhons[matchInfo->syllCount] = syllPhon;
                if (matchInfo->syllCount == 0) {
                    matchInfo->closedSyllMask = closedSyllMask;
                    matchInfo->closedSyllPhon = closedSyllPhon;
                }
                matchInfo->syllCount++;
            }
        }
        if ((getParam->context & someMask) != 0 && (matchInfo->syllCount > 1 || getParam->letters != elCount)) {
            matchInfo->syllMasks[0] = -1;
            matchInfo->syllPhons[0] = -1;
            matchInfo->syllCount = 0;
        }
        if ((getParam->getOptions & 0x20) == 0 && (matchInfo->syllMasks[0] != 0xFFFF || matchInfo->syllPhons[0] != 0xFFFF)) {
            if (matchInfo->syllCount > 1) {
                local_4e = matchInfo->syllMasks[matchInfo->syllCount - 1] & (ziU16)(~PINYIN_TONE_MASK);
                local_50 = matchInfo->syllPhons[matchInfo->syllCount - 1] & (ziU16)(~PINYIN_TONE_MASK);
            } else {
                local_4e = matchInfo->syllMasks[0] & (ziU16)(~PINYIN_TONE_MASK);
                local_50 = matchInfo->syllPhons[0] & (ziU16)(~PINYIN_TONE_MASK);
            }
            syllTestLen = 0;
            while (syllTestLen < syllTableLen) {
                syllTableEntry = syllTable[syllTestLen * 2] | ((ziU16)syllTable[syllTestLen * 2 + 1] << 8);
                if (local_50 == (syllTableEntry & local_4e))
                    break;
                syllTestLen++;
            }
            if (syllTestLen == syllTableLen) {
                matchInfo->syllMasks[0] = -1;
                matchInfo->syllPhons[0] = -1;
            }
        }
    }
    return ZI8_TRUE;
}
