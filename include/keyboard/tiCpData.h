#ifndef TEXTINPUT_CELLPHONE_DATA_H
#define TEXTINPUT_CELLPHONE_DATA_H

#include <revolution/types.h>

namespace textinput {
    // I don't get why this is here.
    namespace util {
        enum {
            ALPHABET_MAP_LOWER = 0,
            ALPHABET_MAP_UPPER,
            ALPHABET_MAP_MAX,
        };
        extern const wchar_t*   s_alphabet_map[/*ALPHABET_MAP_MAX*/];
    }

    namespace keyboard {
        namespace cellphonetype {
            enum {
                KEY_TYPE_NORMAL = 0,
                KEY_TYPE_ABC_UPPER,
                KEY_TYPE_ABC_LOWER,
                KEY_TYPE_NUMBER,
                KEY_TYPE_PINYIN,
                KEY_TYPE_HANGUL,
            };

            static const int KEY_COUNT = 12;

            typedef struct PaneNameToCharCode {
                const char* szPaneName;     // 0x00
                wchar_t     szPaneDisp[8];  // 0x04
                wchar_t     wc[16];         // 0x14
            } PaneNameToCharCode;

            typedef struct KeySet {
                const PaneNameToCharCode*   pPaneNameToCharCode;    // 0x00
                wchar_t                     szKeySetName[17];       // 0x04
                u16                         uNum;                   // 0x26
                u16                         uType;                  // 0x28
            } KeySet;

            extern const PaneNameToCharCode csAlphabetKeyABCUS[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcUS[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCCN[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcCN[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyPinyinCN[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCUK[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcUK[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCDE[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcDE[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCIT[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcIT[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCNL[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcNL[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCSP[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcSP[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCFR[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcFR[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyAIUJP[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyaiuJP[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyABCJP[KEY_COUNT];
            extern const PaneNameToCharCode csAlphabetKeyabcJP[KEY_COUNT];

            extern const KeySet csKeySetUSAbc;
            extern const KeySet csKeySetUSABC;
            extern const KeySet csKeySetUSabc;
            extern const KeySet csKeySetUKAbc;
            extern const KeySet csKeySetUKABC;
            extern const KeySet csKeySetUKabc;
            extern const KeySet csKeySetDEAbc;
            extern const KeySet csKeySetDEABC;
            extern const KeySet csKeySetDEabc;
            extern const KeySet csKeySetITAbc;
            extern const KeySet csKeySetITABC;
            extern const KeySet csKeySetITabc;
            extern const KeySet csKeySetNLAbc;
            extern const KeySet csKeySetNLABC;
            extern const KeySet csKeySetNLabc;
            extern const KeySet csKeySetSPAbc;
            extern const KeySet csKeySetSPABC;
            extern const KeySet csKeySetSPabc;
            extern const KeySet csKeySetFRAbc;
            extern const KeySet csKeySetFRABC;
            extern const KeySet csKeySetFRabc;
            extern const KeySet csKeySetHiragana;
            extern const KeySet csKeySetKatakana;
            extern const KeySet csKeySetABCJP;
            extern const KeySet csKeySetabcJP;
            extern const KeySet csKeySetNumber;
            extern const KeySet csKeySetCNABC;
            extern const KeySet csKeySetCNabc;
            extern const KeySet csKeySetCNPinyin;
            extern const KeySet csKeySetHangul;

            extern const wchar_t csSpaceZero[3];
            extern const wchar_t csSpace[3];
        }
    }
}

#endif // TEXTINPUT_CELLPHONE_DATA_H
