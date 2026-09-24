#include <zi8clib/zconvert.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zierror.h>
#include <zi8clib/ziswordw.h>

// AlphaTConv {
//     ziU16   hdrOnlyCount: [0x0, 0x1] OR,
//     ziWChar startCh: [0x0, 0x1] OR,
//     ziWChar endCh: [0x2, 0x3] OR,
//     ziU8    unused4_: [0x4]  NOSHIFT,
//     ziU8    unused5_: [0x5]  NOSHIFT,
//     ziU16   charOrOffs: [0x6, 0x7] OR SHIFT,
// }
#define ZI8_ALPHA_TCONV_ENTRY_SIZE 0x8
#define ZI8_ALPHA_TCONV_BYTE(TAB, BYTE_I) ((TAB)[BYTE_I])
#define ZI8_ALPHA_TCONV_HDR_ONLY_COUNT(TAB) ((ziU16)ZI8_ALPHA_TCONV_BYTE(TAB, 0) << 8 | (ziU16)ZI8_ALPHA_TCONV_BYTE(TAB, 1))
#define ZI8_ALPHA_TCONV_START_CH(TAB) ((ziWChar)ZI8_ALPHA_TCONV_BYTE(TAB, 0) << 8 | (ziWChar)ZI8_ALPHA_TCONV_BYTE(TAB, 1))
#define ZI8_ALPHA_TCONV_END_CH(TAB) ((ziWChar)ZI8_ALPHA_TCONV_BYTE(TAB, 2) << 8 | (ziWChar)ZI8_ALPHA_TCONV_BYTE(TAB, 3))
#define ZI8_ALPHA_TCONV_UNUSED4_(TAB) (ZI8_ALPHA_TCONV_BYTE(TAB, 4))
#define ZI8_ALPHA_TCONV_UNUSED5_(TAB) (ZI8_ALPHA_TCONV_BYTE(TAB, 5))
#define ZI8_ALPHA_TCONV_CHAR_OR_OFFS(TAB) ((ziU16)ZI8_ALPHA_TCONV_BYTE(TAB, 6) << 8 | (ziU16)ZI8_ALPHA_TCONV_BYTE(TAB, 7))

#define ZI_LOAD_WCHAR(DATA) ((ziWChar)(DATA)[0] << 8 | (ziWChar)(DATA)[1])

typedef struct {
    ziWChar chrStart;  // 0x0
    ziWChar chrEnd;    // 0x2
    union {
        ziWChar* wcharList;  // 0x4
        ziChar* ucharList;   // 0x4
        ziU32 ch;            // 0x4
    };
} ziCvrtInfo;
typedef struct {
    ziCvrtInfo uc2wc;   // 0x00
    ziCvrtInfo wc2uc;   // 0x08
    ziCvrtInfo uc2key;  // 0x10
    ziCvrtInfo wc2key;  // 0x14
} ziCvrtTables;

const ziCvrtTables Zi8CvrtTables;

ziWChar Zi8ConvertUC2WC(ziChar ch, ziU8 language ZI_NEED_WORK) {
    const ziCvrtInfo* cvrtTable;
    ziU16* cvrtTableCvrtData;

    ziU16 tableStart, tableEnd;

    ziU8* table;
    ziU8* offsetTable;

    if (ch == '\0') {
        Zi8LogError(ZI8_ERR_COM_NULL_CHAR, ZI_WORK);
        return L'\0';
    }
    if (Zi8GetTableCount(language, 6, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 6, ZI_WORK);
        if (!table) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_UC2WC, ZI_WORK);
            return L'\0';
        }

        offsetTable = table;
        tableStart = ZI8_ALPHA_TCONV_START_CH(offsetTable);
        tableEnd = ZI8_ALPHA_TCONV_END_CH(offsetTable);
        if (ch < tableStart || ch > tableEnd) {
            Zi8LogError(ZI8_ERR_COM_UNK_G, ZI_WORK);
            return L'\0';
        }

        offsetTable += (ch - tableStart) * sizeof(ziWChar) + ZI8_ALPHA_TCONV_ENTRY_SIZE;
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
        return ZI_LOAD_WCHAR(offsetTable);
    } else {
        cvrtTable = &Zi8CvrtTables.uc2wc;
        if (!cvrtTable) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_UC2WC, ZI_WORK);
            return L'\0';
        }
        if (ch < cvrtTable->chrStart || ch > cvrtTable->chrEnd) {
            Zi8LogError(ZI8_ERR_COM_UNK_G, ZI_WORK);
            return L'\0';
        }

        cvrtTableCvrtData = cvrtTable->wcharList;
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);

        return cvrtTableCvrtData[ch - cvrtTable->chrStart];
    }
}

ziChar Zi8ConvertWC2UC(ziWChar ch, ziU8 language ZI_NEED_WORK) {
    ziCvrtInfo* cvrtTableCvrtData;

    ziU16 tableCount;
    ziU16 offsetTableBase;
    ziU16 tableStart, tableEnd;

    ziU8* convData;
    ziU8* table;
    ziU8* offsetTable;

    ziU16 i;

    if (ch == L'\0') {
        Zi8LogError(ZI8_ERR_COM_NULL_CHAR, ZI_WORK);
        return '\0';
    }
    if (Zi8GetTableCount(language, 7, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 7, ZI_WORK);
        if (!table) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_WC2UC, ZI_WORK);
            return '\0';
        }

        offsetTable = table;
        tableCount = ZI8_ALPHA_TCONV_HDR_ONLY_COUNT(offsetTable);
        offsetTable += ZI8_ALPHA_TCONV_ENTRY_SIZE;
        for (i = 0; i < tableCount; i++) {
            tableStart = ZI8_ALPHA_TCONV_START_CH(offsetTable);
            tableEnd = ZI8_ALPHA_TCONV_END_CH(offsetTable);
            if (ch < tableStart || ch > tableEnd) {
                offsetTable += ZI8_ALPHA_TCONV_ENTRY_SIZE;
                continue;
            }
            offsetTableBase = ZI8_ALPHA_TCONV_CHAR_OR_OFFS(offsetTable);
            if (tableStart == tableEnd) {
                Zi8LogError(ZI8_ERR_OK, ZI_WORK);
                return offsetTableBase;
            }

            offsetTable = table + offsetTableBase + ch - tableStart + ZI8_ALPHA_TCONV_ENTRY_SIZE;
            Zi8LogError(ZI8_ERR_OK, ZI_WORK);
            return offsetTable[0];
        }
        Zi8LogError(ZI8_ERR_CONVERT_NOT_FOUND, ZI_WORK);
        return '\0';
    } else {
        cvrtTableCvrtData = (ziCvrtInfo*)Zi8CvrtTables.wc2uc.ch;
        if (!cvrtTableCvrtData) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_WC2UC, ZI_WORK);
            return '\0';
        }
        tableCount = Zi8CvrtTables.wc2uc.chrStart;
        for (i = 0; i < tableCount; i++) {
            if (ch < cvrtTableCvrtData[i].chrStart || ch > cvrtTableCvrtData[i].chrEnd) {
                continue;
            }

            Zi8LogError(ZI8_ERR_OK, ZI_WORK);
            if (cvrtTableCvrtData[i].chrStart == cvrtTableCvrtData[i].chrEnd) {
                return (ziU8)cvrtTableCvrtData[i].ch;
            }

            convData = cvrtTableCvrtData[i].ucharList;
            return convData[ch - cvrtTableCvrtData[i].chrStart];
        }
        Zi8LogError(ZI8_ERR_CONVERT_NOT_FOUND, ZI_WORK);
        return '\0';
    }
}

ziU16 Zi8ConvertUC2Key(ziChar ch, ziU8 language ZI_NEED_WORK) {
    ziCvrtInfo* cvrtTableCvrtData;
    ziU16 tableCount;
    ziU16 offsetTableBase;
    ziU16 tableStart, tableEnd;

    ziU8* table;
    ziU8* offsetTable;
    ziWChar* convData;

    ziU16 i;
    ziU16 loopResult;

    // Think of this line like the TF2 coconut
    ZI_WORK;

    loopResult = 0;

    if (ch == '\0') {
        Zi8LogError(ZI8_ERR_COM_NULL_CHAR, ZI_WORK);
        return 0;
    }
    if (ZI_WORK->usrKeyLyts[language] != 0) {
        return Zi8ConvertUC2UserKey(ch, language, ZI_WORK);
    }
    if (Zi8GetTableCount(language, 8, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 8, ZI_WORK);
        if (!table) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_UC2KEY, ZI_WORK);
            return 0;
        }

        offsetTable = table;
        tableCount = ZI8_ALPHA_TCONV_HDR_ONLY_COUNT(offsetTable);
        offsetTable += ZI8_ALPHA_TCONV_ENTRY_SIZE;
        for (i = 0; i < tableCount; i++) {
            tableStart = ZI8_ALPHA_TCONV_START_CH(offsetTable);
            tableEnd = ZI8_ALPHA_TCONV_END_CH(offsetTable);
            if (ch < tableStart || ch > tableEnd) {
                offsetTable += ZI8_ALPHA_TCONV_ENTRY_SIZE;
                continue;
            }
            loopResult = ZI8_ALPHA_TCONV_CHAR_OR_OFFS(offsetTable);
            if (tableStart != tableEnd) {
                offsetTable = table + ((ch - tableStart) * 2 + loopResult);
                offsetTable += ZI8_ALPHA_TCONV_ENTRY_SIZE;
                loopResult = ZI_LOAD_WCHAR(offsetTable);
                break;
            } else {
                break;
            }
        }
    } else {
        cvrtTableCvrtData = (ziCvrtInfo*)Zi8CvrtTables.uc2key.ch;
        if (!cvrtTableCvrtData) {
            Zi8LogError(ZI8_ERR_CONVERT_MISSING_TABLE_UC2KEY, ZI_WORK);
            return 0;
        }
        tableCount = Zi8CvrtTables.uc2key.chrStart;
        for (i = 0; i < tableCount; i++) {
            if (ch < cvrtTableCvrtData[i].chrStart || ch > cvrtTableCvrtData[i].chrEnd) {
                continue;
            }

            if (cvrtTableCvrtData[i].chrStart == cvrtTableCvrtData[i].chrEnd) {
                // @bug Unused codepath, but should be a cast to ziWChar, not ziChar
                loopResult = (ziChar)cvrtTableCvrtData[i].ch;
                break;
            }

            convData = cvrtTableCvrtData[i].wcharList;
            loopResult = convData[ch - cvrtTableCvrtData[i].chrStart];
            break;
        }
    }
    if (loopResult == 0) {
        Zi8LogError(ZI8_ERR_CONVERT_NOT_FOUND, ZI_WORK);
        return PAD_KEY(1);
    } else {
        Zi8LogError(ZI8_ERR_OK, ZI_WORK);
    }
    return loopResult;
}

ziU16 Zi8ConvertWC2Key(ziWChar ch, ziU8 language ZI_NEED_WORK) {
    return Zi8ConvertUC2Key(Zi8ConvertWC2UC(ch, language, ZI_WORK), language, ZI_WORK);
}
