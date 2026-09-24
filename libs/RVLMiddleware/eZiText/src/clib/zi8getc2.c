#include <zi8clib/zi8getc2.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi81key.h>
#include <zi8clib/zi8alpha.h>
#include <zi8clib/zi8cgetc.h>
#include <zi8clib/zi8cinfo.h>
#include <zi8clib/zi8getSW.h>
#include <zi8clib/zi8is.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8punct.h>
#include <zi8clib/zi8ver.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zikorean.h>
#include <zi8clib/zkokeyp.h>

#define ZI8_TABLE_DATASIG_ALPHA 3
#define ZI8_TABLE_DATASIG_CHINESE 30

const ziFuzzyPYPairs Zi8PYdefaultFuzzyPairs = {
    ZI8_FALSE,  // ziDefault    NOLINT
    ZI8_TRUE,   // cANDch       NOLINT
    ZI8_TRUE,   // sANDsh       NOLINT
    ZI8_TRUE,   // zANDzh       NOLINT
    ZI8_TRUE,   // anANDang     NOLINT
    ZI8_TRUE,   // enANDeng     NOLINT
    ZI8_TRUE,   // inANDing     NOLINT
    ZI8_FALSE,  // nANDl        NOLINT
    ZI8_FALSE,  // lANDr        NOLINT
    ZI8_FALSE,  // fANDh        NOLINT
};
const ziFuzzyZYPairs Zi8ZYdefaultFuzzyPairs = {
    ZI8_FALSE,  // ziDefault    NOLINT
    ZI8_FALSE,  // cANDch       NOLINT
    ZI8_FALSE,  // sANDsh       NOLINT
    ZI8_FALSE,  // zANDzh       NOLINT
    ZI8_FALSE,  // anANDang     NOLINT
    ZI8_FALSE,  // enANDeng     NOLINT
    ZI8_FALSE,  // nANDl        NOLINT
    ZI8_FALSE,  // lANDr        NOLINT
    ZI8_FALSE,  // fANDh        NOLINT
    ZI8_FALSE,  // rANDn        NOLINT
    ZI8_FALSE,  // bANDp        NOLINT
    ZI8_FALSE,  // gANDk        NOLINT
};

ziBool Zi8ZHsetPYfuzzyPairs(ziFuzzyPYPairs pairsList ZI_NEED_WORK) {
    if (pairsList.ziDefault) {
        ZI_WORK->pyFuzzyPairs = Zi8PYdefaultFuzzyPairs;
    } else {
        ZI_WORK->pyFuzzyPairs = pairsList;
    }
    return ZI8_TRUE;
}

ziBool Zi8ZHsetZYfuzzyPairs(ziFuzzyZYPairs pairsList ZI_NEED_WORK) {
    if (pairsList.ziDefault) {
        ZI_WORK->zyFuzzyPairs = Zi8ZYdefaultFuzzyPairs;
    } else {
        ZI_WORK->zyFuzzyPairs = pairsList;
    }
    return ZI8_TRUE;
}

// clang-format off
const ziU8 Zi8SOdefaultArray[] = {
    ZI8_SEARCH_ROM_A,
    ZI8_SEARCH_OEM_A, ZI8_SEARCH_UWD_A, ZI8_SEARCH_PUD_A, ZI8_SEARCH_ROM_A,
    ZI8_SEARCH_OEM_B, ZI8_SEARCH_UWD_B, ZI8_SEARCH_PUD_B, ZI8_SEARCH_ROM_B,
    ZI8_SEARCH_TERMINATE,
};
// clang-format on
ziBool Zi8SetLatinSearchOrder(ziU8* searchArray, ziU8 searchSize ZI_NEED_WORK) {
    if (searchArray == ZI8_NULL || searchArray[0] == 0) {
        ZI_WORK->latinSearchOrderList = (ziU8*)Zi8SOdefaultArray;
        ZI_WORK->latinSearchOrderLen = 9;
    } else {
        ZI_WORK->latinSearchOrderList = searchArray;
        ZI_WORK->latinSearchOrderLen = searchSize;
    }
    return 1;
}

ziU16 Zi8GetGlobalDataSize() {
    return sizeof(struct __zi8_work_data_s);
}

ziU16 Zi8GetDataSignature(ziChar* sigOut, ziU16 sigOutLen, ziU8 language ZI_NEED_WORK) {
    ziU16 tabInfo;
    ziChar* dataSig;

    sigOut;    // NOLINT
    language;  // NOLINT

    if (language == ZI8_LANG_ZH) {
        if (Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) < 8) {
            Zi8LogError(ZI8_ERR_LANG_ZH_FORMAT_VERSION, ZI_WORK);
            return 0;
        }
        tabInfo = ZI8_TABLE_DATASIG_CHINESE;
    } else {
        tabInfo = ZI8_TABLE_DATASIG_ALPHA;
    }

    dataSig = (ziChar*)Zi8GetTableAddress(language, tabInfo, ZI_WORK);
    tabInfo = Zi8GetTableCount(language, tabInfo, ZI_WORK);
    if (tabInfo == 0 || tabInfo > sigOutLen) {
        Zi8LogError(2401, ZI_WORK);
        return 0;
    } else {
        Zi8Memcpy(sigOut, dataSig, tabInfo);
        sigOut[tabInfo] = '\0';
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    }
    return tabInfo;
}

ziU16 Zi8GetEngineSignature(ziChar* sigOut ZI_NEED_WORK)

{
    ziU16 i;
    ziU16 cfgVal;
    volatile ziU16 versionMinor;

    i = 0;

    sigOut[i++] = 'v';
    cfgVal = (Zi8GetVersion(ZI_WORK) & 0xFF00) >> 8;
    versionMinor = (Zi8GetVersion(ZI_WORK) & 0x00FF);
    sigOut[i++] = cfgVal / 10 + '0';
    sigOut[i++] = cfgVal % 10 + '0';
    sigOut[i++] = versionMinor / 10 + '0';
    sigOut[i++] = versionMinor % 10 + '0';

    sigOut[i++] = 'o';
    cfgVal = Zi8GetOEMID(ZI_WORK);
    sigOut[i++] = cfgVal / 100 + '0';
    sigOut[i++] = cfgVal % 100 / 10 + '0';
    sigOut[i++] = cfgVal % 100 % 10 + '0';

    sigOut[i++] = 'b';
    cfgVal = Zi8GetBuildID(ZI_WORK);
    sigOut[i++] = cfgVal / 100 + '0';
    sigOut[i++] = cfgVal % 100 / 10 + '0';
    sigOut[i++] = cfgVal % 100 % 10 + '0';

    sigOut[i] = '\0';
    return i;
}

ziBool Zi8AlphaSignature(ziGetParam* getParam, ziBool param_2 ZI_NEED_WORK) {
    ziWChar* pSigOut = getParam->candidates;
    ziChar* pSigUC;

    ziChar* p1stSig = ZI8_NULL;
    ziChar* p2ndSig = ZI8_NULL;
    ziChar dataSig[32];
    ziChar engineSig[32];

    ziU16 sigPartLen;
    ziU16 sig1stPartLen = 0;
    ziU16 sig2ndPartLen = 0;

    ZI_WORK;

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    getParam->count = 0;
    sigPartLen = Zi8GetDataSignature(dataSig, 0x20, getParam->language, ZI_WORK);
    if (sigPartLen != 0 && getParam->elementCount <= sigPartLen) {
        p1stSig = dataSig;
        p2ndSig = engineSig;
        sig1stPartLen = sigPartLen;
    } else {
        p1stSig = engineSig;
    }

    sigPartLen = Zi8GetEngineSignature(engineSig, ZI_WORK);
    if (sigPartLen < getParam->elementCount) {
        if (sig1stPartLen != 0) {
            p2ndSig = ZI8_NULL;
            sigPartLen = 1;
        } else {
            Zi8ReplaceLastError(ZI8_ERR_SIGNATURE_UNK_A, ZI_WORK);
            return ZI8_FALSE;
        }
    } else if (sig1stPartLen != 0) {
        sig2ndPartLen = sigPartLen;
        sigPartLen = 2;
    } else {
        sig1stPartLen = sigPartLen;
        sigPartLen = 1;
    }
    if (getParam->firstCandidate >= sigPartLen) {
        Zi8ReplaceLastError(ZI8_ERR_SIGNATURE_UNK_B, ZI_WORK);
        return ZI8_FALSE;
    }

    sigPartLen = sigPartLen - getParam->firstCandidate;
    if (param_2) {
        getParam->count = (ziU8)sigPartLen;
        ZI_WORK->maxWordLen = 0xFF;
        return ZI8_TRUE;
    }

    if (getParam->maxCandidates < sigPartLen) {
        sigPartLen = (ziU16)getParam->maxCandidates;
    }
    getParam->count = (ziU8)sigPartLen;
    if ((getParam->getOptions & 0b10000000) == 0) {
        ZI_WORK->unk_0x538 = getParam->language;
        getParam->candidates[0] = 0xFFF0;
        pSigOut = ZI_WORK->candidates;
    }
    if (getParam->firstCandidate != 0) {
        pSigUC = p2ndSig;
        sigPartLen = sig2ndPartLen;
    } else {
        pSigUC = p1stSig;
        sigPartLen = sig1stPartLen;
    }
    if (sigPartLen > ZI_WORK->maxWordLen) {
        sigPartLen = ZI_WORK->maxWordLen;
    }
    if ((getParam->elementCount < ZI_WORK->unk_0x140C || (getParam->getOptions & 0b01111110) == 2) && (sigPartLen > getParam->elementCount)) {
        sigPartLen = getParam->elementCount;
    }
    while (sigPartLen-- != 0) {
        *pSigOut++ = *pSigUC++;
    }
    *pSigOut = L'\0';
    pSigOut++;

    if (getParam->count == 2) {
        pSigUC = p2ndSig;
        sigPartLen = sig2ndPartLen;
        if (sigPartLen > ZI_WORK->maxWordLen) {
            sigPartLen = ZI_WORK->maxWordLen;
        }
        if ((getParam->elementCount < ZI_WORK->unk_0x140C || (getParam->getOptions & 0b01111110) == 2) && sigPartLen > getParam->elementCount) {
            sigPartLen = getParam->elementCount;
        }
        while (sigPartLen-- != 0) {
            *pSigOut++ = *pSigUC++;
        }
        *pSigOut++ = L'\0';
    }
    *pSigOut++ = L'\0';

    ZI_WORK->maxWordLen = 0xFF;
    return ZI8_TRUE;
}
ziBool Zi8ZhSignature(ziGetParam* getParam, ziBool param_2 ZI_NEED_WORK) {
    ziU16 sig1stPartLen;
    ziU16 sig2ndPartLen;

    ziWChar* pSigOut;
    ziChar* pSigUC;

    ziU16 sigCurrPartLen;
    ziU16 offsetFrom1stPart;

    ziU8 p1stSig[32];
    ziU8 p2ndSig[32];

    pSigOut = getParam->candidates;
    pSigUC = ZI8_NULL;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    getParam->count = 0;
    sig1stPartLen = Zi8GetDataSignature(p1stSig, 0x20, getParam->language, ZI_WORK);
    sig2ndPartLen = Zi8GetEngineSignature(p2ndSig, ZI_WORK);

    if ((getParam->context & 0x10) != 0) {
        sigCurrPartLen = 0;
        if (sig1stPartLen != 0)
            sigCurrPartLen++;
        if (sig2ndPartLen != 0)
            sigCurrPartLen++;
    } else {
        sigCurrPartLen = sig1stPartLen + sig2ndPartLen;
    }
    if (getParam->firstCandidate >= sigCurrPartLen) {
        Zi8ReplaceLastError(ZI8_ERR_SIGNATURE_UNK_C, ZI_WORK);
        return ZI8_FALSE;
    }
    sigCurrPartLen = sigCurrPartLen - getParam->firstCandidate;
    if (param_2) {
        getParam->count = sigCurrPartLen;
        ZI_WORK->maxWordLen = 0xFF;
        return ZI8_TRUE;
    }

    if (getParam->maxCandidates < sigCurrPartLen) {
        sigCurrPartLen = getParam->maxCandidates;
    }

    getParam->count = sigCurrPartLen;
    if ((getParam->context & 0x10) != 0) {
        if (getParam->firstCandidate != 0 || sig1stPartLen == 0) {
            if (getParam->firstCandidate != 0 && sig1stPartLen == 0) {
                Zi8ReplaceLastError(ZI8_ERR_SIGNATURE_UNK_A, ZI_WORK);
                return 0;
            }
            pSigUC = p2ndSig;
            sigCurrPartLen = sig2ndPartLen;
        } else {
            pSigUC = p1stSig;
            sigCurrPartLen = sig1stPartLen;
        }
        while (sigCurrPartLen-- != 0) {
            *pSigOut++ = *pSigUC++;
        }
        *pSigOut++ = L' ';
        if (getParam->count == 2) {
            pSigUC = p2ndSig;
            sigCurrPartLen = sig2ndPartLen;
            while (sigCurrPartLen-- != 0) {
                *pSigOut++ = *pSigUC++;
            }
            *pSigOut++ = L' ';
        }
    } else {
        offsetFrom1stPart = 0;
        if (sig1stPartLen != 0) {
            if (getParam->firstCandidate >= sig1stPartLen) {
                sigCurrPartLen = 0;
            } else {
                sigCurrPartLen = sig1stPartLen - getParam->firstCandidate;
                pSigUC = p1stSig + getParam->firstCandidate;
            }
            if (getParam->count < sigCurrPartLen) {
                sigCurrPartLen = getParam->count;
            }
            offsetFrom1stPart = sigCurrPartLen;
            while (sigCurrPartLen-- != 0) {
                *pSigOut++ = *pSigUC++;
            }
        }
        pSigUC = p2ndSig;
        if (getParam->firstCandidate >= sig1stPartLen) {
            sigCurrPartLen = sig1stPartLen + (sig2ndPartLen - getParam->firstCandidate);
            pSigUC += sig2ndPartLen - sigCurrPartLen;
        } else {
            sigCurrPartLen = sig2ndPartLen;
        }
        if (getParam->count - offsetFrom1stPart < sigCurrPartLen) {
            sigCurrPartLen = getParam->count - offsetFrom1stPart;
        }
        while (sigCurrPartLen-- != 0) {
            *pSigOut++ = *pSigUC++;
        }
    }
    return ZI8_TRUE;
}

ziU8 _Zi8GetCandidates(ziGetParam* getParam ZI_NEED_WORK) {
    ziGetCandidatesParam getCandParam = {};
    getCandParam.unk_0x10 = ZI_WORK->unk_0x141A;
    return Zi8GetCandidatesOrCount(getParam, &getCandParam, ZI_WORK);
}
ziU8 _Zi8CheckCandidates(ziGetParam* getParam ZI_NEED_WORK) {
    ziGetCandidatesParam getCandParam = {};
    getCandParam.unk_0x10 = ZI_WORK->unk_0x141A;
    getCandParam.unk_0x13 = ZI8_TRUE;
    return Zi8GetCandidatesOrCount(getParam, &getCandParam, ZI_WORK);
}

// ziU32 Zi8GetKOcandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);
// ziU32 Zi8GetKoreanCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK);

ziU32 Zi8GetCandidatesOrCount(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    ziU32 result;
    ziU16 code;
    ziU8 i;

    ziWChar pinyinToneIdxChr;
    ziWChar pinyinMaybeHChr;

    ziU8 savedGetOptions;
    ziBool bVar4;
    ziU8 charInfoSize;
    ziU8 savedElementCount;
    ziU8 savedGetMode;
    ziWChar* savedCandidates;
    ziWChar* savedElements;
    ziWChar charInfoBuffer[0x10];

    code = 0;
    savedGetOptions = 0;
    savedCandidates = ZI8_NULL;
    bVar4 = ZI8_FALSE;
    if (getCandParam->unk_0x02 == 0) {
        if (ZI_WORK->unk_0x00 == 9 && getParam->elementCount != 0 &&
            ((getParam->elements[getParam->elementCount - 1] == PAD_KEY(8) && Zi8AlphaSignature(getParam, getCandParam->unk_0x00, ZI_WORK) != 0) ||
             (getParam->elements[getParam->elementCount - 1] == ZI8_STROKE_CODE_x1 &&
              Zi8ZhSignature(getParam, getCandParam->unk_0x00, ZI_WORK) != 0))) {
            result = getParam->count;
            if (getCandParam->unk_0x00 != 0) {
                getParam->count = 0;
            }
            Zi8LogError(ZI8_ERR_OK, ZI_WORK);
            return result;
        }

        if (getParam->elementCount == 1 && getParam->firstCandidate == 0) {
            switch (getParam->language) {
                case ZI8_LANG_ZH:
                    if (ZI_WORK->unk_0x00 == 0 || ZI_WORK->unk_0x01 == getCandParam->unk_0x00) {
                        switch (ZI_WORK->unk_0x00) {
                            case 0b0000:
                                if (*getParam->elements == ZI8_STROKE_CODE_x1) {
                                    ZI_WORK->unk_0x01 = getCandParam->unk_0x00;
                                    ZI_WORK->unk_0x00 = 0b0001;
                                }
                                break;
                            case 0b0010:
                            case 0b0100:
                            case 0b0110:
                                if (*getParam->elements == ZI8_STROKE_CODE_x1) {
                                    ZI_WORK->unk_0x00++;
                                } else {
                                    ZI_WORK->unk_0x00 = '\0';
                                }
                                break;
                            case 0b0001:
                            case 0b0011:
                            case 0b0101:
                            case 0b0111:
                                if (*getParam->elements == ZI8_STROKE_CODE_x2) {
                                    ZI_WORK->unk_0x00++;
                                } else {
                                    ZI_WORK->unk_0x00 = '\0';
                                }
                                break;
                            case 0b1000:
                            case 0b1001:
                                if (*getParam->elements == ZI8_STROKE_CODE_x1 && Zi8ZhSignature(getParam, getCandParam->unk_0x00, ZI_WORK)) {
                                    ZI_WORK->unk_0x00 = 9;
                                    result = getParam->count;
                                    if (getCandParam->unk_0x00 != 0) {
                                        getParam->count = 0;
                                    }
                                    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
                                    return result;
                                }
                            default:
                                ZI_WORK->unk_0x00 = '\0';
                        }
                        if ((ZI_WORK->unk_0x00 == '\0') && (*getParam->elements == 0xef04)) {
                            ZI_WORK->unk_0x00 = '\x01';
                        }
                    }
                    break;

                default:
                    if (ZI_WORK->unk_0x00 == 0 || ZI_WORK->unk_0x01 == getCandParam->unk_0x00) {
                        switch (ZI_WORK->unk_0x00) {
                            case 0:
                                if (*getParam->elements == PAD_KEY(2)) {
                                    ZI_WORK->unk_0x01 = getCandParam->unk_0x00;
                                    ZI_WORK->unk_0x00 = 1;
                                }
                                break;
                            case 1:
                                if (*getParam->elements == PAD_KEY(3)) {
                                    ZI_WORK->unk_0x00 = 2;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 2:
                                if (*getParam->elements == PAD_KEY(5)) {
                                    ZI_WORK->unk_0x00 = 3;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 3:
                                if (*getParam->elements == PAD_KEY(7)) {
                                    ZI_WORK->unk_0x00 = 4;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 4:
                                if (*getParam->elements == PAD_KEY(8)) {
                                    ZI_WORK->unk_0x00 = 5;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 5:
                                if (*getParam->elements == PAD_KEY(9)) {
                                    ZI_WORK->unk_0x00 = 6;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 6:
                                if (*getParam->elements == PAD_KEY(2)) {
                                    ZI_WORK->unk_0x00 = 7;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 7:
                                if (*getParam->elements == PAD_KEY(5)) {
                                    ZI_WORK->unk_0x00 = 8;
                                } else {
                                    ZI_WORK->unk_0x00 = 0;
                                }
                                break;
                            case 8:
                            case 9:
                                if (*getParam->elements == PAD_KEY(8) && Zi8AlphaSignature(getParam, getCandParam->unk_0x00, ZI_WORK)) {
                                    ZI_WORK->unk_0x00 = 9;
                                    result = getParam->count;
                                    if (getCandParam->unk_0x00 != 0) {
                                        getParam->count = 0;
                                    }
                                    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
                                    return result;
                                }
                            default:
                                ZI_WORK->unk_0x00 = 0;
                        }
                        if (ZI_WORK->unk_0x00 == 0 && (*getParam->elements == PAD_KEY(2))) {
                            ZI_WORK->unk_0x00 = 1;
                        }
                    }
                    break;

                case ZI8_LANG_JP:
                case ZI8_LANG_KO:
                case ZI8_LANG_PYP:
                case ZI8_LANG_PYS:
                case ZI8_LANG_ZYP:
                case ZI8_LANG_ZYS:
                case ZI8_LANG_SP2:
                case ZI8_LANG_PY2:
                case ZI8_LANG_ZY2:
                    break;
            }
        } else if (getParam->elementCount > 1) {
            ZI_WORK->unk_0x00 = 0;
        }
    }

    ZI_WORK->unk_0x18 = getParam->subLanguage;
    ZI_WORK->handleCangjie = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 2;
    getCandParam->maxSize = ZI_WORK->unk_0x10;
    getCandParam->unk_0x01 = ZI_WORK->maxWordLen;
    ZI_WORK->maxWordLen = 0xFF;
    if (Zi8LangSupported(getParam->language, ZI_WORK) == 0) {
        Zi8LogError(ZI8_ERR_MISC_LANG_UNSUPPORTED_B, ZI_WORK);
        return 0;
    }

    if (getParam->language == ZI8_LANG_JP) {
        code = 705;
        result = 0;
    } else if (getParam->language == ZI8_LANG_KO) {
        if (getParam->elementCount == 0 || *getParam->elements >= PAD_KEY(1)) {
            result = Zi8GetKOcandidates(getParam, getCandParam, ZI_WORK);
        } else {
            result = Zi8GetKoreanCandidates(getParam, getCandParam, ZI_WORK);
        }
    } else if (getParam->language == ZI8_LANG_ZH && (getParam->context & 8) != 0) {
        result = Zi8Punctuation(getParam, getCandParam, ZI_WORK);
        code = ZI8_ERR_OK;
    } else if (getParam->language == ZI8_LANG_ZH && (getParam->getOptions & 0b10111111) == 4 && getParam->elementCount != 0 &&
               Zi8IsCharacter(*getParam->elements, ZI_WORK)) {
        charInfoSize = Zi8GetCharInfo(*getParam->elements, charInfoBuffer, 0x10, CHAR_INFO_HET_PY_KB, ZI_WORK);
        if (charInfoSize == 0) {
            getParam->count = getParam->letters = getParam->wordCandidates = 0;
            result = 0;
            code = 900;
        } else {
            pinyinToneIdxChr = charInfoBuffer[charInfoSize - 1];
            if (PINYIN_CHAR('1') <= pinyinToneIdxChr && pinyinToneIdxChr <= PINYIN_CHAR('5')) {
                charInfoBuffer[charInfoSize - 1] = PINYIN_CHAR('`');
            }
            savedElements = getParam->elements;
            getParam->elements = charInfoBuffer;
            savedElementCount = getParam->elementCount;
            getParam->elementCount = charInfoSize;
            savedGetMode = getParam->getMode;
            getParam->getMode = ZI8_GET_MODE_PINYIN_A;
            result = Zi8GetChineseCandidates(getParam, getCandParam, ZI_WORK);
            getParam->elements = savedElements;
            getParam->elementCount = savedElementCount;
            getParam->getMode = savedGetMode;
            getParam->letters = 1;
        }
    } else if (getParam->language == ZI8_LANG_ZH && getParam->getMode == ZI8_GET_MODE_SHUANGPIN) {
        code = 720;
        result = 0;
    } else if (getParam->language == ZI8_LANG_ZH && (getParam->getMode == ZI8_GET_MODE_PINYIN || getParam->getMode == ZI8_GET_MODE_ZHUYIN)) {
        if ((getParam->getOptions & 0b10000000) != 0) {
            result = Zi8Get1KeyPressSpelling(getParam, getCandParam, ZI_WORK);
        } else {
            if (getParam->elementCount == 0) {
                result = Zi8GetChineseCandidates(getParam, getCandParam, ZI_WORK);
            } else {
                result = Zi8Get1KeyPressCandidates(getParam, getCandParam, ZI_WORK);
            }
        }
    } else if (getParam->language == ZI8_LANG_ZH && (getParam->getMode == ZI8_GET_MODE_UNK_x07 || getParam->getMode == ZI8_GET_MODE_UNK_x08 ||
                                                     getParam->getMode == ZI8_GET_MODE_UNK_x0A || getParam->getMode == ZI8_GET_MODE_UNK_x09)) {
        if (ZI_WORK->handleCangjie != 0) {
            result = Zi8GetChineseCandidates(getParam, getCandParam, ZI_WORK);
        } else {
            code = 1800;
            result = 0;
        }
    } else if (getParam->language == ZI8_LANG_ZH && (getParam->getMode == ZI8_GET_MODE_UNK_x0B || getParam->getMode == ZI8_GET_MODE_UNK_x0E)) {
        code = 750;
        result = 0;
    } else if (getParam->language == ZI8_LANG_ZH) {
        result = Zi8GetChineseCandidates(getParam, getCandParam, ZI_WORK);
        if (result == 0 && (getParam->getOptions & 0b00100000) == 0 && getParam->getMode == ZI8_GET_MODE_PINYIN_A && getParam->elementCount != 0 &&
            (getParam->elements[getParam->elementCount - 1] == PINYIN_CHAR('z') ||
             getParam->elements[getParam->elementCount - 1] == PINYIN_CHAR('c') ||
             getParam->elements[getParam->elementCount - 1] == PINYIN_CHAR('s'))) {
            pinyinMaybeHChr = getParam->elements[getParam->elementCount];
            getParam->elements[getParam->elementCount++] = PINYIN_CHAR('h');
            result = Zi8GetChineseCandidates(getParam, getCandParam, ZI_WORK);
            getParam->elements[--getParam->elementCount] = pinyinMaybeHChr;
        }
    } else {
        ZI_WORK->unk_0x538 = getParam->language;
        if ((getParam->getOptions & 0b10000000) == 0) {
            bVar4 = ZI8_TRUE;
            savedGetOptions = getParam->getOptions;
            savedCandidates = getParam->candidates;
            getParam->getOptions = getParam->getOptions | 0b10000001;
            getParam->candidates = ZI_WORK->candidates;
            getCandParam->unk_0x10 = 0x100;
        }
        if (getParam->getMode == ZI8_GET_MODE_UNK_x02) {
            if (GET_DICT_CFG_FLAG(getParam->language, ZI_WORK, ZI8_CFG_HAS_SYLLABLES)) {
                result = Zi8GetSyllablesCandidates(getParam, getCandParam, ZI_WORK);
            } else {
                code = 1100;
                result = 0;
            }
        } else {
            result = Zi8AlphaGetCandidates(getParam, getCandParam, ZI_WORK);
        }
    }
    if (bVar4) {
        getParam->getOptions = savedGetOptions;
        getParam->candidates = savedCandidates;
        for (i = 0; i < getParam->count; i++) {
            getParam->candidates[i] = i + 0xFFF0;
        }
    }
    if (code != 0) {
        Zi8LogError(code, ZI_WORK);
    }
    return result;
}

void Zi8InitDupWordBuf(ziPtr __zi8_work_data) {
    ZI_WORK->dupWordBufsUsed = 0;
}

ziBool Zi8IsDupWChar(ziWChar ch ZI_NEED_WORK) {
    ziBool isDup;
    ziU32 remaining;
    ziWChar* pDupWordBuf;

    ch;  // NOLINT

    isDup = ZI8_FALSE;
    pDupWordBuf = ZI_WORK->dupWordBufs[0];
    if (ZI_WORK->dupWordBufsUsed == 0) {
        pDupWordBuf[0] = 2;
        pDupWordBuf[1] = ch;
        ZI_WORK->dupWordBufsUsed = 1;
        Zi8LogError(2301, ZI_WORK);
        return ZI8_FALSE;
    }

    for (remaining = ZI_WORK->dupWordBufsUsed; remaining != 0; remaining--) {
        if (ch == pDupWordBuf[remaining]) {
            isDup = ZI8_TRUE;
            break;
        }
    }
    ZI_WORK->dupWordBufsUsed++;
    pDupWordBuf[pDupWordBuf[0]++] = ch;
    if (pDupWordBuf[0] > 100) {
        pDupWordBuf[0] = 2;
        pDupWordBuf[1] = ch;
        ZI_WORK->dupWordBufsUsed = 1;
    }
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return isDup;
}

ziBool Zi8IsDupWordW(ziWChar* word, ziU8 wordLen ZI_NEED_WORK) {
    ziU32 dwbRealIdx;
    ziBool isDup;
    int dwbLogicalIdx, wordI;

    int idx;

    // uVar2 = param_2;
    isDup = ZI8_FALSE;
    if (word == ZI8_NULL || wordLen == 0) {
        Zi8LogError(ZI8_ERR_COM_UNK_A, ZI_WORK);
        return ZI8_FALSE;
    }

    // If the word is more than 20 characters long, cut off the beginning
    if (wordLen > 20) {
        word += wordLen - 20;
        wordLen = 20;
    }

    for (dwbLogicalIdx = 0; dwbLogicalIdx < ZI_WORK->dupWordBufsUsed; dwbLogicalIdx++) {
        dwbRealIdx = ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx];
        for (wordI = 0; wordI < wordLen; wordI++) {
            if (word[wordI] != ZI_WORK->dupWordBufs[dwbRealIdx][wordI])
                break;
        }
        if (wordI >= wordLen && ZI_WORK->dupWordBufs[dwbRealIdx][wordI] == L'\0') {
            isDup = ZI8_TRUE;
            break;
        }
    }
    if (!isDup) {
        if (ZI_WORK->dupWordBufsUsed < 0x40) {
            // This is an append-only structure, so because we haven't done any
            // shuffling real index
            dwbRealIdx = ZI_WORK->dupWordBufRealIdxs[ZI_WORK->dupWordBufsUsed] = ZI_WORK->dupWordBufsUsed;
            ZI_WORK->dupWordBufsUsed++;
        } else {
            // Shuffle the indices back to move the duplicate word to the end
            dwbRealIdx = ZI_WORK->dupWordBufRealIdxs[0];
            for (dwbLogicalIdx = 1; dwbLogicalIdx < ZI_WORK->dupWordBufsUsed; dwbLogicalIdx++) {
                ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx - 1] = ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx];
            }
            ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx - 1] = dwbRealIdx;
        }
    } else {
        // Shuffle the indices back to move the duplicate word to the end
        dwbRealIdx = ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx];
        for (; dwbLogicalIdx < ZI_WORK->dupWordBufsUsed - 1; dwbLogicalIdx++) {
            ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx] = ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx + 1];
        }
        ZI_WORK->dupWordBufRealIdxs[dwbLogicalIdx] = dwbRealIdx;
    }

    // Copy the current word into the chosen buffer
    // (If this is a duplicate word, this just overwrites whatever's already in
    // there with itself)
    for (wordI = 0; wordI < wordLen; wordI++) {
        ZI_WORK->dupWordBufs[dwbRealIdx][wordI] = word[wordI];
    }
    ZI_WORK->dupWordBufs[dwbRealIdx][wordI] = L'\0';

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return isDup;
}

void Zi8Memset(ziPtr buf, ziS32 val, ziS32 len) {
    ziS32 i;
    for (i = 0; i < len; i++) {
        ((ziU8*)buf)[i] = val;
    }
}

void Zi8Memcpy(ziPtr dst, ziPtr src, ziS32 size) {
    ziS32 i;
    for (i = 0; i < size; i++) {
        ((ziU8*)dst)[i] = ((ziU8*)src)[i];
    }
}

ziBool Zi8SetMaxWordLength(ziU8 newMaxWordLen ZI_NEED_WORK) {
    ZI_WORK->maxWordLen = newMaxWordLen;
    return ZI8_TRUE;
}
