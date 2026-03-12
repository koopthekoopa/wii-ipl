#include <zi8clib/zitypes.h>
#include <zi8clib/zierror.h>

ziU8 Zi8LangSupported(ziU8 lang ZI_NEED_WORK) {
    ziU8 i;

    Zi8LogError(0x64, ZI_WORK);
    if (ZI_WORK->langEntries == ZI8_NULL) {
        Zi8ReplaceLastError(0x578, ZI_WORK);
        return 0;
    }

    for (i = 0; ZI_WORK->langEntries[i].language != 0; i++) {
        if (lang == ZI_WORK->langEntries[i].language) {
            break;
        }
    }

    if (ZI_WORK->langEntries[i].language == 0) {
        for (i = 0; ZI_WORK->langEntries[i].language != 0; i++) {
            if ((ZI_WORK->langEntries[i].tableData != ZI8_NULL) && (lang == ZI_WORK->langEntries[i].tableData[0])) {
                break;
            }
        }
    }

    if (ZI_WORK->langEntries[i].language != 0) {
        return i + 1;
    }
    else {
        Zi8ReplaceLastError(0x582, ZI_WORK);
        return 0;
    }
}

enum {
    ziNone = 0,
    ziTableAddress,
    ziTableSize,
    ziTableUnk3,
    ziTableFormatVersion,
};

#define ZI8_TABLE_SIZE  6

ziU32 Zi8GetTableData(ziU8 lang, ziU8 tableIdx, ziU8 memberId ZI_NEED_WORK) {
    ziU8 langIdx;
    ziU32 offset = 0;
    ziU8* tableData;

    Zi8LogError(0x64, ZI_WORK);

    langIdx = Zi8LangSupported(lang, ZI_WORK);

    if (langIdx-- != 0) {
        tableData = ZI_WORK->langEntries[langIdx].tableData;
        if ((lang == ZI8_LANG_ZH) && (tableData[3] >= 4) && ((ZI_WORK->unk_0x18 == 1) || (ZI_WORK->unk_0x18 == 0x80) || (ZI_WORK->unk_0x18 == 0x40))) {
            offset = ((tableData[0x8B] << 0x10) + (tableData[0x8C] << 8) + tableData[0x8D]);
            if (offset != 0) {
                tableData += offset;
            }
        }
        switch (memberId) {
            case ziTableAddress: {
                return ((ziU32)tableData + (tableData[(tableIdx * ZI8_TABLE_SIZE) + 7] << 0x10) + (tableData[(tableIdx * ZI8_TABLE_SIZE) + 8] << 8) + (tableData[(tableIdx * ZI8_TABLE_SIZE) + 9]));
            }
            case ziTableSize: {
                tableData = tableData + ((tableIdx * ZI8_TABLE_SIZE) + 4);
                return (ziU32)(tableData[2] | ((tableData[0] << 0x10) | (tableData[1] << 8)));
            }
            case ziTableUnk3: {
                return tableData[1]; // always 0x80?
            }
            case ziTableFormatVersion: {
                return tableData[3];
            }
            default: {
                Zi8ReplaceLastError(0x134, ZI_WORK);
                return 0;
            }
        }
    }
    else {
        Zi8ReplaceLastError(0x258, ZI_WORK);
        return 0;
    }
}

ziU32 Zi8GetTableAddress(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK) {
    return Zi8GetTableData(lang, tableIdx, 1, ZI_WORK);
}

ziU32 Zi8GetTableSize(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK) {
    return Zi8GetTableData(lang, tableIdx, 2, ZI_WORK);
}

ziU16 Zi8GetTableCount(ziU8 lang, ziU8 tableIdx ZI_NEED_WORK) {
    return Zi8GetTableData(lang, tableIdx, 2, ZI_WORK);
}

ziU8 Zi8GetFormatVersion(ziU8 lang ZI_NEED_WORK) {
    return Zi8GetTableData(lang, 0, 4, ZI_WORK);
}

ziU32 Zi8WCharCount(ziWChar* str ZI_NEED_WORK) {
    ziU32 count = 0;

    str; // *sob*

    Zi8LogError(0x64, ZI_WORK);

    if (str == ZI8_NULL) {
        Zi8ReplaceLastError(0x12D, ZI_WORK);
        return 0;
    }

    if (*str == 0) {
        return 0;
    }

    while (*str++ != 0) { count++; }

    return count;
}
