#include <private/vf/develop/d_hash.h>

#include <private/vf/PrFILE2/common/pf_clib.h>
#include <private/vf/PrFILE2/fatfs/pf_volume.h>

typedef struct {
    u16 Name[8];  // 0x00
    u8 arg;       // 0x10
} dHash_Cell;

static u32 _StrLen(const char* i_Name) {
    u32 len;

    for (len = 0; *i_Name != 0; len++) {
        i_Name++;
    }
    return len;
}

static u32 _StrLenW(const u16* i_Name) {
    u32 len;

    for (len = 0; *i_Name != 0; len++) {
        i_Name++;
    }
    return len;
}

static u16 l_tmpWName[8];

static BOOL _MakeWStr(const char* i_Name) {
    if (_StrLen(i_Name) < 8) {
        u32 len = _StrLen(i_Name);
        int Id = 0;
        int next2nd = 0;

        for (; Id < len; Id++) {
            if (next2nd != 0) {
                next2nd = 0;
            } else if (VFipf_vol_set.codeset.is_oem_mb_char(i_Name[Id], 1) != 0) {
                next2nd = 1;
                l_tmpWName[Id] = i_Name[Id + 1];
                l_tmpWName[Id] |= i_Name[Id] << 8;
            } else {
                l_tmpWName[Id] = i_Name[Id];
            }
        }
        l_tmpWName[Id] = l_tmpWName[7] = 0;
        return TRUE;
    }
    return FALSE;
}

static u16* _GetWStr() {
    return l_tmpWName;
}

#define HASH_CELL_COUNT 31

static dHash_Cell hashTable[HASH_CELL_COUNT];

static void _DeleteDataByIdx(int i_Idx) {
    if (i_Idx >= 0 && i_Idx < HASH_CELL_COUNT) {
        dHash_Cell* pHashCell;
        pHashCell = &hashTable[i_Idx];
        pHashCell->Name[0] = 0;
        pHashCell->arg = 0;
    }
}

void dHash_InitHashTable() {
    dHash_Cell* pHashCell;
    int i;

    pHashCell = hashTable;

    for (i = 0; i < HASH_CELL_COUNT; i++) {
        pHashCell->Name[0] = 0;
        pHashCell->arg = 0;
        pHashCell++;
    }
}

static s32 dHash_CalcFirstHashW(const u16* i_Name) {
    int len;

    len = _StrLenW(i_Name);
    if (len < 8) {
        u32 n;
        u32 hash;
        u32 weight;
        s32 firstHash;
        for (n = weight = hash = 0; n < len; n++, weight++) {
            if (weight > 7) {
                weight = 0;
            }
            hash += i_Name[n] << (weight * 4);
        }
        firstHash = hash % HASH_CELL_COUNT;
        return firstHash;
    }
    return -1;
}

static s32 dHash_CalcRehash(u32 i_FirstHash) {
    u32 hashval;
    u32 k;

    for (k = 1; k < 15; k++) {
        hashval = (i_FirstHash + (k * k)) % HASH_CELL_COUNT;
        if (hashTable[hashval].Name[0] == 0) {
            return hashval;
        }
    }
    return -1;
}

static s32 dHash_GetNewHashW(const u16* i_Name) {
    s32 firstHash;

    firstHash = dHash_CalcFirstHashW(i_Name);
    if (firstHash != -1) {
        if (hashTable[firstHash].Name[0] != 0) {
            s32 newHash = dHash_CalcRehash(firstHash);
            return newHash;
        }
        return firstHash;
    }
    return -1;
}

static s32 dHash_SearchHashW(const u16* i_Name) {
    s32 firstHash = dHash_CalcFirstHashW(i_Name);

    if (firstHash != -1) {
        int len = _StrLenW(i_Name);
        int i;
        int hashval;
        int k;
        const u16* str0_p;
        const u16* str1_p;
        int len2;

        for (k = 0; k < 15; k++) {
            hashval = (firstHash + (k * k)) % HASH_CELL_COUNT;
            len2 = _StrLenW(hashTable[hashval].Name);
            if (len == len2) {
                BOOL success = TRUE;
                str0_p = i_Name;
                str1_p = hashTable[hashval].Name;
                for (i = 0; i < len; i++) {
                    if (*str0_p != *str1_p) {
                        success = FALSE;
                        break;
                    }
                    str0_p++;
                    str1_p++;
                }
                if (success) {
                    return hashval;
                }
            }
        }
    }
    return -1;
}

int dHash_GetArgW(const u16* i_Name) {
    s32 searchHash = dHash_SearchHashW(i_Name);
    if (searchHash == -1) {
        return -1;
    }
    return hashTable[searchHash].arg;
}

int dHash_GetArg(const char* i_Name) {
    if (_MakeWStr(i_Name) != 0) {
        return dHash_GetArgW(_GetWStr());
    }
    return -1;
}

BOOL dHash_SetArgW(const u16* i_Name, u8 i_Arg) {
    s32 newHash;

    newHash = dHash_GetNewHashW(i_Name);
    if (newHash != -1) {
        VFipf_memcpy(&hashTable[newHash], (u16*)i_Name, 0x10U);
        hashTable[newHash].arg = i_Arg;
        return TRUE;
    }
    return FALSE;
}

BOOL dHash_SetArg(const char* i_Name, u8 i_Arg) {
    if (_MakeWStr(i_Name) != 0) {
        return dHash_SetArgW(_GetWStr(), i_Arg);
    }
    return FALSE;
}

BOOL dHash_DeleteDataW(const u16* i_Name) {
    s32 Hash = dHash_SearchHashW(i_Name);
    if (Hash != -1) {
        _DeleteDataByIdx(Hash);
        return TRUE;
    }
    return FALSE;
}

BOOL dHash_DeleteData(const char* i_Name) {
    if (_MakeWStr(i_Name) != 0) {
        return dHash_DeleteDataW(_GetWStr());
    }
    return FALSE;
}
