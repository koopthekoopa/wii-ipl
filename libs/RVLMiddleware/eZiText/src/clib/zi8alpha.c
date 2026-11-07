#include <zi8clib/zi8alpha.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi81key.h>
#include <zi8clib/zi8dawg.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8initd.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8pud2.h>
#include <zi8clib/zi8uwd.h>
#include <zi8clib/zierror.h>
#include <zi8clib/ziswordw.h>
#include <zi8clib/zmtkey.h>
#include <zi8clib/zoemdata.h>

ziBool Zi8SetParentalControls(ziU8 level ZI_NEED_WORK) {
    Zi8LogError(713, ZI_WORK);
    return ZI8_FALSE;
}

ziBool Zi8IsWordW2(ziWChar* word, ziU8 language ZI_NEED_WORK) {
    ziU8 savedVal;
    ziBool res;

    ZI_WORK;

    savedVal = ZI_WORK->unk_0x1983;
    res = Zi8IsWordW(word, language, ZI_WORK);
    ZI_WORK->unk_0x1983 = savedVal;
    return res;
}

ziBool Zi8SetHighlightedWordW(ziWChar* word, ziU8 language, ziU8 subLanguage ZI_NEED_WORK) {
    ziS32 wordLen;
    ziS32 i;

    for (wordLen = 0; word[wordLen] != L'\0'; wordLen++) {
    }
    if (wordLen >= 0x40) {
        Zi8LogError(ZI8_ERR_COM_UNK_F, ZI_WORK);
        return ZI8_FALSE;
    }

    if (wordLen == 1 && PAD_KEY(1) <= *word && *word <= PAD_KEY(32)) {
        Zi8LogError(1600, ZI_WORK);
        return ZI8_FALSE;
    }

    ZI_WORK->unk_0x1879 = 1;
    if (!ZI_WORK->unk_0x18FC || ZI_WORK->unk_0x1984 == 0) {
        ZI_WORK->unk_0x1C = 1;
        if (!ZI_WORK->unk_0x18FC) {
            if (ZI_WORK->unk_0x1878 == 0 || wordLen == ZI_WORK->unk_0x1878) {
                ZI_WORK->unk_0x1C = 2;
                if (Zi8IsWordW2(word, language, ZI_WORK)) {
                    ZI_WORK->unk_0x1879 = language;
                } else if (subLanguage != language && subLanguage != 0x7 && Zi8IsWordW2(word, subLanguage, ZI_WORK)) {
                    ZI_WORK->unk_0x1879 = subLanguage;
                }
            }
        } else {
            for (i = 0; i < ZI_WORK->hlPrefixLen; i++) {
                if (ZI_WORK->hlPrefix[i] != word[i])
                    break;
            }
            if ((ZI_WORK->unk_0x1878 == 0 || wordLen == ZI_WORK->unk_0x1878) && i == ZI_WORK->hlPrefixLen &&
                Zi8IsWordW2(word + i, ZI_WORK->unk_0x1983, ZI_WORK)) {
                ZI_WORK->unk_0x1879 = ZI_WORK->unk_0x1983;
            }
        }
        ZI_WORK->unk_0x1C = 0;
    }
    for (i = 0; i <= wordLen; i++) {
        ZI_WORK->hlBuffer[i] = word[i];
    }
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_TRUE;
}

void ZiprocessHighlightedW(ziU8 inputLen ZI_NEED_WORK) {
    ziS32 offsetI;
    ziS32 wordLen;
    int i;

    wordLen = 0;
    while (ZI_WORK->hlBuffer[wordLen] != 0) {
        wordLen++;
    }
    if (wordLen + 1 != inputLen)
        return;

    if (wordLen == ZI_WORK->unk_0x1878 && ZI_WORK->unk_0x1877 != 0) {
        ZI_WORK->unk_0x1876 = wordLen;
        for (i = 0; i < wordLen; i++) {
            ZI_WORK->hlPrefix[i] = ZI_WORK->hlBuffer[i];
        }
    }
    if (!ZI_WORK->unk_0x18FC) {
        if ((ZI_WORK->unk_0x1878 == 0 || wordLen == ZI_WORK->unk_0x1878) && ZI_WORK->unk_0x1879 > 1) {
            for (i = 0; i < wordLen; i++) {
                ZI_WORK->hlPrefix[i] = ZI_WORK->hlBuffer[i];
            }
            ZI_WORK->hlPrefixLen = i;
            ZI_WORK->unk_0x1983 = ZI_WORK->unk_0x1879;
        }
    } else if (ZI_WORK->unk_0x1984 == 0 && ZI_WORK->unk_0x1879 > 1) {
        i = 0;
        offsetI = ZI_WORK->hlPrefixLen;
        while (offsetI < wordLen) {
            ZI_WORK->hlSuffix[i++] = ZI_WORK->hlBuffer[offsetI++];
        }
        ZI_WORK->hlSuffixLen = i;
    }
    if (wordLen == 1 && ZI_WORK->unk_0x1A90 != L'\0') {
        if (PAD_KEY(1) <= ZI_WORK->hlBuffer[0] && ZI_WORK->hlBuffer[0] <= PAD_KEY(32)) {
            ZI_WORK->unk_0x1A90 = L'\0';
        } else {
            ZI_WORK->unk_0x1A90 = ZI_WORK->hlBuffer[0];
        }
    }
    if (wordLen == ZI_WORK->unk_0x1B14 && Zi8ConvertWC2Key(ZI_WORK->hlBuffer[wordLen - 1], ZI_WORK->unk_0x1983, ZI_WORK) != PAD_KEY(1)) {
        for (i = 0; i <= wordLen; i++) {
            ZI_WORK->unk_0x1A92[i] = ZI_WORK->hlBuffer[i];
        }
        ZI_WORK->unk_0x1A92[i] = 0;
    }
    ZI_WORK->unk_0x1879 = 0;
}

ziBool Zi8IsVowel(ziU8 language, ziWChar ch) {
    switch (language) {
        case ZI8_LANG_UNK88:  // TODO: Figure out this language
            switch (ch) {
                case L'a':
                case L'e':
                case L'h':
                case L'i':
                case L'o':
                case L'u':
                case 0xE0:  // 'à'
                case 0xE8:  // 'è'
                case 0xE9:  // 'é'
                case 0xED:  // 'í'
                case 0xEF:  // 'ï'
                case 0xF2:  // 'ò'
                case 0xF3:  // 'ó'
                case 0xFA:  // 'ú'
                case 0xFC:  // 'ü'
                    break;

                default:
                    return ZI8_FALSE;
            }
            break;

        case ZI8_LANG_UNK4:  // TODO: Figure out this language
        case ZI8_LANG_IT:
        case ZI8_LANG_FREU:
        case ZI8_LANG_FRCA:
            switch (ch & 0xFFDF) {  // Most latin-alphabet-based lowercases are (uppercase | 0x20)
                case 'A':
                case 'E':
                case 'H':
                case 'I':
                case 'O':
                case 'U':
                case 0xC0:  // 'À'
                case 0xC8:  // 'È'
                case 0xC9:  // 'É'
                case 0xCC:  // 'Ì'
                case 0xD2:  // 'Ò'
                case 0xD9:  // 'Ù'
                    break;

                case 'Y':
                case 0xC2:  // 'Â'
                case 0xC6:  // 'Æ'
                case 0xCA:  // 'Ê'
                case 0xCB:  // 'Ë'
                case 0xCE:  // 'Î'
                case 0xCF:  // 'Ï'
                case 0xD4:  // 'Ô'
                case 0xDB:  // 'Û'
                    if (language == ZI8_LANG_IT) {
                        return ZI8_FALSE;
                    }
                    break;

                default:
                    if (language == ZI8_LANG_IT) {
                        return ZI8_FALSE;
                    }
                    switch (ch) {
                        case 0xFF:   // 'ÿ'
                        case 0x152:  // 'Œ'
                        case 0x153:  // 'œ'
                        case 0x178:  // 'Ÿ'
                            break;
                        default:
                            return ZI8_FALSE;
                    }
            }
            break;
    }
    return ZI8_TRUE;
}

typedef struct {
    ziChar letters[6];
    ziU16 hasNext;
    ziBool isLast;
} ExcludePair;

const ExcludePair IT_EXCLUDE_PAIRS[] = {
    {"l", L'i'},
    {"all", L'i'},
    {"dell", L'i'},
    {"dall", L'i'},
    {"nell", L'i'},
    {"sull", L'i'},
    {"d", L'i'},
    {"quest", L'i'},
    {"quell", L'i'},
    {"bell", L'i'},
    {"brav", L'i'},
    {"buon", L'i'},
    {"sant", L'i'},
    {"gl", 1},
    {"agl", 1},
    {"degl", 1},
    {"dagl", 1},
    {"negl", 1},
    {"sugl", 1},
    {"m", 1},
    {"t", 1},
    {"s", 1},
    {"c", 1},
    {"v", 1},
    {"un", 'a', ZI8_TRUE},
    {},
};

const ExcludePair UNK88_EXCLUDE_PAIRS[] = {
    {"d", 1}, {"l", 1}, {"m", 1}, {"t", 1}, {"s", 1}, {"n", 1}, {},
};

ziBool Zi8ITspecialExclusion(ziWChar* text, int offset, ziU32 _unused) {
    const ExcludePair* currPair;
    ziS32 i;
    ziWChar* offsetText = text - offset--;

    offset;
    currPair;

    currPair = IT_EXCLUDE_PAIRS;
    while (currPair->hasNext) {
        for (i = 0; i < offset; i++) {
            if (offsetText[i] != currPair->letters[i])
                break;
        }
        if (i >= offset && currPair->letters[i] == '\0') {
            if (!Zi8IsVowel(ZI8_LANG_IT, text[0])) {
                return ZI8_TRUE;
            }

            return ZI8_FALSE;
        }
        currPair++;
    }
    return ZI8_FALSE;
}
ziBool Zi8UNK88specialExclusion(ziWChar* text, int offset, ziU32 _unused) {
    const ExcludePair* currPair;
    ziS32 i;
    ziWChar* offsetText = text - offset--;

    offset;
    currPair;

    currPair = UNK88_EXCLUDE_PAIRS;
    while (currPair->hasNext) {
        for (i = 0; i < offset; i++) {
            if (offsetText[i] != currPair->letters[i])
                break;
        }
        if (i >= offset && currPair->letters[i] == '\0') {
            if (!Zi8IsVowel(ZI8_LANG_UNK88, text[0])) {
                return ZI8_TRUE;
            }

            return ZI8_FALSE;
        }
        currPair++;
    }
    return ZI8_FALSE;
}

ziBool Zi8IsAlphaPunct(ziWChar ch) {
    if (ch == PAD_KEY(1) || (L'!' <= ch && ch <= L'@') || (L'[' <= ch && ch <= L'`') || (L'{' <= ch && ch <= L'~')) {
        return ZI8_TRUE;
    } else {
        return ZI8_FALSE;
    }
}
ziBool ZiIsLetterHyphen(ziWChar ch ZI_NEED_WORK) {
    if (ch == ZI_WORK->unk_0x1874 || ch == '-' || ch == '.' || ch == '@') {
        return ZI8_TRUE;
    } else {
        return ZI8_FALSE;
    }
}

void Zi8ChangeWordCase(ziWChar* word, ziU8 lang ZI_NEED_WORK) {
    ziBool upper;

    ZI_WORK;

    upper = ZI8_FALSE;
    if (ZI_WORK->wordCase == ZI8_WORD_CASE_TITLE) {
        Zi8ChangeCharCase(ZI8_TRUE, word++, lang, ZI_WORK);
    } else if (ZI_WORK->wordCase == ZI8_WORD_CASE_CAPS) {
        upper = ZI8_TRUE;
    }
    while (*word != 0) {
        Zi8ChangeCharCase(upper, word++, lang, ZI_WORK);
    }
}

ziU16 Zi8DeTokenization(ziWChar* text, ziU16 inputLen, ziU16 textBufLen, ziU16 language);

ziU32 Zi8AlphaGetCandidates(ziGetParam* getParam, ziGetCandidatesParam* getCandParam ZI_NEED_WORK) {
    ziS32 i;
    ziWChar* pwVar31;

    ziWChar romMatchText[0x41];
    ziWChar keyLayout[0x30];

    ziBool zVar3 = ZI8_FALSE;
    ziU16 uVar23 = 0;
    ziU16 bVar19 = 0;
    ziU8 bVar20 = 0;
    ziU32 bVar13 = 0;
    ziU32 bVar17 = 0;
    ziU32 bVar18 = 0;
    ziU32 bVar16 = 0;
    ziS32 local_214 = 0;
    ziU32 bVar15 = ZI8_TRUE;
    ziU32 bVar6 = ZI8_TRUE;
    ziU32 bVar22 = ZI8_TRUE;
    ziU32 bVar10 = ZI8_TRUE;
    ziU32 bVar9 = ZI8_TRUE;
    ziU32 bVar5 = ZI8_TRUE;
    ziU32 bVar21 = ZI8_FALSE;
    ziS32 local_234 = 0;
    ziS32 local_238 = 2;
    ziU32 bVar11 = ZI8_FALSE;
    ziS32 local_240 = 0;
    ziBool bVar14 = ZI8_FALSE;
    ziS32 local_244;
    ziChar* local_248;
    ziS32 lsoI;
    ziS32 local_250;
    ziS32 j;
    ziU32 local_258;
    ziU32 local_25c;
    ziU32 zVar4;
    ziU32 local_264;
    ziS32 local_268;
    ziS32 matchLen;
    ziWChar* local_270 = keyLayout;
    ziWChar* elements = getParam->elements;
    ziS32 local_278 = getParam->firstCandidate;
    ziS32 local_27c = getParam->elementCount;
    ziU32 bVar12 = ZI8_FALSE;
    ziU32 searchStates[14] = {};
    ziS32 local_284 = 0;
    ziU8 lang = getParam->language;
    ziU8 local_29b = 0;
    ziU8 bVar1 = ZI8_FALSE;

    ziU8 blocklistLen = 0;
    ziU8* blocklistData = ZI8_NULL;
    ziU8* blocklistCurr;
    ziU8 someLenC;

    void* work_backup = ZI_WORK;
    ziBool bVar7 = ZI8_FALSE;
    ziBool bVar8 = ZI8_FALSE;

    ziWChar normalizedElementsBuf[0x40];
    ziChar abStack_200[0x40];

    if (lang == ZI8_LANG_PY2 || lang == ZI8_LANG_ZY2 || lang == ZI8_LANG_SP2 || lang == ZI8_LANG_PYP || lang == ZI8_LANG_PYS ||
        lang == ZI8_LANG_ZYP || lang == ZI8_LANG_ZYS) {
        bVar7 = ZI8_TRUE;
        for (j = 0; j < local_27c; j++) {
            normalizedElementsBuf[j] = elements[j];
            switch (elements[j]) {
                case PINYIN_TONE(1):
                case PINYIN_TONE(2):
                case PINYIN_TONE(3):
                case PINYIN_TONE(4):
                case PINYIN_TONE(5):
                    bVar8 = ZI8_TRUE;
                    bVar7 = ZI8_FALSE;
                    if (lang == ZI8_LANG_ZY2 || lang == ZI8_LANG_ZYP || lang == ZI8_LANG_ZYS) {
                        normalizedElementsBuf[j] = PINYIN_CHAR('`');
                    } else {
                        normalizedElementsBuf[j] = '\'';
                    }
                    break;
            }
        }
        elements = normalizedElementsBuf;
    }
    if (ZI_WORK->unk_0x1D != 0)
        bVar1 = ZI8_TRUE;

    if (getParam->elementCount != 0 && ZI_WORK->caseInsensitive != 0 && !bVar7 && !bVar8) {
        for (j = i = ZI8_FALSE; j < getParam->elementCount; j++) {
            normalizedElementsBuf[j] = getParam->elements[j];
            if (PAD_KEY(1) <= getParam->elements[j] && getParam->elements[j] <= PINYIN_CHAR(0x7F)) {
                continue;
            }
            if (Zi8ChangeCharCase(ZI8_FALSE, normalizedElementsBuf + j, lang, ZI_WORK)) {
                i = ZI8_TRUE;
            }
        }
        if (i) {
            elements = normalizedElementsBuf;
        }
    }
    if (ZI_WORK->unk_0x1879 != 0 && getParam->firstCandidate == 0 && getCandParam->unk_0x02 == 0) {
        ZiprocessHighlightedW(getParam->elementCount, ZI_WORK);
    }
    if (getCandParam->unk_0x02 == 0 && getParam->elementCount <= 1 && getParam->firstCandidate == 0) {
        ZI_WORK->hlBuffer[0] = L'\0';
    }

    if ((Zi8GetTableCount(getParam->language, 0x1F, ZI_WORK) & 0x80) != 0 && getParam->subLanguage == 0x80) {
        bVar1 = ZI8_TRUE;
    }
    if (getCandParam->unk_0x02 != 0 || getParam->subLanguage == 0x7 || getParam->subLanguage == lang || getParam->subLanguage == 0x0 ||
        getParam->subLanguage == 0x1 || getParam->subLanguage == 0x2 || getParam->subLanguage == 0x80 ||
        !Zi8LangSupported(getParam->subLanguage, ZI_WORK)) {
        local_238 = 0;
        if (ZI_WORK->unk_0x1983 != getParam->language) {
            ZI_WORK->unk_0x1983 = 0;
        }
    } else if (getParam->elementCount == 1 && PAD_KEY(1) <= getParam->elements[0] && getParam->elements[0] <= PAD_KEY(32)) {
        bVar1 = ZI8_FALSE;
        matchLen = Zi8MatchROMdata(getParam->elements, 1, lang, romMatchText, 2, 1, ZI8_MATCH_STATE_BEGIN, 0, 0, ZI_WORK);
        if (matchLen == 0) {
            lang = getParam->subLanguage;
        } else {
            matchLen = Zi8MatchROMdata(getParam->elements, 1, getParam->subLanguage, romMatchText, 2, 1, ZI8_MATCH_STATE_BEGIN, 0, 0, ZI_WORK);
            if (matchLen != 0 && romMatchText[0] != getParam->elements[0]) {
                local_240 = 1;
            }
        }
    }

    if (getParam->elementCount == 1 && getCandParam->unk_0x02 == 0) {
        // Handle the '.' after "www"
        if (getParam->wordCharCount >= 3 && getParam->currentWord != ZI8_NULL && getParam->currentWord[getParam->wordCharCount - 1] == L'w' &&
            getParam->currentWord[getParam->wordCharCount - 2] == L'w' && getParam->currentWord[getParam->wordCharCount - 3] == L'w') {
            ZI_WORK->unk_0x1874 = L'.';
        } else {
            ZI_WORK->unk_0x1874 = L'-';
        }
    }

    if (local_27c != 0 && getCandParam->unk_0x02 == 0 && !getCandParam->unk_0x00) {
        if (!Zi8IsAlphaPunct(elements[local_27c - 1])) {
            ZI_WORK->unk_0x1B14 = local_27c;
        } else if (ZI_WORK->unk_0x1B14 > local_27c) {
            ZI_WORK->unk_0x1B14 = local_27c - 1;
        }
    }
    if (ZI_WORK->unk_0x1A0B == 1) {
        elements = ZI_WORK->hlPrefix;

        // Extend prefix for as long as it matches
        if (getParam->elementCount > ZI_WORK->hlPrefixLen) {
            for (i = ZI_WORK->hlPrefixLen; i < getParam->elementCount; i++) {
                ZI_WORK->hlPrefix[i] = getParam->elements[i];
            }
            ZI_WORK->hlPrefix[i] = L'\0';
            ZI_WORK->hlPrefixLen = i;
            local_27c = ZI_WORK->hlPrefixLen;
        }
    }

    if (GET_DICT_CFG_FLAG(getParam->language, ZI_WORK, ZI8_CFG_UNK_x004)) {
        bVar10 = bVar5 = ZI8_FALSE;
    }
    if (GET_DICT_CFG_FLAG(getParam->language, ZI_WORK, ZI8_CFG_UNK_x002)) {
        bVar22 = bVar9 = ZI8_FALSE;
    }
    local_248 = (ziChar*)getParam->candidates;
    if (getCandParam->unk_0x00 || (getParam->getOptions & 0xFD) != 0x81) {
        pwVar31 = romMatchText;
        local_264 = 0x3F;
    } else {
        pwVar31 = getParam->candidates;
        local_264 = getCandParam->unk_0x10 - 1;
    }

    local_268 = getCandParam->unk_0x10 - 1;
    if (local_27c < ZI_WORK->unk_0x140C || (getParam->getOptions & 0x7E) == 0x02) {
        zVar4 = ZI8_TRUE;
    } else {
        zVar4 = ZI8_FALSE;
    }
    if (bVar8) {
        zVar4 = ZI8_TRUE;
    }
    if (local_238 != 0) {
        if (GET_DICT_CFG_FLAG(getParam->subLanguage, ZI_WORK, ZI8_CFG_UNK_x004)) {
            bVar6 = ZI8_FALSE;
        }
        if (GET_DICT_CFG_FLAG(getParam->subLanguage, ZI_WORK, ZI8_CFG_UNK_x002)) {
            bVar15 = ZI8_FALSE;
        }
    } else {
        bVar6 = ZI8_FALSE;
        bVar15 = ZI8_FALSE;
    }
    Zi8InitDupWordBuf(ZI_WORK);
    if (getCandParam->unk_0x02 == 0 && !bVar7 && !bVar8 && (getParam->getOptions & 0xFD) != 0x80 && getParam->elementCount != 0 &&
        getParam->elements[getParam->elementCount - 1] != PAD_KEY(1) && Zi8IsAlphaPunct(getParam->elements[getParam->elementCount - 1])) {
        for (j = 0; j < getParam->elementCount - 1; j++) {
            if (ZI_WORK->hlBuffer[j] != getParam->elements[j])
                break;
            pwVar31[j] = ZI_WORK->hlBuffer[j];
        }

        // @bug undefined behavior (works in metrowerks though)
        pwVar31[j++] = getParam->elements[j];

        if (getParam->elementCount == 1) {
            ZI_WORK->unk_0x1A90 = *pwVar31;
        }
        if (j == getParam->elementCount && (local_278 == 0 || ZI_WORK->unk_0x1B15 != 0)) {
            for (i = 0; i < ZI_WORK->latinSearchOrderLen; i++) {
                switch (ZI_WORK->latinSearchOrderList[i]) {
                    case ZI8_SEARCH_ROM_A:
                    case ZI8_SEARCH_ROM_C:
                        break;

                    default:
                        continue;
                }
                break;
            }
            if (local_278 == 0 && ZI_WORK->hlBuffer[j - 1] != L'\0') {
                if (ZI_WORK->unk_0x1878 < getParam->elementCount) {
                    ZI_WORK->unk_0x1B15 = 0;
                }
            } else {
                ZI_WORK->unk_0x1B15 = 1;
            }
            if (i < ZI_WORK->latinSearchOrderLen && ZI_WORK->unk_0x1B15 != 0 && !Zi8IsDupWordW(pwVar31, j, ZI_WORK)) {
                if (local_278 != 0) {
                    local_278--;
                } else {
                    local_284 = 1;
                    if (!getCandParam->unk_0x00) {
                        if (getCandParam->unk_0x14 != 0) {
                            for (i = 0; getParam->elementCount + i < j; i++) {
                                pwVar31[i] = pwVar31[i + getParam->elementCount];
                            }
                            j = i;
                        }
                        pwVar31[j++] = 0;
                        if (ZI_WORK->wordCase != 0) {
                            if (!ZI_WORK->unk_0x18FC) {
                                Zi8ChangeWordCase(pwVar31, lang, ZI_WORK);
                            } else {
                                Zi8ChangeWordCase(pwVar31, ZI_WORK->unk_0x1983, ZI_WORK);
                            }
                        }
                        pwVar31 += j;
                        local_264 -= j;
                        local_268 -= j;
                        if (getParam->maxCandidates == 1 || local_268 <= getParam->elementCount) {
                            goto LAB_81469704;
                        }
                    }
                }
            }
        }
    }
    if (getCandParam->unk_0x02 == 0) {
        if (getParam->elementCount <= 1 && getParam->firstCandidate == 0) {
            ZI_WORK->unk_0x1877 = 0;
            ZI_WORK->unk_0x1878 = 0;
            ZI_WORK->unk_0x1981 = 0;
            ZI_WORK->hlPrefixLen = 0;
            ZI_WORK->unk_0x18FC = ZI8_FALSE;
            ZI_WORK->unk_0x1984 = 0;
            ZI_WORK->unk_0x1986[0] = 0;
            ZI_WORK->unk_0x1985 = 0;
            ZI_WORK->unk_0x1A0B = 0;
            ZI_WORK->unk_0x1B14 = 0;
            ZI_WORK->hlSuffixLen = 0;
        }
        if (ZI_WORK->unk_0x1984 != 0 && getParam->elementCount <= ZI_WORK->unk_0x1986[0] &&
            ZiIsLetterHyphen(ZI_WORK->hlSuffix[ZI_WORK->hlSuffixLen - 1], ZI_WORK)) {
            ZI_WORK->hlSuffixLen--;
            ZI_WORK->unk_0x1986[0] = ZI_WORK->unk_0x1985;
        }
        if (getParam->elementCount <= ZI_WORK->unk_0x1986[0]) {
            ZI_WORK->unk_0x1984 = 0;
        }
        if (ZI_WORK->unk_0x18FC) {
            if (getParam->elementCount <= ZI_WORK->unk_0x1982 && ZiIsLetterHyphen(ZI_WORK->hlPrefix[ZI_WORK->hlPrefixLen - 1], ZI_WORK)) {
                ZI_WORK->hlPrefixLen--;
                ZI_WORK->unk_0x1982 = ZI_WORK->unk_0x1981;
            }
            if (local_27c == ZI_WORK->hlPrefixLen && ZiIsLetterHyphen(ZI_WORK->hlPrefix[ZI_WORK->hlPrefixLen - 1], ZI_WORK)) {
                ZI_WORK->hlPrefixLen--;
            }
            if (local_27c <= ZI_WORK->hlPrefixLen && !getCandParam->unk_0x00) {
                ZI_WORK->unk_0x18FC = ZI8_FALSE;
                ZI_WORK->hlPrefixLen = 0;
            }
        }
        if (ZI_WORK->unk_0x18FC && getParam->elementCount < ZI_WORK->unk_0x1A8E) {
            ZI_WORK->unk_0x1A8E = 0;
        }
    }
    goto LAB_733;

    while (ZI8_TRUE) {
        zVar3 = (ziBool)ZI_WORK->unk_0x18FC;
        uVar23 = Zi8GetTableCount(lang, 0x1F, ZI_WORK);
        bVar19 = uVar23 & 0x10;
        if ((lang == ZI8_LANG_FREU || lang == ZI8_LANG_UNK4 || lang == ZI8_LANG_FRCA || lang == ZI8_LANG_UNK88 || lang == ZI8_LANG_IT) &&
            zVar3 != 0 && bVar19 != 0) {
            bVar21 = ZI8_TRUE;
        } else {
            bVar21 = ZI8_FALSE;
        }
        if (ZI_WORK->unk_0x18FC) {
            bVar11 = ZI8_FALSE;
            if (getCandParam->unk_0x00 || (getParam->getOptions & 0xFD) != 0x81) {
                pwVar31 = romMatchText;
                local_264 = 0x40;
            }
            for (i = 0; i < 14; i++) {
                searchStates[i] = 0;
            }
            for (i = 0; i < ZI_WORK->hlPrefixLen; i++) {
                pwVar31[i] = ZI_WORK->hlPrefix[i];
                if (elements[i] != pwVar31[i] && Zi8ConvertWC2Key(pwVar31[i], lang, ZI_WORK) != elements[i])
                    goto LAB_81469704;
            }
            pwVar31 += ZI_WORK->hlPrefixLen;
            elements += ZI_WORK->hlPrefixLen;
            local_27c -= ZI_WORK->hlPrefixLen;
            local_264 -= ZI_WORK->hlPrefixLen;
            local_214 = ZI_WORK->hlPrefixLen;
            if (ZI_WORK->unk_0x1984 != 0) {
                for (i = 0; i < ZI_WORK->hlSuffixLen; i++) {
                    pwVar31[i] = ZI_WORK->hlSuffix[i];
                    if (elements[i] != pwVar31[i] && Zi8ConvertWC2Key(pwVar31[i], lang, ZI_WORK) != elements[i])
                        goto LAB_81469704;
                }
                pwVar31 += ZI_WORK->hlSuffixLen;
                elements += ZI_WORK->hlSuffixLen;
                local_27c -= ZI_WORK->hlSuffixLen;
                local_264 -= ZI_WORK->hlSuffixLen;
                local_214 += ZI_WORK->hlSuffixLen;
            }
            if (bVar21 && pwVar31[-1] != '\'') {
                bVar21 = ZI8_FALSE;
            }
        }

    LAB_733:
        ZI_WORK->dawgUseAltSuffixTable = ZI8_FALSE;
        if (GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_HAS_SUFFIXONLY)) {
            if (getParam->currentWord == ZI8_NULL || getParam->wordCharCount == 0 || getParam->currentWord[getParam->wordCharCount - 1] == L' ' ||
                getParam->currentWord[getParam->wordCharCount - 1] > L'\xFE' ||
                Zi8ConvertWC2Key(getParam->currentWord[getParam->wordCharCount - 1], lang, ZI_WORK) == PAD_KEY(1)) {
                ZI_WORK->dawgSkipSuffixOnlyPattern = ZI8_TRUE;
            } else {
                ZI_WORK->dawgSkipSuffixOnlyPattern = ZI8_FALSE;
                if (lang == ZI8_LANG_FI && getParam->wordCharCount != 0) {
                    j = getParam->wordCharCount - 1;
                    while (j >= 0) {
                        switch (getParam->currentWord[j]) {
                            case L'a':
                            case L'o':
                            case L'u':
                                ZI_WORK->dawgUseAltSuffixTable = ZI8_TRUE;
                            case L' ':
                                j = 0;
                                break;
                        }
                        j--;
                    }
                }
            }
        } else {
            ZI_WORK->dawgSkipSuffixOnlyPattern = ZI8_FALSE;
        }

        while (ZI8_TRUE) {
            local_234 = 0;
            if (GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_UNK_x010) && getParam->elementCount > 2) {
                for (i = 0; i < getParam->elementCount; i++) {
                    if (getParam->elements[i] >= PAD_KEY(1))
                        break;
                    if (local_234 == 0 && getParam->elements[i] == '\'') {
                        local_234 = i;
                    }
                }
                if (local_234 + 1 >= getParam->elementCount) {
                    local_234 = 0;
                }
                if (local_234 != 0) {
                    local_234++;
                }
            }
            if (bVar5 && local_238 != 2 && getParam->elementCount == 2 && getParam->elements[1] == PAD_KEY(1) && ZI_WORK->unk_0x1A90 != L'\0') {
                if (!Zi8getKeyLayout(lang, PAD_KEY(1), keyLayout, 1, ZI_WORK)) {
                    keyLayout[0] = L'\0';
                }
            } else {
                keyLayout[0] = L'\0';
            }
            local_270 = keyLayout;
            blocklistLen = Zi8GetTableCount(lang, 4, ZI_WORK);
            if (ZI_WORK->unk_0x1B16 != 0) {
                blocklistLen = 0;
            }
            if (blocklistLen != 0) {
                blocklistData = (ziU8*)Zi8GetTableAddress(lang, 4, ZI_WORK);
            }
            for (lsoI = 0; lsoI <= ZI_WORK->latinSearchOrderLen; lsoI++) {
                if (ZI_WORK->unk_0x1414 != ZI8_NULL) {
                    if (lsoI != 0) {
                        ZI_WORK->unk_0x1414[lsoI - 1] = local_284;
                    } else {
                        Zi8Memset(ZI_WORK->unk_0x1414, 0, ZI_WORK->latinSearchOrderLen);
                    }
                }
                if (lsoI != ZI_WORK->latinSearchOrderLen) {
                    local_250 = ZI_WORK->latinSearchOrderList[lsoI];
                    if (local_250 == ZI8_SEARCH_UNK_12 && local_238 != 2) {
                        continue;
                    }
                } else {
                    if (getCandParam->unk_0x02 != 0) {
                        continue;
                    }
                    local_250 = ZI8_SEARCH_UNK_10;
                }

                if (bVar11) {
                    switch (local_250) {
                        case ZI8_SEARCH_ROM_A:
                        case ZI8_SEARCH_PUD_A:
                        case ZI8_SEARCH_UWD_A:
                        case ZI8_SEARCH_OEM_A:
                        case ZI8_SEARCH_UNK_10:
                            continue;
                    }
                }
                local_25c = 1;
                switch (local_250) {
                    case ZI8_SEARCH_ROM_A:
                    case ZI8_SEARCH_PUD_A:
                        break;

                    case ZI8_SEARCH_UNK_10:
                        if (local_27c != 1)
                            continue;
                        if (GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_UNK_x040))
                            continue;
                        if (PAD_KEY(1) > elements[0] || elements[0] > PAD_KEY(32))
                            continue;
                        if (!Zi8getKeyLayout(lang, elements[0], keyLayout + 1, getParam->elementCount, ZI_WORK))
                            continue;
                        if (!ZI_WORK->unk_0x18FC && getParam->firstCandidate == 0 && local_284 == 0 &&
                            (getParam->currentWord == ZI8_NULL || getParam->wordCharCount == 0 ||
                             getParam->currentWord[getParam->wordCharCount - 1] == L' '))
                            continue;

                        if (local_284 == 0 && !bVar12 && getParam->firstCandidate == local_278 &&
                            (getParam->currentWord == ZI8_NULL || getParam->wordCharCount == 0 ||
                             getParam->currentWord[getParam->wordCharCount - 1] == L' ') &&
                            local_278 != 0) {
                            local_278--;
                        }
                        local_270 = keyLayout + 1;
                        if (local_284 == 0 && (getParam->firstCandidate == 0 || getParam->firstCandidate == local_278) && !ZI_WORK->unk_0x18FC &&
                            (getParam->currentWord == ZI8_NULL || getParam->wordCharCount == 0 ||
                             getParam->currentWord[getParam->wordCharCount - 1] == L' ')) {
                            if (getParam->getMode == ZI8_GET_MODE_PINYIN_A) {
                                keyLayout[0] = elements[0];
                            } else {
                                keyLayout[0] = '>';
                            }
                            local_270 = keyLayout;
                        }
                        bVar12 = ZI8_FALSE;
                        break;

                    case ZI8_SEARCH_OEM_A:
                        if (getCandParam->unk_0x12 > local_27c)
                            continue;
                        break;

                    case ZI8_SEARCH_UWD_A:
                        if (getCandParam->unk_0x12 > local_27c || local_27c == 1)
                            continue;
                        break;

                    case ZI8_SEARCH_ROM_C:
                        if (local_27c == 1 && PAD_KEY(1) <= elements[0] && elements[0] <= PAD_KEY(0x20)) {
                            local_250 = ZI8_SEARCH_ROM_A;
                            break;
                        }

                    default:
                        if (local_27c == 1 && local_214 == 0 && PAD_KEY(1) <= elements[0] && elements[0] <= PAD_KEY(0x20) && !bVar1)
                            continue;
                        local_25c = 0;
                        if (local_238 == 2) {
                            for (i = lsoI + 1; i < ZI_WORK->latinSearchOrderLen; i++) {
                                if (ZI_WORK->latinSearchOrderList[i] == ZI8_SEARCH_ROM_A || ZI_WORK->latinSearchOrderList[i] == ZI8_SEARCH_PUD_A ||
                                    ZI_WORK->latinSearchOrderList[i] == ZI8_SEARCH_OEM_A || ZI_WORK->latinSearchOrderList[i] == ZI8_SEARCH_UWD_A) {
                                    bVar14 = ZI8_TRUE;
                                    break;
                                }
                            };
                            if (i >= ZI_WORK->latinSearchOrderLen) {
                                local_238 = 1;
                                lang = getParam->subLanguage;
                                searchStates[ZI8_SEARCH_ROM_A] = 0;
                                searchStates[ZI8_SEARCH_PUD_A] = 0;
                                searchStates[ZI8_SEARCH_UWD_A] = 0;
                                searchStates[ZI8_SEARCH_OEM_A] = 0;
                                searchStates[ZI8_SEARCH_ROM_C] = 0;
                                searchStates[ZI8_SEARCH_ROM_B] = 0;
                                searchStates[ZI8_SEARCH_PUD_B] = 0;
                                searchStates[ZI8_SEARCH_UWD_B] = 0;
                                searchStates[ZI8_SEARCH_OEM_B] = 0;
                                bVar9 = bVar15;
                                bVar5 = bVar6;
                                goto LAB_81466e34;
                            }
                        }
                        if (local_238 == 1) {
                            lang = getParam->language;
                            bVar9 = bVar22;
                            bVar5 = bVar10;
                        }
                }
                do {
                    matchLen = 0;
                    local_258 = local_25c;
                    switch (local_250) {
                        case ZI8_SEARCH_ROM_C:
                            local_258 = 2;

                        case ZI8_SEARCH_ROM_A:
                        case ZI8_SEARCH_ROM_B:
                            if (local_27c == 0)
                                break;
                            if (local_258 == 0 && bVar5 && local_27c > 2 && ZI_WORK->unk_0x1983 == lang && ZI_WORK->hlPrefixLen == local_27c - 1 &&
                                elements[local_27c - 1] == PAD_KEY(1)) {
                                matchLen = 0;
                            } else {
                                if (local_240 != 2) {
                                    matchLen = Zi8MatchROMdata(elements, local_27c, lang, pwVar31, local_264, local_258, searchStates[local_250], 0,
                                                               zVar4, ZI_WORK);
                                }
                                if (local_240 != 0 && (matchLen == 0 || pwVar31[0] == elements[0])) {
                                    if (local_240 == 1) {
                                        local_240 = 2;
                                        matchLen = Zi8MatchROMdata(elements, local_27c, getParam->subLanguage, pwVar31, local_264, 1,
                                                                   ZI8_MATCH_STATE_BEGIN, 0, zVar4, ZI_WORK);
                                    } else {
                                        matchLen = Zi8MatchROMdata(elements, local_27c, getParam->subLanguage, pwVar31, local_264, 1,
                                                                   ZI8_MATCH_STATE_WORKING, 0, zVar4, ZI_WORK);
                                    }
                                }
                            }
                            if (local_25c != 0 && matchLen > local_27c) {
                                matchLen = 0;
                            }
                            if (matchLen == 0 && local_270[0] != L'\0' && local_25c != 0 && ZI_WORK->unk_0x1A90 != L'\0' &&
                                getParam->elementCount == 2) {
                                pwVar31[0] = ZI_WORK->unk_0x1A90;
                                pwVar31[1] = *local_270++;
                                pwVar31[2] = L'\0';
                                matchLen = 2;
                            }
                            if (local_234 != 0 && matchLen != 0 && local_27c == getParam->elementCount) {
                                if (lang == ZI8_LANG_IT) {
                                    if (Zi8ITspecialExclusion(pwVar31 + local_234, local_234, matchLen - local_234)) {
                                        matchLen = 0;
                                    }
                                } else if (lang == ZI8_LANG_UNK88) {
                                    if (Zi8UNK88specialExclusion(pwVar31 + local_234, local_234, matchLen - local_234)) {
                                        matchLen = 0;
                                    }
                                } else {
                                    if (!Zi8IsVowel(lang, pwVar31[local_234])) {
                                        matchLen = 0;
                                    }
                                }
                                if (matchLen == 0) {
                                    searchStates[local_250] = 1;
                                    if (elements[local_234] >= PAD_KEY(1))
                                        continue;
                                    goto LAB_81468c78;
                                }
                            }
                            if (matchLen != 0 && bVar21) {
                                if ('0' <= pwVar31[0] && pwVar31[0] <= '9') {
                                    matchLen = 0;
                                } else {
                                    if (local_27c == 1 && local_250 != 10 && pwVar31[0] >= PAD_KEY(1)) {
                                        bVar12 = ZI8_TRUE;
                                        goto LAB_81468c78;
                                    }
                                    if (lang == ZI8_LANG_IT) {
                                        if (Zi8ITspecialExclusion(pwVar31, local_214, matchLen)) {
                                            matchLen = 0;
                                        }
                                    } else if (lang == ZI8_LANG_UNK88) {
                                        if (Zi8UNK88specialExclusion(pwVar31, local_214, matchLen)) {
                                            matchLen = 0;
                                        }
                                    } else {
                                        if (!Zi8IsVowel(lang, pwVar31[0])) {
                                            matchLen = 0;
                                        }
                                    }
                                }
                                if (matchLen == 0) {
                                    matchLen = 0;
                                    searchStates[local_250] = 1;
                                    continue;
                                }
                            }
                            if (matchLen != 0) {
                                if (lang == getParam->language) {
                                    bVar17 = ZI8_TRUE;
                                } else {
                                    bVar18 = ZI8_TRUE;
                                }
                            }
                            Zi8IsZicorpSignature(pwVar31, matchLen, ZI_WORK);
                            break;

                        case ZI8_SEARCH_PUD_A:
                        case ZI8_SEARCH_PUD_B:
                            if (local_27c != 0) {
                                matchLen =
                                    Zi8MatchPUDdata(elements, local_27c, lang, pwVar31, local_264, local_25c, searchStates[local_250], ZI_WORK);
                            }
                            break;

                        case ZI8_SEARCH_UWD_A:
                        case ZI8_SEARCH_UWD_B:
                            while (1) {
                                matchLen = Zi8MatchUWDdata(elements, local_27c, getParam->currentWord, getParam->wordCharCount, lang, pwVar31,
                                                           local_264, local_25c, searchStates[local_250], ZI_WORK);
                                if (local_27c != 0 || matchLen != 1 || pwVar31[0] != L' ')
                                    break;
                                searchStates[local_250] = 1;
                            }
                            break;

                        case ZI8_SEARCH_OEM_A:
                        case ZI8_SEARCH_OEM_B:
                            if (local_27c != 0) {
                                matchLen =
                                    Zi8MatchOEMdata(elements, local_27c, lang, pwVar31, local_264, local_25c, searchStates[local_250], ZI_WORK);
                            }
                            break;

                        case ZI8_SEARCH_UNK_10:
                            if ((pwVar31[0] = local_270[0]) != L'\0') {
                                local_270++;
                                matchLen = 1;
                            } else {
                                matchLen = 0;
                            }
                            break;

                        case ZI8_SEARCH_UNK_11:
                            if (local_214 == 0) {
                                if (bVar13) {
                                    for (i = 0; i < getParam->elementCount - 1; i++) {
                                        pwVar31[i] = ZI_WORK->hlPrefix[i];
                                        if (pwVar31[i] == L'\0')
                                            break;
                                    }
                                    if (i < getParam->elementCount - 1) {
                                        matchLen = 0;
                                        break;
                                    }
                                } else {
                                    for (i = 0; i < ZI_WORK->unk_0x1B14; i++) {
                                        pwVar31[i] = ZI_WORK->unk_0x1A92[i];
                                        if (pwVar31[i] == L'\0')
                                            break;
                                    }
                                    if (i < ZI_WORK->unk_0x1B14) {
                                        matchLen = 0;
                                        break;
                                    }
                                }
                                if ((pwVar31[i++] = local_270[0]) != L'\0') {
                                    local_270++;
                                    matchLen = i;
                                } else {
                                    matchLen = 0;
                                }
                            }
                            break;
                    }
                    searchStates[local_250] = 1;
                    if (matchLen == 0) {
                        searchStates[local_250] = 2;
                        if (ZI_WORK->unk_0x1877 != 0 && !bVar13 && getParam->elementCount != 0 && ZI_WORK->unk_0x1878 >= getParam->elementCount - 1 &&
                            getParam->elements[getParam->elementCount - 1] == PAD_KEY(1) &&
                            (ZI_WORK->unk_0x1877 != 1 || ZI_WORK->unk_0x1878 != getParam->elementCount) &&
                            (ZI_WORK->unk_0x1876 == 0 || ZI_WORK->unk_0x1876 + 1 >= getParam->elementCount) && local_25c != 0 && bVar5 &&
                            local_214 == 0 && local_250 != ZI8_SEARCH_UNK_11 && lsoI < ZI_WORK->latinSearchOrderLen && getCandParam->unk_0x02 == 0 &&
                            ZI_WORK->usrKeyLyts[lang] == ZI8_NULL) {
                            if (lang != ZI_WORK->unk_0x1983)
                                break;
                            switch (ZI_WORK->latinSearchOrderList[lsoI + 1]) {
                                case ZI8_SEARCH_ROM_B:
                                case ZI8_SEARCH_PUD_B:
                                case ZI8_SEARCH_UWD_B:
                                case ZI8_SEARCH_OEM_B:
                                case ZI8_SEARCH_UNK_12:
                                    if (!Zi8getKeyLayout(lang, PAD_KEY(1), keyLayout, 1, ZI_WORK)) {
                                        keyLayout[0] = L'\0';
                                    }
                                    local_270 = keyLayout;
                                    local_250 = ZI8_SEARCH_UNK_11;
                                    bVar13 = ZI8_TRUE;
                                    continue;
                            }
                        }
                        if (local_25c == 0 || !bVar5 || local_214 != 0 || local_250 == ZI8_SEARCH_UNK_11 || lsoI >= ZI_WORK->latinSearchOrderLen ||
                            elements == ZI8_NULL || local_27c == 0 || elements[local_27c - 1] != PAD_KEY(1) ||
                            ZI_WORK->unk_0x1B14 != getParam->elementCount - 1 || ZI_WORK->unk_0x1A92[0] == L'\0' || getCandParam->unk_0x02 != 0 ||
                            ZI_WORK->usrKeyLyts[lang] != ZI8_NULL || local_238 == 2)
                            break;

                        switch (ZI_WORK->latinSearchOrderList[lsoI + 1]) {
                            case ZI8_SEARCH_ROM_B:
                            case ZI8_SEARCH_PUD_B:
                            case ZI8_SEARCH_UWD_B:
                            case ZI8_SEARCH_OEM_B:
                            case ZI8_SEARCH_UNK_12:
                                break;
                            default:
                                goto LAB_81468c78;
                        }
                        if (!Zi8getKeyLayout(lang, PAD_KEY(1), keyLayout, 1, ZI_WORK)) {
                            keyLayout[0] = L'\0';
                        }
                        local_270 = keyLayout;
                        local_250 = ZI8_SEARCH_UNK_11;
                    } else if (getCandParam->unk_0x12 <= matchLen) {
                        if (bVar21) {
                            if ('0' <= pwVar31[0] && pwVar31[0] <= '9')
                                continue;

                            if (lang == ZI8_LANG_IT) {
                                if (Zi8ITspecialExclusion(pwVar31, local_214, matchLen))
                                    continue;
                            } else if (lang == ZI8_LANG_UNK88) {
                                if (Zi8UNK88specialExclusion(pwVar31, local_214, matchLen))
                                    continue;
                            } else {
                                if (!Zi8IsVowel(lang, *pwVar31)) {
                                    matchLen = 0;
                                    continue;
                                }
                            }
                        }

                        if (local_27c == 1 && local_250 != ZI8_SEARCH_UNK_10 && PAD_KEY(1) <= pwVar31[0] && pwVar31[0] <= PAD_KEY(0x20)) {
                            bVar12 = ZI8_TRUE;
                            break;
                        }
                        pwVar31[matchLen] = 0;
                        if (zVar4 != 0 && local_27c != 0 && matchLen > local_27c) {
                            matchLen = local_27c;
                            pwVar31[matchLen] = L'\0';
                        }
                        matchLen = Zi8DeTokenization(pwVar31, matchLen, local_264, lang);
                        if (bVar7 && (ziU8)getParam->elementCount < (ziU8)matchLen &&
                            (pwVar31[matchLen - 1] == PINYIN_CHAR('`') || pwVar31[matchLen - 1] == '\'')) {
                            matchLen--;
                            pwVar31[matchLen] = L'\0';
                        }
                        if (!bVar8 || Zi8ZHCheckSpelling(pwVar31, getParam->elements, getParam->elementCount, ZI_WORK)) {
                            if (ZI_WORK->wordCase != 0 && !bVar7 && !bVar8) {
                                Zi8ChangeWordCase(pwVar31 - local_214, lang, ZI_WORK);
                            }
                            if (getCandParam->unk_0x14 != 0 && (matchLen + local_214 > getCandParam->unk_0x01)) {
                                matchLen = getCandParam->unk_0x01 - local_214;
                                pwVar31[matchLen] = L'\0';
                            }
                            if (getCandParam->unk_0x01 < matchLen + local_214 || Zi8IsDupWordW(pwVar31 - local_214, matchLen + local_214, ZI_WORK)) {
                                if (local_214 == 0 || getCandParam->unk_0x01 > local_214) {
                                    continue;
                                } else {
                                    break;
                                }
                            }

                            if (blocklistLen != 0 && getCandParam->unk_0x02 == 0 && matchLen + local_214 > 1 && matchLen + local_214 <= 0x40) {
                                switch (local_250) {
                                    case ZI8_SEARCH_ROM_A:
                                    case ZI8_SEARCH_ROM_B:
                                    case ZI8_SEARCH_ROM_C:
                                        blocklistCurr = blocklistData;
                                        someLenC = matchLen + local_214;
                                        for (i = 0; i < blocklistLen; i++) {
                                            if (*blocklistCurr < someLenC) {
                                                blocklistCurr += *blocklistCurr + 1;
                                            } else {
                                                if (*blocklistCurr++ > someLenC) {
                                                    i = blocklistLen;
                                                }
                                                break;
                                            }
                                        }
                                        if (i >= blocklistLen)
                                            break;
                                        for (j = 0; j < someLenC; j++) {
                                            abStack_200[j] = Zi8ConvertWC2UC(pwVar31[j - local_214], lang, ZI_WORK);
                                        }
                                        for (; i < blocklistLen; i++) {
                                            for (j = 0; j < someLenC; j++) {
                                                if (abStack_200[j] != blocklistCurr[j])
                                                    break;
                                            }
                                            if (j == someLenC) {
                                                pwVar31[-local_214] = L'\0';
                                                goto LAB_81468c6c;
                                            }
                                            blocklistCurr += someLenC;
                                            if (*blocklistCurr++ > someLenC)
                                                break;
                                        }
                                        break;
                                }
                            }
                            if (local_278 != 0) {
                                local_278--;
                                continue;
                            }

                            if (getCandParam->unk_0x00 != 0) {
                                if (getCandParam->unk_0x14 != 0) {
                                    if (getCandParam->unk_0x15 > matchLen + local_214) {
                                        getCandParam->unk_0x15 = matchLen + local_214;
                                    }
                                    if (getCandParam->unk_0x16 < matchLen + local_214) {
                                        getCandParam->unk_0x16 = matchLen + local_214;
                                    }
                                }
                                if (++local_284 < getCandParam->maxSize)
                                    continue;
                                else
                                    goto LAB_81469704;
                            }
                            if (getCandParam->unk_0x02 != 0) {
                                for (i = 0; i <= matchLen; i++) {
                                    if (pwVar31[i] != getCandParam->unk_0x04[i])
                                        break;
                                }
                                if ((ZI_WORK->unk_0x1C != 0 || i >= matchLen) &&
                                    (ZI_WORK->unk_0x1C == 0 || zVar4 == 0 || i >= Zi8WCharCount(getCandParam->unk_0x04, ZI_WORK)) &&
                                    (zVar4 != 0 || i >= matchLen)) {
                                    local_284 = 1;
                                    goto LAB_81469704;
                                }
                            } else {
                                if (!ZI_WORK->unk_0x18FC && pwVar31[1] == 0 && local_284 == 0) {
                                    if (PAD_KEY(1) <= pwVar31[0] && pwVar31[0] <= PAD_KEY(0x20)) {
                                        ZI_WORK->unk_0x1A90 = 0;
                                    } else {
                                        ZI_WORK->unk_0x1A90 = pwVar31[0];
                                    }
                                }
                                if (local_25c != 0 && getParam->elementCount == ZI_WORK->unk_0x1B14 &&
                                    (getParam->maxCandidates == 1 || (local_284 == 0 && getParam->firstCandidate == 0))) {
                                    for (i = 0; i < local_214; i++) {
                                        ZI_WORK->unk_0x1A92[i] = pwVar31[i - local_214];
                                    }
                                    for (i = 0; i < matchLen; i++) {
                                        ZI_WORK->unk_0x1A92[i + local_214] = pwVar31[i];
                                    }
                                    ZI_WORK->unk_0x1A92[i + local_214] = L'\0';
                                } else if (local_25c == 0 && getParam->elementCount == ZI_WORK->unk_0x1B14 &&
                                           (getParam->maxCandidates == 1 || (local_284 == 0 && getParam->firstCandidate == 0))) {
                                    ZI_WORK->unk_0x1A92[0] = L'\0';
                                }
                                if (!ZI_WORK->unk_0x18FC &&
                                    ((local_250 == ZI8_SEARCH_ROM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_ROM)) ||
                                     (local_250 == ZI8_SEARCH_UWD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_UWD)) ||
                                     (local_250 == ZI8_SEARCH_PUD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_PUD)) ||
                                     (local_250 == ZI8_SEARCH_OEM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_OEM))) &&
                                    (getParam->maxCandidates == 1 || (local_284 == 0 && getParam->firstCandidate == 0))) {
                                    for (i = 0; i < matchLen; i++) {
                                        ZI_WORK->hlPrefix[i] = pwVar31[i];
                                    }
                                    ZI_WORK->hlPrefixLen = matchLen;
                                    ZI_WORK->unk_0x1983 = lang;
                                } else if (ZI_WORK->unk_0x1984 == 0 &&
                                           ((local_250 == ZI8_SEARCH_ROM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_ROM)) ||
                                            (local_250 == ZI8_SEARCH_UWD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_UWD)) ||
                                            (local_250 == ZI8_SEARCH_PUD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_PUD)) ||
                                            (local_250 == ZI8_SEARCH_OEM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_OEM))) &&
                                           ZI_WORK->unk_0x1983 == lang &&
                                           (getParam->maxCandidates == 1 || (local_284 == 0 && getParam->firstCandidate == 0))) {
                                    if (matchLen == getParam->elementCount) {
                                        for (i = 0; i < matchLen; i++) {
                                            ZI_WORK->hlPrefix[i] = pwVar31[i];
                                        }
                                        ZI_WORK->hlPrefixLen = matchLen;
                                    } else {
                                        for (i = 0; i < matchLen; i++) {
                                            ZI_WORK->hlSuffix[i] = pwVar31[i];
                                        }
                                        ZI_WORK->hlSuffixLen = matchLen;
                                    }
                                } else if (ZI_WORK->unk_0x18FC &&
                                           ((local_250 == ZI8_SEARCH_ROM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_ROM)) ||
                                            (local_250 == ZI8_SEARCH_UWD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_UWD)) ||
                                            (local_250 == ZI8_SEARCH_PUD_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_PUD)) ||
                                            (local_250 == ZI8_SEARCH_OEM_A && (ZI_WORK->searchFlags & ZI8_SEARCH_FLAG_OEM))) &&
                                           ZI_WORK->unk_0x1983 != lang &&
                                           (getParam->maxCandidates == 1 || (local_284 == 0 && getParam->firstCandidate == 0))) {
                                    for (i = 0; i < matchLen; i++) {
                                        ZI_WORK->unk_0x1A0C[i] = pwVar31[i];
                                    }
                                    ZI_WORK->unk_0x1A8E = i;
                                }
                                matchLen++;
                                if ((getParam->getOptions & 0xFD) == 0x80) {
                                    if (local_29b == 0) {
                                        local_29b = lang;
                                    }
                                    for (i = 0; i < matchLen + local_214; i++) {
                                        local_248[i] = Zi8ConvertWC2UC(pwVar31[i - local_214], lang, ZI_WORK);
                                    }
                                    local_248[i] = '\0';
                                    local_248 += i;
                                } else {
                                    if (getCandParam->unk_0x14 != 0) {
                                        pwVar31 -= local_214;
                                        local_264 += local_214;
                                        matchLen += local_214;
                                        for (i = 0; getParam->elementCount + i < matchLen; i++) {
                                            pwVar31[i] = pwVar31[i + getParam->elementCount];
                                        }
                                        matchLen = i;
                                    }
                                    pwVar31[matchLen] = L'\0';
                                    pwVar31 += matchLen;
                                    local_264 -= matchLen;
                                }

                                if (++local_284 >= getParam->maxCandidates) {
                                    local_214 = 0;
                                    goto LAB_81469704;
                                }
                                local_268 -= matchLen;
                                if (local_268 <= local_27c) {
                                    local_214 = 0;
                                    goto LAB_81469704;
                                }
                                if (local_214 != 0) {
                                    if (getCandParam->unk_0x00 || ((getParam->getOptions & 0xFD) != 0x81)) {
                                        pwVar31 = romMatchText;
                                        local_264 = 0x40;
                                    }
                                    for (i = 0; i < ZI_WORK->hlPrefixLen; i++) {
                                        pwVar31[i] = ZI_WORK->hlPrefix[i];
                                    }
                                    pwVar31 += ZI_WORK->hlPrefixLen;
                                    local_264 -= ZI_WORK->hlPrefixLen;
                                    if (ZI_WORK->unk_0x1984 != 0) {
                                        for (i = 0; i < ZI_WORK->hlSuffixLen; i++) {
                                            pwVar31[i] = ZI_WORK->hlSuffix[i];
                                        }
                                        pwVar31 += ZI_WORK->hlSuffixLen;
                                        local_264 -= ZI_WORK->hlSuffixLen;
                                    }
                                }
                            }
                        }
                    }
                LAB_81468c6c:
                    {
                    }
                } while (lsoI != 0);
            LAB_81468c78:
                {
                }
            }
            if (local_284 == 0 && !bVar12 && getParam->firstCandidate == 0 && getParam->elementCount == 1 &&
                !GET_DICT_CFG_FLAG(getParam->language, ZI_WORK, ZI8_CFG_UNK_x040) && PAD_KEY(1) <= getParam->elements[0] &&
                getParam->elements[0] <= PAD_KEY(32) && Zi8getKeyLayout(getParam->language, getParam->elements[0], keyLayout, 1, ZI_WORK)) {
                bVar12 = ZI8_TRUE;
            }
            if (local_284 == 0 && bVar12 && local_278 == 0) {
                local_284 = 1;
                if (getCandParam->unk_0x00 || (getParam->getOptions & 0xFD) == 0x81) {
                    if (getParam->getMode == ZI8_GET_MODE_PINYIN_A) {
                        pwVar31[0] = elements[0];
                    } else {
                        pwVar31[0] = '>';
                    }
                    pwVar31[1] = pwVar31[2] = L'\0';
                    pwVar31 += 2;
                } else {
                    local_248[0] = '>';
                    local_248[1] = local_248[2] = L'\0';
                }
                if (getCandParam->unk_0x02 == 0) {
                    ZI_WORK->unk_0x1A90 = L'\0';
                }
            }
            if (local_238 != 1)
                break;

            bVar11 = ZI8_TRUE;
            local_238 = 0;
            lang = getParam->subLanguage;
            bVar9 = bVar15;
            bVar5 = bVar6;
            searchStates[ZI8_SEARCH_ROM_C] = 0;
            searchStates[ZI8_SEARCH_ROM_B] = 0;
            searchStates[ZI8_SEARCH_PUD_B] = 0;
            searchStates[ZI8_SEARCH_UWD_B] = 0;
            searchStates[ZI8_SEARCH_OEM_B] = 0;
            if (bVar14) {
                bVar11 = ZI8_FALSE;
                searchStates[ZI8_SEARCH_ROM_A] = 0;
                searchStates[ZI8_SEARCH_PUD_A] = 0;
                searchStates[ZI8_SEARCH_UWD_A] = 0;
                searchStates[ZI8_SEARCH_OEM_A] = 0;
            }

        LAB_81466e34:
            {
            }
        }

        lang = ZI_WORK->unk_0x1983;
        if (lang == 0) {
            lang = getParam->language;
        }

        if (lang == getParam->language) {
            bVar9 = bVar22;
            bVar5 = bVar10;
        } else {
            bVar9 = bVar15;
            bVar5 = bVar6;
        }
        if (getCandParam->unk_0x02 != 0 || (!bVar9 && !bVar5))
            break;

        if (bVar5 && !ZI_WORK->unk_0x18FC && local_27c > 2 && elements[local_27c - 2] == PAD_KEY(1) && ZI_WORK->hlPrefixLen == local_27c - 2) {
            ZI_WORK->unk_0x1982 = ZI_WORK->hlPrefixLen + 1;
            ZI_WORK->unk_0x18FC = ZI8_TRUE;
        }
        if (ZI_WORK->unk_0x18FC && !bVar16) {
            bVar16 = ZI8_TRUE;
            continue;
        }
        if (bVar5 && ZI_WORK->unk_0x18FC && ZI_WORK->unk_0x1984 == 0 && local_27c > 2 &&
            ((elements[local_27c - 2] == PAD_KEY(1) && ZI_WORK->hlSuffixLen == local_27c - 2) ||
             (ZI_WORK->hlSuffixLen == local_27c - 1 && Zi8IsAlphaPunct(elements[local_27c - 1])))) {
            if (ZI_WORK->unk_0x1877 < 1 || elements[local_27c - 1] != PAD_KEY(1)) {
                if (!bVar17 && !bVar18) {
                    ZI_WORK->unk_0x1984 = 1;
                    ZI_WORK->unk_0x1986[0] = getParam->elementCount - 1;
                    if (local_214 != 0) {
                        pwVar31 -= local_214;
                        elements -= local_214;
                        local_27c += local_214;
                        local_264 += local_214;
                        local_214 = 0;
                    }
                    continue;
                }

            LAB_814690d8:
                if (bVar16 && ZI_WORK->unk_0x1A8E > 1) {
                    if (lang == getParam->language) {
                        if (bVar17) {
                            ZI_WORK->unk_0x1A8E = 0;
                        }
                    } else if (bVar18) {
                        ZI_WORK->unk_0x1A8E = 0;
                    }
                    if (ZI_WORK->unk_0x1A8E != 0) {
                        pwVar31 -= local_214;
                        elements -= local_214;
                        local_27c += local_214;
                        local_264 += local_214;
                        local_214 = 0;
                        bVar16 = ZI8_FALSE;
                        ZI_WORK->unk_0x18FC = ZI8_FALSE;
                        ZI_WORK->unk_0x1984 = 0;
                        ZI_WORK->hlSuffixLen = 0;
                        for (i = 0; i < ZI_WORK->unk_0x1A8E; i++) {
                            ZI_WORK->hlPrefix[i] = ZI_WORK->unk_0x1A0C[i];
                        }
                        ZI_WORK->hlPrefixLen = i;
                        if (ZI_WORK->unk_0x1983 == getParam->language) {
                            ZI_WORK->unk_0x1983 = getParam->subLanguage;
                        } else {
                            ZI_WORK->unk_0x1983 = getParam->language;
                        }
                        ZI_WORK->unk_0x1A8E = 0;
                    }
                }
                if ((bVar17 && bVar18) || local_27c == 0 || (lang == getParam->language && bVar17) || (lang == getParam->subLanguage && bVar18))
                    break;
                if (!bVar5)
                    goto LAB_1570;
            }

            if (ZI_WORK->unk_0x1877 > 1 && getParam->elements[getParam->elementCount - 1] != PAD_KEY(1))
                break;
            if ((elements[0] == PAD_KEY(1) || ZiIsLetterHyphen(*elements, ZI_WORK)) &&
                (ZI_WORK->unk_0x1984 == 0 || !ZiIsLetterHyphen(ZI_WORK->hlSuffix[ZI_WORK->hlSuffixLen - 1], ZI_WORK)) &&
                (!ZI_WORK->unk_0x18FC || ZI_WORK->unk_0x1984 != 0 || !ZiIsLetterHyphen(ZI_WORK->hlPrefix[ZI_WORK->hlPrefixLen - 1], ZI_WORK)) &&
                !GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_UNK_x008) && getParam->elements[getParam->elementCount - 1] != PAD_KEY(1)) {
                if (bVar16) {
                    pwVar31 -= local_214;
                    elements -= local_214;
                    local_27c += local_214;
                    local_264 += local_214;
                    local_214 = 0;
                }
                if (ZI_WORK->unk_0x1984 != 0) {
                    ZI_WORK->unk_0x1985 = ZI_WORK->unk_0x1986[0];
                    ZI_WORK->unk_0x1986[0] = getParam->elementCount;
                    j = ZI_WORK->hlPrefixLen + ZI_WORK->hlSuffixLen;
                    if (elements[j] != PAD_KEY(1) && Zi8IsAlphaPunct(elements[j])) {
                        ZI_WORK->hlSuffix[ZI_WORK->hlSuffixLen++] = elements[j];
                    } else {
                        ZI_WORK->hlSuffix[ZI_WORK->hlSuffixLen++] = ZI_WORK->unk_0x1874;
                    }
                    bVar16 = ZI8_TRUE;
                } else {
                    ZI_WORK->unk_0x1981 = ZI_WORK->unk_0x1982;
                    ZI_WORK->unk_0x1982 = getParam->elementCount;
                    if (!ZI_WORK->unk_0x18FC) {
                        ZI_WORK->unk_0x18FC = ZI8_TRUE;
                        ZI_WORK->hlPrefixLen = 0;
                    }
                    if ((ZI_WORK->hlPrefixLen == 3 && ZI_WORK->hlPrefix[0] == 'w' && ZI_WORK->hlPrefix[1] == 'w' && ZI_WORK->hlPrefix[2] == 'w') ||
                        GET_DICT_CFG_FLAG(lang, ZI_WORK, ZI8_CFG_UNK_x100)) {
                        ZI_WORK->unk_0x1874 = L'.';
                    }
                    if (elements[ZI_WORK->hlPrefixLen] != PAD_KEY(1) && Zi8IsAlphaPunct(elements[ZI_WORK->hlPrefixLen])) {
                        ZI_WORK->hlPrefix[ZI_WORK->hlPrefixLen++] = elements[ZI_WORK->hlPrefixLen];
                    } else {
                        ZI_WORK->hlPrefix[ZI_WORK->hlPrefixLen++] = ZI_WORK->unk_0x1874;
                    }
                    bVar16 = ZI8_TRUE;
                }
                continue;
            }
        } else {
            goto LAB_814690d8;
        }

    LAB_1570:
        if ((bVar9 || ZI_WORK->unk_0x18FC || ZI_WORK->hlPrefixLen == 0 || local_27c <= 2 || ZI_WORK->hlPrefixLen != local_27c - 1 ||
             !Zi8IsAlphaPunct(getParam->elements[ZI_WORK->hlPrefixLen - 1])) &&
            !bVar9 && !ZI_WORK->unk_0x18FC && getParam->elementCount > 1 && !Zi8IsAlphaPunct(getParam->elements[getParam->elementCount - 1]))
            break;
        zVar3 = ZI_WORK->unk_0x18FC;
        bVar20 = ZI_WORK->hlPrefixLen;
        if (zVar3 != 0 || bVar20 == 0 || local_27c <= 2 || bVar20 != local_27c - 1 || getParam->elements[getParam->elementCount - 1] == PAD_KEY(1))
            break;

        ZI_WORK->unk_0x18FC = ZI8_TRUE;
        ZI_WORK->unk_0x1982 = getParam->elementCount;
        bVar16 = ZI8_TRUE;
    }

LAB_81469704:
    ZI_WORK->unk_0x1A0B = 0;
    if (getCandParam->unk_0x00) {
        getParam->count = 0;
    } else {
        getParam->count = local_284;
    }
    pwVar31[-local_214] = L'\0';
    if (!getCandParam->unk_0x00 && getCandParam->unk_0x02 == 0 && getParam->elementCount != 0) {
        j = getParam->elementCount - 1;
        if ((bVar10 || bVar6) && (ZI_WORK->unk_0x1877 <= 1 || getParam->elements[j] == PAD_KEY(1))) {
            for (i = 0; j >= 0; i++) {
                if (getParam->elements[j] != PAD_KEY(1))
                    break;
                j--;
            }
            if (i != 0) {
                ZI_WORK->unk_0x1877 = i;
            } else {
                if (local_284 != 0) {
                    ZI_WORK->unk_0x1877 = 0;
                    ZI_WORK->unk_0x1878 = 0;
                }
            }
            ZI_WORK->unk_0x1878 = getParam->elementCount;
        }
        if (getParam->count != 0 && getParam->maxCandidates == 1) {
            if ((getParam->getOptions & 0x81) == 0x81) {
                pwVar31 = getParam->candidates;
            } else if (local_29b != 0) {
                local_248 = (ziChar*)getParam->candidates;
                pwVar31 = romMatchText;
                for (i = 0; local_248[i] != '\0'; i++) {
                    pwVar31[i] = Zi8ConvertUC2WC(local_248[i], local_29b, ZI_WORK);
                }
                pwVar31[i] = L'\0';
            } else {
                pwVar31 = ZI8_NULL;
            }
            if (pwVar31 != ZI8_NULL) {
                Zi8SetHighlightedWordW(pwVar31, getParam->language, getParam->subLanguage, ZI_WORK);
            }
        }
    }
    if (ZI_WORK->unk_0x1414 != ZI8_NULL) {
        if (lsoI >= ZI_WORK->latinSearchOrderLen) {
            ZI_WORK->unk_0x1414[ZI_WORK->latinSearchOrderLen - 1] = local_284;
        } else {
            ZI_WORK->unk_0x1414[lsoI] = local_284;
        }
        local_244 = lsoI;
        if (local_244 >= ZI_WORK->latinSearchOrderLen) {
            local_244 = ZI_WORK->latinSearchOrderLen - 1;
        }
        while (local_244 >= 1) {
            ZI_WORK->unk_0x1414[local_244] -= ZI_WORK->unk_0x1414[local_244 - 1];
            local_244--;
        }
    }
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return local_284;
}

ziU16 Zi8DeTokenization(ziWChar* text, ziU16 inputLen, ziU16 textBufLen, ziU16 language) {
    ziBool wasModified;
    ziU16 i;
    ziU16 outLen;
    ziWChar outText[0x40];

    wasModified = ZI8_FALSE;
    outLen = 0;

    // Bengali, Gujarati, Kannada, Malayalam, Marathi, Hindi, Telugu, Tamil
    if (language != ZI8_LANG_BN && language != ZI8_LANG_GU && language != ZI8_LANG_KN && language != ZI8_LANG_ML && language != ZI8_LANG_MR &&
        language != ZI8_LANG_HI && language != ZI8_LANG_TE && language != ZI8_LANG_TA) {
        return inputLen;
    }

    if (textBufLen > 0x40) {
        textBufLen = 0x40;
    }
    for (i = 0; i < inputLen && text[i] != L'\0'; i++) {
        switch (text[i]) {
            // Gujarati
            case 0xF800:
                outText[outLen++] = 0xAB0;  // ર (Gujarati Letter Ra)
                outText[outLen++] = 0xACD;  // ્ (Gujarati Sign Virama)
                wasModified = ZI8_TRUE;
                break;

            // Bengali
            case 0xF801:
                outText[outLen++] = 0x9B0;  // র (Bengali Letter Ra)
                outText[outLen++] = 0x9CD;  // ্ (Bengali Sign Virama)
                wasModified = ZI8_TRUE;
                break;
            case 0xF802:
                outText[outLen++] = 0x9CD;  // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x9AF;  // য (Bengali Letter Ya)
                wasModified = ZI8_TRUE;
                break;
            case 0xF803:
                outText[outLen++] = 0x9A4;   // ত (Bengali Letter Ta)
                outText[outLen++] = 0x9CD;   // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF804:
                outText[outLen++] = 0x9CD;   // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x200C;  // Zero-width Non-joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF805:
                outText[outLen++] = 0x9CD;   // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;

            // Tamil
            case 0xF806:
                outText[outLen++] = 0xB95;  // க (Tamil Letter Ka)
                outText[outLen++] = 0xBCD;  // ் (Tamil Sign Virama)
                outText[outLen++] = 0xBB7;  // ஷ (Tamil Letter Ssa)
                wasModified = ZI8_TRUE;
                break;
            case 0xF807:
                outText[outLen++] = 0xBB8;  // ஸ (Tamil Letter Sa)
                outText[outLen++] = 0xBCD;  // ் (Tamil Sign Virama)
                outText[outLen++] = 0xBB0;  // ர (Tamil Letter Ra)
                outText[outLen++] = 0xBC0;  // ீ (Tamil Vowel Sign II)
                wasModified = ZI8_TRUE;
                break;

            // Devanagari
            case 0xF808:
                outText[outLen++] = 0x930;  // र (Devanagari Letter Ra)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                wasModified = ZI8_TRUE;
                break;
            case 0xF809:
                outText[outLen++] = 0x915;  // क (Devanagari Letter Ka)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x937;  // ष (Devanagari Letter Ssa)
                wasModified = ZI8_TRUE;
                break;
            case 0xF80A:
                outText[outLen++] = 0x91C;  // ज (Devanagari Letter Ja)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x91E;  // ञ (Devanagari Letter Nya)
                wasModified = ZI8_TRUE;
                break;
            case 0xF80B:
                outText[outLen++] = 0x931;  // ऱ (Devanagari Letter Rra)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                wasModified = ZI8_TRUE;
                break;
            case 0xF80C:
                outText[outLen++] = 0x905;  // अ (Devanagari Letter A)
                outText[outLen++] = 0x945;  // ॅ (Devanagari Vowel Sign Candra E)
                wasModified = ZI8_TRUE;
                break;

            // Kannada
            case 0xF80D:
                outText[outLen++] = 0xCB0;  // ರ (Kannada Letter Ra)
                outText[outLen++] = 0xCCD;  // ್ (Kannada Sign Virama)
                wasModified = ZI8_TRUE;
                break;
            case 0xF80E:
                outText[outLen++] = 0xCCD;   // ್ (Kannada Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF80F:
                outText[outLen++] = 0xCCD;   // ್ (Kannada Sign Virama)
                outText[outLen++] = 0x200C;  // Zero-width Non-joiner
                wasModified = ZI8_TRUE;
                break;

            // Malayalam
            case 0xF810:
                outText[outLen++] = 0xD33;   // ള (Malayalam Letter Lla)
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF811:
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200C;  // Zero-width Non-joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF812:
                outText[outLen++] = 0xD23;   // ണ (Malayalam Letter Nna)
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF813:
                outText[outLen++] = 0xD28;   // ന (Malayalam Letter Na)
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF814:
                outText[outLen++] = 0xD30;   // ര (Malayalam Letter Ra)
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF815:
                outText[outLen++] = 0xD32;   // ല (Malayalam Letter La)
                outText[outLen++] = 0xD4D;   // ് (Malayalam Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;

            // Telugu
            case 0xF816:
                outText[outLen++] = 0xC15;  // క (Telugu Letter Ka)
                outText[outLen++] = 0xC4D;  // ్ (Telugu Sign Virama)
                outText[outLen++] = 0xC37;  // ష (Telugu Letter Ssa)
                wasModified = ZI8_TRUE;
                break;
            case 0xF817:
                outText[outLen++] = 0xC4D;   // ్ (Telugu Sign Virama)
                outText[outLen++] = 0x200C;  // Zero-width Non-joiner
                wasModified = ZI8_TRUE;
                break;

            // Devanagari
            case 0xF818:
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x930;  // र (Devanagari Letter Ra)
                wasModified = ZI8_TRUE;
                break;
            case 0xF819:
                outText[outLen++] = 0x924;  // त (Devanagari Letter Ta)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x930;  // र (Devanagari Letter Ra)
                wasModified = ZI8_TRUE;
                break;

            // Bengali
            case 0xF81A:
                outText[outLen++] = 0x99C;  // জ (Bengali Letter Ja)
                outText[outLen++] = 0x9BC;  // ় (Bengali Sign Nukta)
                wasModified = ZI8_TRUE;
                break;
            case 0xF81B:
                outText[outLen++] = 0x9CD;  // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x9B0;  // র (Bengali Letter Ra)
                wasModified = ZI8_TRUE;
                break;
            case 0xF81C:
                outText[outLen++] = 0x9CD;  // ্ (Bengali Sign Virama)
                outText[outLen++] = 0x9AC;  // ব (Bengali Letter Ba)
                wasModified = ZI8_TRUE;
                break;

            // Devanagari
            case 0xF820:
                outText[outLen++] = 0x936;  // श (Devanagari letter Sha)
                outText[outLen++] = 0x94D;  // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x930;  // र (Devanagari Letter Ra)
                wasModified = ZI8_TRUE;
                break;

            // Devanagari (Joined/Combined versions of 0xF8**)
            case 0xF90B:
                outText[outLen++] = 0x930;   // र (Devanagari Letter Ra)
                outText[outLen++] = 0x94D;   // ् (Devanagari Sign Virama)
                outText[outLen++] = 0x200D;  // Zero-width Joiner
                wasModified = ZI8_TRUE;
                break;
            case 0xF90C:
                outText[outLen++] = 0x90D;  // ऍ (Devanagari Letter Candra E)
                wasModified = ZI8_TRUE;
                break;

            default:
                outText[outLen++] = text[i];
                break;
        }
        if (outLen >= textBufLen) {
            return inputLen;
        }
    }
    if (wasModified) {
        for (i = 0; i < outLen; i++) {
            text[i] = outText[i];
        }
        text[i] = L'\0';
        return i;
    } else {
        return inputLen;
    }
}
