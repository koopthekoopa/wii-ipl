#include <zi8clib/zconvert.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zierror.h>

#define ZI_LOAD_U16_FROM_TABLE(TABLE, OFFSET) (((ziU16)TABLE[OFFSET * 2] << 8) | (ziU16)(TABLE[OFFSET * 2 + 1]))

typedef struct {
    ziWChar chrStart;  // 0x0
    ziWChar chrEnd;    // 0x2
    ziU32 convData;    // 0x4
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
        Zi8LogError(0x133, ZI_WORK);
        return 0;
    }
    if (Zi8GetTableCount(language, 6, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 6, ZI_WORK);
        if (!table) {
            Zi8LogError(0x6a4, ZI_WORK);
            return 0;
        }

        offsetTable = table;
        tableStart = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
        tableEnd = ZI_LOAD_U16_FROM_TABLE(offsetTable, 1);
        if ((ch < tableStart) || (ch > tableEnd)) {
            Zi8LogError(0x132, ZI_WORK);
            return 0;
        }

        offsetTable += ((ch - tableStart) * 2 + 8);
        Zi8LogError(0x64, ZI_WORK);
        return ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
    }

    cvrtTable = &Zi8CvrtTables.uc2wc;
    if (!cvrtTable) {
        Zi8LogError(0x6a4, ZI_WORK);
        return 0;
    }
    if ((ch < cvrtTable->chrStart) || (ch > cvrtTable->chrEnd)) {
        Zi8LogError(0x132, ZI_WORK);
        return 0;
    }

    cvrtTableCvrtData = (ziWChar*)cvrtTable->convData;
    Zi8LogError(0x64, ZI_WORK);

    return cvrtTableCvrtData[ch - cvrtTable->chrStart];
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

    if (ch == '\0') {
        Zi8LogError(0x133, ZI_WORK);
        return 0;
    }
    if (Zi8GetTableCount(language, 7, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 7, ZI_WORK);
        if (!table) {
            Zi8LogError(0x6AE, ZI_WORK);
            return 0;
        }

        offsetTable = table;
        tableCount = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
        offsetTable += 8;
        for (i = 0; i < tableCount; i++) {
            tableStart = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
            tableEnd = ZI_LOAD_U16_FROM_TABLE(offsetTable, 1);
            if ((ch < tableStart) || (ch > tableEnd)) {
                offsetTable += 8;
                continue;
            }
            offsetTableBase = ZI_LOAD_U16_FROM_TABLE(offsetTable, 3);
            if (tableStart == tableEnd) {
                Zi8LogError(0x64, ZI_WORK);
                return offsetTableBase;
            }

            offsetTable = (table + offsetTableBase + ch - tableStart + 8);
            Zi8LogError(0x64, ZI_WORK);
            return *offsetTable;
        }
        Zi8LogError(0x6C2, ZI_WORK);
        return 0;
    }

    cvrtTableCvrtData = (ziCvrtInfo*)Zi8CvrtTables.wc2uc.convData;
    if (!cvrtTableCvrtData) {
        Zi8LogError(0x6AE, ZI_WORK);
        return 0;
    }
    tableCount = Zi8CvrtTables.wc2uc.chrStart;
    for (i = 0; i < tableCount; i++) {
        if (ch < cvrtTableCvrtData[i].chrStart || ch > cvrtTableCvrtData[i].chrEnd) {
            continue;
        }

        Zi8LogError(0x64, ZI_WORK);
        if (cvrtTableCvrtData[i].chrStart == cvrtTableCvrtData[i].chrEnd) {
            return (ziU8)(ziU32)cvrtTableCvrtData[i].convData;
        }

        convData = (ziU8*)cvrtTableCvrtData[i].convData;
        return convData[ch - cvrtTableCvrtData[i].chrStart];
    }
    Zi8LogError(0x6C2, ZI_WORK);
    return 0;
}

ziU16 Zi8ConvertUC2UserKey(ziChar ch, ziU8 language ZI_NEED_WORK);
ziU16 Zi8ConvertUC2Key(ziChar ch, ziU8 language ZI_NEED_WORK) {
    ziCvrtInfo* cvrtTableCvrtData;
    ziU16 tableCount;
    ziU16 offsetTableBase;
    ziU16 tableStart, tableEnd;

    ziU8* table;
    ziU8* offsetTable;
    ziU16* convData;

    ziU16 i;
    ziU16 loopResult;

    // Think of this line like the TF2 coconut
    ZI_WORK;

    loopResult = 0;

    if (ch == '\0') {
        Zi8LogError(0x133, ZI_WORK);
        return 0;
    }
    if (ZI_WORK->unk_0x1200[language] != 0) {
        return Zi8ConvertUC2UserKey(ch, language, ZI_WORK);
    }
    if (Zi8GetTableCount(language, 8, ZI_WORK) != 0) {
        table = (ziU8*)Zi8GetTableAddress(language, 8, ZI_WORK);
        if (!table) {
            Zi8LogError(0x6B8, ZI_WORK);
            return 0;
        }

        offsetTable = table;
        tableCount = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
        offsetTable += 8;
        for (i = 0; i < tableCount; i++) {
            tableStart = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
            tableEnd = ZI_LOAD_U16_FROM_TABLE(offsetTable, 1);
            if ((ch < tableStart) || (ch > tableEnd)) {
                offsetTable += 8;
                continue;
            }
            loopResult = ZI_LOAD_U16_FROM_TABLE(offsetTable, 3);
            if (tableStart != tableEnd) {
                offsetTable = table + ((ch - tableStart) * 2 + loopResult);
                offsetTable += 8;
                loopResult = ZI_LOAD_U16_FROM_TABLE(offsetTable, 0);
                break;
            } else {
                break;
            }
        }
    } else {
        cvrtTableCvrtData = (ziCvrtInfo*)Zi8CvrtTables.uc2key.convData;
        if (!cvrtTableCvrtData) {
            Zi8LogError(0x6B8, ZI_WORK);
            return 0;
        }
        tableCount = Zi8CvrtTables.uc2key.chrStart;
        for (i = 0; i < tableCount; i++) {
            if (ch < cvrtTableCvrtData[i].chrStart || ch > cvrtTableCvrtData[i].chrEnd) {
                continue;
            }

            if (cvrtTableCvrtData[i].chrStart == cvrtTableCvrtData[i].chrEnd) {
                loopResult = (ziU8)(ziU32)cvrtTableCvrtData[i].convData;
                break;
            }

            convData = (ziU16*)cvrtTableCvrtData[i].convData;
            loopResult = convData[ch - cvrtTableCvrtData[i].chrStart];
            break;
        }
    }
    if (loopResult == 0) {
        Zi8LogError(0x6C2, ZI_WORK);
        return 0xeff1;
    } else {
        Zi8LogError(0x64, ZI_WORK);
    }
    return loopResult;
}

ziU16 Zi8ConvertWC2Key(ziWChar ch, ziU8 language ZI_NEED_WORK) {
    return Zi8ConvertUC2Key(Zi8ConvertWC2UC(ch, language, ZI_WORK), language, ZI_WORK);
}
