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
#define ZI8_LANG_UNK4 4
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
#define ZI8_LANG_UNK88 88
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
// Table  0 - Character
// Table  1 - Character Info: Extra Mask + Words
// Table  2 - Component
// Table  3 - Pinyin Phonetic Syllables
// Table  4 - Bopomofo Phonetic Syllables
// Table  5 - Character to Phonetic Syllable Associations
// Table  6 - Unsigned Char to Wide Char
// Table  C - Syllable lengths
// Table 1A - Supported tones for syllables
// Table 1E - Data Signature

typedef struct {
    ziU8 maskBytes[4];  // 0x0
    ziU8 nextIdxHi;     // 0x4
    ziU8 nextIdxLo;     // 0x5
    ziU8 chHi;          // 0x6
    ziU8 chLo;          // 0x7
    ziU8 syllIdxHi;     // 0x8
    union {
        ziU8 syllIdxLo;   // 0x9 (relevant: 0bX0000000)
        ziU8 tone;        // 0x9 (relevant: 0b0XXX0000)
        ziU8 tab1OffsHi;  // 0x9 (relevant: 0b0000XXXX)
    };
    ziU8 tab1OffsMid;  // 0xA
    ziU8 tab1OffsLo;   // 0xB
} Table0Entry;
#define GET_TABLE0_ENTRY_TABLE1_OFFS(ENTRY) ((ENTRY)->tab1OffsLo | ((ENTRY)->tab1OffsMid << 0x8) | (((ENTRY)->tab1OffsHi & 0x0F) << 0x10))

typedef struct {
    ziU8 mask[4];    // 0x0
    ziU8 unk_0x4;    // 0x4
    ziU8 maskLen;    // 0x5
    ziU8 nextIdxHi;  // 0x6 : 0b______XX
    ziU8 nextIdxLo;  // 0x7
} Table2Entry;

typedef struct {
    ziU8 ordLo;        // 0x0
    ziU8 ordHi;        // 0x1
    ziU8 tabl34IdxLo;  // 0x2
    union {
        ziU8 tone;         // 0x3 : 0bXXXX____
        ziU8 region;       // 0x3 : 0b____XXX_
        ziU8 tabl34IdxHi;  // 0x3 : 0b_______X
    };  // 0x3
} Table5Entry;
#define GET_TABLE5_ENTRY_ORD(ENTRY) (((ziU16)(ENTRY)->ordHi << 8) | (ziU16)(ENTRY)->ordLo)
#define GET_TABLE5_ENTRY_TABLE34_IDX(ENTRY) ((ziU16)(ENTRY)->tabl34IdxLo | ((ziU16)(ENTRY)->tabl34IdxHi & 1) << 8) << 1
#define GET_TABLE5_ENTRY_TONE(ENTRY) (((ziU16)(ENTRY)->tone & 0xF0) >> 4)
#define GET_TABLE5_ENTRY_REGION(ENTRY) ((ENTRY)->region & 0x0E)

typedef struct {
    ziU8 compIdxLo;  // 0x0
    ziU8 compIdxHi;  // 0x1 : 0b__XXXXXX
} Table6Entry;

// Chinese (ZH) Table 12 (0xC)
typedef struct {
    union {
        ziU8 mandarinRegionMask;  // 0x0 : 0bXXXX____
        ziU8 pinyinLen;           // 0x0 : 0b____XXXX
    };
    union {
        ziU8 syllableTableIdxHi;  // 0x1 : 0bXXXX____
        ziU8 bpmfLen;             // 0x1 : 0b____XXXX
    };
    ziU8 syllableTableIdxLo;  // 0x2
} SyllableLenTableEntry;

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
    ziS32 ziDefault : 1;  // X_______ ________ ________ ________

    ziS32 cANDch : 1;  // _X______ ________ ________ ________
    ziS32 sANDsh : 1;  // __X_____ ________ ________ ________
    ziS32 zANDzh : 1;  // ___X____ ________ ________ ________

    ziS32 anANDang : 1;  // ____X___ ________ ________ ________
    ziS32 enANDeng : 1;  // _____X__ ________ ________ ________
    ziS32 inANDing : 1;  // ______X_ ________ ________ ________

    ziS32 nANDl : 1;  // _______X ________ ________ ________
    ziS32 lANDr : 1;  // ________ X_______ ________ ________
    ziS32 fANDh : 1;  // ________ _X______ ________ ________
} ziFuzzyPYPairs;

typedef struct ziFuzzyZYPairs {
    ziS32 ziDefault : 1;  // X_______ ________ ________ ________

    ziS32 cANDch : 1;  // _X______ ________ ________ ________
    ziS32 sANDsh : 1;  // __X_____ ________ ________ ________
    ziS32 zANDzh : 1;  // ___X____ ________ ________ ________

    ziS32 anANDang : 1;  // ____X___ ________ ________ ________
    ziS32 enANDeng : 1;  // _____X__ ________ ________ ________

    ziS32 nANDl : 1;  // ______X_ ________ ________ ________
    ziS32 lANDr : 1;  // _______X ________ ________ ________
    ziS32 fANDh : 1;  // ________ X_______ ________ ________

    ziS32 rANDn : 1;  // ________ _X______ ________ ________
    ziS32 bANDp : 1;  // ________ __X_____ ________ ________
    ziS32 gANDk : 1;  // ________ ___X____ ________ ________
} ziFuzzyZYPairs;

enum {
    ZI8_GET_MODE_UNK_x00 = 0x00,    // 0x00
    ZI8_GET_MODE_PINYIN_A = 0x01,   // 0x01
    ZI8_GET_MODE_UNK_x02 = 0x02,    // 0x02
    ZI8_GET_MODE_PINYIN = 0x03,     // 0x03
    ZI8_GET_MODE_ZHUYIN = 0x04,     // 0x04
    ZI8_GET_MODE_UNK_x05 = 0x05,    // 0x05
    ZI8_GET_MODE_UNK_x07 = 0x07,    // 0x07
    ZI8_GET_MODE_UNK_x08 = 0x08,    // 0x08
    ZI8_GET_MODE_UNK_x09 = 0x09,    // 0x09
    ZI8_GET_MODE_UNK_x0A = 0x0A,    // 0x0A
    ZI8_GET_MODE_UNK_x0B = 0x0B,    // 0x0B
    ZI8_GET_MODE_PINYIN_B = 0x0C,   // 0x0C
    ZI8_GET_MODE_UNK_x0D = 0x0D,    // 0x0D
    ZI8_GET_MODE_UNK_x0E = 0x0E,    // 0x0E
    ZI8_GET_MODE_SHUANGPIN = 0x0F,  // 0x0F
    ZI8_GET_MODE_UNK_x10 = 0x10,    // 0x10
};

typedef struct _ziGetParam {
    ziU8 language;     // 0x00
    ziU8 getMode;      // 0x01
    ziU8 subLanguage;  // 0x02
    union {
        ziU8 context;   // 0x03
        ziU8 ctx_b0;    // 0x03 : 0bX_______
        ziU8 ctx_b1;    // 0x03 : 0b_X______
        ziU8 ctx_b2;    // 0x03 : 0b__X_____
        ziU8 ctx_b3;    // 0x03 : 0b___X____
        ziU8 ctx_b4_7;  // 0x03 : 0b____XXXX
    };  // 0x03
    ziU8 getOptions;  // 0x04

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

    ziU32 unk_0x28;  // 0x28
} ziGetParam;

typedef struct {
    ziBool unk_0x00;    // 0x00
    ziU8 unk_0x01;      // 0x01
    ziU8 unk_0x02;      // 0x02
    ziWChar* unk_0x04;  // 0x04
    ziU8 elementCount;  // 0x08
    ziS32 maxSize;      // 0x0C
    ziU16 unk_0x10;     // 0x10
    ziU8 unk_0x12;      // 0x12
    ziU8 unk_0x13;      // 0x13
    ziU8 unk_0x14;      // 0x14
    ziU8 unk_0x15;      // 0x15
    ziU8 unk_0x16;      // 0x16
} ziGetCandidatesParam;

typedef struct {
    ziBool unk_0x000;                     // 0x000
    ziU8 strokeMask[0xC];                 // 0x001
    ziU8 strokeData[0xC];                 // 0x00D
    ziU8 shortStrokeMask[4];              // 0x019
    ziU8 shortStrokeData[4];              // 0x01D
    ziU16 unk_0x022;                      // 0x022
    ziU8 maskIdx;                         // 0x024
    ziU8 syllCount;                       // 0x025
    ziU16 syllMasks[0x10];                // 0x026
    ziU16 syllPhons[0x10];                // 0x046
    ziU16 closedSyllMask;                 // 0x066
    ziU16 closedSyllPhon;                 // 0x068
    ziU16 unk_0x06A;                      // 0x06A
    ziU8 multicharStrokeCount;            // 0x06C
    ziU8 multicharStrokeMask[0x10][0xC];  // 0x06D
    ziU8 multicharStrokeData[0x10][0xC];  // 0x12D
} ziMatchStructA;

typedef struct _ziLanguageEntry {
    ziU8 language;    // 0x00
    ziU8* tableData;  // 0x04
} ziLanguageEntry;

typedef union {
    struct {
        ziU8 totalSize;      // 0x0
        ziChar lang;         // 0x1
        ziU8 len;            // 0x2
        ziU8 unk_0x3;        // 0x3
        ziU8 unk_0x4[0x3F];  // 0x4
    };
    ziU8 asBytes[0x3F + 4];
} ziUWDNodeData;
typedef struct _ziListNodeA {
    struct _ziListNodeA* prev;  // 0x0
    ziUWDNodeData* value;       // 0x4
} ziListNodeA;

typedef ziBool (*Zi8OemSearchDict)(ziU16 idx, ziWChar* wordOut, ziU8 maxLen, ziPtr dictData);

enum {
    ZI8_STROKE_CODE_BLANK = 0xEF00,

    ZI8_STROKE_CODE_x0 = 0xEF02,  // Press N (Nà) (丶)
    ZI8_STROKE_CODE_x1 = 0xEF04,  // Hori H (Héng) (一)
    ZI8_STROKE_CODE_x2 = 0xEF01,  // Vert S (Shù) (丨)
    ZI8_STROKE_CODE_x3 = 0xEF07,  // Throw P (Piě) (丿)
    ZI8_STROKE_CODE_x4 = 0xEF06,  // Vert-Hori SZ (Shù Zhé) (㇗)
    ZI8_STROKE_CODE_x5 = 0xEF03,  // CwCurve-Hook WG (Wān Gōu) (㇁)
    ZI8_STROKE_CODE_x6 = 0xEF05,  // Hori-Hook HG (Héng Gōu) (㇖)
    ZI8_STROKE_CODE_x7 = 0xEF08,  // Hori-Press-Hook HXG (Héng Xié Gōu) (㇠)
    ZI8_STROKE_CODE_x8 = 0xEF02,  // Press N (Nà)
    ZI8_STROKE_CODE_xB = 0xEF07,  // Throw P (Piě)

    ZI8_STROKE_CODE_ENDFILL = 0xEF09,
    ZI8_STROKE_CODE_PARTIAL_4 = 0xEF0A,
    ZI8_STROKE_CODE_PARTIAL_8 = 0xEF0B,
};

enum {
    ZI8_WORD_CASE_CAPS = 0x1,
    ZI8_WORD_CASE_TITLE = 0x3,
};

enum {
    ZI8_SEARCH_TERMINATE = 0,
    ZI8_SEARCH_ROM_A = 1,
    ZI8_SEARCH_PUD_A = 2,
    ZI8_SEARCH_UWD_A = 3,
    ZI8_SEARCH_OEM_A = 4,
    ZI8_SEARCH_ROM_B = 5,
    ZI8_SEARCH_PUD_B = 6,
    ZI8_SEARCH_UWD_B = 7,
    ZI8_SEARCH_OEM_B = 8,
    ZI8_SEARCH_ROM_C = 9,
    ZI8_SEARCH_UNK_10 = 10,
    ZI8_SEARCH_UNK_11 = 11,
    ZI8_SEARCH_UNK_12 = 12,
};
enum {
    ZI8_SEARCH_FLAG_ROM = 0b0001,
    ZI8_SEARCH_FLAG_PUD = 0b0100,
    ZI8_SEARCH_FLAG_UWD = 0b0010,
    ZI8_SEARCH_FLAG_OEM = 0b1000,
};

typedef enum {
    ZI8_MATCH_STATE_BEGIN = 0,
    ZI8_MATCH_STATE_WORKING = 1,
    ZI8_MATCH_STATE_DONE = 2,
} Zi8MatchState;

typedef struct {
    ziU8 hi;
    ziU8 lo;
} ziDAWGWCharData;

typedef struct {
    ziU8* node;       // 0x0
    ziU32 charAttr;   // 0x4 - Key: 8, UC: 8, WC: 16
    ziWChar unk_0x8;  // 0x8
    ziU8* unk_0xC;    // 0xC
} ziDAWGCtxEntry;

typedef struct {
    ziU8 language;                 // 0x000
    ziU8 graphDataTable;           // 0x001
    ziU16 stackLen;                // 0x002
    ziU16 chrCount;                // 0x004
    ziDAWGWCharData* wchars;       // 0x008
    ziU8* uchars;                  // 0x00C
    ziU8* graphData;               // 0x010
    ziDAWGWCharData* padKeys;      // 0x014
    ziDAWGCtxEntry nodeStack[50];  // 0x018
    ziPtr unk_0x338;               // 0x338
} ziDAWGCtx;

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

typedef struct {
    ziWChar* upper[0x20];  // 0x00
    ziWChar* lower[0x20];  // 0x80
} ziUserKeyLayout;

struct __zi8_work_data_s {
    ziU8 unk_0x00;                              // 0x000
    ziU8 unk_0x01;                              // 0x001
    ziLanguageEntry* langEntries;               // 0x004
    ziU8 unk_0x08;                              // 0x008
    ziU8 searchFlags;                           // 0x009
    ziU8 maxWordLen;                            // 0x00A
    ziU16 unk_0x0C;                             // 0x00C
    ziU32 unk_0x10;                             // 0x010
    ziU16 unk_0x14;                             // 0x014
    ziU8 handleCangjie;                         // 0x016
    ziU8 unk_0x17;                              // 0x017
    ziU8 unk_0x18;                              // 0x018
    ziWChar spaceChar;                          // 0x01A
    ziU8 unk_0x1C;                              // 0x01C
    ziU8 unk_0x1D;                              // 0x01D
    ziU8 wordCase;                              // 0x01E
    ziBool caseInsensitive;                     // 0x01F
    ziU16 unk_0x20[0x40];                       // 0x020
    ziU16 unk_0xA0[0x40];                       // 0x0A0
    ziU8 unk_0x120;                             // 0x120
    ziU16* unk_0x124[2];                        // 0x124
    ziU8 unk_0x12C;                             // 0x12C
    ziU8 unk_0x12D;                             // 0x12D
    ziU8 unk_0x12E;                             // 0x12E
    ziU8* unk_0x130[2];                         // 0x130
    ziU8 unk_0x138;                             // 0x138
    ziS32 unk_0x13C;                            // 0x13C
    ziBool unk_0x140;                           // 0x140
    ziUWDNodeData uwdChars;                     // 0x141
    ziUWDNodeData uwdCaseChars;                 // 0x184
    ziU8 uwdTopIdx;                             // 0x1C7
    ziListNodeA unk_0x1C8[0x20];                // 0x1C8
    ziListNodeA* uwdTop;                        // 0x2C8
    ziUnkStruct* pudStack[0x10];                // 0x2CC
    ziU8 pudTopIdx;                             // 0x30C
    ziU8* pudTop;                               // 0x310
    ziS32 pudCurrCount;                         // 0x314
    ziS32 pudCurrIdx;                           // 0x318
    ziU8 pdRemoveOpt;                           // 0x31C
    ziU8 unk_0x31D;                             // 0x31D
    ziU8 unk_0x31E;                             // 0x31E
    Zi8OemSearchDict oemSearchDict;             // 0x320
    ziU16 oemDictLen;                           // 0x324
    ziU32 oemDictIdxSavepoint;                  // 0x328
    ziPtr oemDictData;                          // 0x32C
    ziU8 unk_0x330[8];                          // 0x330
    ziWChar candidates[0x100];                  // 0x338
    ziU8 unk_0x538;                             // 0x538
    ziU8 dupWordBufsUsed;                       // 0x539
    ziU8 dupWordBufRealIdxs[0x40];              // 0x53A
    ziWChar dupWordBufs[0x40][21];              // 0x57A
    ziU8 unk_0xFFA[0x200];                      // 0xFFA
    ziU8 unk_0x11FA;                            // 0x11FA
    ziUserKeyLayout* defaultUsrKeyLyt;          // 0x11FC
    ziUserKeyLayout* usrKeyLyts[ZI8_LANG_MAX];  // 0x1200
    ziU8 unk_0x1400[0xC];                       // 0x1400
    ziU8 unk_0x140C;                            // 0x140C
    ziU8* latinSearchOrderList;                 // 0x1410
    ziU8* unk_0x1414;                           // 0x1414
    ziU8 latinSearchOrderLen;                   // 0x1418
    ziU16 unk_0x141A;                           // 0x141A
    ziBool unk_0x141C;                          // 0x141C
    ziBool unk_0x141D;                          // 0x141D
    ziU8 unk_0x141E;                            // 0x141E
    ziU8 deepestSearched;                       // 0x141F
    ziU8 unk_0x1420[4];                         // 0x1420
    ziDAWGCtx dawgCtx;                          // 0x1424
    ziU8 unk_0x1760[2];                         // 0x1760
    ziU8* dawgGroups;                           // 0x1764
    ziU8 graphIdx;                              // 0x1768
    ziU8 unk_0x1769[0x81];                      // 0x1769
    ziU16 unk_0x17EA;                           // 0x17EA
    ziU8 unk_0x17EC;                            // 0x17EC
    ziU8* dawgGroupData;                        // 0x17F0
    ziWChar predBuf[0x40];                      // 0x17F4
    ziWChar unk_0x1874;                         // 0x1874
    ziU8 unk_0x1876;                            // 0x1876
    ziU8 unk_0x1877;                            // 0x1877
    ziU8 unk_0x1878;                            // 0x1878
    ziU8 unk_0x1879;                            // 0x1879
    ziWChar hlBuffer[0x41];                     // 0x187A
    ziBool unk_0x18FC;                          // 0x18FC
    ziWChar hlPrefix[0x41];                     // 0x18FE
    ziU8 hlPrefixLen;                           // 0x1980
    ziU8 unk_0x1981;                            // 0x1981
    ziU8 unk_0x1982;                            // 0x1982
    ziU8 unk_0x1983;                            // 0x1983
    ziU8 unk_0x1984;                            // 0x1984
    ziU8 unk_0x1985;                            // 0x1985
    ziU8 unk_0x1986[2];                         // 0x1986
    ziWChar hlSuffix[0x41];                     // 0x1988
    ziU8 hlSuffixLen;                           // 0x1A0A
    ziU8 unk_0x1A0B;                            // 0x1A0B
    ziWChar unk_0x1A0C[0x41];                   // 0x1A0C
    ziU8 unk_0x1A8E;                            // 0x1A8E
    ziWChar unk_0x1A90;                         // 0x1A90
    ziWChar unk_0x1A92[0x41];                   // 0x1A92
    ziU8 unk_0x1B14;                            // 0x1B14
    ziU8 unk_0x1B15;                            // 0x1B15
    ziU8 unk_0x1B16;                            // 0x1B16
    ziU16* unk_0x1B18;                          // 0x1B18
    ziU16 unkRangeALo;                          // 0x1B1C
    ziU16 unkRangeAHi;                          // 0x1B1E
    ziU16 unkRangeBLo;                          // 0x1B20
    ziU16 unkRangeBHi;                          // 0x1B22
    ziU8 unk_0x1B24;                            // 0x1B24
    ziFuzzyPYPairs pyFuzzyPairs;                // 0x1B28
    ziFuzzyZYPairs zyFuzzyPairs;                // 0x1B2C
    ziU8 hasSplitTables;                        // 0x1B30
    ziU16 unk_0x1B32;                           // 0x1B32
    ziU16 unk_0x1B34;                           // 0x1B34
    ziU16 unk_0x1B36;                           // 0x1B36
    ziU16 unk_0x1B38;                           // 0x1B38
    ziU8 unk_0x1B3A;                            // 0x1B3A
    ziU8 unk_0x1B3B;                            // 0x1B3B
    ziU8 unk_0x1B3C;                            // 0x1B3C
    ziU8 unk_0x1B3D;                            // 0x1B3D
    ziU8 unk_0x1B3E[2];                         // 0x1B3D
    ziU16 unk_0x1B40;                           // 0x1B40
};

#define ZI_WORK ((struct __zi8_work_data_s*)__zi8_work_data)
#define ZI_NEED_WORK , ziPtr __zi8_work_data

#endif  // ZI8_CLIB_TYPES_H
