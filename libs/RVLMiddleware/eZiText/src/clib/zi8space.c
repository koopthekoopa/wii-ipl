#include <zi8clib/zi8space.h>

#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>

ziBool Zi8ZHaddSpace(ziWChar* in, ziU8 inLen, ziWChar* out, ziU16 outLen ZI_NEED_WORK) {
    ziWChar* currOut;
    ziS32 j;
    ziWChar* currIn;
    ziS32 checkSize;

    ziU8 remInLen;
    ziBool pyPhoneticRet;
    ziU8 pySyll0Len;
    ziU16 remOutLen;
    ziBool isPinyin;

    ziU16 mask, phonetic;
    ziU16 maskBuf[16], phoneticsBuf[16];

    currIn = in;
    // uVar3 = inLen;
    remInLen = inLen;
    currOut = out;
    remOutLen = outLen;
    if (remInLen == 0) {
        Zi8LogError(311, ZI_WORK);
        return ZI8_FALSE;
    }
    if ((PINYIN_CHAR('a') <= currIn[0] && currIn[0] <= PINYIN_CHAR('z')) || (PINYIN_CHAR('A') <= currIn[0] && currIn[0] <= PINYIN_CHAR('Z'))) {
        isPinyin = ZI8_TRUE;
    } else if (BPMF_CHAR(BPMF_CHAR_INITIAL_B) <= currIn[0] && currIn[0] <= BPMF_CHAR(BPMF_CHAR_MEDIAL_IU)) {
        isPinyin = ZI8_FALSE;
    } else {
        goto DONE;
    }

    checkSize = 2;
    while (checkSize <= remInLen) {
        if (isPinyin) {
            pyPhoneticRet = Zi8GetPyPhonetic(currIn, checkSize, maskBuf, phoneticsBuf, &pySyll0Len, &mask, &phonetic, ZI_WORK);
            if (checkSize == pySyll0Len) {
                checkSize++;
                continue;
            }
        } else {
            if ((currIn[checkSize - 1] == PINYIN_CHAR('`') && currIn[checkSize - 2] != PINYIN_CHAR('`')) ||
                (ziU8)Zi8GetBpmfPhonetic(currIn, checkSize, maskBuf, phoneticsBuf, &mask, &phonetic, ZI_WORK) != 0) {
                checkSize++;
                continue;
            }
        }

    LAB_81480080:
        if (checkSize-- >= remOutLen - 1)
            goto DONE;
        remOutLen -= checkSize + 1;
        for (j = 0; j < checkSize; j++) {
            currOut[j] = currIn[j];
        }
        if (currOut[j - 1] != PINYIN_CHAR('`') && (PINYIN_TONE(1) > currOut[j - 1] || currOut[j - 1] > PINYIN_TONE(5))) {
            currOut[j++] = ZI_WORK->spaceChar;
        }
        currIn = currIn + checkSize;
        remInLen = remInLen - checkSize;
        currOut += j;
        checkSize = 2;
    }
    if (checkSize-- <= remOutLen) {
        for (j = 0; j < checkSize; j++) {
            currOut[j] = currIn[j];
        }
        currOut[j] = 0;
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
        return ZI8_TRUE;
    }

DONE:
    if (inLen >= outLen) {
        inLen = outLen - 1;
    }
    for (checkSize = 0; checkSize < inLen; checkSize++) {
        out[checkSize] = in[checkSize];
    }
    out[checkSize] = L'\0';
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    return ZI8_TRUE;
}
