#include <zi8clib/zi8initd.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8alpha.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8pud2.h>
#include <zi8clib/zierror.h>

ziBool Zi8InitializeDynamic(ziLanguageEntry* data ZI_NEED_WORK) {
    Zi8Memset(ZI_WORK, 0, sizeof(struct __zi8_work_data_s));
    ZI_WORK->unk_0x08 = 1;
    ZI_WORK->searchFlags = ZI8_SEARCH_FLAG_ROM;
    ZI_WORK->maxWordLen = 0xFF;
    ZI_WORK->unk_0x10 = 100;
    ZI_WORK->unk_0x0C = 0xFFFF;
    ZI_WORK->spaceChar = L' ';
    ZI_WORK->wordCase = 0;
    ZI_WORK->unk_0x1B30 = 0;
    ZI_WORK->unk_0x1B3A = 0;
    ZI_WORK->unk_0x1B36 = 0;
    ZI_WORK->unk_0x1B32 = 0;
    ZI_WORK->unk_0x1B34 = 0;
    ZI_WORK->unk_0x1B3B = 0;
    ZI_WORK->unk_0x1B3C = 0;
    ZI_WORK->unk_0x1B40 = 0;
    ZI_WORK->unk_0x1B38 = 0;
    ZI_WORK->langEntries = data;

    if (ZI_WORK->langEntries == ZI8_NULL) {
        Zi8LogError(0x578, ZI_WORK);
        return ZI8_FALSE;
    }
    if (ZI_WORK->langEntries->language == ZI8_LANG_NONE) {
        Zi8LogError(0x582, ZI_WORK);
        return ZI8_FALSE;
    }

    ZI_WORK->unk_0x1874 = L'-';
    ZI_WORK->unk_0x538 = 0;
    ZI_WORK->unk_0x1F = 0;
    ZI_WORK->unk_0x141A = 0x100;
    Zi8SetLatinSearchOrder(ZI8_NULL, 0, ZI_WORK);
    ZADP_Zi8SetPDremoveOpt(1, ZI_WORK);
    ZI_WORK->unk_0x17 = 5;
    ZI_WORK->handleCangjie = Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) & 2;

    ZI_WORK->pyFuzzyPairs.ziDefault = 1;
    ZI_WORK->zyFuzzyPairs.ziDefault = 1;
    Zi8ZHsetZYfuzzyPairs(ZI_WORK->zyFuzzyPairs, ZI_WORK);
    Zi8ZHsetPYfuzzyPairs(ZI_WORK->pyFuzzyPairs, ZI_WORK);

    Zi8SetParentalControls(2, ZI_WORK);

    Zi8LogError(0x64, ZI_WORK);
    return ZI8_TRUE;
}

ziBool Zi8IsZicorpSignature(ziWChar* sig, ziU16 value ZI_NEED_WORK) {
    if (value > 6 && sig[0] == L'z' && sig[1] == L'i' && sig[2] == L'c' && sig[3] == 'o' && sig[4] == 'r' && sig[5] == 'p') {
        return ZI8_TRUE;
    }
    if (value > 6 && sig[0] == L'9' && sig[1] == L'4' && sig[2] == L'2' && sig[3] == '6' && sig[4] == '7' && sig[5] == '7') {
        return ZI8_TRUE;
    }
    return ZI8_FALSE;
}
