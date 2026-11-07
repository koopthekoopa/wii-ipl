#include <zi8clib/zmtkey.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zconvert.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>

#define MULTICH_KEY_LYT_TABLE 29
#define DEFAULT_KEY_LYT_TABLE 30

ziBool Zi8PadKeyToIdx(ziWChar padKey, ziWChar* idxOut ZI_NEED_WORK) {
    if (padKey == PAD_KEY(10)) {
        *idxOut = 0;
    } else if (PAD_KEY(1) <= padKey && padKey <= PAD_KEY(9)) {
        *idxOut = padKey - PAD_KEY_BASE;
    } else if (PAD_KEY(11) <= padKey && padKey <= PAD_KEY(32)) {
        *idxOut = padKey - PAD_KEY_BASE - 1;
    } else {
        return ZI8_FALSE;
    }
    return ZI8_TRUE;
}

static ziU8 ziNumKeysWithChars(ziU8 language ZI_NEED_WORK) {
    ziU16 tableLen;
    ziU8* tableData;

    ziU16 i;
    ziU16 sum;

    tableLen = Zi8GetTableCount(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK);
    tableData = (ziU8*)Zi8GetTableAddress(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK);
    if (tableLen == 0) {
        return 12;
    }

    // Get sum of first 32 elements (the number of characters for each key)
    for (i = sum = 0; i < 32; i++) {
        sum += tableData[i];
    }

    // 2 bytes * 2 cases * number of characters + 32 key lengths
    if (tableLen >= 2 * 2 * sum + 32) {
        return 32;
    } else {
        return 12;
    }
}

/**
 * @brief Gets the character layout for a pad key
 *
 * This fails (and returns `false`) if:
 * - The language is unsupported (Error 2402)
 *   - No dictionary for the requested language
 *   - Table 30 isn't present (e.g. chinese)
 * - The pad key isn't supported (Error 300)
 *   - The pad key is outside the range of pad keys (`0xEFF1`-`0xF010`)
 *   - The pad key is unsupported by the lang (ENUK supports `0xEFF1`-`0xEFFC`)
 *
 * It may also return `false` if there are no characters mapped to the requested
 * pad key.
 * For example: ENUK has nothing mapped to keys `0xEFFB` (10) or `0xEFFC` (11)
 *
 * @param language The language of the dictionary you want to grab the key layouts
 * from
 * @param padKey The pad key character value (0xEFF1 - 0xF010) to get the layout for
 * @param lytOut The output list of characters that pad key could represent
 * @param elementCount The number of elements that this is representing (if this
 * is 1, a different ordering of the key layout is used if available)
 * @return Whether there were characters output
 */
ziBool Zi8getKeyLayout(ziU8 language, ziWChar padKey, ziWChar* lytOut, ziU8 elementCount ZI_NEED_WORK) {
    ziU16 i;

    ziU8 numKeysWithChars;
    ziU16 keyChoiceLen;
    ziU16 sum;

    ziUserKeyLayout* usrKeyLyt;
    ziWChar* usrKeyLytLower;
    ziU8* tableKeyLyt;

    // Remnants of an assertion that the language supports key layouts
    // ("alphabetic" languages only I think)
    language;

    tableKeyLyt = ZI8_NULL;
    numKeysWithChars = ziNumKeysWithChars(language, ZI_WORK);

    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    *lytOut = L'\0';

    if (ZI_WORK->usrKeyLyts[language] != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->usrKeyLyts[language];
        if (!Zi8PadKeyToIdx(padKey, &padKey, ZI_WORK)) {
            return ZI8_FALSE;
        }

        usrKeyLytLower = usrKeyLyt->lower[padKey];
        for (i = 0; usrKeyLytLower[i] != ZI8_NULL; i++) {
            lytOut[i] = usrKeyLytLower[i];
        }
        lytOut[i] = L'\0';
        return ZI8_TRUE;
    }

    // NOTE: Assigning to sum (semantically wrong) makes me think this might be an inline
    if (elementCount != 1 && (sum = Zi8GetTableCount(language, MULTICH_KEY_LYT_TABLE, ZI_WORK)) != 0) {
        tableKeyLyt = (ziU8*)Zi8GetTableAddress(language, MULTICH_KEY_LYT_TABLE, ZI_WORK);
    } else if ((sum = Zi8GetTableCount(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK)) != 0) {
        tableKeyLyt = (ziU8*)Zi8GetTableAddress(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK);
    }

    if (tableKeyLyt == ZI8_NULL) {
        Zi8ReplaceLastError(2402, ZI_WORK);
        return ZI8_FALSE;
    }

    if (!Zi8PadKeyToIdx(padKey, &padKey, ZI_WORK) || padKey >= numKeysWithChars) {
        Zi8ReplaceLastError(ZI8_ERR_COM_UNK_A, ZI_WORK);
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

/**
 * @brief Convert character to uppercase or lowercase in place
 *
 * #### Search order
 * The order of search is:
 * 1. Attempt to convert using the first matching key layout (in this order):
 *    - 1. `language`-specific user key layout
 *    - 2. default user key layout
 *    - 3. dictionary-defined key layout
 *    - (If there is no matching key layout, fail with error `5005`)
 * 2. If there was no matching conversion from the key layouts, convert letters
 *    from the "Basic Latin" and "Latin-1 Supplement" blocks:
 *    - `A`-`Z`, `Ñ`-`Ö`, `Ø`-`Þ`, `À`-`Ï` to/from
 *      `a`-`z`, `ñ`-`ö`, `ø`-`þ`, `à`-`ï` (values +/- `0x20`)
 *    - `Ÿ` (`0x178`) to/from `ÿ` (`0xFF`)
 *
 * #### Fails
 * This fails (and returns `false`) if:
 * - The language is unsupported (Error `5005`)
 *   - No user key layout **AND** no dictionary for the requested language
 *   - No user key layout **AND** table `30` isn't present (e.g. chinese)
 *
 * It may also fail to convert (returning `false`) if **both**:
 * - the chosen key layout (user or dictionary) doesn't contain a matching
 *   conversion **AND**
 * - the character isn't a letter in the "Basic Latin" or "Latin-1 Supplement"
 *   Unicode blocks (or `Ÿ`)
 *
 * This function WILL fail to convert lowercase to lowercase and uppercase to
 * uppercase.
 *
 * @param upper Whether to convert to uppercase (as opposed to lowercase)
 * @param ch In/out pointer to the character to convert
 * @param language The language used to choose key layouts and user key layouts
 * @returns Whether the character was converted
 */
ziBool Zi8ChangeCharCase(ziBool upper, ziWChar* ch, ziU8 language ZI_NEED_WORK) {
    ziU16 sum;
    ziU16 tableCh;
    ziS16 offsetMult;
    ziWChar chOut;

    ziBool conversionDone;
    ziU8 numKeysWithChars;

    ziU8* tabKeyLyt;
    ziUserKeyLayout* usrKeyLyt;

    ziWChar* usrKeyLytFrom;
    ziWChar* usrKeyLytTo;
    ziS32 i, j;

    usrKeyLyt = ZI8_NULL;
    tabKeyLyt = ZI8_NULL;
    conversionDone = ZI8_FALSE;
    numKeysWithChars = 32;
    Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    if (ZI_WORK->usrKeyLyts[language] != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->usrKeyLyts[language];
    } else if (ZI_WORK->defaultUsrKeyLyt != ZI8_NULL) {
        usrKeyLyt = ZI_WORK->defaultUsrKeyLyt;
    } else {
        // NOTE: Assigning to tableCh (semantically wrong) makes me think this might be an inline
        tableCh = Zi8GetTableCount(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK);
        if (tableCh != 0) {
            tabKeyLyt = (ziU8*)Zi8GetTableAddress(language, DEFAULT_KEY_LYT_TABLE, ZI_WORK);
            numKeysWithChars = ziNumKeysWithChars(language, ZI_WORK);
        } else {
            Zi8ReplaceLastError(5005, ZI_WORK);
            return ZI8_FALSE;
        }
    }

    if (usrKeyLyt != ZI8_NULL) {
        for (i = 0; !conversionDone && i < numKeysWithChars; i++) {
            if (upper) {
                usrKeyLytFrom = usrKeyLyt->lower[i];
                usrKeyLytTo = usrKeyLyt->upper[i];
            } else {
                usrKeyLytFrom = usrKeyLyt->upper[i];
                usrKeyLytTo = usrKeyLyt->lower[i];
            }
            if (usrKeyLytFrom != ZI8_NULL && usrKeyLytTo != ZI8_NULL) {
                for (j = 0; (ziWChar)usrKeyLytFrom[j] != L'\0'; j++) {
                    if (*ch == (ziWChar)usrKeyLytFrom[j]) {
                        *ch = (ziWChar)usrKeyLytTo[j];
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

    // Fall back onto basic latin character conversions
    if (!conversionDone) {
        chOut = L'\0';
        if (upper) {
            // a-z, ñ-ö, ø-þ, à-ï
            if ((L'a' <= *ch && *ch <= L'z') || (0xF1 <= *ch && *ch <= 0xF6) || (0xF8 <= *ch && *ch <= 0xFE) || (0xE0 <= *ch && *ch <= 0xEF)) {
                chOut = *ch + (L'A' - L'a');
            } else if (*ch == 0xFF /* ÿ */) {
                chOut = 0x178 /* Ÿ */;
            }
        } else {
            // A-Z, Ñ-Ö, Ø-Þ, À-Ï
            if ((L'A' <= *ch && *ch <= L'Z') || (0xD1 <= *ch && *ch <= 0xD6) || (0xD8 <= *ch && *ch <= 0xDE) || (0xC0 <= *ch && *ch <= 0xCF)) {
                chOut = *ch + (L'a' - L'A');
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
