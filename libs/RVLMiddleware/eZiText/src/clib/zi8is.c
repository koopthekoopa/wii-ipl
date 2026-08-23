#include <zi8clib/zi8is.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>

ziU8 Zi8GetZHCharSet(void* __zi8_work_data) {
    ziU8 savedVal;
    ziU8 charSet;

    ziU8* regionalCharCountTable;
    ziU8* regionalCharCountData;

    ziU16 mainlandCharCount, taiwanCharCount, hongKongCharCount;

    ziWChar candidatesBuf[0x10];
    ziGetParam getParam;

    charSet = 0;
    Zi8LogError(0x64, ZI_WORK);
    if (Zi8LangSupported(ZI8_LANG_ZH, ZI_WORK) == 0) {
        Zi8ReplaceLastError(0x26C, ZI_WORK);
        return 0;
    }

    if (Zi8GetTableCount(ZI8_LANG_ZH, 0xA, ZI_WORK) != 0) {
        savedVal = ZI_WORK->unk_0x18;

        ZI_WORK->unk_0x18 = 1;
        regionalCharCountTable = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0xA, ZI_WORK);
        regionalCharCountData = regionalCharCountTable;

        mainlandCharCount = regionalCharCountData[0] | ((ziU16)regionalCharCountData[1] << 8);

        ZI_WORK->unk_0x18 = 0;
        regionalCharCountTable = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0xA, ZI_WORK);
        regionalCharCountData = regionalCharCountTable;

        taiwanCharCount = regionalCharCountData[2] | ((ziU16)regionalCharCountData[3] << 8);
        hongKongCharCount = regionalCharCountData[4] | ((ziU16)regionalCharCountData[5] << 8);

        ZI_WORK->unk_0x18 = savedVal;
        if (mainlandCharCount != 0) {
            if (mainlandCharCount > 20000) {
                charSet |= ZI_CHAR_SET_MAINLAND_LARGE;
            } else {
                charSet |= ZI_CHAR_SET_MAINLAND_SMALL;
            }
        }
        if (taiwanCharCount != 0) {
            if (taiwanCharCount > 10000) {
                charSet |= ZI_CHAR_SET_TAIWAN_LARGE;
            } else {
                charSet |= ZI_CHAR_SET_TAIWAN_SMALL;
            }
        }
        if (hongKongCharCount != 0) {
            charSet |= ZI_CHAR_SET_HONG_KONG;
        }
        return charSet;
    }

    Zi8Memset(&getParam, 0, 0x2C);
    getParam.language = 1;
    getParam.context = 1;
    getParam.getOptions = 0;
    getParam.candidates = candidatesBuf;
    getParam.maxCandidates = 1;

    getParam.subLanguage = 1;
    while (1) {
        getParam.getMode = 0;
        if (_Zi8GetCandidates(&getParam, ZI_WORK) != 0) {
            charSet |= getParam.subLanguage;
            goto ADVANCE_SUBLANGUAGE;
        }

        getParam.getMode = 1;
        if (_Zi8GetCandidates(&getParam, ZI_WORK) != 0) {
            charSet |= getParam.subLanguage;
            goto ADVANCE_SUBLANGUAGE;
        }

        getParam.getMode = 2;
        if (_Zi8GetCandidates(&getParam, ZI_WORK) != 0) {
            charSet |= getParam.subLanguage;
            goto ADVANCE_SUBLANGUAGE;
        }

    ADVANCE_SUBLANGUAGE:
        if (getParam.subLanguage == 1) {
            getParam.subLanguage = 4;
            continue;
        }

        if (getParam.subLanguage == 4) {
            getParam.subLanguage = 2;
            continue;
        }

        break;
    }
    return charSet;
}

ziBool Zi8IsComponent(ziWChar ch ZI_NEED_WORK) {
    if (ch >= COMPONENT_BASE && ch < BPMF_BASE)
        return ZI8_TRUE;
    else
        return ZI8_FALSE;
}

ziBool Zi8IsCharacter(ziWChar ch ZI_NEED_WORK) {
    Table0Entry* chEntries;
    Table0Entry* chEntryCurr;

    ziU16 i;
    ziU16 entryCount;

    ziU8 chHi, chLo;

    // Bopomofo B (ㄅ) to Iu (ㄩ)
    if (0x3105 <= ch && ch <= 0x3129)
        return ZI8_TRUE;

    // Tone markings
    switch (ch) {
        case 0x2C7:  // Low tone        'ˇ'
        case 0x2C9:  // High tone       'ˉ'
        case 0x2CA:  // Rising tone     'ˊ'
        case 0x2CB:  // Falling tone    'ˋ'
        case 0x2D9:  // Neutral tone    '˙'
            return ZI8_TRUE;
    }

    // Punctuation
    switch (ch) {
        case 0x3002:  // CJK full stop/period           '。'
        case 0xFF01:  // Full width Exclamation Mark    '！'
        case 0xFF0C:  // Full width Comma               '，'
        case 0xFF1F:  // Full width Question Mark       '？'
            return ZI8_TRUE;
    }

    chHi = (ch >> 8) & 0xFF;
    chLo = ch;

    entryCount = Zi8GetTableCount(ZI8_LANG_ZH, 0, ZI_WORK);
    chEntryCurr = chEntries = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    for (i = 0; i < entryCount; i++) {
        if (chEntryCurr->chHi == chHi && chEntryCurr->chLo == chLo)
            return ZI8_TRUE;
        chEntryCurr++;
    }
    return ZI8_FALSE;
}
