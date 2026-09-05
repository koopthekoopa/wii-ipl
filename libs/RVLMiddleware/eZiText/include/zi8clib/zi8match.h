#ifndef ZI8_CLIB_MATCH_H
#define ZI8_CLIB_MATCH_H

#include <zi8clib/zitypes.h>

ziBool Zi8PriMatchNextChar(Table0Entry* currTab0, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                           ziU8 byte3B, ziU16* remainingInOut, Table0Entry** newTab0Out, ziU16* chrOut ZI_NEED_WORK);
ziBool Zi8ExactMatchNextChar(Table0Entry* tab0, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                             ziU8 byte3B, ziU16* remainingInOut, Table0Entry** newTab0Out, ziU16* chrOut ZI_NEED_WORK);
ziU8 Zi8SecMatchChar(Table0Entry* tab0Entry, Table2Entry* tab2Entry, ziMatchStructA* matchStruct, ziWChar* chOut ZI_NEED_WORK);
ziBool Zi8PriMatchNextComp(Table2Entry* currTab2, ziU8 byte0A, ziU8 byte0B, ziU8 byte1A, ziU8 byte1B, ziU8 byte2A, ziU8 byte2B, ziU8 byte3A,
                           ziU8 byte3B, ziU16* remainingInOut, Table2Entry** newTab2Out ZI_NEED_WORK);
ziBool Zi8SecMatchComp(Table2Entry* tab2Entry, ziMatchStructA* matchData, Table2Entry* fullTab2 ZI_NEED_WORK);
ziBool Zi8MatchPhonetic(ziU8* tab34Data, Table0Entry* tab0Entries, Table5Entry* tab5Entries, ziU16 tab5Count, ziU8* tab1Data, Table0Entry* currTab0,
                        ziU16* buf_param_7, ziU16* buf_param_8, ziU16* param_9, Table0Entry** newTab0Out, ziU8** param_11, ziU8 param_12,
                        ziU8 param_13, ziU8 param_14, ziU16 param_15, ziU16 param_16, ziU8 param_17, ziU8 param_18, ziU16 tab0Count, ziWChar* chOut,
                        ziU8 param_21 ZI_NEED_WORK);
ziU8 Zi8GetPyPhonetic(ziWChar* elements, ziU8 elCount, ziU16* maskBuf, ziU16* phoneticsBuf, ziU8* syllable0Len, ziU16* outA,
                      ziU16* outB ZI_NEED_WORK);
ziBool Zi8GetPyFinal(ziU8* syllableChars, ziU8* maskOut, ziU8* syllableFinalOut);
ziU8 Zi8GetBpmfPhonetic(ziWChar* elements, ziU8 elCount, ziU16* maskBuf, ziU16* phoneticsBuf, ziU16* outA, ziU16* outB ZI_NEED_WORK);
ziWChar Zi8GetPCode(ziU8* table34, Table0Entry* table0Entry);

#define COMPONENT_BASE 0xEF10

#define PAD_KEY_BASE 0xEFF0
#define PAD_KEY(VALUE) (PAD_KEY_BASE + (VALUE))

#define PINYIN_BASE 0xF300
#define PINYIN_CHAR(CHAR) (PINYIN_BASE + CHAR)
#define PINYIN_TONE(TONE) (PINYIN_BASE + 0x30 + TONE)

#define PINYIN_INITIAL_UNSUPPORTED 0
#define PINYIN_INITIAL_SUPPORTS_H 0x80
#define PINYIN_INITIAL_PHONETIC 0x7F

#define BPMF_BASE 0xF305
#define BPMF_CHAR(CHAR) ((CHAR) + BPMF_BASE)

#define PINYIN_INITIAL_SHIFT 9
#define PINYIN_INITIAL_MASK (0b111111 << PINYIN_INITIAL_SHIFT)

#define PINYIN_MEDIAL_SHIFT 7
#define PINYIN_MEDIAL_MASK (0b11 << PINYIN_MEDIAL_SHIFT)

#define PINYIN_RIME_SHIFT 3
#define PINYIN_RIME_MASK (0b1111 << PINYIN_RIME_SHIFT)

#define PINYIN_FINAL_SHIFT 3
#define PINYIN_FINAL_MASK (PINYIN_MEDIAL_MASK | PINYIN_RIME_MASK)

#define PINYIN_FINAL(MEDIAL, RIME) (((MEDIAL) << (PINYIN_MEDIAL_SHIFT - PINYIN_RIME_SHIFT)) | (RIME))

#define PINYIN_TONE_SHIFT 0
#define PINYIN_TONE_MASK (0b111 << PINYIN_TONE_SHIFT)

#define PHONETIC_PINYIN(INITIAL, FINAL, TONE) (((INITIAL) << PINYIN_INITIAL_SHIFT) | ((FINAL) << PINYIN_FINAL_SHIFT) | ((TONE) << PINYIN_TONE_SHIFT))
#define PHONETIC_ZHUYIN(INITIAL, MEDIAL, RIME, TONE)                                                                                                 \
    (((INITIAL) << PINYIN_INITIAL_SHIFT) | (PINYIN_FINAL(MEDIAL, RIME) << PINYIN_FINAL_SHIFT) | ((TONE) << PINYIN_TONE_SHIFT))

#define INITIAL_NONE 0b000001
#define INITIAL_D 0b000010
#define INITIAL_T 0b000101
#define INITIAL_J 0b000110
#define INITIAL_Q 0b001001
#define INITIAL_X 0b001010
#define INITIAL_M 0b001100
#define INITIAL_Y 0b001101
#define INITIAL_W 0b010001
#define INITIAL_C 0b011000
#define INITIAL_CH 0b011001
#define INITIAL_S 0b011010
#define INITIAL_SH 0b011011
#define INITIAL_Z 0b011100
#define INITIAL_ZH 0b011101
#define INITIAL_N 0b100110
#define INITIAL_L 0b101011
#define INITIAL_R 0b101100
#define INITIAL_G 0b110100
#define INITIAL_K 0b110111
#define INITIAL_F 0b111000
#define INITIAL_H 0b111011
#define INITIAL_B 0b111100
#define INITIAL_P 0b111111

enum {
    BPMF_MEDIAL_NONE = 0b00,
    BPMF_MEDIAL_I = 0b01,
    BPMF_MEDIAL_U = 0b10,
    BPMF_MEDIAL_IU = 0b11,
};

enum {
    BPMF_RIME_NONE = 0b0000,
    BPMF_RIME_A = 0b0001,
    BPMF_RIME_O = 0b0010,
    BPMF_RIME_E = 0b0011,
    BPMF_RIME_ER = 0b0100,
    BPMF_RIME_EH = 0b0101,
    BPMF_RIME_MEDIAL = 0b0111,
    BPMF_RIME_AI = 0b1000,
    BPMF_RIME_EI = 0b1001,
    BPMF_RIME_AU = 0b1010,
    BPMF_RIME_OU = 0b1011,
    BPMF_RIME_AN = 0b1100,
    BPMF_RIME_ANG = 0b1101,
    BPMF_RIME_EN = 0b1110,
    BPMF_RIME_ENG = 0b1111,
};

enum {
    BPMF_CHAR_INITIAL_B = 0,
    BPMF_CHAR_INITIAL_P,
    BPMF_CHAR_INITIAL_M,
    BPMF_CHAR_INITIAL_F,
    BPMF_CHAR_INITIAL_D,
    BPMF_CHAR_INITIAL_T,
    BPMF_CHAR_INITIAL_N,
    BPMF_CHAR_INITIAL_L,
    BPMF_CHAR_INITIAL_G,
    BPMF_CHAR_INITIAL_K,
    BPMF_CHAR_INITIAL_H,
    BPMF_CHAR_INITIAL_J,
    BPMF_CHAR_INITIAL_Q,
    BPMF_CHAR_INITIAL_X,
    BPMF_CHAR_INITIAL_ZH,
    BPMF_CHAR_INITIAL_CH,
    BPMF_CHAR_INITIAL_SH,
    BPMF_CHAR_INITIAL_R,
    BPMF_CHAR_INITIAL_Z,
    BPMF_CHAR_INITIAL_C,
    BPMF_CHAR_INITIAL_S,
    BPMF_CHAR_INITIAL_MAX,

    BPMF_CHAR_RIME_MIN = BPMF_CHAR_INITIAL_MAX,
    BPMF_CHAR_RIME_A = BPMF_CHAR_RIME_MIN,
    BPMF_CHAR_RIME_O,
    BPMF_CHAR_RIME_E,
    BPMF_CHAR_RIME_EH,
    BPMF_CHAR_RIME_AI,
    BPMF_CHAR_RIME_EI,
    BPMF_CHAR_RIME_AU,
    BPMF_CHAR_RIME_OU,
    BPMF_CHAR_RIME_AN,
    BPMF_CHAR_RIME_EN,
    BPMF_CHAR_RIME_ANG,
    BPMF_CHAR_RIME_ENG,
    BPMF_CHAR_RIME_ER,
    BPMF_CHAR_RIME_MAX,

    BPMF_CHAR_MEDIAL_MIN = BPMF_CHAR_RIME_MAX,
    BPMF_CHAR_MEDIAL_I = BPMF_CHAR_MEDIAL_MIN,
    BPMF_CHAR_MEDIAL_U,
    BPMF_CHAR_MEDIAL_IU,
    BPMF_CHAR_MEDIAL_MAX,

    BPMF_CHAR_LETTER_MAX = BPMF_CHAR_MEDIAL_MAX,
};

#define DAWG_HAS_CHILD_FLAG 0b000001
#define DAWG_CHILD_EXPLICIT_FLAG 0b000010

#define DAWG_CHILD_NO_CHILD 0
#define DAWG_CHILD_IMPLICIT DAWG_HAS_CHILD_FLAG
#define DAWG_CHILD_EXPLICIT DAWG_HAS_CHILD_FLAG | DAWG_CHILD_EXPLICIT_FLAG

#define DAWG_HAS_SIBLING_FLAG 0b000100
#define DAWG_SIBLING_EXPLICIT_FLAG 0b001000

#define DAWG_SIBLING_NO_SIBLI 0
#define DAWG_SIBLING_IMPLICIT DAWG_HAS_SIBLING_FLAG
#define DAWG_SIBLING_EXPLICIT DAWG_HAS_SIBLING_FLAG | DAWG_SIBLING_EXPLICIT_FLAG

#define DAWG_IS_EOW_FLAG 0b010000
#define DAWG_FLAG_32 0b100000
extern const ziU16 nodeHeaderTable[0x10];

#endif  // ZI8_CLIB_MATCH_H
