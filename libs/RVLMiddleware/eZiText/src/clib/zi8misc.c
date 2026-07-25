#include <zi8clib/zi8misc.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zierror.h>

ziU16 Zi8Uni2Ptr(ziWChar ch, Table0Entry* ptr ZI_NEED_WORK) {
    ziU16 table0Count;
    Table0Entry* table0Data;
    Table0Entry* table0Curr;
    ziU8* table1Data;
    ziU8* table1Curr;
    ziU16 out;

    ziU8 chHi;
    ziU8 chLo;

    ziU8 byteA;
    ziU8 byteB;

    chHi = (ch >> 8) & 0xFF;
    chLo = ch;

    table0Count = Zi8GetTableCount(ZI8_LANG_ZH, 0, ZI_WORK);
    table0Data = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    table1Data = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
    if (!ptr) {
        for (out = 0; out < 0x40; out++) {
            if (ch == ZI_WORK->unk_0x20[out]) {
                out = ZI_WORK->unk_0xA0[out];
                table0Curr = table0Data + out;
                if (out < table0Count && chHi == table0Curr->chHi && chLo == table0Curr->chLo) {
                    table1Curr = table1Data + GET_TABLE0_ENTRY_TABLE1_OFFS(table0Curr);
                    if (ZI_WORK->unk_0x16 != 0) {
                        switch (*table1Curr & 7) {
                            case 2:
                                table1Curr += 2;
                                break;
                            case 3:
                            case 4:
                                table1Curr += 3;
                                break;
                            case 5:
                                table1Curr += 4;
                                break;
                            default:
                                table1Curr += 1;
                                break;
                        }
                    }
                    if ((*table1Curr & 0x80) != 0) {
                        if (ptr) {
                            *ptr = *table0Curr;
                        }
                        return out;
                    }
                }
                break;
            }
        }
    }

    table0Curr = table0Data;
    if (ZI_WORK->unk_0x1B18 && (ZI_WORK->unk_0x1B24 == ZI_WORK->unk_0x18)) {
        if (ch >= ZI_WORK->unkRangeALo && ch <= ZI_WORK->unkRangeAHi) {
            out = ch - ZI_WORK->unkRangeALo;
        } else {
            if (ch >= ZI_WORK->unkRangeBLo && ch <= ZI_WORK->unkRangeBHi) {
                out = ch - ZI_WORK->unkRangeBLo + ZI_WORK->unkRangeAHi - ZI_WORK->unkRangeALo + 1;
            } else {
                return 0xFFFF;
            }
        }
        out = ZI_WORK->unk_0x1B18[out];
        if (out != 0xFFFF) {
            table0Curr = table0Data + out;
            if (chHi == table0Curr->chHi && chLo == table0Curr->chLo) {
                if (ptr) {
                    *ptr = *table0Curr;
                }
                return out;
            }
        }
        return 0xFFFF;
    } else {
        for (out = 0; out < table0Count; out++) {
            if (chLo == table0Curr->chLo && chHi == table0Curr->chHi) {
                if (ptr) {
                    *ptr = *table0Curr;
                }
                return out;
            }
            table0Curr++;
        }
        return 0xFFFF;
    }
}

ziU16 Zi8Uni2Ord(ziWChar ch ZI_NEED_WORK) {
    return Zi8Uni2Ptr(ch, 0, ZI_WORK);
}

ziWChar Zi8Ord2Uni(ziU16 ord ZI_NEED_WORK) {
    Table0Entry* table0Data;

    if (ord >= Zi8GetTableCount('\x01', 0, ZI_WORK)) {
        Zi8LogError(0x132, ZI_WORK);
        return 0;
    }
    table0Data = (Table0Entry*)Zi8GetTableAddress('\x01', 0, ZI_WORK);
    table0Data += ord;
    Zi8LogError(0x64, ZI_WORK);
    return ((ziU16)table0Data->chHi << 8) + table0Data->chLo;
}
ziWChar Zi8Ord2Ord(ziU16 ord ZI_NEED_WORK) {
    Table0Entry* table0Data;
    Table0Entry* curr;
    ziU16 tableCount;

    tableCount = Zi8GetTableCount(ZI8_LANG_ZH, 0, ZI_WORK);
    table0Data = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    if (ord == 0 || ord >= tableCount) {
        Zi8LogError(0x132, ZI_WORK);
        return ord;
    }
    for (curr = table0Data + (ord - 1); ord != 0; ord--) {
        if (curr[0].chHi != curr[1].chHi || curr[0].chLo != curr[1].chLo)
            break;
        curr--;
    }
    Zi8LogError(0x64, ZI_WORK);
    return ord;
}
