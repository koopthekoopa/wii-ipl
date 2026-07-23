#ifndef ZI8_CLIB_TYPES_H
#define ZI8_CLIB_TYPES_H

typedef unsigned char ziU8;
typedef unsigned short ziU16;
typedef unsigned long ziU32;

typedef signed char ziS8;
typedef signed short ziS16;
typedef signed long ziS32;

typedef unsigned char ziChar;
typedef unsigned short ziWChar;
typedef unsigned char ziBool;
typedef void* ziPtr;

#define ZI8_FALSE 0
#define ZI8_TRUE 1

#define ZI8_NULL 0

#ifndef ZI8_LANGS_DEFINED
#define ZI8_LANGS_DEFINED
#define ZI8_LANG_NONE 0
#define ZI8_LANG_ZH 1
#define ZI8_LANG_PY 2
#define ZI8_LANG_DE 5
#define ZI8_LANG_SV 9
#define ZI8_LANG_FI 10
#define ZI8_LANG_NO 11
#define ZI8_LANG_DA 12
#define ZI8_LANG_NL 13
#define ZI8_LANG_EL 14
#define ZI8_LANG_TR 15
#define ZI8_LANG_JP 16
#define ZI8_LANG_KO 18
#define ZI8_LANG_AR 19
#define ZI8_LANG_IN 20
#define ZI8_LANG_MS 21
#define ZI8_LANG_PL 22
#define ZI8_LANG_CS 23
#define ZI8_LANG_IW 24
#define ZI8_LANG_VI 25
#define ZI8_LANG_SK 26
#define ZI8_LANG_EU 27
#define ZI8_LANG_BN 28
#define ZI8_LANG_HR 29
#define ZI8_LANG_CH 30
#define ZI8_LANG_ET 31
#define ZI8_LANG_HI 32
#define ZI8_LANG_HU 33
#define ZI8_LANG_LV 34
#define ZI8_LANG_LT 35
#define ZI8_LANG_FA 36
#define ZI8_LANG_PA 37
#define ZI8_LANG_RO 38
#define ZI8_LANG_RU 39
#define ZI8_LANG_SL 41
#define ZI8_LANG_TH 42
#define ZI8_LANG_UR 43
#define ZI8_LANG_UK 44
#define ZI8_LANG_TL 45
#define ZI8_LANG_IT 47
#define ZI8_LANG_IS 48
#define ZI8_LANG_BG 49
#define ZI8_LANG_MR 53
#define ZI8_LANG_SW 54
#define ZI8_LANG_GU 55
#define ZI8_LANG_KN 56
#define ZI8_LANG_TA 57
#define ZI8_LANG_ENUK 58
#define ZI8_LANG_ENAM 59
#define ZI8_LANG_ENPRC 60
#define ZI8_LANG_ENTW 61
#define ZI8_LANG_ENHK 62
#define ZI8_LANG_FREU 63
#define ZI8_LANG_FRCA 64
#define ZI8_LANG_ESSA 65
#define ZI8_LANG_ESEU 66
#define ZI8_LANG_PTEU 67
#define ZI8_LANG_PTBZ 68
#define ZI8_LANG_SRLA 69
#define ZI8_LANG_SRCY 70
#define ZI8_LANG_KM 71
#define ZI8_LANG_TE 72
#define ZI8_LANG_ML 73
#define ZI8_LANG_SI 74
#define ZI8_LANG_AF 75
#define ZI8_LANG_ST 76
#define ZI8_LANG_XH 77
#define ZI8_LANG_ZU 78
#define ZI8_LANG_SQ 79
#define ZI8_LANG_MK 80
#define ZI8_LANG_AZ 81
#define ZI8_LANG_KK 82
#define ZI8_LANG_UZ 83
#define ZI8_LANG_HA 84
#define ZI8_LANG_IG 85
#define ZI8_LANG_YO 86
#define ZI8_LANG_PYP 119
#define ZI8_LANG_PYS 120
#define ZI8_LANG_ZYP 121
#define ZI8_LANG_ZYS 122
#define ZI8_LANG_SP2 123
#define ZI8_LANG_PY2 124
#define ZI8_LANG_ZY2 125
#define ZI8_LANG_ZHP 126
#define ZI8_LANG_ARB 127
#define ZI8_LANG_MAX 128
#endif  // ZI8_LANGS_DEFINED

// Not Chinese:
// Table  3 - Data Signature

// Chinese:
// Table  0 - Character table?
// Table  1 - Mask Table?
// Table  2 - Component table
// Table  3 - Pinyin Table?
// Table  4 - Bopomofo Table?
// Table  6 - Unsigned Char to Wide Char
// Table 1E - Data Signature

typedef struct {
    ziU8 maskBytes[4];  // 0x0
    ziU8 nextIdxHi;     // 0x4
    ziU8 nextIdxLo;     // 0x5
    ziU8 chHi;          // 0x6
    ziU8 chLo;          // 0x7
    ziU8 tab34IdxHi;    // 0x8
    union {
        ziU8 tab34IdxLo;  // 0x9 (relevant: 0bX0000000)
        ziU8 codeOffs;    // 0x9 (relevant: 0b0XXX0000)
        ziU8 tab1OffsHi;  // 0x9 (relevant: 0b0000XXXX)
    };
    ziU8 tab1OffsMid;  // 0xA
    ziU8 tab1OffsLo;   // 0xB
} Table0Entry;
#define GET_TABLE0_ENTRY_TABLE1_OFFS(ENTRY) ((ENTRY)->tab1OffsLo | ((ENTRY)->tab1OffsMid << 0x8) | (((ENTRY)->tab1OffsHi & 0x0F) << 0x10))

typedef struct {
    ziU8 maskByte0;  // 0x0
    ziU8 maskByte1;  // 0x1
    ziU8 maskByte2;  // 0x2
    ziU8 maskByte3;  // 0x3
    ziU8 unk_0x4;    // 0x4
    ziU8 unk_0x5;    // 0x5
    ziU8 nextIdxHi;  // 0x6
    ziU8 nextIdxLo;  // 0x7
} Table2Entry;

typedef struct {
    ziU8 ordLo;        // 0x0
    ziU8 ordHi;        // 0x1
    ziU8 tabl34IdxLo;  // 0x2
    ziU8 tabl34IdxHi;  // 0x3
} Table5Entry;
#define GET_TABLE5_ENTRY_ORD(ENTRY) (((ziU16)(ENTRY)->ordHi << 8) | (ziU16)(ENTRY)->ordLo)
#define GET_TABLE5_ENTRY_TABLE34_IDX(ENTRY) ((ziU16)(ENTRY)->tabl34IdxLo | ((ziU16)(ENTRY)->tabl34IdxHi & 1) << 8) << 1
#define GET_TABLE5_ENTRY_CODE_OFFS(ENTRY) (((ziU16)(ENTRY)->tabl34IdxHi & 0xF0) >> 4)

typedef struct {
    ziU8 chHi;             // 0x0
    ziU8 chLo;             // 0x1
    ziU8 codeOffs : 3;     // 0x2 : 0bXXX_____
    ziU8 tabl34IdxHi : 5;  // 0x2 : 0b___XXXXX
    ziU8 tabl34IdxLo;      // 0x3
} Table19Entry;
#define GET_TABLE19_ENTRY_TABLE34_IDX(ENTRY) ((ENTRY)->tabl34IdxHi << 8 | (ENTRY)->tabl34IdxLo) << 1
#define GET_TABLE19_ENTRY_CODE_OFFS(ENTRY) ((ENTRY)->codeOffs & 0xFFFF)

typedef union {
    ziU8 byte;
    union {
        ziU8 raw[];
    };
    union {
        Table0Entry t0;
        Table19Entry t19;
    } tables[];
    // Table19Entry table19[];
    // ziU8 raw[];
} TableEntry;

typedef struct ziFuzzyPYPairs {
    ziU32 ziDefault : 1;

    ziU32 cANDch : 1;
    ziU32 sANDsh : 1;
    ziU32 zANDzh : 1;

    ziU32 anANDang : 1;
    ziU32 enANDeng : 1;
    ziU32 inANDing : 1;

    ziU32 nANDl : 1;
    ziU32 lANDr : 1;
    ziU32 fANDh : 1;
} ziFuzzyPYPairs;

typedef struct ziFuzzyZYPairs {
    ziU32 ziDefault : 1;

    ziU32 cANDch : 1;
    ziU32 sANDsh : 1;
    ziU32 zANDzh : 1;

    ziU32 anANDang : 1;
    ziU32 enANDeng : 1;

    ziU32 nANDl : 1;
    ziU32 lANDr : 1;
    ziU32 fANDh : 1;

    ziU32 rANDn : 1;
    ziU32 bANDp : 1;
    ziU32 gANDk : 1;
} ziFuzzyZYPairs;

enum {
    ZI8_GET_MODE_UNK_x00 = 0x00,   // 0x00
    ZI8_GET_MODE_PINYIN_A = 0x01,  // 0x01
    ZI8_GET_MODE_UNK_x05 = 0x05,   // 0x05
    ZI8_GET_MODE_PINYIN_B = 0x0c,  // 0x0c
    ZI8_GET_MODE_UNK_x10 = 0x10,   // 0x10
};

typedef struct _ziGetParam {
    ziU8 language;     // 0x00
    ziU8 getMode;      // 0x01
    ziU8 subLanguage;  // 0x02
    ziU8 context;      // 0x03
    ziU8 getOptions;   // 0x04

    ziWChar* elements;  // 0x08
    ziU8 elementCount;  // 0x0C

    ziWChar* currentWord;  // 0x10
    ziU8 wordCharCount;    // 0x14

    ziWChar* candidates;     // 0x18
    ziU8 maxCandidates;      // 0x1C
    ziWChar firstCandidate;  // 0x1E
    ziU8 wordCandidates;     // 0x20

    ziU8 count;     // 0x21
    ziU8 letters;   // 0x22
    ziU8* scratch;  // 0x24
} ziGetParam;

typedef struct _ziLanguageEntry {
    ziU8 language;    // 0x00
    ziU8* tableData;  // 0x04
} ziLanguageEntry;

typedef struct _ziListNodeA {
    struct _ziListNodeA* next;  // 0x0
    ziPtr value;                // 0x4
} ziListNodeA;

typedef ziBool (*Zi8OemSearchDict)(ziU16 idx, ziWChar* wordOut, ziU8 maxLen, ziPtr dictData);

// TODO: Name this something real
typedef struct {
    ziU8 size;      // 0x0
    ziU8 language;  // 0x1
    ziU8 offsHi;    // 0x2
    ziU8 offsLo;    // 0x3
    ziU8 countHi;   // 0x4
    ziU8 countLo;   // 0x5
    ziU8 unk_0x6;   // 0x6
    ziU8 unk_0x7;   // 0x7
} ziUnkStruct;

struct __zi8_work_data_s {
    ziU8 unk_0x00;                   // 0x000
    ziLanguageEntry* langEntries;    // 0x004
    ziU8 unk_0x08;                   // 0x008
    ziU8 unk_0x09;                   // 0x009
    ziU8 maxWordLen;                 // 0x00A
    ziU16 unk_0x0C;                  // 0x00C
    ziU32 unk_0x10;                  // 0x010
    ziU16 unk_0x14;                  // 0x014
    ziU8 unk_0x16;                   // 0x016
    ziU8 unk_0x17;                   // 0x017
    ziU8 unk_0x18;                   // 0x018
    ziU16 unk_0x1A;                  // 0x01a
    ziU8 unk_0x1C;                   // 0x01C
    ziU8 unk_0x1D;                   // 0x01D
    ziU8 unk_0x1E;                   // 0x01E
    ziU8 unk_0x1F;                   // 0x01F
    ziU16 unk_0x20[0x40];            // 0x020
    ziU16 unk_0xA0[0x40];            // 0x0A0
    ziU8 unk_0x120;                  // 0x120
    ziU16* unk_0x124[2];             // 0x124
    ziU8 unk_0x12C;                  // 0x12C
    ziU8 unk_0x12D;                  // 0x12D
    ziU8 unk_0x12E;                  // 0x12E
    ziU32 unk_0x130[2];              // 0x130
    ziU8 unk_0x138;                  // 0x138
    ziU32 unk_0x13C;                 // 0x13C
    ziU8 unk_0x140;                  // 0x140
    ziU8 unk_0x141[134];             // 0x141
    ziU8 unk_0x1C7;                  // 0x1C7
    ziListNodeA unk_0x1C8[0x20];     // 0x1C8
    ziListNodeA* unk_0x2C8;          // 0x2C8
    ziUnkStruct* unk_0x2CC[0x10];    // 0x2CC
    ziU8 unk_0x30C;                  // 0x30C
    ziU8* unk_0x310;                 // 0x310
    ziS32 unk_0x314;                 // 0x314
    ziS32 unk_0x318;                 // 0x318
    ziU8 pdRemoveOpt;                // 0x31C
    ziU8 unk_0x31D;                  // 0x31D
    ziU8 unk_0x31E;                  // 0x31E
    Zi8OemSearchDict oemSearchDict;  // 0x320
    ziU16 oemDictLen;                // 0x324
    ziU32 unk_0x328;                 // 0x328
    ziPtr oemDictData;               // 0x32C
    ziU8 unk_0x330[0x200];           // 0x330
    ziU8 unk_0x530[8];               // 0x530
    ziU8 unk_0x538;                  // 0x538
    ziU8 unk_0x539;                  // 0x539
    ziU8 unk_0x53A[0x40];            // 0x53A
    ziWChar unk_0x57A[0x40][21];     // 0x57A
    ziU8 unk_0xFFA[0x200];           // 0xFFA
    ziU8 unk_0x11FA;                 // 0x11FA
    ziU32 unk_0x11FC;                // 0x11FC
    ziU32 unk_0x1200[ZI8_LANG_MAX];  // 0x1200
    ziU8 unk_0x1400[0x18];           // 0x1400
    ziU8 unk_0x1418[2];              // 0x1418
    ziU16 unk_0x141A;                // 0x141A
    ziU8 unk_0x141C[0x458];          // 0x141C
    ziU16 unk_0x1874;                // 0x1874
    ziU8 unk_0x1876[2];              // 0x1876
    ziU8 unk_0x1878[0x2A0];          // 0x1878
    ziU16* unk_0x1B18;               // 0x1B18
    ziU16 unkRangeALo;               // 0x1B1C
    ziU16 unkRangeAHi;               // 0x1B1E
    ziU16 unkRangeBLo;               // 0x1B20
    ziU16 unkRangeBHi;               // 0x1B22
    ziU8 unk_0x1B24;                 // 0x1B24
    ziFuzzyPYPairs pyFuzzyPairs;     // 0x1B28
    ziFuzzyZYPairs zyFuzzyPairs;     // 0x1B2C
    ziU8 unk_0x1B30;                 // 0x1B30
    ziU16 unk_0x1B32;                // 0x1B32
    ziU16 unk_0x1B34;                // 0x1B34
    ziU16 unk_0x1B36;                // 0x1B36
    ziU16 unk_0x1B38;                // 0x1B38
    ziU8 unk_0x1B3A;                 // 0x1B3A
    ziU8 unk_0x1B3B;                 // 0x1B3B
    ziU8 unk_0x1B3C;                 // 0x1B3C
    ziU8 unk_0x1B3D[0x3];            // 0x1B3D
    ziU16 unk_0x1B40;                // 0x1B40
};

// ZI_WORK->unk_0x1B30 = 0;
// ZI_WORK->unk_0x1B3A = 0;
// ZI_WORK->unk_0x1B36 = 0;
// ZI_WORK->unk_0x1B32 = 0;
// ZI_WORK->unk_0x1B34 = 0;
// ZI_WORK->unk_0x1B3B = 0;
// ZI_WORK->unk_0x1B3C = 0;
// ZI_WORK->unk_0x1B40 = 0;
// ZI_WORK->unk_0x1B38 = 0;

#define ZI_WORK ((struct __zi8_work_data_s*)__zi8_work_data)
#define ZI_NEED_WORK , ziPtr __zi8_work_data

#endif  // ZI8_CLIB_TYPES_H
