#ifndef ZI8_CLIB_TYPES_H
#define ZI8_CLIB_TYPES_H

typedef unsigned char   ziU8;
typedef unsigned short  ziU16;
typedef unsigned long   ziU32;

typedef signed char     ziS8;
typedef signed short    ziS16;
typedef signed long     ziS32;

typedef unsigned char   ziChar;
typedef unsigned short  ziWChar;
typedef unsigned char   ziBool;
typedef void*           ziPtr;

#define ZI8_FALSE   0
#define ZI8_TRUE    1

#define ZI8_NULL    0

#ifndef ZI8_LANGS_DEFINED
#define ZI8_LANGS_DEFINED
#define ZI8_LANG_NONE    0
#define ZI8_LANG_ZH      1
#define ZI8_LANG_PY      2
#define ZI8_LANG_DE      5
#define ZI8_LANG_SV      9
#define ZI8_LANG_FI      10
#define ZI8_LANG_NO      11
#define ZI8_LANG_DA      12
#define ZI8_LANG_NL      13
#define ZI8_LANG_EL      14
#define ZI8_LANG_TR      15
#define ZI8_LANG_JP      16
#define ZI8_LANG_KO      18
#define ZI8_LANG_AR      19
#define ZI8_LANG_IN      20
#define ZI8_LANG_MS      21
#define ZI8_LANG_PL      22
#define ZI8_LANG_CS      23
#define ZI8_LANG_IW      24
#define ZI8_LANG_VI      25
#define ZI8_LANG_SK      26
#define ZI8_LANG_EU      27
#define ZI8_LANG_BN      28
#define ZI8_LANG_HR      29
#define ZI8_LANG_CH      30
#define ZI8_LANG_ET      31
#define ZI8_LANG_HI      32
#define ZI8_LANG_HU      33
#define ZI8_LANG_LV      34
#define ZI8_LANG_LT      35
#define ZI8_LANG_FA      36
#define ZI8_LANG_PA      37
#define ZI8_LANG_RO      38
#define ZI8_LANG_RU      39
#define ZI8_LANG_SL      41
#define ZI8_LANG_TH      42
#define ZI8_LANG_UR      43
#define ZI8_LANG_UK      44
#define ZI8_LANG_TL      45
#define ZI8_LANG_IT      47
#define ZI8_LANG_IS      48
#define ZI8_LANG_BG      49
#define ZI8_LANG_MR      53
#define ZI8_LANG_SW      54
#define ZI8_LANG_GU      55
#define ZI8_LANG_KN      56
#define ZI8_LANG_TA      57
#define ZI8_LANG_ENUK    58
#define ZI8_LANG_ENAM    59
#define ZI8_LANG_ENPRC   60
#define ZI8_LANG_ENTW    61
#define ZI8_LANG_ENHK    62
#define ZI8_LANG_FREU    63
#define ZI8_LANG_FRCA    64
#define ZI8_LANG_ESSA    65
#define ZI8_LANG_ESEU    66
#define ZI8_LANG_PTEU    67
#define ZI8_LANG_PTBZ    68
#define ZI8_LANG_SRLA    69
#define ZI8_LANG_SRCY    70
#define ZI8_LANG_KM      71
#define ZI8_LANG_TE      72
#define ZI8_LANG_ML      73
#define ZI8_LANG_SI      74
#define ZI8_LANG_AF      75
#define ZI8_LANG_ST      76
#define ZI8_LANG_XH      77
#define ZI8_LANG_ZU      78
#define ZI8_LANG_SQ      79
#define ZI8_LANG_MK      80
#define ZI8_LANG_AZ      81
#define ZI8_LANG_KK      82
#define ZI8_LANG_UZ      83
#define ZI8_LANG_HA      84
#define ZI8_LANG_IG      85
#define ZI8_LANG_YO      86
#define ZI8_LANG_PYP     119
#define ZI8_LANG_PYS     120
#define ZI8_LANG_ZYP     121
#define ZI8_LANG_ZYS     122
#define ZI8_LANG_SP2     123
#define ZI8_LANG_PY2     124
#define ZI8_LANG_ZY2     125
#define ZI8_LANG_ZHP     126
#define ZI8_LANG_ARB     127
#define ZI8_LANG_MAX     128
#endif // ZI8_LANGS_DEFINED

typedef struct ziFuzzyPYPairs {
    int ziDefault   : 1;

    int cANDch      : 1;
    int sANDsh      : 1;
    int zANDzh      : 1;

    int anANDang    : 1;
    int enANDeng    : 1;
    int inANDing    : 1;

    int nANDl       : 1;
    int lANDr       : 1;
    int fANDh       : 1;
} ziFuzzyPYPairs;

typedef struct ziFuzzyZYPairs {
    int ziDefault   : 1;

    int cANDch      : 1;
    int sANDsh      : 1;
    int zANDzh      : 1;

    int anANDang    : 1;
    int enANDeng    : 1;

    int nANDl       : 1;
    int lANDr       : 1;
    int fANDh       : 1;

    int rANDn       : 1;
    int bANDp       : 1;
    int gANDk       : 1;
} ziFuzzyZYPairs;

typedef struct _ziGetParam {
    ziU8        language;       // 0x00
    ziU8        getMode;        // 0x01
    ziU8        subLanguage;    // 0x02
    ziU8        context;        // 0x03
    ziU8        getOptions;     // 0x04

    ziWChar*    elements;       // 0x08
    ziU8        elementCount;   // 0x0C

    ziWChar*    currentWord;    // 0x10
    ziU8        wordCharCount;  // 0x14

    ziWChar*    candidates;     // 0x18
    ziU8        maxCandidates;  // 0x1C
    ziWChar     firstCandidate; // 0x1E
    ziU8        wordCandidates; // 0x1F

    ziU8        count;          // 0x20
    ziU8        letters;        // 0x21
    ziU8*       scratch;        // 0x22
} ziGetParam;

typedef struct _ziLanguageEntry {
    ziU8    language;   // 0x00
    ziU8*   tableData;  // 0x04
} ziLanguageEntry;

struct __zi8_work_data_s {
    ziU8                unk_0x00;
    ziLanguageEntry*    langEntries;    // 0x04
    ziU32               unk_0x08;
    ziU32               unk_0x0C;
    ziU32               unk_0x10;
    ziU32               unk_0x14;
    ziU8                unk_0x18;
    ziU8                unk_0x1C[0x108];
    ziU16**             unk_0x124;
    ziU8*               unk_0x128;
    ziU8                unk_0x12C;
};

#define ZI_WORK         ((struct __zi8_work_data_s*)__zi8_work_data)
#define ZI_NEED_WORK    , ziPtr __zi8_work_data

#endif // ZI8_CLIB_TYPES_H
