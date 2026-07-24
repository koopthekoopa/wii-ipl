#include <zi8clib/zmtkey.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>

ziBool Zi8PadKeyToIdx(ziWChar in, ziWChar* out ZI_NEED_WORK) {
    if (in == PAD_KEY(10)) {
        *out = 0;
    } else if (PAD_KEY(1) <= in && in <= PAD_KEY(9)) {
        *out = in - PAD_KEY_BASE;
    } else if (PAD_KEY(11) <= in && in <= PAD_KEY(32)) {
        *out = in - PAD_KEY_BASE - 1;
    } else {
        return ZI8_FALSE;
    }
    return ZI8_TRUE;
}

ziU8 ziNumKeysWithChars(ziU8 language ZI_NEED_WORK) {
    ziU16 tableLen;
    ziU8* tableData;

    ziU16 i;
    ziU16 sum;

    tableLen = Zi8GetTableCount(language, 0x1E, ZI_WORK);
    tableData = (ziU8*)Zi8GetTableAddress(language, 0x1E, ZI_WORK);
    if (tableLen == 0) {
        return 0xC;
    }

    // Get sum of first 0x20 elements (the number of characters for each key)
    for (i = sum = 0; i < 0x20; i++) {
        sum += tableData[i];
    }

    // 2 bytes * 2 cases * number of characters + 0x20 key lengths
    if (tableLen >= sum * 4 + 0x20) {
        return 0x20;
    } else {
        return 0xC;
    }
}

ziBool Zi8getKeyLayout(ziU8 lang, ziWChar padKey, ziWChar* lytOut, ziU8 elCountMaybe ZI_NEED_WORK) {
    ziU16 i;

    ziU8 numKeysWithChars;
    ziU16 keyChoiceLen;
    ziU16 sum;

    ziUserKeyLayout* usrKeyLyt;
    ziWChar* usrKeyLytLower;
    ziU8* tableKeyLyt;

    lang;

    tableKeyLyt = ZI8_NULL;
    numKeysWithChars = ziNumKeysWithChars(lang, ZI_WORK);

    Zi8LogError(0x64, ZI_WORK);
    *lytOut = 0;

    if (ZI_WORK->unk_0x1200[lang] != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->unk_0x1200[lang];
        if (!Zi8PadKeyToIdx(padKey, &padKey, ZI_WORK)) {
            return ZI8_FALSE;
        }

        usrKeyLytLower = usrKeyLyt->lower[padKey];
        for (i = 0; usrKeyLytLower[i] != 0; i++) {
            lytOut[i] = usrKeyLytLower[i];
        }
        lytOut[i] = L'\0';
        return ZI8_TRUE;
    }

    // The fact the counts are assigned to sum is semantically irrelevant
    if (elCountMaybe != 1 && (sum = Zi8GetTableCount(lang, 0x1D, ZI_WORK)) != 0) {
        tableKeyLyt = (ziU8*)Zi8GetTableAddress(lang, 0x1D, ZI_WORK);
    } else if ((sum = Zi8GetTableCount(lang, 0x1E, ZI_WORK)) != 0) {
        tableKeyLyt = (ziU8*)Zi8GetTableAddress(lang, 0x1E, ZI_WORK);
    }

    if (tableKeyLyt == ZI8_NULL) {
        Zi8ReplaceLastError(0x962, ZI_WORK);
        return ZI8_FALSE;
    }

    if (!Zi8PadKeyToIdx(padKey, &padKey, ZI_WORK) || padKey >= numKeysWithChars) {
        Zi8ReplaceLastError(0x12C, ZI_WORK);
        return ZI8_FALSE;
    }

    for (i = sum = 0; i < padKey; i++) {
        sum += tableKeyLyt[i];
    }

    if ((keyChoiceLen = (ziU8)tableKeyLyt[padKey]) == 0) {
        return ZI8_FALSE;
    }

    tableKeyLyt += sum * 2 + numKeysWithChars;
    for (i = 0; i < keyChoiceLen; i++) {
        lytOut[i] = tableKeyLyt[i * 2] | ((ziU16)tableKeyLyt[i * 2 + 1] << 8);
    }
    lytOut[i] = L'\0';
    return ZI8_TRUE;
}

ziBool Zi8ChangeCharCase(ziBool upper, ziWChar* ch, ziU8 language ZI_NEED_WORK) {
    ziU16 sum;
    ziU16 tableCh;
    ziS16 offsetMult;
    ziWChar chOut;

    ziBool conversionDone;
    ziU8 numKeysWithChars;

    ziU8* tabKeyLyt;
    ziUserKeyLayout* usrKeyLyt;

    ziS32 i;
    ziWChar* usrKeyLytIn;
    ziWChar* usrKeyLytOut;
    ziS32 j;

    usrKeyLyt = ZI8_NULL;
    tabKeyLyt = ZI8_NULL;
    conversionDone = ZI8_FALSE;
    numKeysWithChars = 0x20;
    Zi8LogError(0x64, ZI_WORK);
    if (ZI_WORK->unk_0x1200[language] != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->unk_0x1200[language];
    } else if (ZI_WORK->unk_0x11FC != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->unk_0x11FC;
    } else {
        // What it's assigned to is semantically irrelevant
        tableCh = Zi8GetTableCount(language, 0x1E, ZI_WORK);
        if (tableCh != 0) {
            tabKeyLyt = (ziU8*)Zi8GetTableAddress(language, 0x1E, ZI_WORK);
            numKeysWithChars = ziNumKeysWithChars(language, ZI_WORK);
        } else {
            Zi8ReplaceLastError(0x138D, ZI_WORK);
            return ZI8_FALSE;
        }
    }

    if (usrKeyLyt != ZI8_NULL) {
        for (i = 0; !conversionDone && (i < numKeysWithChars); i = i + 1) {
            if (upper) {
                usrKeyLytIn = usrKeyLyt->lower[i];
                usrKeyLytOut = usrKeyLyt->upper[i];
            } else {
                usrKeyLytIn = usrKeyLyt->upper[i];
                usrKeyLytOut = usrKeyLyt->lower[i];
            }
            if (usrKeyLytIn != ZI8_NULL && usrKeyLytOut != ZI8_NULL) {
                for (j = 0; (ziWChar)usrKeyLytIn[j] != 0; j++) {
                    if (*ch == (ziWChar)usrKeyLytIn[j]) {
                        *ch = (ziWChar)usrKeyLytOut[j];
                        conversionDone = ZI8_TRUE;
                        break;
                    }
                }
            }
        }
    } else if (tabKeyLyt != ZI8_NULL) {
        sum = 0;
        for (i = 0; i < numKeysWithChars; i++) {
            sum += tabKeyLyt[i];
        }
        tabKeyLyt += numKeysWithChars;
        offsetMult = 1;
        if (!upper) {
            tabKeyLyt += sum * 2;
            offsetMult = -1;
        }
        for (i = 0; i < sum; i++) {
            tableCh = tabKeyLyt[i * 2] | ((ziU16)tabKeyLyt[i * 2 + 1] << 8);
            if (tableCh == *ch) {
                tabKeyLyt += sum * 2 * offsetMult;
                *ch = tabKeyLyt[i * 2] | ((ziU16)tabKeyLyt[i * 2 + 1] << 8);
                conversionDone = ZI8_TRUE;
                break;
            }
        }
    }
    if (!conversionDone) {
        chOut = 0;
        if (upper) {
            // a-z, ñ-ö, ø-þ, à-ï
            if ((L'a' <= *ch && *ch <= L'z') || (0xF1 <= *ch && *ch <= 0xF6) || (0xF8 <= *ch && *ch <= 0xFE) || (0xE0 <= *ch && *ch <= 0xEF)) {
                chOut = *ch + ('A' - 'a');
            } else if (*ch == 0xFF /* ÿ */) {
                chOut = 0x178 /* Ÿ */;
            }
        } else {
            // A-Z, Ñ-Ö, Ø-Þ, À-Ï
            if ((L'A' <= *ch && *ch <= L'Z') || (0xD1 <= *ch && *ch <= 0xD6) || (0xD8 <= *ch && *ch <= 0xDE) || (0xC0 <= *ch && *ch <= 0xCF)) {
                chOut = *ch + ('a' - 'A');
            } else if (*ch == 0x178 /* Ÿ */) {
                chOut = 0xFF /* Ÿ */;
            }
        }
        if (chOut != L'\0' && Zi8ConvertWC2UC(chOut, language, ZI_WORK) != '\0') {
            *ch = chOut;
            conversionDone = ZI8_TRUE;
        }
    }
    return conversionDone;
}
