#include <zi8clib/zi8alts.h>

#include <zi8clib/zierror.h>

ziU16 Zi8MatchAltSound(Table5Entry* tab5Entries, ziU16 tab5Count, ziU8* tab34Data, ziU16 ord, ziU16 unmasked, ziU16 masked, ziU8 param_7) {
    ziS32 boundLo, boundHi, center;
    ziU8 ordHi, ordLo;

    ziU16 tabl34Idx;
    ziU16 mask;

    ordHi = ord >> 8;
    ordLo = ord;
    param_7 >>= 3;
    if (tab5Count == 0) {
        return 0;
    }

    boundLo = 0;
    boundHi = tab5Count - 1;

    if (ordHi == tab5Entries[boundHi].ordHi && ordLo == tab5Entries[boundHi].ordLo) {
        boundLo = boundHi;
        goto SEARCH_OUT;
    } else if (ordHi == tab5Entries[boundLo].ordHi && ordLo == tab5Entries[boundLo].ordLo) {
        goto SEARCH_OUT;
    } else {
        goto BINARY_SEARCH;
    }

SEARCH_OUT:
    boundHi = boundLo;
    do {
        if ((tab5Entries[boundHi].tabl34IdxHi & 0b1110) == 0 || (tab5Entries[boundHi].tabl34IdxHi & param_7) != 0) {
            tabl34Idx = GET_TABLE5_ENTRY_TABLE34_IDX(&tab5Entries[boundHi]);
            mask = GET_TABLE5_ENTRY_CODE_OFFS(&tab5Entries[boundHi]) | (tab34Data[tabl34Idx] | ((ziU16)tab34Data[tabl34Idx + 1] << 8));
            if (masked == (mask & unmasked)) {
                return mask;
            }
        }
        boundHi++;
    } while (boundHi < tab5Count && ordHi == tab5Entries[boundHi].ordHi && ordLo == tab5Entries[boundHi].ordLo);

    boundHi = boundLo;
    while (--boundHi >= 0 && ordHi == tab5Entries[boundHi].ordHi && ordLo == tab5Entries[boundHi].ordLo) {
        if ((tab5Entries[boundHi].tabl34IdxHi & 0b1110) == 0 || (tab5Entries[boundHi].tabl34IdxHi & param_7) != 0) {
            tabl34Idx = GET_TABLE5_ENTRY_TABLE34_IDX(&tab5Entries[boundHi]);
            mask = GET_TABLE5_ENTRY_CODE_OFFS(&tab5Entries[boundHi]) | (tab34Data[tabl34Idx] | ((ziU16)tab34Data[tabl34Idx + 1] << 8));
            if (masked == (mask & unmasked)) {
                return mask;
            }
        }
    }
    return 0;

BINARY_SEARCH:
BINARY_SEARCH_HI:
    if (ordHi == tab5Entries[boundLo].ordHi && ordLo == tab5Entries[boundLo].ordLo)
        goto SEARCH_OUT;

    if (GET_TABLE5_ENTRY_ORD(&tab5Entries[boundLo]) > ord) {
        return 0;
    }

    center = (boundLo + boundHi) / 2;
    if (center == boundLo) {
        return 0;
    }

    if (GET_TABLE5_ENTRY_ORD(&tab5Entries[center]) >= ord) {
        boundHi = center;
        goto BINARY_SEARCH_LO;
    } else {
        boundLo = center;
        goto BINARY_SEARCH_HI;
    }

BINARY_SEARCH_LO:
    if (ordHi == tab5Entries[boundHi].ordHi && ordLo == tab5Entries[boundHi].ordLo) {
        boundLo = boundHi;
        goto SEARCH_OUT;
    }
    if (GET_TABLE5_ENTRY_ORD(&tab5Entries[boundHi]) < ord) {
        return 0;
    }

    center = (boundLo + boundHi) / 2;
    if (center == boundLo) {
        return 0;
    }
    if (GET_TABLE5_ENTRY_ORD(&tab5Entries[center]) >= ord) {
        boundHi = center;
        goto BINARY_SEARCH_LO;
    } else {
        boundLo = center;
        goto BINARY_SEARCH_HI;
    }
}
