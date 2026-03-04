#ifndef EZI_TEXT_H
#define EZI_TEXT_H

#include <revolution/types.h>

#include <wchar.h>

enum {
    EZTX_LANG_ENAM,
    EZTX_LANG_ENUK,
    EZTX_LANG_FREEU,
    EZTX_LANG_DE,
    EZTX_LANG_IT,
    EZTX_LANG_ESEU,
    EZTX_LANG_ESSA,
    EZTX_LANG_FRCA,
    EZTX_LANG_NL,
    EZTX_LANG_ZH,
    EZTX_LANG_MAX,
};

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

typedef struct EZTXLanguageEntry {
    u8  language;   // 0x00
    u8* table;      // 0x04
} EZTXLanguageEntry;

typedef struct EZTXGetParam {
    u8          language;       // 0x00
    u8          getMode;        // 0x01
    u8          subLanguage;    // 0x02
    u8          context;        // 0x03
    u8          getOptions;     // 0x04

    wchar_t*    elements;       // 0x08
    u8          elementCount;   // 0x0C

    wchar_t*    currentWord;    // 0x10
    u8          wordCharCount;  // 0x14

    wchar_t*    candidates;     // 0x18
    u8          maxCandidates;  // 0x1C
    wchar_t     firstCandidate; // 0x1E
    u8          wordCandidates; // 0x1F

    u8          count;          // 0x20
    u8          letters;        // 0x21
    u8*         scratch;        // 0x22
} EZTXGetParam;

u16     EZTXGetGlobalDataSize();

BOOL    EZTXInitialize(void* data, void* workData);

BOOL    EZTXSetLatinSearchOrder(u8* searchArray, u8 searchSize, void* workData);

u8      EZTXGetCandidates(EZTXGetParam* cands, void* workData);
u8      EZTXCopy(wchar_t* dest, EZTXGetParam* getParams, u8 index, void* workData);

u8      EZTXAttachOEMDict(u8* oemData, u16 oemSize, void* other, void* workData);
int     EZTXDetachOEMDict(u8 oemId, void* workData);

#endif // EZI_TEXT_H
