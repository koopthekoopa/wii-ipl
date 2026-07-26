#include <zi8clib/zi8alpha.h>

#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/ziswordw.h>
#include <zi8clib/zmtkey.h>

ziBool Zi8SetParentalControls(ziU8 level ZI_NEED_WORK) {
    Zi8LogError(0x2C9, ZI_WORK);
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

    for (wordLen = 0; word[wordLen] != 0; wordLen++) {
    }
    if (wordLen >= 0x40) {
        Zi8LogError(0x131, ZI_WORK);
        return ZI8_FALSE;
    }

    if (wordLen == 1 && PAD_KEY(1) <= *word && *word <= PAD_KEY(0x20)) {
        Zi8LogError(0x640, ZI_WORK);
        return ZI8_FALSE;
    }

    ZI_WORK->unk_0x1879 = 1;
    if (ZI_WORK->unk_0x18FC == 0 || ZI_WORK->unk_0x1984 == 0) {
        ZI_WORK->unk_0x1C = 1;
        if (ZI_WORK->unk_0x18FC == 0) {
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
    Zi8LogError(0x64, ZI_WORK);
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
        ZI_WORK->unk_0x1876 = (ziU8)wordLen;
        for (i = 0; i < wordLen; i++) {
            ZI_WORK->hlPrefix[i] = ZI_WORK->hlBuffer[i];
        }
    }
    if (ZI_WORK->unk_0x18FC == 0) {
        if ((ZI_WORK->unk_0x1878 == 0 || wordLen == ZI_WORK->unk_0x1878) && ZI_WORK->unk_0x1879 > 1) {
            for (i = 0; i < wordLen; i++) {
                ZI_WORK->hlPrefix[i] = ZI_WORK->hlBuffer[i];
            }
            ZI_WORK->hlPrefixLen = (ziU8)i;
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
    if (wordLen == 1 && ZI_WORK->unk_0x1A90 != 0) {
        if (PAD_KEY(1) <= ZI_WORK->hlBuffer[0] && ZI_WORK->hlBuffer[0] <= PAD_KEY(0x20)) {
            ZI_WORK->unk_0x1A90 = 0;
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

ziBool Zi8ITspecialExclusion(ziWChar* text, int offset) {
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
ziBool Zi8UNK88specialExclusion(ziWChar* text, int offset) {
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

ziBool Zi8IsAlphaPunct(ziWChar ch ZI_NEED_WORK) {
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
