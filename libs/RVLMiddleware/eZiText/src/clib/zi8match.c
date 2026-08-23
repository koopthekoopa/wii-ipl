#include <zi8clib/zi8match.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8alts.h>
#include <zi8clib/zierror.h>

typedef struct {
    ziU8 chars[4];       // 0x0
    ziU8 knownMask;      // 0x4
    ziU8 syllableFinal;  // 0x5
} __attribute__((aligned(4))) PinyinFinal;

const ziU8 Zi8PinyinInitials[] = {
    PINYIN_INITIAL_UNSUPPORTED,             // a
    INITIAL_B,                              // b
    INITIAL_C | PINYIN_INITIAL_SUPPORTS_H,  // c
    INITIAL_D,                              // d
    PINYIN_INITIAL_UNSUPPORTED,             // e
    INITIAL_F,                              // f
    INITIAL_G,                              // g
    INITIAL_H,                              // h
    PINYIN_INITIAL_UNSUPPORTED,             // i
    INITIAL_J,                              // j
    INITIAL_K,                              // k
    INITIAL_L,                              // l
    INITIAL_M,                              // m
    INITIAL_N,                              // n
    PINYIN_INITIAL_UNSUPPORTED,             // o
    INITIAL_P,                              // p
    INITIAL_Q,                              // q
    INITIAL_R,                              // r
    INITIAL_S | PINYIN_INITIAL_SUPPORTS_H,  // s
    INITIAL_T,                              // t
    PINYIN_INITIAL_UNSUPPORTED,             // u
    PINYIN_INITIAL_UNSUPPORTED,             // v
    INITIAL_W,                              // w
    INITIAL_X,                              // x
    INITIAL_Y,                              // y
    INITIAL_Z | PINYIN_INITIAL_SUPPORTS_H,  // z
};

const ziU8 Zi8BpmfInitials[] = {
    INITIAL_B,    INITIAL_P,    INITIAL_M,    INITIAL_F,    INITIAL_D,     INITIAL_T,     INITIAL_N,    INITIAL_L,    INITIAL_G,
    INITIAL_K,    INITIAL_H,    INITIAL_J,    INITIAL_Q,    INITIAL_X,     INITIAL_ZH,    INITIAL_CH,   INITIAL_SH,   INITIAL_R,
    INITIAL_Z,    INITIAL_C,    INITIAL_S,    BPMF_RIME_A,  BPMF_RIME_O,   BPMF_RIME_E,   BPMF_RIME_EH, BPMF_RIME_AI, BPMF_RIME_EI,
    BPMF_RIME_AU, BPMF_RIME_OU, BPMF_RIME_AN, BPMF_RIME_EN, BPMF_RIME_ANG, BPMF_RIME_ENG, BPMF_RIME_ER,
};

#define PINYIN_FINAL_CHAR(VALUE) ((VALUE) == '-' ? 0xFF : ((VALUE) == ' ' ? 0x00 : (1 + ((VALUE) - 'a'))))
#define PINYIN_FINAL_CHARS(VALUE)                                                                                                                    \
    {                                                                                                                                                \
        PINYIN_FINAL_CHAR((VALUE >> 0x18) & 0xFF),                                                                                                   \
        PINYIN_FINAL_CHAR((VALUE >> 0x10) & 0xFF),                                                                                                   \
        PINYIN_FINAL_CHAR((VALUE >> 0x08) & 0xFF),                                                                                                   \
        PINYIN_FINAL_CHAR((VALUE >> 0x00) & 0xFF),                                                                                                   \
    }

// clang-format off
const PinyinFinal Zi8PinyinFinals[] = {
    {PINYIN_FINAL_CHARS('o-  '), 0b111100, 0b101000},
    {PINYIN_FINAL_CHARS('o   '), 0b111111, 0b101011},
    {PINYIN_FINAL_CHARS('on- '), 0b111111, 0b101000},
    {PINYIN_FINAL_CHARS('ong '), 0b111111, 0b101000},
    {PINYIN_FINAL_CHARS('ou  '), 0b111111, 0b101010},

    {PINYIN_FINAL_CHARS('i-  '), 0b110000, 0b000000},
    {PINYIN_FINAL_CHARS('i   '), 0b111111, 0b001000},
    {PINYIN_FINAL_CHARS('ia- '), 0b111000, 0b000000},
    {PINYIN_FINAL_CHARS('ia  '), 0b111111, 0b000100},
    {PINYIN_FINAL_CHARS('iao '), 0b111111, 0b000001},
    {PINYIN_FINAL_CHARS('ian-'), 0b111110, 0b000010},
    {PINYIN_FINAL_CHARS('ian '), 0b111111, 0b000010},
    {PINYIN_FINAL_CHARS('iang'), 0b111111, 0b000011},
    {PINYIN_FINAL_CHARS('ie  '), 0b111111, 0b001001},
    {PINYIN_FINAL_CHARS('iu  '), 0b111111, 0b001011},
    {PINYIN_FINAL_CHARS('in- '), 0b111110, 0b001100},
    {PINYIN_FINAL_CHARS('in  '), 0b111111, 0b001100},
    {PINYIN_FINAL_CHARS('ing '), 0b111111, 0b001101},
    {PINYIN_FINAL_CHARS('io- '), 0b111110, 0b001110},
    {PINYIN_FINAL_CHARS('iou '), 0b111111, 0b001110},
    {PINYIN_FINAL_CHARS('ion-'), 0b111111, 0b001111},
    {PINYIN_FINAL_CHARS('iong'), 0b111111, 0b001111},

    {PINYIN_FINAL_CHARS('u-  '), 0b110000, 0b010000},
    {PINYIN_FINAL_CHARS('u   '), 0b111111, 0b011000},
    {PINYIN_FINAL_CHARS('ua- '), 0b111000, 0b010000},
    {PINYIN_FINAL_CHARS('ua  '), 0b111111, 0b010111},
    {PINYIN_FINAL_CHARS('uan-'), 0b111110, 0b010000},
    {PINYIN_FINAL_CHARS('uan '), 0b111111, 0b010000},
    {PINYIN_FINAL_CHARS('uang'), 0b111111, 0b010001},
    {PINYIN_FINAL_CHARS('uai '), 0b111111, 0b010011},
    {PINYIN_FINAL_CHARS('un  '), 0b111111, 0b011100},
    {PINYIN_FINAL_CHARS('ui  '), 0b111111, 0b011101},
    {PINYIN_FINAL_CHARS('uo  '), 0b111111, 0b011110},
    {PINYIN_FINAL_CHARS('ue  '), 0b111111, 0b011111},

    {PINYIN_FINAL_CHARS('a-  '), 0b111000, 0b100000},
    {PINYIN_FINAL_CHARS('a   '), 0b111111, 0b100011},
    {PINYIN_FINAL_CHARS('an- '), 0b111110, 0b100000},
    {PINYIN_FINAL_CHARS('an  '), 0b111111, 0b100000},
    {PINYIN_FINAL_CHARS('ang '), 0b111111, 0b100001},
    {PINYIN_FINAL_CHARS('ai  '), 0b111111, 0b100101},
    {PINYIN_FINAL_CHARS('ao  '), 0b111111, 0b100110},

    {PINYIN_FINAL_CHARS('e-  '), 0b111000, 0b110000},
    {PINYIN_FINAL_CHARS('e   '), 0b111111, 0b110100},
    {PINYIN_FINAL_CHARS('en- '), 0b111110, 0b110000},
    {PINYIN_FINAL_CHARS('en  '), 0b111111, 0b110000},
    {PINYIN_FINAL_CHARS('eng '), 0b111111, 0b110001},
    {PINYIN_FINAL_CHARS('ei  '), 0b111111, 0b110101},
    {PINYIN_FINAL_CHARS('er  '), 0b111111, 0b110011},

    {PINYIN_FINAL_CHARS('v-  '), 0b111100, 0b111000},
    {PINYIN_FINAL_CHARS('v   '), 0b111111, 0b111000},
    {PINYIN_FINAL_CHARS('va- '), 0b111111, 0b111001},
    {PINYIN_FINAL_CHARS('van '), 0b111111, 0b111001},
    {PINYIN_FINAL_CHARS('ve  '), 0b111111, 0b011111},
    {PINYIN_FINAL_CHARS('vn  '), 0b111111, 0b111011},
};
// clang-format on

ziBool Zi8PriMatchNextChar(Table0Entry* currTab0, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                           ziU8 byte3B, ziU16* remainingInOut, Table0Entry** newTab0Out, ziU16* chrOut ZI_NEED_WORK) {
    ziU16 remaining;

    for (remaining = *remainingInOut; remaining-- > 0; currTab0++) {
        if (byte0B != (currTab0->maskBytes[0] & byte0A))
            continue;
        if (byte3B != (currTab0->maskBytes[3] & byte3A))
            continue;
        if (byte2B != (currTab0->maskBytes[2] & byte2A))
            continue;
        if (byte1B != (currTab0->maskBytes[1] & byte1A))
            continue;

        *newTab0Out = currTab0;
        *chrOut = ((ziU16)currTab0->chHi << 8) + currTab0->chLo;
        *remainingInOut = remaining;
        Zi8LogError(0x64, ZI_WORK);
        return ZI8_TRUE;
    }
    Zi8LogError(0x12E, ZI_WORK);
    return ZI8_FALSE;
}
ziBool Zi8ExactMatchNextChar(Table0Entry* tab0, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                             ziU8 byte3B, ziU16* remainingInOut, Table0Entry** newTab0Out, ziU16* chrOut ZI_NEED_WORK) {
    ziU16 remaining = *remainingInOut;
    Table0Entry* currTab0 = tab0;

    for (; remaining-- > 0; currTab0++) {
        if (byte0B != (currTab0->maskBytes[0] & byte0A))
            continue;
        if (byte3B != (currTab0->maskBytes[3] & byte3A))
            continue;
        if (byte2B != (currTab0->maskBytes[2] & byte2A))
            continue;
        if (byte1B != (currTab0->maskBytes[1] & byte1A))
            continue;

        *newTab0Out = currTab0;
        *chrOut = ((ziU16)currTab0->chHi << 8) + currTab0->chLo;
        *remainingInOut = remaining;
        Zi8LogError(100, ZI_WORK);
        return 1;
    }
    Zi8LogError(0x12e, ZI_WORK);
    return 0;
}

ziU8 Zi8SecMatchChar(Table0Entry* chEntry, Table2Entry* tab2Entry, ziMatchStructA* matchStruct, ziWChar* chOut ZI_NEED_WORK) {
    ziBool maskIsFull;

    ziU8 maskI;
    ziU8 maskBytesRem;
    ziU8* addtlDataCurr;

    ziU8 i;
    ziU16 nextidx;
    ziU16 targetIdx;

    maskIsFull = ZI8_FALSE;

    if (matchStruct->unk_0x022 != 0) {
        targetIdx = matchStruct->unk_0x022;
        nextidx = (ziU16)(chEntry->nextIdxHi & 3) << 8 | chEntry->nextIdxLo;

        i = 0;
        while (i++ < 6) {
            if (targetIdx == nextidx)
                break;

            nextidx = (ziU16)(tab2Entry[nextidx].nextIdxHi & 3) << 8 | tab2Entry[nextidx].nextIdxLo;
            if (nextidx == 0)
                break;
        }

        if (targetIdx != nextidx) {
            return ZI8_FALSE;
        }
    }

    addtlDataCurr = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    addtlDataCurr += chEntry->tab1OffsLo + (chEntry->tab1OffsMid << 0x08) + ((chEntry->tab1OffsHi & 0x0F) << 0x10);

    // Skip over cangjie information
    if (ZI_WORK->handleCangjie != 0) {
        switch (*addtlDataCurr & 7) {
            case 2:
                addtlDataCurr += 2;
                break;
            case 3:
            case 4:
                addtlDataCurr += 3;
                break;
            case 5:
                addtlDataCurr += 4;
                break;
            default:
                addtlDataCurr += 1;
                break;
        }
    }

    i = addtlDataCurr[0];
    i = (i >> 4) & 7;
    if (i * 2 + 10 < matchStruct->maskIdx) {
        return 0;
    }
    if (matchStruct->maskIdx < 9) {
        if (matchStruct->maskIdx == 8) {
            // If the additional data is literally just
            if ((addtlDataCurr[0] & 0x0F) == 0x0F) {
                maskIsFull = ZI8_TRUE;
            }
        } else if (matchStruct->maskIdx & 1) {
            if ((chEntry->maskBytes[matchStruct->maskIdx >> 1] & 0x0F) == 0x0F) {
                maskIsFull = ZI8_TRUE;
            }
        } else {
            if ((chEntry->maskBytes[matchStruct->maskIdx >> 1] & 0xF0) == 0xF0) {
                maskIsFull = ZI8_TRUE;
            }
        }

        if (matchStruct->maskIdx > 2) {
            if (matchStruct->maskIdx & 1) {
                if ((chEntry->maskBytes[(matchStruct->maskIdx - 1) >> 1] & 0xF0) == 0 ||
                    (chEntry->maskBytes[(matchStruct->maskIdx - 1) >> 1] & 0xF0) == 0xF0) {
                    return 0;
                }
            } else {
                if ((chEntry->maskBytes[(matchStruct->maskIdx - 1) >> 1] & 0x0F) == 0 ||
                    (chEntry->maskBytes[(matchStruct->maskIdx - 1) >> 1] & 0x0F) == 0x0F) {
                    return 0;
                }
            }
        }
        if (chOut != ZI8_NULL) {
            *chOut = ((ziU16)chEntry->chHi << 8) + chEntry->chLo;
        }
        if (maskIsFull) {
            return 2;
        } else {
            return 1;
        }
    } else {
        if ((matchStruct->maskIdx & 1) != 0) {
            if ((addtlDataCurr[((matchStruct->maskIdx - 1) >> 1) + -4] & 0xF0) == 0 ||
                (addtlDataCurr[((matchStruct->maskIdx - 1) >> 1) + -4] & 0xF0) == 0xF0) {
                return 0;
            }
        } else {
            if ((addtlDataCurr[((matchStruct->maskIdx - 1) >> 1) + -4] & 0x0F) == 0 ||
                (addtlDataCurr[((matchStruct->maskIdx - 1) >> 1) + -4] & 0x0F) == 0x0F) {
                return 0;
            }
        }

        maskI = 4;
        maskBytesRem = ((matchStruct->maskIdx + 1) >> 1) - 4;
        if (i + 1 < maskBytesRem) {
            return 0;
        }

        if (matchStruct->maskIdx & 1) {
            if ((addtlDataCurr[(matchStruct->maskIdx >> 1) + -4] & 0x0F) == 0x0F) {
                maskIsFull = ZI8_TRUE;
            }
        } else {
            if ((addtlDataCurr[(matchStruct->maskIdx >> 1) + -4] & 0xF0) == 0xF0) {
                maskIsFull = ZI8_TRUE;
            }
        }

        if (!matchStruct->unk_0x000) {
            for (; maskBytesRem != 0;) {
                if ((addtlDataCurr[0] & matchStruct->strokeMask[maskI]) != matchStruct->strokeData[maskI]) {
                    return 0;
                }
                maskI++;
                maskBytesRem--;
                addtlDataCurr++;
            }
        }
        if (chOut != ZI8_NULL) {
            *chOut = ((ziU16)chEntry->chHi << 8) + chEntry->chLo;
        }
        if (maskIsFull) {
            return 2;
        } else {
            return 1;
        }
    }
}

ziBool Zi8PriMatchNextComp(Table2Entry* currTab2, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                           ziU8 byte3B, ziU16* remainingInOut, Table2Entry** newTab2Out ZI_NEED_WORK) {
    ziU16 remaining;

    for (remaining = *remainingInOut; remaining-- > 0; currTab2++) {
        if (byte0B != (currTab2->mask[0] & byte0A))
            continue;
        if (byte1B != (currTab2->mask[1] & byte1A))
            continue;
        if (byte2B != (currTab2->mask[2] & byte2A))
            continue;
        if (byte3B != (currTab2->mask[3] & byte3A))
            continue;

        *newTab2Out = currTab2;
        *remainingInOut = remaining;
        Zi8LogError(0x64, ZI_WORK);
        return ZI8_TRUE;
    }
    Zi8LogError(0x12E, ZI_WORK);
    return ZI8_FALSE;
}

ziBool Zi8SecMatchComp(Table2Entry* tab2Entry, ziMatchStructA* matchData, Table2Entry* fullTab2) {
    ziS32 i;
    ziU16 nextidx;

    ziU16 targetIdx;

    if (matchData->unk_0x022 != 0) {
        targetIdx = matchData->unk_0x022;
        nextidx = (ziU16)(tab2Entry->nextIdxHi & 3) << 8 | tab2Entry->nextIdxLo;
        i = 0;

        while (i++ < 6) {
            if (targetIdx == nextidx)
                break;

            nextidx = (ziU16)(fullTab2[nextidx].nextIdxHi & 3) << 8 | fullTab2[nextidx].nextIdxLo;
            if (nextidx == 0)
                break;
        }

        if (targetIdx != nextidx) {
            return ZI8_FALSE;
        }
    }

    if (matchData->maskIdx > 8) {
        if (tab2Entry->maskLen < matchData->maskIdx - 2) {
            return ZI8_FALSE;
        }
    } else {
        if (tab2Entry->maskLen < matchData->maskIdx - 1) {
            return ZI8_FALSE;
        }
    }

    return ZI8_TRUE;
}

ziBool Zi8MatchPhonetic(ziU8* tab34Data, Table0Entry* tab0Entries, Table5Entry* tab5Entries, ziU16 tab5Count, ziU8* tab1Data, Table0Entry* currTab0,
                        ziU16* buf_param_7, ziU16* buf_param_8, ziU16* param_9, Table0Entry** newTab0Out, ziU8* param_11, ziU8 param_12,
                        ziU8 param_13, ziU8 param_14, ziU16 param_15, ziU16 param_16, ziU8 param_17, ziU8 param_18, ziU16 tab0Count, ziWChar* chOut,
                        ziU8 param_21 ZI_NEED_WORK) {
    ziBool bVar9;
    ziU16 local_50;
    ziU8 bVar5;
    ziU8 local_5a;
    ziU8* pbVar7;
    ziU8 i;
    ziBool bVar1;
    ziU16 local_52;
    ziU16 ord;
    ziU16 uVar3;

    param_11;
    param_11;
    param_11;
    if (*(int*)param_11 != 0)
        bVar1 = ZI8_TRUE;
    else
        bVar1 = ZI8_FALSE;

    if (*param_9 != 0) {
        local_52 = *param_9;
    } else {
        local_52 = 1;
    }
    bVar9 = ZI8_FALSE;

    if ((param_21 != '\0') && (1 < param_14)) {
        param_18 = '\x01';
    }

    while (local_52-- != 0) {
        if ((currTab0->maskBytes[0] & param_17) == 0) {
        INC_CURR_TAB0:
            currTab0++;
            continue;
        }
        local_50 = Zi8GetPCode(tab34Data, currTab0);
        if (*buf_param_8 != (local_50 & *buf_param_7) && param_18 == 0 && (currTab0->maskBytes[0] & 0x80) != 0) {
            if (*param_9 != 0) {
                ord = (tab0Count - local_52) - 1;
            } else {
                ord = tab0Count;
            }
            local_50 = Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, ord, *buf_param_7, *buf_param_8, param_17, ZI_WORK);
        }
        goto CHECK_IF_MASKED_EQ;

    IF_MASKED_EQ:
        if (param_16 == (local_50 & param_15))
            goto INC_CURR_TAB0;

        bVar9 = ZI8_TRUE;
        if (*param_9 != 0) {
            ord = (tab0Count - local_52) - 1;
        } else {
            ord = tab0Count;
        }

        pbVar7 = tab1Data + (currTab0->tab1OffsLo + (currTab0->tab1OffsMid << 0x8) + ((currTab0->tab1OffsHi & 0x0F) << 0x10));
        if (ZI_WORK->handleCangjie != 0) {
            switch (*pbVar7 & 7) {
                case 2:
                    pbVar7 += 2;
                    break;
                case 3:
                case 4:
                    pbVar7 += 3;
                    break;
                case 5:
                    pbVar7 += 4;
                    break;
                default:
                    pbVar7 += 1;
                    break;
            }
        }
        if ((*pbVar7 & 0x80) != 0) {
            pbVar7 += ((int)(*pbVar7 & 0x7f) >> 4) + 1;
        } else {
            if (param_14 > 1)
                goto INC_CURR_TAB0;
        }
        if (bVar9 == param_14 || param_14 == 0) {
            *newTab0Out = currTab0;
            *chOut = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
            *param_9 = local_52;
            return ZI8_TRUE;
        }
        do {
            bVar5 = *pbVar7++;
            local_5a = bVar5 & 0xf;
            if ((bVar5 & param_17) == 0) {
                for (; local_5a != 0; local_5a--) {
                    for (pbVar7++; (*pbVar7 & 0x80) == 0; pbVar7 += 2) {
                    }
                    pbVar7++;
                }
            }
            for (; local_5a != 0; local_5a--) {
                i = 1;
                if (bVar1 && (pbVar7 > *(ziU8**)param_11)) {
                    bVar1 = ZI8_FALSE;
                }
                if (!bVar1) {
                    *(ziU8**)param_11 = pbVar7;
                }
                do {
                    uVar3 = pbVar7[0] | ((ziU16)pbVar7[1] << 8);
                    pbVar7 += 2;
                    if (!bVar1) {
                        local_50 = Zi8GetPCode(tab34Data, tab0Entries + (uVar3 & 0x7fff));
                        if ((local_50 & buf_param_7[i]) != buf_param_8[i] && param_18 == 0 &&
                            (tab0Entries[uVar3 & 0x7fff].maskBytes[0] & 0x80) != 0) {
                            local_50 = Zi8MatchAltSound(tab5Entries, tab5Count, tab34Data, uVar3 & 0x7fff, buf_param_7[i], buf_param_8[i], param_17,
                                                        ZI_WORK);
                        }
                        if ((local_50 & buf_param_7[i]) == buf_param_8[i])
                            goto CONTINUE;
                    }

                    {
                    POSITION_A:
                        if ((uVar3 & 0x8000) == 0) {
                            pbVar7++;
                            while ((*pbVar7 & 0x80) == 0) {
                                pbVar7 += 2;
                            }
                            pbVar7++;
                            break;
                        } else {
                            break;
                        }

                    CONTINUE:
                        if (++i == param_14) {
                            if (param_12 != 0 && ((param_13 == 0 && (uVar3 & 0x8000) != 0) || (param_13 != 0 && (uVar3 & 0x8000) == 0))) {
                                goto POSITION_A;
                            }

                            *newTab0Out = currTab0;
                            *chOut = ((ziU16)currTab0->chHi << 8) + (ziU16)currTab0->chLo;
                            *param_9 = local_52;
                            return ZI8_TRUE;
                        }
                    }
                } while ((uVar3 & 0x8000) == 0);
            }
            if ((bVar5 & 0x80) != 0)
                goto INC_CURR_TAB0;
        } while (1);

    CHECK_IF_MASKED_EQ:
        if (*buf_param_8 != (local_50 & *buf_param_7))
            goto INC_CURR_TAB0;
        else
            goto IF_MASKED_EQ;
    }
    return ZI8_FALSE;
}

ziBool Zi8GetPyFinal(ziU8* syllableChars, ziU8* maskOut, ziU8* syllableFinalOut);

ziU8 Zi8GetPyPhonetic(ziWChar* elements, ziU8 elCount, ziU16* maskBuf, ziU16* phoneticsBuf, ziU8* syllable0Len, ziU16* outA,
                      ziU16* outB ZI_NEED_WORK) {
    ziU8 finalCharI;
    ziU8 syllableI;
    ziU16* tmpElements;
    ziU16 currElement;

    ziWChar modifiedElementsBuf[0x100];
    ziU8 finalChars[5];
    ziU8 finalMask;
    ziU8 finalBits;

    ziU8 initial;
    ziU8 syllableCount;
    ziBool syllableFinished;
    ziBool bVar9;

    tmpElements = modifiedElementsBuf;
    bVar9 = ZI8_FALSE;
    syllableCount = 0;
    *syllable0Len = 0;
    if (elCount == 0) {
        Zi8LogError(0x135, ZI_WORK);
        return ZI8_FALSE;
    }

    for (initial = finalCharI = 0; finalCharI < elCount; finalCharI++) {
        // Capital letters get lowercased and a syllable segmentation mark gets
        // inserted  if there is none immediately preceding
        if ((PINYIN_CHAR('A') <= elements[finalCharI] && elements[finalCharI] <= PINYIN_CHAR('Z')) ||
            ('A' <= elements[finalCharI] && elements[finalCharI] <= 'Z')) {
            if (initial != 0 && tmpElements[initial - 1] != PINYIN_CHAR('`') && tmpElements[initial - 1] != '\'') {
                tmpElements[initial++] = '\'';
            }
            tmpElements[initial++] = (elements[finalCharI] & 0x00FF) + ('a' - 'A');
        } else {
            tmpElements[initial++] = elements[finalCharI];
        }
    }

    elCount = initial;
    syllableI = 0;
    *outA = 0;
    *outB = 0;
    while (elCount != 0) {
        maskBuf[syllableI] = 0;
        phoneticsBuf[syllableI] = 0;

        // Initial element idx
        currElement = *tmpElements;
        if ('a' > currElement || currElement > 'z') {
            if (PINYIN_CHAR('a') > currElement || currElement > PINYIN_CHAR('z')) {
                // All non-latin characters are just assumed to be as they are.
                // Notably, this includes all syllable segmentations
            NO_MATCH_FOUND:
                *outA = *outB = *maskBuf = *phoneticsBuf = -1;
                return 1;  // Consume 1 character
            }
            currElement -= PINYIN_CHAR('a');
        } else {
            currElement -= 'a';
        }

        initial = (ziU8)Zi8PinyinInitials[currElement];
        if (initial != PINYIN_INITIAL_UNSUPPORTED) {
            if (syllableI == 0) {
                *syllable0Len += 1;
            }
            syllableCount++;
            maskBuf[syllableI] = PINYIN_INITIAL_MASK;
            phoneticsBuf[syllableI] = (ziU16)(initial & PINYIN_INITIAL_PHONETIC) << PINYIN_INITIAL_SHIFT;
            *outA = *maskBuf;
            *outB = *phoneticsBuf;
            if (--elCount == 0)
                break;
            tmpElements++;

            // Handle 'ch', 'sh', and 'zh' initials
            if ((initial & PINYIN_INITIAL_SUPPORTS_H) != 0) {
                if (bVar9) {
                    maskBuf[syllableI] &= ~(0b000001 << PINYIN_INITIAL_SHIFT) & 0xFFFF;
                    phoneticsBuf[syllableI] &= ~(0b000001 << PINYIN_INITIAL_SHIFT) & 0xFFFF;
                }

                currElement = *tmpElements;
                if (currElement == 'h' || currElement == PINYIN_CHAR('h')) {
                    if (syllableI == 0) {
                        *syllable0Len += 1;
                    }
                    phoneticsBuf[syllableI] += (0b000001 << PINYIN_INITIAL_SHIFT) & 0xFFFF;
                    *outA = *maskBuf;
                    *outB = *phoneticsBuf;
                    elCount--;
                    if (elCount == 0)
                        break;

                    tmpElements++;
                }
            }
        } else {
            // Latin alphabet character not in the initial alphabet (a/e/i/o/u/v)

            // Handle "i"/"yi" syllable
            if (*tmpElements == PINYIN_CHAR('i') || *tmpElements == 'i')
                goto NO_MATCH_FOUND;
        }

        syllableFinished = ZI8_FALSE;
        for (finalCharI = 0; finalCharI < 4; finalCharI++) {
            finalChars[finalCharI] = '\0';
        }
        for (finalCharI = 0; finalCharI < 4;) {
            currElement = *tmpElements;

            // Handle syllable segmentation marks
            if (currElement == '\'' || currElement == PINYIN_CHAR('`') || currElement == ' ') {
                if (finalCharI != 0) {
                    syllableFinished = ZI8_TRUE;
                }
                break;
            }

            // Handle tone marks
            if (PINYIN_TONE(1) <= currElement && currElement < PINYIN_TONE(6)) {
                if (finalCharI != 0) {
                    syllableFinished = ZI8_TRUE;
                }
                break;
            }

            // Convert basic roman characters and their private use equivalent
            // into their latin-alphabet index
            if ('a' > currElement || currElement > 'z') {
                if (currElement < PINYIN_CHAR('a'))
                    break;

                currElement -= PINYIN_CHAR('a');
                if (currElement > ('z' - 'a')) {
                    if (syllableI == 0) {
                        *syllable0Len += 1;
                    }
                    break;
                }
            } else {
                currElement -= 'a';
            }

            // Add the index (plus one because zero is a sentinel value) to the
            // running syllable
            finalChars[finalCharI] = (ziU8)currElement + 1;

            // If this running syllable is a real syllable (without the
            // unfinished syllable marker)
            if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
                if (syllableI == 0) {
                    *syllable0Len += 1;
                }
                tmpElements++;
                finalCharI++;

                if (--elCount != 0)
                    continue;
                else
                    break;
            }

            // If there have only been 3 characters in the symbol
            if (finalCharI < 3) {
                finalChars[finalCharI + 1] = 0xFF;
                if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
                    if (syllableI == 0) {
                        *syllable0Len += 1;
                    }
                    finalChars[finalCharI + 1] = 0;
                    tmpElements++;
                    finalCharI++;
                    if (--elCount == 0)
                        break;
                } else {
                    finalChars[finalCharI + 1] = 0;
                    finalChars[finalCharI] = 0;
                    syllableFinished = ZI8_TRUE;
                    break;
                }
            } else {
                finalChars[finalCharI] = 0;
                syllableFinished = ZI8_TRUE;
                break;
            }
        }

        // If it's consumed 4+ characters in this syllable, consume a syllable
        // segmentation mark
        if (finalCharI > 3 && elCount != 0) {
            currElement = *tmpElements;
            if (currElement == '\'' || currElement == PINYIN_CHAR('`') || currElement == ' ') {
                if (syllableI == 0) {
                    *syllable0Len += 1;
                }
                tmpElements++;
                elCount--;
            }
        }

        // If we're consumed 4+ characters, the syllable is definitely done
        if (finalCharI > 3) {
            syllableFinished = ZI8_TRUE;
        }

        if (syllableFinished && !bVar9) {
            if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
                if (initial == PINYIN_INITIAL_UNSUPPORTED) {
                    syllableCount++;
                    maskBuf[syllableI] = PINYIN_INITIAL_MASK;
                    phoneticsBuf[syllableI] = INITIAL_NONE << PINYIN_INITIAL_SHIFT;
                }
                maskBuf[syllableI] |= (ziU16)finalMask << PINYIN_FINAL_SHIFT;
                phoneticsBuf[syllableI] |= (ziU16)finalBits << PINYIN_FINAL_SHIFT;
                *outA = *maskBuf;
                *outB = *phoneticsBuf;
            } else if (finalCharI != 0 && elCount != 0) {
                goto NO_MATCH_FOUND;
            }
            goto SYLLABLE_POST_FINAL;
        }

        // Try with incomplete syllable
        finalChars[finalCharI] = 0xFF;
        if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
            if (initial == PINYIN_INITIAL_UNSUPPORTED) {
                syllableCount++;
                maskBuf[syllableI] = PINYIN_INITIAL_MASK;
                phoneticsBuf[syllableI] = INITIAL_NONE << PINYIN_INITIAL_SHIFT;
            }
            maskBuf[syllableI] |= (ziU16)finalMask << PINYIN_FINAL_SHIFT;
            phoneticsBuf[syllableI] |= (ziU16)finalBits << PINYIN_FINAL_SHIFT;
            *outA = *maskBuf;
            *outB = *phoneticsBuf;

            // If this is the first syllable, AND the end of the provided
            // elements, try with a complete syllable
            if (syllableI == 0 && elCount == 0) {
                finalChars[finalCharI] = 0;
                if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
                    if (initial == PINYIN_INITIAL_UNSUPPORTED) {
                        *outA = PINYIN_INITIAL_MASK;
                        *outB = INITIAL_NONE << PINYIN_INITIAL_SHIFT;
                    }
                    *outA = *outA | (ziU16)finalMask << PINYIN_FINAL_SHIFT;
                    *outB = *outB | (ziU16)finalBits << PINYIN_FINAL_SHIFT;
                }
            }

            goto SYLLABLE_POST_FINAL;
        }

        // Try with complete syllable
        finalChars[finalCharI] = 0;
        if (Zi8GetPyFinal(finalChars, &finalMask, &finalBits) != 0) {
            if (initial == PINYIN_INITIAL_UNSUPPORTED) {
                syllableCount++;
                maskBuf[syllableI] = PINYIN_INITIAL_MASK;
                phoneticsBuf[syllableI] = INITIAL_NONE << PINYIN_INITIAL_SHIFT;
            }
            maskBuf[syllableI] |= (ziU16)finalMask << PINYIN_FINAL_SHIFT;
            phoneticsBuf[syllableI] |= (ziU16)finalBits << PINYIN_FINAL_SHIFT;
            *outA = *maskBuf;
            *outB = *phoneticsBuf;
        }

    SYLLABLE_POST_FINAL:
        // Get element
        if (elCount == 0)
            goto CONTINUE_NEXT_SYLLABLE;
        currElement = *tmpElements;

        // Consume a syllable segmentation mark
        if (currElement == '\'' || currElement == PINYIN_CHAR('`') || currElement == ' ') {
            tmpElements++;
            elCount--;
            if (syllableI == 0) {
                *syllable0Len += 1;
            }
            goto CONTINUE_NEXT_SYLLABLE;
        }

        // Check for tones 0 through 4
        if (currElement < PINYIN_TONE(1))
            goto CONTINUE_NEXT_SYLLABLE;
        currElement -= PINYIN_TONE(1);
        if (currElement > 4)
            goto CONTINUE_NEXT_SYLLABLE;

        // Incorportate tones into the phonetics
        currElement++;
        maskBuf[syllableI] |= PINYIN_TONE_MASK;
        phoneticsBuf[syllableI] |= currElement;
        *outA = *maskBuf;
        *outB = *phoneticsBuf;
        elCount--;
        tmpElements++;
        if (syllableI == 0) {
            *syllable0Len += 1;
        }

        // Get element
        if (elCount == 0)
            goto CONTINUE_NEXT_SYLLABLE;
        currElement = *tmpElements;

        // Consume a syllable segmentation mark
        if (currElement == '\'' || currElement == PINYIN_CHAR('`') || currElement == L' ') {
            elCount--;
            tmpElements++;
            if (syllableI == 0) {
                *syllable0Len += 1;
            }
        }

    CONTINUE_NEXT_SYLLABLE:
        if (++syllableI > 0xf)
            break;
    }
    if (syllableCount > 1) {
        if (PINYIN_CHAR('A') <= elements[*syllable0Len - 1] && elements[*syllable0Len - 1] <= PINYIN_CHAR('Z')) {
            *syllable0Len = *syllable0Len - 1;
        }
    }
    return syllableCount;
}

ziBool Zi8GetPyFinal(ziU8* syllableChars, ziU8* maskOut, ziU8* syllableFinalOut) {
    ziU8 i;
    ziU8 j;

    j = 0;
    i = 0;
    while (i < 54) {
        while (j < 4) {
            if (syllableChars[j] != Zi8PinyinFinals[i].chars[j])
                break;
            j++;
        }
        if (j >= 4) {
            *maskOut = (ziU8)Zi8PinyinFinals[i].knownMask;
            *syllableFinalOut = (ziU8)Zi8PinyinFinals[i].syllableFinal;
            return ZI8_TRUE;
        }
        i++;
        j = 0;
    }
    return ZI8_FALSE;
}

ziU8 Zi8GetBpmfPhonetic(ziWChar* elements, ziU8 elCount, ziU16* maskBuf, ziU16* phoneticsBuf, ziU16* outA, ziU16* outB ZI_NEED_WORK) {
    ziU8 elementsUsed;
    ziWChar currElement;

    currElement;

    elementsUsed = 0;
    Zi8LogError(0x64, ZI_WORK);

    // Error on empty input
    if (elCount == 0) {
        Zi8ReplaceLastError(0x135, ZI_WORK);
        return 0;
    }

    // Get first element, convert to bopomofo index
    // If it's not a bopomofo character, error
    currElement = elements[0];
    if (currElement < BPMF_BASE) {
        Zi8ReplaceLastError(0x154, ZI_WORK);
        return 0;
    }
    currElement -= BPMF_BASE;
    if (currElement >= BPMF_CHAR_LETTER_MAX) {
        Zi8ReplaceLastError(0x154, ZI_WORK);
        return 0;
    }

    // If it's an initial, handle it, else record it phonetically as no initial
    if (currElement < BPMF_CHAR_INITIAL_MAX) {
        *maskBuf = PINYIN_INITIAL_MASK;
        *phoneticsBuf = ((ziU16)Zi8BpmfInitials[currElement] & PINYIN_INITIAL_PHONETIC) << PINYIN_INITIAL_SHIFT;

        // If it's the end of the input, return early
        elementsUsed++;
        elCount--;
        if (elCount == 0) {
            *outA = *maskBuf;
            *outB = *phoneticsBuf;

            // Handle zhi, chi, shi, ri, zi, ci, si
            if (currElement >= BPMF_CHAR_INITIAL_ZH && currElement <= BPMF_CHAR_INITIAL_S) {
                *outA = *outA | PINYIN_FINAL_MASK;
                *outB = *outB | (PINYIN_FINAL(BPMF_MEDIAL_NONE, BPMF_RIME_MEDIAL) << PINYIN_FINAL_SHIFT);
            }
            return elementsUsed;
        }

        // Handle syllable seperation mark
        // If it exists, it should be the last element, so error if it isn't
        elements++;
        if (*elements == PINYIN_CHAR('`')) {
            elementsUsed++;
            elCount--;
            if (elCount == 0) {
                return elementsUsed;
            } else {
                Zi8ReplaceLastError(0x156, ZI_WORK);
                return 0;
            }
        }
    } else {
        *maskBuf = PINYIN_INITIAL_MASK;
        *phoneticsBuf = INITIAL_NONE << PINYIN_INITIAL_SHIFT;
    }

    // Get second element, checking for medials
    currElement = *elements - BPMF_BASE;
    switch (currElement) {
        case BPMF_CHAR_MEDIAL_I:
            *phoneticsBuf |= BPMF_MEDIAL_I << PINYIN_MEDIAL_SHIFT;
            *maskBuf |= PINYIN_MEDIAL_MASK;

            // If it's the end of the input, the closed syllable has a rime
            // that's basically "ends with the medial"
            // yi, bi, pi, mi, di, ti, ni, li, ji, qi, xi
            elementsUsed++;
            elCount--;
            if (elCount == 0) {
                *outA = *maskBuf | PINYIN_RIME_MASK;
                *outB = *phoneticsBuf | (BPMF_RIME_MEDIAL << PINYIN_RIME_SHIFT);
                return elementsUsed;
            }
            elements++;
            break;

        case BPMF_CHAR_MEDIAL_U:
            *phoneticsBuf |= BPMF_MEDIAL_U << PINYIN_MEDIAL_SHIFT;
            *maskBuf |= PINYIN_MEDIAL_MASK;

            // If it's the end of the input, the closed syllable has a rime
            // that's basically "ends with the medial"
            // wu, bu, pu, mu, fu, du, tu, nu, lu, gu, ku, hu, zhu, chu, shu, ru, zu, cu, su
            elementsUsed++;
            elCount--;
            if (elCount == 0) {
                *outA = *maskBuf | PINYIN_RIME_MASK;
                *outB = *phoneticsBuf | (BPMF_RIME_MEDIAL << PINYIN_RIME_SHIFT);
                return elementsUsed;
            }
            elements++;
            break;

        case BPMF_CHAR_MEDIAL_IU:
            *phoneticsBuf |= BPMF_MEDIAL_IU << PINYIN_MEDIAL_SHIFT;
            *maskBuf |= PINYIN_MEDIAL_MASK;

            // If it's the end of the input, the closed syllable has a rime
            // that's basically "ends with the medial"
            // yu, nü, lü, ju, qu, xu
            elementsUsed++;
            elCount--;
            if (elCount == 0) {
                *outA = *maskBuf | PINYIN_RIME_MASK;
                *outB = *phoneticsBuf | (BPMF_RIME_MEDIAL << PINYIN_RIME_SHIFT);
                return elementsUsed;
            }
            elements++;
            break;

        default:
            // If the element is a tone, it's group A. DON'T consume the element
            if (PINYIN_TONE(1) > *elements || *elements > PINYIN_TONE(5)) {
                *maskBuf |= PINYIN_MEDIAL_MASK;
            }
            break;
    }

    // Get and handle rime element
    currElement = *elements - BPMF_BASE;
    if (BPMF_CHAR_RIME_MIN - 1 < currElement && currElement < BPMF_CHAR_RIME_MAX) {
        *phoneticsBuf |= (ziU16)Zi8BpmfInitials[currElement] << PINYIN_RIME_SHIFT;
        *maskBuf |= PINYIN_RIME_MASK;

        // If it's the end of the input, return early
        elementsUsed++;
        elCount--;
        if (elCount == 0) {
            *outA = *maskBuf;
            *outB = *phoneticsBuf;
            return elementsUsed;
        }
        elements++;
    } else {
        // If the element is a tone or the mask is recorded as having a medial,
        // the the syllable has a rime that's basically "ends with the medial"
        //
        // This will always be executed because all branches of the medial
        // switch statement set the mask.
        if (PINYIN_TONE(1) > *elements || *elements > PINYIN_TONE(5) || (*maskBuf & PINYIN_MEDIAL_MASK) == PINYIN_MEDIAL_MASK) {
            *phoneticsBuf |= BPMF_RIME_MEDIAL << PINYIN_RIME_SHIFT;
            *maskBuf |= PINYIN_RIME_MASK;
        }
    }

    // Get the next element. The only possible to be left is a tone element, so
    // we error if it's not.
    currElement = *elements;
    if (currElement < PINYIN_TONE(1)) {
        Zi8ReplaceLastError(0x155, ZI_WORK);
        return 0;
    }
    currElement -= PINYIN_TONE(0);
    if (currElement > 5) {
        Zi8ReplaceLastError(0x155, ZI_WORK);
        return 0;
    }

    // Incorporate tone element into the phonetics and mask
    *maskBuf |= PINYIN_TONE_MASK;
    *phoneticsBuf |= currElement;
    *outA = *maskBuf;
    *outB = *phoneticsBuf;

    // If there are elements left over, error
    elementsUsed++;
    elCount--;
    if (elCount != 0) {
        Zi8ReplaceLastError(0x157, ZI_WORK);
        return 0;
    }

    return elementsUsed;
}

ziWChar Zi8GetPCode(ziU8* syllTable, Table0Entry* chInfo) {
    ziU16 syllTableOff;

    syllTableOff = ((ziU16)chInfo->syllIdxHi << 2) | (((ziU16)chInfo->syllIdxLo & 0x80) >> 6);
    return ((ziU16)chInfo->tone >> 4 & 7) | syllTable[syllTableOff] | ((ziU16)syllTable[syllTableOff + 1] << 8);
}

// - Your sibling can only be explicit if you have a sibling (3 possibilities)
// - Your child can only be explicit if you have a child (3 possibilities)
// - You can either be end of word or not (2 possibilities)
//   - If you don't have a child, you must be an end-of-word (removes 3 possibilities)
// 3 * 3 * 2 - 3 = 15 possibilities
// Index 15 is similar to index 9, with an extra, currently unknown bit set
const ziU16 nodeHeaderTable[0x10] = {
    DAWG_SIBLING_NO_SIBLI | DAWG_CHILD_NO_CHILD | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_NO_SIBLI | DAWG_CHILD_IMPLICIT,
    DAWG_SIBLING_NO_SIBLI | DAWG_CHILD_EXPLICIT,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_NO_CHILD | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_IMPLICIT,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_EXPLICIT,
    DAWG_SIBLING_EXPLICIT | DAWG_CHILD_NO_CHILD | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_EXPLICIT | DAWG_CHILD_IMPLICIT,
    DAWG_SIBLING_EXPLICIT | DAWG_CHILD_EXPLICIT,
    DAWG_SIBLING_NO_SIBLI | DAWG_CHILD_IMPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_NO_SIBLI | DAWG_CHILD_EXPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_IMPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_EXPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_EXPLICIT | DAWG_CHILD_IMPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_EXPLICIT | DAWG_CHILD_EXPLICIT | DAWG_IS_EOW_FLAG,
    DAWG_SIBLING_IMPLICIT | DAWG_CHILD_IMPLICIT | DAWG_IS_EOW_FLAG | DAWG_FLAG_32,
};
