#include <zi8clib/zi81key.h>

#include <zi8clib/zaddress.h>
#include <zi8clib/zi8ZHuwd.h>
#include <zi8clib/zi8cinfo.h>
#include <zi8clib/zi8getc2.h>
#include <zi8clib/zi8is.h>
#include <zi8clib/zi8match.h>
#include <zi8clib/zi8misc.h>
#include <zi8clib/zi8pud2.h>
#include <zi8clib/zierror.h>
#include <zi8clib/zoemdata.h>

#define __PY_PAD_IDX_A 2
#define __PY_PAD_IDX_B 2
#define __PY_PAD_IDX_C 2
#define __PY_PAD_IDX_D 3
#define __PY_PAD_IDX_E 3
#define __PY_PAD_IDX_F 3
#define __PY_PAD_IDX_G 4
#define __PY_PAD_IDX_H 4
#define __PY_PAD_IDX_I 4
#define __PY_PAD_IDX_J 5
#define __PY_PAD_IDX_K 5
#define __PY_PAD_IDX_L 5
#define __PY_PAD_IDX_M 6
#define __PY_PAD_IDX_N 6
#define __PY_PAD_IDX_O 6
#define __PY_PAD_IDX_P 7
#define __PY_PAD_IDX_Q 7
#define __PY_PAD_IDX_R 7
#define __PY_PAD_IDX_S 7
#define __PY_PAD_IDX_T 8
#define __PY_PAD_IDX_U 8
#define __PY_PAD_IDX_V 8
#define __PY_PAD_IDX_W 9
#define __PY_PAD_IDX_X 9
#define __PY_PAD_IDX_Y 9
#define __PY_PAD_IDX_Z 9
#define PY_PAD_KEY(KEY) PAD_KEY(__PY_PAD_IDX_##KEY)

#define __ZY_PAD_IDX_B 1
#define __ZY_PAD_IDX_P 1
#define __ZY_PAD_IDX_M 1
#define __ZY_PAD_IDX_F 1
#define __ZY_PAD_IDX_D 2
#define __ZY_PAD_IDX_T 2
#define __ZY_PAD_IDX_N 2
#define __ZY_PAD_IDX_L 2
#define __ZY_PAD_IDX_G 3
#define __ZY_PAD_IDX_K 3
#define __ZY_PAD_IDX_H 3
#define __ZY_PAD_IDX_J 4
#define __ZY_PAD_IDX_Q 4
#define __ZY_PAD_IDX_X 4
#define __ZY_PAD_IDX_ZH 5
#define __ZY_PAD_IDX_CH 5
#define __ZY_PAD_IDX_SH 5
#define __ZY_PAD_IDX_R 5
#define __ZY_PAD_IDX_Z 6
#define __ZY_PAD_IDX_C 6
#define __ZY_PAD_IDX_S 6
#define __ZY_PAD_IDX_A 7
#define __ZY_PAD_IDX_O 7
#define __ZY_PAD_IDX_E 7
#define __ZY_PAD_IDX_EH 7
#define __ZY_PAD_IDX_AI 8
#define __ZY_PAD_IDX_EI 8
#define __ZY_PAD_IDX_AU 8
#define __ZY_PAD_IDX_OU 8
#define __ZY_PAD_IDX_AN 9
#define __ZY_PAD_IDX_EN 9
#define __ZY_PAD_IDX_ANG 9
#define __ZY_PAD_IDX_ENG 9
#define __ZY_PAD_IDX_ER 9
#define __ZY_PAD_IDX_I 10
#define __ZY_PAD_IDX_U 10
#define __ZY_PAD_IDX_IU 10
#define ZY_PAD_KEY(KEY) PAD_KEY(__ZY_PAD_IDX_##KEY)

#define ZY_PAD_KEYS_0() {L'\0'}
#define ZY_PAD_KEYS_1(A) {ZY_PAD_KEY(A)}
#define ZY_PAD_KEYS_2(A, B) {ZY_PAD_KEY(A), ZY_PAD_KEY(B)}

#define PY_PAD_KEYS_0() {L'\0'}
#define PY_PAD_KEYS_1(A) {PY_PAD_KEY(A)}
#define PY_PAD_KEYS_2(A, B) {PY_PAD_KEY(A), PY_PAD_KEY(B)}
#define PY_PAD_KEYS_3(A, B, C) {PY_PAD_KEY(A), PY_PAD_KEY(B), PY_PAD_KEY(C)}
#define PY_PAD_KEYS_4(A, B, C, D) {PY_PAD_KEY(A), PY_PAD_KEY(B), PY_PAD_KEY(C), PY_PAD_KEY(D)}

// No Y or W initials with bpmf
const ziWChar zi8ZYinitialSpelling[][1] = {
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_1(D), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(T),  ZY_PAD_KEYS_1(J), ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(Q),  ZY_PAD_KEYS_1(X), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_1(M), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_1(C), ZY_PAD_KEYS_1(CH), ZY_PAD_KEYS_1(S), ZY_PAD_KEYS_1(SH), ZY_PAD_KEYS_1(Z), ZY_PAD_KEYS_1(ZH), ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_1(N), ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(L),  ZY_PAD_KEYS_1(R), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),
    ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_1(G), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(K),
    ZY_PAD_KEYS_1(F), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(H),  ZY_PAD_KEYS_1(B), ZY_PAD_KEYS_0(),   ZY_PAD_KEYS_0(),  ZY_PAD_KEYS_1(P),
};

const ziWChar zi8ZYfinalSpelling[][2] = {
    ZY_PAD_KEYS_0(),         // 00 0000 - Medial _,  Invalid Rime
    ZY_PAD_KEYS_1(A),        // 00 0001 - Medial _,  Rime A
    ZY_PAD_KEYS_1(O),        // 00 0010 - Medial _,  Rime O
    ZY_PAD_KEYS_1(E),        // 00 0011 - Medial _,  Rime E
    ZY_PAD_KEYS_1(ER),       // 00 0100 - Medial _,  Rime ER
    ZY_PAD_KEYS_0(),         // 00 0101 - Medial _,  Rime EH
    ZY_PAD_KEYS_0(),         // 00 0110 - Medial _,  Invalid Rime
    ZY_PAD_KEYS_0(),         // 00 0111 - Medial _,  Rime Medial
    ZY_PAD_KEYS_1(AI),       // 00 1000 - Medial _,  Rime AI
    ZY_PAD_KEYS_1(EI),       // 00 1001 - Medial _,  Rime EI
    ZY_PAD_KEYS_1(AU),       // 00 1010 - Medial _,  Rime AU
    ZY_PAD_KEYS_1(OU),       // 00 1011 - Medial _,  Rime OU
    ZY_PAD_KEYS_1(AN),       // 00 1100 - Medial _,  Rime AN
    ZY_PAD_KEYS_1(ANG),      // 00 1101 - Medial _,  Rime ANG
    ZY_PAD_KEYS_1(EN),       // 00 1110 - Medial _,  Rime EN
    ZY_PAD_KEYS_1(ENG),      // 00 1111 - Medial _,  Rime ENG
    ZY_PAD_KEYS_0(),         // 01 0000 - Medial I,  Invalid Rime
    ZY_PAD_KEYS_2(I, A),     // 01 0001 - Medial I,  Rime A
    ZY_PAD_KEYS_2(I, O),     // 01 0010 - Medial I,  Rime O
    ZY_PAD_KEYS_0(),         // 01 0011 - Medial I,  Rime E
    ZY_PAD_KEYS_0(),         // 01 0100 - Medial I,  Rime ER
    ZY_PAD_KEYS_2(I, EH),    // 01 0101 - Medial I,  Rime EH
    ZY_PAD_KEYS_0(),         // 01 0110 - Medial I,  Invalid Rime
    ZY_PAD_KEYS_1(I),        // 01 0111 - Medial I,  Rime Medial
    ZY_PAD_KEYS_2(I, AI),    // 01 1000 - Medial I,  Rime AI
    ZY_PAD_KEYS_0(),         // 01 1001 - Medial I,  Rime EI
    ZY_PAD_KEYS_2(I, AU),    // 01 1010 - Medial I,  Rime AU
    ZY_PAD_KEYS_2(I, OU),    // 01 1011 - Medial I,  Rime OU
    ZY_PAD_KEYS_2(I, AN),    // 01 1100 - Medial I,  Rime AN
    ZY_PAD_KEYS_2(I, ANG),   // 01 1101 - Medial I,  Rime ANG
    ZY_PAD_KEYS_2(I, EN),    // 01 1110 - Medial I,  Rime EN
    ZY_PAD_KEYS_2(I, ENG),   // 01 1111 - Medial I,  Rime ENG
    ZY_PAD_KEYS_0(),         // 10 0000 - Medial U,  Invalid Rime
    ZY_PAD_KEYS_2(U, A),     // 10 0001 - Medial U,  Rime A
    ZY_PAD_KEYS_2(U, O),     // 10 0010 - Medial U,  Rime O
    ZY_PAD_KEYS_0(),         // 10 0011 - Medial U,  Rime E
    ZY_PAD_KEYS_0(),         // 10 0100 - Medial U,  Rime ER
    ZY_PAD_KEYS_2(U, EH),    // 10 0101 - Medial U,  Rime EH
    ZY_PAD_KEYS_0(),         // 10 0110 - Medial U,  Invalid Rime
    ZY_PAD_KEYS_1(U),        // 10 0111 - Medial U,  Rime Medial
    ZY_PAD_KEYS_2(U, AI),    // 10 1000 - Medial U,  Rime AI
    ZY_PAD_KEYS_2(U, EI),    // 10 1001 - Medial U,  Rime EI
    ZY_PAD_KEYS_0(),         // 10 1010 - Medial U,  Rime AU
    ZY_PAD_KEYS_0(),         // 10 1011 - Medial U,  Rime OU
    ZY_PAD_KEYS_2(U, AN),    // 10 1100 - Medial U,  Rime AN
    ZY_PAD_KEYS_2(U, ANG),   // 10 1101 - Medial U,  Rime ANG
    ZY_PAD_KEYS_2(U, EN),    // 10 1110 - Medial U,  Rime EN
    ZY_PAD_KEYS_2(U, ENG),   // 10 1111 - Medial U,  Rime ENG
    ZY_PAD_KEYS_0(),         // 11 0000 - Medial IU, Invalid Rime
    ZY_PAD_KEYS_0(),         // 11 0001 - Medial IU, Rime A
    ZY_PAD_KEYS_0(),         // 11 0010 - Medial IU, Rime O
    ZY_PAD_KEYS_0(),         // 11 0011 - Medial IU, Rime E
    ZY_PAD_KEYS_0(),         // 11 0100 - Medial IU, Rime ER
    ZY_PAD_KEYS_2(IU, EH),   // 11 0101 - Medial IU, Rime EH
    ZY_PAD_KEYS_0(),         // 11 0110 - Medial IU, Invalid Rime
    ZY_PAD_KEYS_1(IU),       // 11 0111 - Medial IU, Rime Medial
    ZY_PAD_KEYS_0(),         // 11 1000 - Medial IU, Rime AI
    ZY_PAD_KEYS_0(),         // 11 1001 - Medial IU, Rime EI
    ZY_PAD_KEYS_0(),         // 11 1010 - Medial IU, Rime AU
    ZY_PAD_KEYS_0(),         // 11 1011 - Medial IU, Rime OU
    ZY_PAD_KEYS_2(IU, AN),   // 11 1100 - Medial IU, Rime AN
    ZY_PAD_KEYS_0(),         // 11 1101 - Medial IU, Rime ANG
    ZY_PAD_KEYS_2(IU, EN),   // 11 1110 - Medial IU, Rime EN
    ZY_PAD_KEYS_2(IU, ENG),  // 11 1111 - Medial IU, Rime ENG
};

const ziWChar zi8PYinitialSpelling[][2] = {
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_1(D), PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_1(T), PY_PAD_KEYS_1(J),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_1(Q), PY_PAD_KEYS_1(X), PY_PAD_KEYS_0(),     PY_PAD_KEYS_1(M), PY_PAD_KEYS_1(Y),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(W), PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(C), PY_PAD_KEYS_2(C, H), PY_PAD_KEYS_1(S), PY_PAD_KEYS_2(S, H),
    PY_PAD_KEYS_1(Z), PY_PAD_KEYS_2(Z, H), PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(N), PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(L),    PY_PAD_KEYS_1(R), PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),
    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(G), PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(K),
    PY_PAD_KEYS_1(F), PY_PAD_KEYS_0(),     PY_PAD_KEYS_0(),  PY_PAD_KEYS_1(H), PY_PAD_KEYS_1(B),    PY_PAD_KEYS_0(),  PY_PAD_KEYS_0(),
    PY_PAD_KEYS_1(P),
};

const ziWChar zi8PYfinalSpelling[][4] = {
    {},
    PY_PAD_KEYS_3(I, A, O),
    PY_PAD_KEYS_3(I, A, N),
    PY_PAD_KEYS_4(I, A, N, G),
    PY_PAD_KEYS_2(I, A),
    {},
    {},
    {},
    PY_PAD_KEYS_1(I),
    PY_PAD_KEYS_2(I, E),
    {},
    PY_PAD_KEYS_2(I, U),
    PY_PAD_KEYS_2(I, N),
    PY_PAD_KEYS_3(I, N, G),
    {}, /*(-IOU?)*/
    PY_PAD_KEYS_4(I, O, N, G),
    PY_PAD_KEYS_3(U, A, N),
    PY_PAD_KEYS_4(U, A, N, G),
    {},
    PY_PAD_KEYS_3(U, A, I),
    {},
    {},
    {},
    PY_PAD_KEYS_2(U, A),
    PY_PAD_KEYS_1(U),
    {},
    {},
    {},
    PY_PAD_KEYS_2(U, N),
    PY_PAD_KEYS_2(U, I),
    PY_PAD_KEYS_2(U, O),
    PY_PAD_KEYS_2(U, E),
    PY_PAD_KEYS_2(A, N),
    PY_PAD_KEYS_3(A, N, G),
    {},
    PY_PAD_KEYS_1(A),
    {},
    PY_PAD_KEYS_2(A, I),
    PY_PAD_KEYS_2(A, O),
    {},
    PY_PAD_KEYS_3(O, N, G),
    {},
    PY_PAD_KEYS_2(O, U),
    PY_PAD_KEYS_1(O),
    {},
    {},
    {},
    {},
    PY_PAD_KEYS_2(E, N),
    PY_PAD_KEYS_3(E, N, G),
    {},
    PY_PAD_KEYS_2(E, R),
    PY_PAD_KEYS_1(E),
    PY_PAD_KEYS_2(E, I),
    {},
    {},
    PY_PAD_KEYS_1(V),
    PY_PAD_KEYS_3(V, A, N),
    {},
    {}, /*(-VN?)*/
    {},
    {},
    {},
    {},
};

static const ziU8 Zi8SOpinyinArray[] = {3, 3, 1, 7, 5};

ziU8 Zi8SpellingZY(ziWChar* spellingOut, ziU16 phonetic, ziBool useTone) {
    ziU16 initial;
    ziU16 final;
    ziU16 tone;
    ziU8 offset;

    offset = 0;
    initial = phonetic >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT);
    final = phonetic >> PINYIN_FINAL_SHIFT & (PINYIN_FINAL_MASK >> PINYIN_FINAL_SHIFT);
    tone = phonetic & (PINYIN_TONE_MASK);

    if ((spellingOut[0] = zi8ZYinitialSpelling[initial][0]) != L'\0')
        offset = 1;

    spellingOut[offset + 0] = zi8ZYfinalSpelling[final][0];
    spellingOut[offset + 1] = zi8ZYfinalSpelling[final][1];
    spellingOut[offset + 2] = L'\0';
    spellingOut[offset + 3] = L'\0';
    while (spellingOut[offset] != L'\0')
        offset++;

    if (useTone) {
        switch (tone) {
            case 1:
                spellingOut[offset++] = PAD_KEY(1);
                break;
            case 2:
                spellingOut[offset++] = PAD_KEY(2);
                break;
            case 3:
                spellingOut[offset++] = PAD_KEY(3);
                break;
            case 4:
                spellingOut[offset++] = PAD_KEY(4);
                break;
            case 5:
                spellingOut[offset++] = PAD_KEY(5);
                break;
        }
    }
    return offset;
}
ziU8 Zi8SpellingPY(ziWChar* spellingOut, ziU16 phonetic, ziBool useTone) {
    ziU16 initial;
    ziU16 final;
    ziU16 tone;
    ziU8 offset;

    offset = 0;
    initial = phonetic >> PINYIN_INITIAL_SHIFT & (PINYIN_INITIAL_MASK >> PINYIN_INITIAL_SHIFT);
    final = phonetic >> PINYIN_FINAL_SHIFT & (PINYIN_FINAL_MASK >> PINYIN_FINAL_SHIFT);
    tone = phonetic & (PINYIN_TONE_MASK);
    offset;
    initial;

    spellingOut[0] = zi8PYinitialSpelling[initial][0];
    spellingOut[1] = zi8PYinitialSpelling[initial][1];
    spellingOut[2] = L'\0';
    while (spellingOut[offset] != L'\0')
        offset++;

    spellingOut[offset + 0] = zi8PYfinalSpelling[final][0];
    spellingOut[offset + 1] = zi8PYfinalSpelling[final][1];
    spellingOut[offset + 2] = zi8PYfinalSpelling[final][2];
    spellingOut[offset + 3] = zi8PYfinalSpelling[final][3];
    spellingOut[offset + 4] = L'\0';
    spellingOut[offset + 5] = L'\0';
    while (spellingOut[offset] != L'\0')
        offset++;

    if (useTone) {
        switch (tone) {
            case 1:
                spellingOut[offset++] = PAD_KEY(1);
                break;
            case 2:
                spellingOut[offset++] = PAD_KEY(2);
                break;
            case 3:
                spellingOut[offset++] = PAD_KEY(3);
                break;
            case 4:
                spellingOut[offset++] = PAD_KEY(4);
                break;
            case 5:
                spellingOut[offset++] = PAD_KEY(5);
                break;
        }
    }
    return offset;
}

ziBool Zi8IsMatch1Key(ziWChar* text, ziU8 textLen, ziU16 phonetic, ziBool requireExactLen, ziBool isPinyin, ziBool useTone) {
    ziU8 i;
    ziWChar spellingBuf[0x10];

    if (phonetic == 0) {
        return ZI8_FALSE;
    } else if (textLen == 0) {
        return ZI8_TRUE;
    } else {
        if (isPinyin) {
            i = Zi8SpellingPY(spellingBuf, phonetic, useTone);
        } else {
            i = Zi8SpellingZY(spellingBuf, phonetic, useTone);
        }
        if (requireExactLen && textLen != i) {
            return ZI8_FALSE;
        }
        if (!useTone && textLen > i) {
            switch (text[textLen - 1]) {
                case PAD_KEY(1):
                case PAD_KEY(2):
                case PAD_KEY(3):
                case PAD_KEY(4):
                case PAD_KEY(5):
                    textLen--;
                    break;
            }
        }
        if (textLen > i) {
            return ZI8_FALSE;
        }
        for (i = 0; i < textLen; i++) {
            if (spellingBuf[i] != text[i]) {
                return ZI8_FALSE;
            }
        }
        return ZI8_TRUE;
    }
}

ziBool MatchAltSound1Key(ziWChar* text, ziU8 textLen, ziBool requireExactLen, Table5Entry* charSyllTable, ziU16 charSyllTableLen, ziU8* syllables,
                         ziWChar ord, ziBool isPinyin, ziBool useTone, ziU8 mandarinRegionMask ZI_NEED_WORK) {
    ziU16 syllIdx;
    ziU8 ordHi;
    ziU8 ordLo;
    ziWChar phonetic;
    int lowerIdx;
    int upperIdx;
    int centerIdx;

    Zi8LogError(0x64, ZI_WORK);
    ordHi = (ziU8)(ord >> 8);
    ordLo = (ziU8)ord;
    mandarinRegionMask >>= 3;
    if (charSyllTableLen == 0) {
        Zi8ReplaceLastError(0x964, ZI_WORK);
        return ZI8_FALSE;
    }

    lowerIdx = 0;
    upperIdx = charSyllTableLen - 1;
    if ((ordHi == charSyllTable[upperIdx].ordHi && ordLo == charSyllTable[upperIdx].ordLo)) {
        lowerIdx = upperIdx;
        goto FOUND_ENTRY;
    } else if (ordHi == charSyllTable[lowerIdx].ordHi && ordLo == charSyllTable[lowerIdx].ordLo) {
        goto FOUND_ENTRY;
    } else {
        goto SEARCH;
    }

FOUND_ENTRY:
    upperIdx = lowerIdx;
    do {
        if (GET_TABLE5_ENTRY_REGION(&charSyllTable[upperIdx]) == 0 || (mandarinRegionMask & charSyllTable[upperIdx].region) != 0) {
            syllIdx = charSyllTable[upperIdx].tabl34IdxLo | (ziU16)(charSyllTable[upperIdx].tabl34IdxHi & 1) << 8;
            if (ZI_WORK->unk_0x11FA == 0 || ZI_WORK->unk_0xFFA[syllIdx] != 0) {
                syllIdx *= 2;
                phonetic = syllables[syllIdx] | ((ziU16)syllables[syllIdx + 1] << 8) | ((charSyllTable[upperIdx].tone & 0xF0) >> 4);
                if (Zi8IsMatch1Key(text, textLen, phonetic, requireExactLen, isPinyin, useTone)) {
                    return ZI8_TRUE;
                }
            }
        }

        upperIdx++;
    } while (upperIdx < charSyllTableLen && ordHi == charSyllTable[upperIdx].ordHi && ordLo == charSyllTable[upperIdx].ordLo);

    upperIdx = lowerIdx;
    while (--upperIdx >= 0 && ordHi == charSyllTable[upperIdx].ordHi && ordLo == charSyllTable[upperIdx].ordLo) {
        if (GET_TABLE5_ENTRY_REGION(&charSyllTable[upperIdx]) == 0 || (mandarinRegionMask & charSyllTable[upperIdx].region) != 0) {
            syllIdx = charSyllTable[upperIdx].tabl34IdxLo | ((ziU16)charSyllTable[upperIdx].tabl34IdxHi & 1) << 8;
            if (ZI_WORK->unk_0x11FA == 0 || ZI_WORK->unk_0xFFA[syllIdx] != 0) {
                syllIdx *= 2;
                phonetic = syllables[syllIdx] | ((ziU16)syllables[syllIdx + 1] << 8) | ((charSyllTable[upperIdx].tone & 0xF0) >> 4);
                if (Zi8IsMatch1Key(text, textLen, phonetic, requireExactLen, isPinyin, useTone)) {
                    return ZI8_TRUE;
                }
            }
        }
    }
    return ZI8_FALSE;

SEARCH:
CHECK_LOWER_BOUND:
    if (ordHi == charSyllTable[lowerIdx].ordHi && ordLo == charSyllTable[lowerIdx].ordLo)
        goto FOUND_ENTRY;
    if ((((ziU16)charSyllTable[lowerIdx].ordHi << 8) | (ziU16)charSyllTable[lowerIdx].ordLo) > ord) {
        return ZI8_FALSE;
    }
    centerIdx = (lowerIdx + upperIdx) / 2;
    if (centerIdx == lowerIdx) {
        return ZI8_FALSE;
    }

    if ((((ziU16)charSyllTable[centerIdx].ordHi << 8) | (ziU16)charSyllTable[centerIdx].ordLo) >= ord) {
        upperIdx = centerIdx;
        goto CHECK_UPPER_BOUND;
    } else {
        lowerIdx = centerIdx;
        goto CHECK_LOWER_BOUND;
    }

CHECK_UPPER_BOUND:
    if (ordHi == charSyllTable[upperIdx].ordHi && ordLo == charSyllTable[upperIdx].ordLo) {
        lowerIdx = upperIdx;
        goto FOUND_ENTRY;
    }
    if ((((ziU16)charSyllTable[upperIdx].ordHi << 8) | (ziU16)charSyllTable[upperIdx].ordLo) < ord) {
        return ZI8_FALSE;
    }
    centerIdx = (lowerIdx + upperIdx) / 2;
    if (centerIdx == lowerIdx) {
        return ZI8_FALSE;
    }
    if ((((ziU16)charSyllTable[centerIdx].ordHi << 8) | (ziU16)charSyllTable[centerIdx].ordLo) >= ord) {
        upperIdx = centerIdx;
        goto CHECK_UPPER_BOUND;
    } else {
        lowerIdx = centerIdx;
        goto CHECK_LOWER_BOUND;
    }

    // Unreachable
    return ZI8_FALSE;
}

ziU8 Zi8SetFindCand(ziU8* pCandidateBitset, ziU16 ord ZI_NEED_WORK) {
    ziU8 prevBit;

    ord = Zi8Ord2Ord(ord, ZI_WORK);
    prevBit = (1 << (ord % 8)) & pCandidateBitset[ord / 8];
    pCandidateBitset[ord / 8] |= 1 << (ord % 8);
    return prevBit;
}

ziU32 ZiIsSupportedPhonetic(ziU8 language ZI_NEED_WORK) {
    if (Zi8LangSupported(language, ZI_WORK)) {
        return ZI8_TRUE;
    }

    switch (language) {
        // All pinyin versions
        case ZI8_LANG_PYP:
        case ZI8_LANG_PYS:
        case ZI8_LANG_PY2:
            if (Zi8LangSupported(ZI8_LANG_PYP, ZI_WORK) || Zi8LangSupported(ZI8_LANG_PYS, ZI_WORK) || Zi8LangSupported(ZI8_LANG_PY2, ZI_WORK)) {
                return ZI8_TRUE;
            }
            // @bug neither this nor the following switch cases should fall through

        // All zhuyin (bopomofo) versions
        case ZI8_LANG_ZYP:
        case ZI8_LANG_ZYS:
        case ZI8_LANG_ZY2:
            if (Zi8LangSupported(ZI8_LANG_ZYP, ZI_WORK) || Zi8LangSupported(ZI8_LANG_ZYS, ZI_WORK) || Zi8LangSupported(ZI8_LANG_ZY2, ZI_WORK)) {
                return ZI8_TRUE;
            }
    }
    return ZI8_FALSE;
}

ziU32 Zi8Get1KeyPressSpelling(ziGetParam* getParam, ziGetCandidatesParam* param_2 ZI_NEED_WORK) {
    ziU8 candCount;
    ziBool bVar1;
    ziBool isPinyin;
    ziU8 mandarinRegionMask;
    ziBool currSyllLen;
    ziU8 elCount;
    ziU8 getOpts;
    ziU8 savedLatinSearchOrderLen;
    ziU8 zVar5;
    ziU8 savedUnk_0x1F;

    ziU16 syllLenTableCount;
    ziU16 offset;
    ziU16 currCh;
    ziU16 i;
    ziU16 charInfoLen;
    ziU16 syllTableCount;
    ziWChar remCandidateOffset;

    ziS32 local_74;
    SyllableLenTableEntry* syllLenTable;
    ziU8* syllTableData;
    ziWChar* candidateBuf;
    ziU8* savedLatinSearchOrderList;
    ziWChar local_60[8];
    ziGetParam modifiedGetParam;

    candCount = 0;
    local_74 = 0;
    getOpts = getParam->getOptions;
    getParam->count = 0;
    getParam->letters = 0;
    getOpts = getOpts & ~0x10;
    getOpts = getOpts & ~0x20;
    getOpts = getOpts & ~0x40;
    if (param_2->unk_0x01 == 0) {
        getParam->count = 0;
        Zi8LogError(0x64, ZI_WORK);
        return 0;
    }

    if ((getParam->subLanguage & 0x80) != 0 || (getParam->subLanguage & 0x40) != 0) {
        mandarinRegionMask = 0x01;  // Mainland China?
    } else if ((getParam->subLanguage & 0x08) != 0) {
        mandarinRegionMask = 0x04;  // Hong Kong?
    } else if ((getParam->subLanguage & 0x20) != 0 || (getParam->subLanguage & 0x10) != 0) {
        mandarinRegionMask = 0x02;  // Taiwan?
    } else {
        mandarinRegionMask = getParam->subLanguage;
    }
    mandarinRegionMask = mandarinRegionMask << 4;
    remCandidateOffset = getParam->firstCandidate;
    if (param_2->unk_0x00) {
        candidateBuf = local_60;
    } else {
        candidateBuf = getParam->candidates;
    }
    syllLenTableCount = Zi8GetTableCount(ZI8_LANG_ZH, 0xC, ZI_WORK);

    if (((mandarinRegionMask & 0x10) == 0 || getParam->getMode != ZI8_GET_MODE_PINYIN || (getParam->ctx_b3 & 0x10) == 0 ||
         !ZiIsSupportedPhonetic(ZI8_LANG_PY2, ZI_WORK)) &&
        ((mandarinRegionMask & 0x10) == 0 || getParam->getMode != ZI8_GET_MODE_SHUANGPIN || ZiIsSupportedPhonetic(ZI8_LANG_SP2, ZI_WORK) == 0) &&
        ((mandarinRegionMask & 0x20) == 0 || getParam->getMode != ZI8_GET_MODE_ZHUYIN || (getParam->ctx_b3 & 0x10) == 0 ||
         ZiIsSupportedPhonetic(ZI8_LANG_ZY2, ZI_WORK) == 0) &&
        syllLenTableCount == 0)
        goto FINISHED;

    switch (getParam->getMode) {
        case ZI8_GET_MODE_PINYIN:
        case ZI8_GET_MODE_SHUANGPIN:
            syllTableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
            syllTableCount = Zi8GetTableCount(ZI8_LANG_ZH, 3, ZI_WORK);
            isPinyin = ZI8_TRUE;
            break;

        case ZI8_GET_MODE_ZHUYIN:
            syllTableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
            syllTableCount = Zi8GetTableCount(ZI8_LANG_ZH, 4, ZI_WORK);
            isPinyin = ZI8_FALSE;
            break;

        default:
            goto FINISHED;
    }

    elCount = getParam->elementCount;
    while (elCount != 0) {
        if (getParam->elements[elCount - 1] != ZI8_STROKE_CODE_ENDFILL)
            break;
        elCount--;
    }

    if (elCount != 0) {
        bVar1 = ZI8_TRUE;
    } else {
        bVar1 = ZI8_FALSE;
    }

    currCh = *getParam->elements;
    if (elCount == 1 && (getOpts & 0x81) == 0x80 && PAD_KEY(1) <= currCh && currCh <= PAD_KEY(0x20)) {
        offset = 0;
        if (isPinyin) {
            if (currCh == PAD_KEY(2))
                local_60[offset++] = PINYIN_CHAR('a');
            if (currCh == PAD_KEY(2))
                local_60[offset++] = PINYIN_CHAR('b');
            if (currCh == PAD_KEY(2))
                local_60[offset++] = PINYIN_CHAR('c');

            if (currCh == PAD_KEY(3))
                local_60[offset++] = PINYIN_CHAR('d');
            if (currCh == PAD_KEY(3))
                local_60[offset++] = PINYIN_CHAR('e');
            if (currCh == PAD_KEY(3))
                local_60[offset++] = PINYIN_CHAR('f');

            if (currCh == PAD_KEY(4))
                local_60[offset++] = PINYIN_CHAR('g');
            if (currCh == PAD_KEY(4))
                local_60[offset++] = PINYIN_CHAR('h');
            if (currCh == PAD_KEY(4))
                local_60[offset++] = PINYIN_CHAR('i');

            if (currCh == PAD_KEY(5))
                local_60[offset++] = PINYIN_CHAR('j');
            if (currCh == PAD_KEY(5))
                local_60[offset++] = PINYIN_CHAR('k');
            if (currCh == PAD_KEY(5))
                local_60[offset++] = PINYIN_CHAR('l');

            if (currCh == PAD_KEY(6))
                local_60[offset++] = PINYIN_CHAR('m');
            if (currCh == PAD_KEY(6))
                local_60[offset++] = PINYIN_CHAR('n');
            if (currCh == PAD_KEY(6))
                local_60[offset++] = PINYIN_CHAR('o');

            if (currCh == PAD_KEY(7))
                local_60[offset++] = PINYIN_CHAR('p');
            if (currCh == PAD_KEY(7))
                local_60[offset++] = PINYIN_CHAR('q');
            if (currCh == PAD_KEY(7))
                local_60[offset++] = PINYIN_CHAR('r');
            if (currCh == PAD_KEY(7))
                local_60[offset++] = PINYIN_CHAR('s');

            if (currCh == PAD_KEY(8))
                local_60[offset++] = PINYIN_CHAR('t');
            if (currCh == PAD_KEY(8))
                local_60[offset++] = PINYIN_CHAR('u');
            if (currCh == PAD_KEY(8))
                local_60[offset++] = PINYIN_CHAR('v');

            if (currCh == PAD_KEY(9))
                local_60[offset++] = PINYIN_CHAR('w');
            if (currCh == PAD_KEY(9))
                local_60[offset++] = PINYIN_CHAR('x');
            if (currCh == PAD_KEY(9))
                local_60[offset++] = PINYIN_CHAR('y');
            if (currCh == PAD_KEY(9))
                local_60[offset++] = PINYIN_CHAR('z');
        } else {
            if (currCh == PAD_KEY(1))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_B);
            if (currCh == PAD_KEY(1))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_P);
            if (currCh == PAD_KEY(1))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_M);
            if (currCh == PAD_KEY(1))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_F);

            if (currCh == PAD_KEY(2))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_D);
            if (currCh == PAD_KEY(2))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_T);
            if (currCh == PAD_KEY(2))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_N);
            if (currCh == PAD_KEY(2))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_L);

            if (currCh == PAD_KEY(3))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_G);
            if (currCh == PAD_KEY(3))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_K);
            if (currCh == PAD_KEY(3))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_H);

            if (currCh == PAD_KEY(4))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_J);
            if (currCh == PAD_KEY(4))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_Q);
            if (currCh == PAD_KEY(4))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_X);

            if (currCh == PAD_KEY(5))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_ZH);
            if (currCh == PAD_KEY(5))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_CH);
            if (currCh == PAD_KEY(5))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_SH);
            if (currCh == PAD_KEY(5))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_R);

            if (currCh == PAD_KEY(6))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_Z);
            if (currCh == PAD_KEY(6))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_C);
            if (currCh == PAD_KEY(6))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_INITIAL_S);

            if (currCh == PAD_KEY(7))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_A);
            if (currCh == PAD_KEY(7))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_O);
            if (currCh == PAD_KEY(7))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_E);
            if (currCh == PAD_KEY(7))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_EH);

            if (currCh == PAD_KEY(8))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_AI);
            if (currCh == PAD_KEY(8))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_EI);
            if (currCh == PAD_KEY(8))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_AU);
            if (currCh == PAD_KEY(8))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_OU);

            if (currCh == PAD_KEY(9))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_AN);
            if (currCh == PAD_KEY(9))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_EN);
            if (currCh == PAD_KEY(9))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_ANG);
            if (currCh == PAD_KEY(9))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_ENG);
            if (currCh == PAD_KEY(9))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_RIME_ER);

            if (currCh == PAD_KEY(10))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_I);
            if (currCh == PAD_KEY(10))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_U);
            if (currCh == PAD_KEY(10))
                local_60[offset++] = BPMF_CHAR(BPMF_CHAR_MEDIAL_IU);
        }
        for (i = 0; i < offset; i++) {
            if (remCandidateOffset != 0) {
                remCandidateOffset--;
                continue;
            }
            local_74++;
            if (!param_2->unk_0x00) {
                *candidateBuf++ = local_60[i];
                *candidateBuf++ = L'\0';
                candCount++;
            } else if (local_74 >= param_2->maxSize)
                break;
            if (candCount >= getParam->maxCandidates)
                break;
        }
    } else {
        if (((mandarinRegionMask & 0x10) != 0 && getParam->getMode == ZI8_GET_MODE_PINYIN && (getParam->ctx_b3 & 0x10) != 0 &&
             ZiIsSupportedPhonetic(ZI8_LANG_PY2, ZI_WORK)) ||
            ((mandarinRegionMask & 0x10) != 0 && getParam->getMode == ZI8_GET_MODE_SHUANGPIN && ZiIsSupportedPhonetic(ZI8_LANG_SP2, ZI_WORK)) ||
            ((mandarinRegionMask & 0x20) != 0 && getParam->getMode == ZI8_GET_MODE_ZHUYIN && (getParam->ctx_b3 & 0x10) != 0 &&
             ZiIsSupportedPhonetic(ZI8_LANG_ZY2, ZI_WORK))) {
            savedLatinSearchOrderList = ZI_WORK->latinSearchOrderList;
            savedLatinSearchOrderLen = ZI_WORK->latinSearchOrderLen;
            zVar5 = ZI8_FALSE;
            savedUnk_0x1F = ZI_WORK->unk_0x1F;
            Zi8Memset(&modifiedGetParam, 0, sizeof(modifiedGetParam));
            modifiedGetParam.getMode = 0x00;
            modifiedGetParam.subLanguage = 0x80;
            modifiedGetParam.context = 0x01;
            modifiedGetParam.getOptions = 0x81;
            if ((getParam->getOptions & 0x10) != 0x00 || (getParam->getOptions & 0x0E) == 0x02) {
                modifiedGetParam.getOptions |= 0x02;
            }
            modifiedGetParam.elements = getParam->elements;
            modifiedGetParam.elementCount = getParam->elementCount;
            modifiedGetParam.candidates = getParam->candidates;
            modifiedGetParam.maxCandidates = getParam->maxCandidates;
            modifiedGetParam.firstCandidate = getParam->firstCandidate;
            if (getParam->getMode == ZI8_GET_MODE_SHUANGPIN) {
                modifiedGetParam.language = ZI8_LANG_SP2;
            } else if (getParam->getMode == ZI8_GET_MODE_PINYIN) {
                modifiedGetParam.language = ZI8_LANG_PY2;
                if ((getParam->ctx_b4_7 & 0x0F) == 0x01 || (getParam->ctx_b4_7 & 0x0F) == 0x03) {
                    if (Zi8LangSupported(ZI8_LANG_PYP, ZI_WORK)) {
                        modifiedGetParam.language = ZI8_LANG_PYP;
                    } else if (Zi8LangSupported(ZI8_LANG_PYS, ZI_WORK)) {
                        modifiedGetParam.language = ZI8_LANG_PYS;
                    }
                }
                if ((getParam->ctx_b4_7 & 0x0F) == 0x01 || (getParam->ctx_b4_7 & 0x0F) == 0x05) {
                    if (Zi8LangSupported(ZI8_LANG_PYS, ZI_WORK)) {
                        modifiedGetParam.subLanguage = ZI8_LANG_PYS;
                    } else if (Zi8LangSupported(ZI8_LANG_PYP, ZI_WORK)) {
                        modifiedGetParam.subLanguage = ZI8_LANG_PYP;
                    }
                }
                if (modifiedGetParam.language == ZI8_LANG_PY2 && modifiedGetParam.subLanguage != 0x80) {
                    modifiedGetParam.language = modifiedGetParam.subLanguage;
                    modifiedGetParam.subLanguage = 0x80;
                }
                for (offset = 0; offset < getParam->elementCount; offset++) {
                    if (getParam->elements[offset] == PINYIN_CHAR('`')) {
                        getParam->elements[offset] = '\'';
                        zVar5 = ZI8_TRUE;
                    }
                }
            } else {
                modifiedGetParam.language = ZI8_LANG_ZY2;
                if ((getParam->ctx_b4_7 & 0x0F) == 0x01 || (getParam->ctx_b4_7 & 0x0F) == 0x03) {
                    if (Zi8LangSupported(ZI8_LANG_ZYP, ZI_WORK)) {
                        modifiedGetParam.language = ZI8_LANG_ZYP;
                    } else if (Zi8LangSupported(ZI8_LANG_ZYS, ZI_WORK)) {
                        modifiedGetParam.language = ZI8_LANG_ZYS;
                    }
                }
                if (((getParam->ctx_b4_7 & 0x0F) == 0x01) || ((getParam->ctx_b4_7 & 0x0F) == 0x05)) {
                    if (Zi8LangSupported(ZI8_LANG_ZYS, ZI_WORK)) {
                        modifiedGetParam.subLanguage = ZI8_LANG_ZYS;
                    } else if (Zi8LangSupported(ZI8_LANG_ZYP, ZI_WORK)) {
                        modifiedGetParam.subLanguage = ZI8_LANG_ZYP;
                    }
                }
                if (modifiedGetParam.language == ZI8_LANG_ZY2 && modifiedGetParam.subLanguage != 0x80) {
                    modifiedGetParam.language = modifiedGetParam.subLanguage;
                    modifiedGetParam.subLanguage = 0x80;
                }
                for (offset = 0; offset < getParam->elementCount; offset++) {
                    if (getParam->elements[offset] == '\'') {
                        getParam->elements[offset] = PINYIN_CHAR('`');
                        zVar5 = ZI8_TRUE;
                    }
                }
            }
            if (getParam->elementCount == 1) {
                modifiedGetParam.subLanguage = 0x80;
                modifiedGetParam.getOptions = modifiedGetParam.getOptions | 0x02;
            }
            if (getParam->getMode == ZI8_GET_MODE_SHUANGPIN && (getParam->ctx_b3 & 0x10) == 0) {
                Zi8SetMaxWordLength(2, ZI_WORK);
            }
            ZI_WORK->latinSearchOrderList = (ziU8*)Zi8SOpinyinArray;
            ZI_WORK->latinSearchOrderLen = sizeof(Zi8SOpinyinArray);
            if ((getParam->subLanguage & 0x07) != 0 || (getParam->subLanguage & 0x40) != 0 || (getParam->subLanguage & 0x20) != 0) {
                ZI_WORK->unk_0x1B16 = 1;
            }
            ZI_WORK->unk_0x1F = 0;
            ZI_WORK->unk_0x1D = 1;
            local_74 = _Zi8GetCandidates(&modifiedGetParam, ZI_WORK);
            ZI_WORK->unk_0x1D = 0;
            ZI_WORK->unk_0x1F = savedUnk_0x1F;
            ZI_WORK->latinSearchOrderList = savedLatinSearchOrderList;
            ZI_WORK->latinSearchOrderLen = savedLatinSearchOrderLen;
            getParam->count = modifiedGetParam.count;
            ZI_WORK->unk_0x1B16 = 0;
            if (zVar5) {
                if (getParam->getMode == ZI8_GET_MODE_PINYIN) {
                    for (offset = 0; offset < getParam->elementCount; offset++) {
                        if (getParam->elements[offset] == '\'') {
                            getParam->elements[offset] = PINYIN_CHAR('`');
                        }
                    }
                } else {
                    for (offset = 0; offset < getParam->elementCount; offset++) {
                        if (getParam->elements[offset] == PINYIN_CHAR('`')) {
                            getParam->elements[offset] = '\'';
                        }
                    }
                }
            }
            if (!param_2->unk_0x00 && getParam->getMode == ZI8_GET_MODE_PINYIN) {
                for (offset = 0; offset < getParam->count;) {
                    while (*candidateBuf != L'\0') {
                        if (*candidateBuf != '\'') {
                            *candidateBuf++ |= PINYIN_BASE;
                        } else {
                            *candidateBuf++ = PINYIN_CHAR('`');
                        }
                    }
                    offset++;
                    candidateBuf++;
                }
            }
            Zi8LogError(0x64, ZI_WORK);
            return local_74;
        }
        if (getParam->getMode == ZI8_GET_MODE_SHUANGPIN) {
            Zi8LogError(0x3E8, ZI_WORK);
            return 0;
        }
        Zi8InitDupWordBuf(ZI_WORK);
        while (ZI8_TRUE) {
            if (syllLenTableCount == 0)
                break;
            syllLenTable = (SyllableLenTableEntry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0xC, ZI_WORK);
            for (offset = 0; offset < syllLenTableCount; offset++) {
                if ((syllLenTable->mandarinRegionMask & mandarinRegionMask) == 0)
                    goto NEXT_SYLL_LEN_ENTRY;

                if (isPinyin) {
                    currSyllLen = syllLenTable->pinyinLen & 0x0F;
                } else {
                    currSyllLen = syllLenTable->bpmfLen & 0x0F;
                }
                if (bVar1) {
                    if (currSyllLen != elCount)
                        goto NEXT_SYLL_LEN_ENTRY;
                } else if (elCount != 0 && currSyllLen <= elCount)
                    goto NEXT_SYLL_LEN_ENTRY;

                charInfoLen = ((ziU16)syllLenTable->syllableTableIdxHi & 0xF0) << 4 | syllLenTable->syllableTableIdxLo;
                currCh = syllTableData[charInfoLen * 2 + 0] | ((ziU16)syllTableData[charInfoLen * 2 + 1] << 8);
                if (isPinyin) {
                    charInfoLen = Zi8SpellingPY(candidateBuf, currCh, ZI8_FALSE);
                } else {
                    charInfoLen = Zi8SpellingZY(candidateBuf, currCh, ZI8_FALSE);
                }
                for (i = 0; i < elCount; i++) {
                    if (getParam->elements[i] < BPMF_BASE && candidateBuf[i] != getParam->elements[i])
                        break;
                }

                if (elCount != 0 && i < elCount)
                    goto NEXT_SYLL_LEN_ENTRY;

                if (isPinyin) {
                    charInfoLen = Zi8GetPInfo(currCh, candidateBuf, 8, ZI_WORK);
                } else {
                    charInfoLen = Zi8GetZInfo(currCh, candidateBuf, 8, ZI_WORK);
                }
                if (charInfoLen != 0) {
                    for (i = 0; i < elCount; i++) {
                        if (getParam->elements[i] >= BPMF_BASE && candidateBuf[i] != getParam->elements[i])
                            break;
                    }
                    if (elCount == 0 || i >= elCount) {
                        if (charInfoLen > param_2->unk_0x01) {
                            charInfoLen = param_2->unk_0x01;
                            candidateBuf[charInfoLen] = L'\0';
                        }
                        if (((getParam->getOptions & 0x10) != 0 || (getParam->getOptions & 0x0E) == 2 ||
                             ZI_WORK->unk_0x140C > getParam->elementCount) &&
                            getParam->elementCount != 0 && charInfoLen > getParam->elementCount) {
                            charInfoLen = getParam->elementCount;
                            candidateBuf[charInfoLen] = L'\0';
                        }
                        if (!Zi8IsDupWordW(candidateBuf, charInfoLen, ZI_WORK)) {
                            if (remCandidateOffset == 0) {
                                local_74++;
                                if (!param_2->unk_0x00) {
                                    candidateBuf += charInfoLen + 1;
                                    candCount++;
                                } else if (local_74 >= param_2->maxSize)
                                    goto FINISHED;
                                if (candCount >= getParam->maxCandidates)
                                    goto FINISHED;
                            } else {
                                remCandidateOffset--;
                            }
                        }
                    }
                }

            NEXT_SYLL_LEN_ENTRY:
                syllLenTable++;
            }
            if (!bVar1)
                break;
            bVar1 = ZI8_FALSE;
        }
    }
FINISHED:
    getParam->count = candCount;
    Zi8LogError(0x64, ZI_WORK);
    return local_74;
}

ziU32 Zi8Get1KeyPressCandidates(ziGetParam* getParam, ziGetCandidatesParam* param_2 ZI_NEED_WORK) {
    int i;

    ziU8 mandarinRegionMask;
    ziU8 local_112;
    ziU8 elementsEndI;
    ziU8 text1KeyLen;
    ziBool isPinyin;
    ziBool match1KeyResult;
    ziU8 local_117;
    ziU8 local_118;
    ziU8 requireExactLen;
    ziU8 useTone;
    ziBool local_11c;
    ziBool bVar11;
    ziU8 resumeMatch;
    ziU8 local_11e;
    ziU8 getOptions;
    ziU8 forceExactSound;
    ziU8 bVar8;
    ziU8 bVar13;
    ziBool useDupWBuf;
    ziU8 local_124;
    ziU8 local_125;
    ziU8 local_126;
    ziU8 local_127;
    ziU8 local_128;

    ziU16 syllTableLen;
    ziU16 chTableLen;
    ziU16 charSyllTableLen;
    ziU16 remCandidatesToSkip;
    ziWChar local_f0;
    ziU16 unk89TableCount;
    ziU16 local_f4;
    ziU16 local_f6;
    ziU16 local_f8;
    ziU16 local_fa;
    ziU16 local_fc;
    ziU16 local_fe;
    ziWChar local_100;
    ziU16 local_102;
    ziU16 local_104;
    ziU16 local_106;
    ziU16 uwdI;
    ziU16 uwdLen;
    ziU16 uwdOrd;
    ziWChar local_10e;
    ziU16 local_110;

    Table0Entry* chTableData;
    Table5Entry* charSyllTable;
    ziU8* unk89TableData;
    ziU8* local_b0;
    ziU8* syllTableData;
    Table0Entry* currChInfo;
    ziU8 local_bc[4];
    ziU8 local_c0[4];
    int local_c4;
    ziWChar* candBuf;
    int local_cc;
    int local_d0;
    ziU8* local_d4;
    ziWChar* local_d8;
    ziU8* local_dc;
    ziU8* uwdEntries;
    int local_e4;
    ziWChar text1Key[8];
    ziWChar currCand[64];

    unk89TableData = ZI8_NULL;
    local_b0 = ZI8_NULL;
    mandarinRegionMask = 0;
    local_112 = 0;
    unk89TableCount = 0;
    local_118 = 0;
    local_c4 = 0;
    local_f4 = 0;
    requireExactLen = ZI8_FALSE;
    useTone = ZI8_TRUE;
    local_11c = ZI8_FALSE;
    local_11e = 0;
    getOptions = getParam->getOptions;
    useDupWBuf = ZI8_FALSE;
    candBuf = getParam->candidates;
    local_cc = 0;
    local_d0 = param_2->unk_0x10 - 0x40;
    forceExactSound = getOptions & 0x40;
    bVar8 = getOptions & 0x10;
    bVar13 = getOptions & 0x20;
    getOptions &= ~0x10;
    getOptions &= ~0x20;
    getOptions &= ~0x40;

    if ((getParam->subLanguage & 0x80) != 0 || (getParam->subLanguage & 0x40) != 0) {
        mandarinRegionMask = 0x01;  // Mainland China?
    } else if ((getParam->subLanguage & 0x08) != 0) {
        mandarinRegionMask = 0x04;  // Hong Kong?
    } else if ((getParam->subLanguage & 0x20) != 0 || (getParam->subLanguage & 0x10) != 0) {
        mandarinRegionMask = 0x02;  // Taiwan?
    }
    if (mandarinRegionMask != 0) {
        if (Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 4) {
            local_b0 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x15, ZI_WORK);
        } else {
            local_b0 = ZI8_NULL;
        }
        if (local_b0 != ZI8_NULL) {
            local_112 = getParam->subLanguage;
        }

        switch (mandarinRegionMask) {
            case 0x01:  // Mainland China?
                if ((getParam->subLanguage & 0x40) != 0 || (Zi8GetZHCharSet(ZI_WORK) & ZI_CHAR_SET_MAINLAND_SMALL) != 0) {
                    local_b0 = ZI8_NULL;
                }
                break;

            case 0x02:  // Taiwan?
                if ((getParam->subLanguage & 0x10) != 0 || (Zi8GetZHCharSet(ZI_WORK) & ZI_CHAR_SET_TAIWAN_SMALL) != 0) {
                    local_b0 = ZI8_NULL;
                }
                break;

            case 0x04:  // Hong Kong?
                if ((getParam->subLanguage & 0x10) != 0)
                    local_b0 = ZI8_NULL;
                break;
        }
    } else {
        mandarinRegionMask = getParam->subLanguage;
    }
    mandarinRegionMask = mandarinRegionMask << 4;
    remCandidatesToSkip = getParam->firstCandidate;
    getParam->count = 0;
    getParam->letters = 0;
    elementsEndI = getParam->elementCount;
    if (elementsEndI != 0) {
        for (; elementsEndI != 0; elementsEndI--) {
            if (getParam->elements[elementsEndI - 1] != ZI8_STROKE_CODE_ENDFILL)
                break;
        }
    }
    i = elementsEndI;
    if (elementsEndI != 0) {
        text1KeyLen = i++;
    } else {
        text1KeyLen = 0;
    }
    for (local_117 = 0; local_117 < 4; local_117++) {
        local_c0[local_117] = local_bc[local_117] = 0;
    }

    local_117 = 1;
    while (i < elementsEndI && local_117 / 2 < 4) {
        switch (getParam->elements[i]) {
            case ZI8_STROKE_CODE_x0:
                local_124 = 0b0000;
                break;
            case ZI8_STROKE_CODE_x1:
                local_124 = 0b0001;
                break;
            case ZI8_STROKE_CODE_x2:
                local_124 = 0b0010;
                break;
            case ZI8_STROKE_CODE_x3:
                local_124 = 0b0011;
                break;
            case ZI8_STROKE_CODE_x4:
                local_124 = 0b0100;
                break;
            case ZI8_STROKE_CODE_x5:
                local_124 = 0b0101;
                break;
            case ZI8_STROKE_CODE_x6:
                local_124 = 0b0110;
                break;
            case ZI8_STROKE_CODE_x7:
                local_124 = 0b0111;
                break;
            case ZI8_STROKE_CODE_PARTIAL_8:
                local_124 = 0b1000;
                break;
            case ZI8_STROKE_CODE_PARTIAL_4:
                local_124 = 0b0100;
                break;
            default:
                local_124 = 0;
                break;
        }
        if ((local_117 & 1) != 0) {
            local_bc[local_117 >> 1] |= local_124;
            if (getParam->elements[i] == ZI8_STROKE_CODE_PARTIAL_8) {
                local_c0[local_117 >> 1] |= 0x08;
            } else if (getParam->elements[i] == ZI8_STROKE_CODE_PARTIAL_4) {
                local_c0[local_117 >> 1] |= 0x04;
            } else if (getParam->elements[i] != ZI8_STROKE_CODE_BLANK) {
                local_c0[local_117 >> 1] |= 0x07;
            }
        } else {
            local_bc[local_117 >> 1] |= local_124 << 4;
            if (getParam->elements[i] == ZI8_STROKE_CODE_PARTIAL_8) {
                local_c0[local_117 >> 1] |= 0x80;
            } else if (getParam->elements[i] == ZI8_STROKE_CODE_PARTIAL_4) {
                local_c0[local_117 >> 1] |= 0x40;
            } else if (getParam->elements[i] != ZI8_STROKE_CODE_BLANK) {
                local_c0[local_117 >> 1] |= 0x70;
            }
        }
        local_117++;
        i++;
    }
    local_117--;
    chTableData = (Table0Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 0, ZI_WORK);
    chTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 0, ZI_WORK);
    charSyllTable = (Table5Entry*)Zi8GetTableAddress(ZI8_LANG_ZH, 5, ZI_WORK);
    charSyllTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 5, ZI_WORK);

    if ((getParam->ctx_b1 & 0x40) != 0 && Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 1) {
        local_fc = Zi8GetTableCount(ZI8_LANG_ZH, 0xF, ZI_WORK);
        if (local_fc != 0) {
            chTableLen = local_fc;
        }
    }
    if ((getParam->ctx_b0 & 0x80) != 0 && getParam->scratch != ZI8_NULL) {
        Zi8Memset(getParam->scratch, 0, (chTableLen + (8 - 1)) / 8);
        local_11c = ZI8_TRUE;
    }
    if ((getParam->ctx_b3 & 0x10) != 0) {
        if (candBuf == ZI8_NULL)
            goto FINISH;
        Zi8InitDupWordBuf(ZI_WORK);
        useDupWBuf = ZI8_TRUE;
    }
    switch (getParam->getMode) {
        case ZI8_GET_MODE_PINYIN:
            syllTableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
            syllTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 3, ZI_WORK);
            isPinyin = ZI8_TRUE;
            break;

        case ZI8_GET_MODE_ZHUYIN:
            syllTableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
            syllTableLen = Zi8GetTableCount(ZI8_LANG_ZH, 4, ZI_WORK);
            isPinyin = ZI8_FALSE;
            break;

        default:
            goto FINISH;
    }
    if ((getParam->ctx_b4_7 & 0x0F) == 0x02) {
        unk89TableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 8, ZI_WORK);
        unk89TableCount = Zi8GetTableCount(ZI8_LANG_ZH, 8, ZI_WORK);
    } else if ((getParam->ctx_b4_7 & 0x0F) == 0x04) {
        unk89TableData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 9, ZI_WORK);
        unk89TableCount = Zi8GetTableCount(ZI8_LANG_ZH, 9, ZI_WORK);
    }
    if (text1KeyLen > 8) {
        getParam->wordCandidates = 0;
        goto FINISH;
    }
    for (i = 0; i < text1KeyLen; i++) {
        text1Key[i] = getParam->elements[i];
    }
    ZI_WORK->unk_0x11FA = 0;
    if (text1KeyLen != 0) {
        local_125 = ZI8_FALSE;
        ZI_WORK->unk_0x11FA = 1;
        Zi8Memset(ZI_WORK->unk_0xFFA, 0, sizeof(ZI_WORK->unk_0xFFA));
        for (i = 0; i < syllTableLen; i++) {
            local_fe = syllTableData[i * 2] | ((ziU16)syllTableData[i * 2 + 1] << 4);
            if (Zi8IsMatch1Key(text1Key, text1KeyLen, local_fe, ZI8_FALSE, isPinyin, ZI8_FALSE)) {
                ZI_WORK->unk_0xFFA[i] = 0x01;
                local_125 = ZI8_TRUE;
            } else {
                ZI_WORK->unk_0xFFA[i] = 0x00;
            }
        }
        if (!local_125)
            goto FINISH;
    }

    if ((!param_2->unk_0x00 || getOptions == 0x05) && (getOptions != 0x05 || getParam->wordCharCount != 0) &&
        (getParam->wordCharCount == 0 || Zi8IsCharacter(*getParam->currentWord, ZI_WORK))) {
        resumeMatch = 0;
        while (Zi8MatchOEMdata(getParam->currentWord, getParam->wordCharCount, ZI8_LANG_ZH, currCand, 0x40, 0, resumeMatch, ZI_WORK) != 0) {
            resumeMatch = 1;
            local_fa = currCand[getParam->wordCharCount];
            if (local_fa == local_f4 || !Zi8IsCharacter(local_fa, ZI_WORK))
                continue;

            local_f4 = local_fa;
            local_f8 = Zi8Uni2Ord(local_fa, ZI_WORK);
            currChInfo = chTableData + local_f8;
            bVar11 = ZI8_FALSE;
            if (local_117 != 0) {
                for (i = 0; i < 4; i = i + 1) {
                    if (local_bc[i] != (local_c0[i] & currChInfo->maskBytes[i])) {
                        bVar11 = ZI8_TRUE;
                        break;
                    }
                }
            }
            if (bVar11)
                continue;

            match1KeyResult = Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
            if (match1KeyResult == 0 && !forceExactSound && (currChInfo->maskBytes[0] & 0x80) != 0) {
                match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData, local_f8,
                                                    isPinyin, useTone, mandarinRegionMask, ZI_WORK);
            }
            if (!match1KeyResult)
                continue;

            if (!useDupWBuf) {
                if (local_11c && Zi8SetFindCand(getParam->scratch, local_f8, ZI_WORK) != 0)
                    continue;
                for (i = 0; i < local_118; i++) {
                    if (local_fa == candBuf[i])
                        break;
                }
                if (i < local_118)
                    continue;
            } else {
                local_11e = 0;
                i = getParam->wordCharCount;
                while (currCand[i] != L'\0') {
                    i++;
                    local_11e++;
                }
                if (bVar8 != 0 || getParam->elementCount != 0) {
                    local_11e = 1;
                }
                if (Zi8IsDupWordW(currCand + getParam->wordCharCount, local_11e, ZI_WORK))
                    continue;
                currCand[getParam->wordCharCount + local_11e] = L'\0';
            }
            if (getOptions == 0x05) {
                if (++local_c4 >= param_2->maxSize)
                    goto FINISH;
            } else if (remCandidatesToSkip == 0) {
                local_c4++;
                local_118++;
                if (useDupWBuf) {
                    for (i = getParam->wordCharCount; currCand[i] != L'\0'; i++) {
                        candBuf[local_cc++] = currCand[i];
                    }
                    candBuf[local_cc++] = L' ';
                } else {
                    candBuf[local_cc++] = local_fa;
                }
                if (local_118 >= getParam->maxCandidates || local_cc > local_d0) {
                    getParam->wordCandidates = local_118;
                    goto FINISH;
                }
            } else {
                remCandidatesToSkip--;
            }
        }
    }

    if ((!param_2->unk_0x00 || getOptions == 0x05) && getParam->wordCharCount != 0 && Zi8IsCharacter(*getParam->currentWord, ZI_WORK)) {
        resumeMatch = ZI8_FALSE;

        while (Zi8MatchPUDdata(getParam->currentWord, getParam->wordCharCount, ZI8_LANG_ZH, currCand, 0x40, 0, resumeMatch, ZI_WORK) != 0) {
            resumeMatch = ZI8_TRUE;
            currCand[i] = L'\0';
            local_fa = currCand[getParam->wordCharCount];
            if (local_fa == local_f4)
                continue;
            local_f4 = local_fa;
            local_f8 = Zi8Uni2Ord(local_fa, ZI_WORK);
            currChInfo = chTableData + local_f8;

            bVar11 = ZI8_FALSE;
            if (local_117 != 0) {
                for (i = 0; i < 4; i++) {
                    if (local_bc[i] != (local_c0[i] & currChInfo->maskBytes[i])) {
                        bVar11 = ZI8_TRUE;
                        break;
                    }
                }
            }
            if (bVar11)
                continue;

            match1KeyResult = Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
            if (match1KeyResult == 0 && !forceExactSound && (currChInfo->maskBytes[0] & 0x80) != 0) {
                match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData, local_f8,
                                                    isPinyin, useTone, mandarinRegionMask, ZI_WORK);
            }
            if (match1KeyResult == '\0')
                continue;
            if (!useDupWBuf) {
                if (local_11c && Zi8SetFindCand(getParam->scratch, local_f8, ZI_WORK) != 0)
                    continue;
                for (i = 0; i < local_118; i++) {
                    if (local_fa == candBuf[i])
                        break;
                }
                if (i < local_118)
                    continue;
            } else {
                local_11e = 0;
                i = getParam->wordCharCount;
                while (currCand[i] != L'\0') {
                    i++;
                    local_11e++;
                }
                if (bVar8 != 0 || getParam->elementCount != 0) {
                    local_11e = 1;
                }
                if (Zi8IsDupWordW(currCand + getParam->wordCharCount, local_11e, ZI_WORK))
                    continue;
                currCand[getParam->wordCharCount + local_11e] = L'\0';
            }
            if (getOptions == 0x05) {
                if (++local_c4 >= param_2->maxSize)
                    goto FINISH;
            } else if (remCandidatesToSkip == 0) {
                local_c4++;
                local_118++;
                if (useDupWBuf) {
                    for (i = getParam->wordCharCount; currCand[i] != L'\0'; i++) {
                        candBuf[local_cc++] = currCand[i];
                    }
                    candBuf[local_cc++] = L' ';
                } else {
                    candBuf[local_cc++] = local_fa;
                }
                if (local_118 >= getParam->maxCandidates || local_cc > local_d0) {
                    getParam->wordCandidates = local_118;
                    goto FINISH;
                }
            } else {
                remCandidatesToSkip--;
            }
        }
    }

    if ((!param_2->unk_0x00 || getOptions == 0x05) && unk89TableCount == 0 && getParam->wordCharCount != 0 &&
        Zi8IsCharacter(*getParam->currentWord, ZI_WORK)) {
        local_100 = Zi8Uni2Ord(*getParam->currentWord, ZI_WORK);
        if (local_100 == 0xFFFF)
            goto SEARCH_UNK89_TAB;

        currChInfo = chTableData + local_100;
        local_d4 = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 1, ZI_WORK);
        local_d4 += currChInfo->tab1OffsLo | currChInfo->tab1OffsMid << 8 | (currChInfo->tab1OffsHi & 0xf) << 0x10;
        if (ZI_WORK->handleCangjie != 0) {
            switch (*local_d4 & 7) {
                case 2:
                    local_d4 += 2;
                    break;
                case 3:
                case 4:
                    local_d4 += 3;
                    break;
                case 5:
                    local_d4 += 4;
                    break;
                default:
                    local_d4 += 1;
                    break;
            }
        }
        if ((*local_d4 & 0x80) != 0) {
            local_126 = 0;
            local_d4 = local_d4 + ((*local_d4 & 0x7f) >> 4) + 1;
        } else {
            local_126 = 0x80;
        }
        while ((local_126 & 0x80) == 0) {
            local_126 = *local_d4++;
            local_127 = local_126 & 0x0F;
            if ((local_126 & mandarinRegionMask) == 0) {
                for (; local_127 != 0; local_127--) {
                    local_d4++;
                    while ((*local_d4 & 0x80) == 0) {
                        local_d4 += 2;
                    }
                    local_d4++;
                }
            }
            for (; local_127 != 0; local_127--) {
                local_104 = 0;
                local_d8 = getParam->currentWord;
                local_128 = getParam->wordCharCount - 1;
                while (local_128 != 0) {
                    local_104 = (ziU16)local_d4[1] << 8 | local_d4[0];
                    local_d4 += 2;
                    if ((local_104 & 0x8000) != 0)
                        break;

                    if (*++local_d8 != Zi8Ord2Uni(local_104, ZI_WORK))
                        break;
                    local_128--;
                }
                if (local_128 != 0)
                    goto CONTINUE_WORD_TABLE;

                local_104 = (ziU16)local_d4[1] << 8 | local_d4[0];
                local_dc = local_d4;
                local_d4 += 2;
                if (local_b0 != ZI8_NULL) {
                    i = 0;
                    while (ZI8_TRUE) {
                        while (ZI8_TRUE) {
                            local_102 = (ziU16)local_dc[i + 1] << 8 | local_dc[i];
                            if ((local_112 & local_b0[local_102 & 0x7FFF]) == 0) {
                                local_102 = 0;
                                break;
                            }

                            if ((local_102 & 0x8000) != 0)
                                break;

                            i += 2;
                        }
                        if ((local_102 & 0x8000) != 0)
                            break;
                    }
                }

                local_102 = local_104 & 0x7FFF;
                local_100 = Zi8Ord2Uni(local_102, ZI_WORK);
                currChInfo = chTableData + local_102;
                if (local_117 != 0) {
                    for (i = 0; i < 4; i++) {
                        if (local_bc[i] != (local_c0[i] & currChInfo->maskBytes[i]))
                            goto CONTINUE_WORD_TABLE;
                    }
                }
                bVar11 = ZI8_FALSE;
                if (ZI_WORK->unk_0x11FA != 0) {
                    local_f6 = (ziU16)currChInfo->syllIdxHi << 1 | (((ziU16)currChInfo->syllIdxLo & 0x80) >> 7);
                    if (ZI_WORK->unk_0xFFA[local_f6] == 0) {
                        bVar11 = ZI8_TRUE;
                    }
                }
                if (!bVar11) {
                    match1KeyResult =
                        Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
                } else {
                    match1KeyResult = 0;
                }
                if (match1KeyResult == 0 && !forceExactSound && (currChInfo->maskBytes[0] & 0x80) != 0) {
                    match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData,
                                                        local_102, isPinyin, useTone, mandarinRegionMask, ZI_WORK);
                }
                if (match1KeyResult == 0)
                    goto CONTINUE_WORD_TABLE;
                if (!useDupWBuf) {
                    if (local_11c) {
                        if (Zi8SetFindCand(getParam->scratch, local_102, ZI_WORK) != 0)
                            goto CONTINUE_WORD_TABLE;
                    }
                    for (i = 0; i < (int)local_118; i++) {
                        if (local_100 == candBuf[i])
                            goto CONTINUE_WORD_TABLE;
                    }
                } else {
                    local_11e = 0;
                    do {
                        local_102 = (ziU16)local_dc[1] << 8 | *local_dc;
                        local_dc += 2;
                        candBuf[local_cc + local_11e++] = Zi8Ord2Uni(local_102 & 0x7FFF, ZI_WORK);
                    } while ((local_102 & 0x8000) == 0);
                    if (bVar8 != 0 || getParam->elementCount != 0) {
                        local_11e = 1;
                    }
                    if (Zi8IsDupWordW(candBuf + local_cc, local_11e, ZI_WORK))
                        goto CONTINUE_WORD_TABLE;

                    candBuf[local_cc + local_11e] = L'\0';
                }

                if (getOptions == 0x05) {
                    if (++local_c4 >= param_2->maxSize)
                        goto FINISH;
                } else if (remCandidatesToSkip == 0) {
                    local_c4++;
                    local_118++;
                    if (useDupWBuf) {
                        local_cc += local_11e;
                        candBuf[local_cc++] = L' ';
                    } else {
                        candBuf[local_cc++] = local_100;
                    }
                    if (local_118 >= getParam->maxCandidates || local_cc > local_d0) {
                        getParam->wordCandidates = local_118;
                        goto FINISH;
                    }
                } else {
                    remCandidatesToSkip--;
                }

            CONTINUE_WORD_TABLE:
                if ((local_104 & 0x8000) == 0) {
                    local_d4++;
                    while ((*local_d4 & 0x80) == 0) {
                        local_d4 += 2;
                    }
                    local_d4++;
                }
            }
        }
    }
    if (getParam->wordCharCount != 0) {
        getParam->wordCandidates = local_118;
    }

SEARCH_UNK89_TAB:
    if (!param_2->unk_0x00 && unk89TableCount != 0) {
        for (local_106 = 0; local_106 < unk89TableCount; local_106++) {
            local_f0 = ((ziU16)unk89TableData[local_106 * 2] << 8) + unk89TableData[local_106 * 2 + 1];
            currChInfo = chTableData + local_f0;
            if ((currChInfo->maskBytes[0] & mandarinRegionMask) != 0 && (local_b0 == ZI8_NULL || (local_112 & local_b0[local_f0]) != 0)) {
                if (local_117 != 0) {
                    for (i = 0; i < 4; i++) {
                        if (local_bc[i] != (local_c0[i] & currChInfo->maskBytes[i]))
                            break;
                    }
                    if (i < 4)
                        continue;
                }
                bVar11 = ZI8_FALSE;
                if (ZI_WORK->unk_0x11FA != 0) {
                    local_f6 = (ziU16)currChInfo->syllIdxHi << 1 | (((ziU16)currChInfo->syllIdxLo & 0x80) >> 7);
                    if (ZI_WORK->unk_0xFFA[local_f6] == 0) {
                        bVar11 = ZI8_TRUE;
                    }
                }
                if (!bVar11) {
                    match1KeyResult =
                        Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
                } else {
                    match1KeyResult = 0;
                }
                if (match1KeyResult == 0 && !forceExactSound && (chTableData[local_f0].maskBytes[0] & 0x80) != 0) {
                    match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData,
                                                        local_f0, isPinyin, useTone, mandarinRegionMask, ZI_WORK);
                }
                if (match1KeyResult == 0)
                    continue;

                if (!useDupWBuf) {
                    if (local_11c) {
                        if (Zi8SetFindCand(getParam->scratch, local_102, ZI_WORK) != 0)
                            continue;
                    }
                    local_f0 = Zi8Ord2Uni(local_f0, ZI_WORK);
                    for (i = 0; i < local_118; i = i + 1) {
                        if (local_f0 == candBuf[i])
                            break;
                    }
                    if (i < local_118)
                        continue;
                } else {
                    local_f0 = Zi8Ord2Uni(local_f0, ZI_WORK);
                    if (Zi8IsDupWordW(&local_f0, 1, ZI_WORK)) {
                        continue;
                    }
                }

                if (remCandidatesToSkip == 0) {
                    local_c4++;
                    if (param_2->unk_0x00 == '\0') {
                        local_118++;
                        candBuf[local_cc++] = local_f0;
                        if (useDupWBuf) {
                            candBuf[local_cc++] = L' ';
                        }
                    } else {
                        if (local_c4 >= param_2->maxSize)
                            goto FINISH;
                    }
                    if (local_118 >= getParam->maxCandidates || local_cc > local_d0) {
                        goto FINISH;
                    }
                } else {
                    remCandidatesToSkip--;
                }
            }
        }
    }
    if (!param_2->unk_0x00 && Zi8GetZHuwdPtr(&uwdEntries, &uwdLen, ZI_WORK)) {
        for (uwdI = 0; uwdI < uwdLen;) {
            if (getParam->elementCount != 0 && (uwdEntries[1] & 0x80) == 0)
                goto CONTINUE_UWD;

            uwdOrd = (ziU16)(uwdEntries[1] & 0x7f) << 8 | (ziU16)uwdEntries[2];
            currChInfo = chTableData + uwdOrd;
            if ((currChInfo->maskBytes[0] & mandarinRegionMask) != 0 && (local_b0 == ZI8_NULL || (local_112 & local_b0[uwdOrd]) != 0)) {
                if (local_117 != 0) {
                    bVar11 = ZI8_FALSE;
                    for (local_e4 = 0; local_e4 < 4; local_e4 = local_e4 + 1) {
                        if (local_bc[local_e4] != (local_c0[local_e4] & currChInfo->maskBytes[local_e4])) {
                            bVar11 = ZI8_TRUE;
                            break;
                        }
                    }
                    if (bVar11)
                        goto CONTINUE_UWD;
                }
                match1KeyResult = Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
                if (match1KeyResult == 0 && !forceExactSound && (currChInfo->maskBytes[0] & 0x80) != 0) {
                    match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData,
                                                        uwdOrd, isPinyin, useTone, mandarinRegionMask, ZI_WORK);
                }
                if (match1KeyResult == 0)
                    goto CONTINUE_UWD;

                if (!useDupWBuf) {
                    if (local_11c) {
                        if (Zi8SetFindCand(getParam->scratch, local_102, ZI_WORK) != 0)
                            goto CONTINUE_UWD;
                    }
                    local_10e = Zi8Ord2Uni(uwdOrd, ZI_WORK);
                    for (local_e4 = 0; local_e4 < local_118; local_e4++) {
                        if (local_10e == candBuf[local_e4])
                            break;
                    }
                    if (local_e4 < local_118)
                        goto CONTINUE_UWD;
                } else {
                    local_10e = Zi8Ord2Uni(uwdOrd, ZI_WORK);
                    if (Zi8IsDupWordW(&local_10e, 1, ZI_WORK)) {
                        goto CONTINUE_UWD;
                    }
                }

                if (remCandidatesToSkip == 0) {
                    local_c4++;
                    local_118++;
                    candBuf[local_cc++] = local_10e;
                    if (useDupWBuf) {
                        candBuf[local_cc++] = L' ';
                    }
                    if (local_118 >= getParam->maxCandidates || local_cc > local_d0)
                        goto FINISH;
                } else {
                    remCandidatesToSkip--;
                }
            }

        CONTINUE_UWD:
            uwdI++;
            uwdEntries += 3;
        }
    }
    currChInfo = chTableData;
    local_f4 = 0;
    for (local_f0 = 0; local_f0 < chTableLen;) {
        if ((currChInfo->maskBytes[0] & mandarinRegionMask) != 0 && (local_b0 == ZI8_NULL || (local_112 & local_b0[local_f0]) != 0)) {
            if (local_117 != 0) {
                for (i = 0; i < 4; i++) {
                    if (local_bc[i] != (local_c0[i] & currChInfo->maskBytes[i]))
                        break;
                }
                if (i < 4)
                    goto LAB_81464aa4;
            }
            bVar11 = ZI8_FALSE;
            if (ZI_WORK->unk_0x11FA != 0) {
                local_f6 = (ziU16)currChInfo->syllIdxHi << 1 | (((ziU16)currChInfo->syllIdxLo & 0x80) >> 7);
                if (ZI_WORK->unk_0xFFA[local_f6] == 0) {
                    bVar11 = ZI8_TRUE;
                }
            }
            if (!bVar11) {
                match1KeyResult = Zi8IsMatch1Key(text1Key, text1KeyLen, Zi8GetPCode(syllTableData, currChInfo), requireExactLen, isPinyin, useTone);
            } else {
                match1KeyResult = 0;
            }
            if (match1KeyResult == 0 && !forceExactSound && (currChInfo->maskBytes[0] & 0x80) != 0) {
                match1KeyResult = MatchAltSound1Key(text1Key, text1KeyLen, requireExactLen, charSyllTable, charSyllTableLen, syllTableData, local_f0,
                                                    isPinyin, useTone, mandarinRegionMask, ZI_WORK);
            }
            if (match1KeyResult == 0)
                goto LAB_81464aa4;

            local_110 = ((ziU16)currChInfo->chHi << 8) + (ziU16)currChInfo->chLo;
            if (local_110 != local_f4) {
                local_f4 = local_110;
                if (!useDupWBuf) {
                    if (!local_11c || Zi8SetFindCand(getParam->scratch, local_f0, ZI_WORK) == 0) {
                        for (i = 0; i < local_118; i++) {
                            if (local_110 == candBuf[i])
                                break;
                        }
                        if (i < local_118)
                            goto LAB_81464aa4;
                    }
                } else {
                    if (Zi8IsDupWordW(&local_110, 1, ZI_WORK)) {
                        goto LAB_81464aa4;
                    }
                }

                if (remCandidatesToSkip == 0) {
                    local_c4++;
                    if (!param_2->unk_0x00) {
                        local_118++;
                        candBuf[local_cc++] = local_110;
                        if (useDupWBuf) {
                            candBuf[local_cc++] = ' ';
                        }
                    } else {
                        if (local_c4 >= param_2->maxSize)
                            break;
                    }
                    if (local_118 >= getParam->maxCandidates || local_cc > local_d0)
                        break;
                } else {
                    remCandidatesToSkip--;
                }
            }
        }
    LAB_81464aa4:
        local_f0++;
        currChInfo++;
    }

FINISH:
    if (useDupWBuf && local_cc != 0) {
        candBuf[local_cc++] = 0;
    }
    getParam->count = local_118;
    Zi8LogError(0x64, ZI_WORK);
    return local_c4;
}

ziBool Zi8ZHCheckSpelling(ziWChar* param_1, ziWChar* param_2, ziU8 param_3 ZI_NEED_WORK) {
    int i;

    ziBool spellingOk;
    ziBool isPinyin;
    ziU8 syllLen;
    ziU8 toneMask;
    ziU8 syllMaskHi;
    ziU8 syllDatHi;
    ziU8 syllMaskLo;
    ziU8 syllDatLo;
    ziBool local_154;

    ziU16 syllEntryCount;
    ziU16 syllMask;
    ziU16 syllDat;

    ziU8* syllTonesData;
    ziU8* syllEntries;
    ziS32 local_140;
    ziS32 syllI;
    ziU32 syllEntryOff;

    ziWChar elementBuf[64];
    ziWChar candidateBuf[16];
    ziU16 azStack_110[16];
    ziU16 azStack_130[16];
    ziGetParam getParam;

    // iVar5;
    spellingOk = ZI8_FALSE;
    syllTonesData = ZI8_NULL;
    Zi8LogError(0x64, ZI_WORK);
    if (*param_1 == L'\0') {
        Zi8ReplaceLastError(0x187, ZI_WORK);
        goto RETURN;
    }

    if (BPMF_BASE <= param_1[0] && param_1[0] <= BPMF_CHAR(BPMF_CHAR_MEDIAL_IU)) {
        isPinyin = ZI8_FALSE;
    } else {
        isPinyin = ZI8_TRUE;
    }
    if (Zi8GetFormatVersion(ZI8_LANG_ZH, ZI_WORK) >= 4) {
        syllEntryOff = Zi8GetTableCount(ZI8_LANG_ZH, 0x1A, ZI_WORK);
    } else {
        syllEntryOff = 0;
    }
    if (syllEntryOff != 0) {
        syllTonesData = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 0x1A, ZI_WORK);
    }

    if (BPMF_BASE <= param_2[0] && param_2[0] <= BPMF_CHAR(BPMF_CHAR_MEDIAL_IU)) {
        isPinyin = ZI8_FALSE;
        syllEntries = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 4, ZI_WORK);
        syllEntryCount = Zi8GetTableCount(ZI8_LANG_ZH, 4, ZI_WORK);
    } else {
        isPinyin = ZI8_TRUE;
        syllEntries = (ziU8*)Zi8GetTableAddress(ZI8_LANG_ZH, 3, ZI_WORK);
        syllEntryCount = Zi8GetTableCount(ZI8_LANG_ZH, 3, ZI_WORK);
    }

    for (local_140 = i = 0; i < param_3; i++) {
        switch (param_2[i]) {
            case PINYIN_TONE(1):
                toneMask = 0x01;
                break;
            case PINYIN_TONE(2):
                toneMask = 0x02;
                break;
            case PINYIN_TONE(3):
                toneMask = 0x04;
                break;
            case PINYIN_TONE(4):
                toneMask = 0x08;
                break;
            case PINYIN_TONE(5):
                toneMask = 0x10;
                break;

            default:
                continue;
        }

        if (syllTonesData != ZI8_NULL) {
            while (1) {
                syllI = (i - local_140) + 1;
                if (syllI <= 1) {
                    goto RETURN;
                }
                if (isPinyin) {
                    Zi8GetPyPhonetic(param_1 + local_140, syllI, azStack_110, azStack_130, &syllLen, &syllMask, &syllDat, ZI_WORK);
                } else {
                    syllLen = Zi8GetBpmfPhonetic(param_1 + local_140, syllI, azStack_110, azStack_130, &syllMask, &syllDat, ZI_WORK);
                    if (syllLen == 0) {
                        syllLen = 1;
                    }
                }

                if (syllI == syllLen)
                    break;

                if (syllLen == 0)
                    goto RETURN;

                local_140 = local_140 + syllLen;
            }
            if ((syllDat & PINYIN_FINAL_MASK) != 0) {
                local_154 = 0;
            } else {
                local_154 = 1;
            }
            syllMaskHi = syllMask;
            syllMaskLo = (syllMask >> 8) & 0xFF;
            syllDatHi = syllDat;
            syllDatLo = (syllDat >> 8) & 0xFF;
            for (syllEntryOff = syllI = 0; syllI < syllEntryCount;) {
                if (syllDatHi == (syllMaskHi & syllEntries[syllEntryOff]) && syllDatLo == (syllMaskLo & syllEntries[syllEntryOff + 1])) {
                    if ((toneMask & syllTonesData[syllI]) != 0)
                        break;
                    if (!local_154)
                        goto RETURN;
                }
                syllI++;
                syllEntryOff += 2;
            }
        }

        param_1[i] = param_2[i];
        local_140 = i + 1;
    }

    for (i = 0; param_1[i] != L'\0'; i++) {
        if ('a' <= param_1[i] && param_1[i] <= 'z') {
            elementBuf[i] = param_1[i] + PINYIN_BASE;
        } else if (param_1[i] == '\'' || param_1[i] == PINYIN_CHAR('`')) {
            if (i < param_3) {
                elementBuf[i] = param_1[i] = param_2[i];
            } else {
                elementBuf[i] = PINYIN_CHAR('`');
            }
        } else if (param_1[i] == 0x2c9) {
            elementBuf[i] = PINYIN_TONE(1);
        } else if (param_1[i] == 0x2ca) {
            elementBuf[i] = PINYIN_TONE(2);
        } else if (param_1[i] == 0x2c7) {
            elementBuf[i] = PINYIN_TONE(3);
        } else if (param_1[i] == 0x2cb) {
            elementBuf[i] = PINYIN_TONE(4);
        } else if (param_1[i] == 0x2d9) {
            elementBuf[i] = PINYIN_TONE(5);
        } else {
            elementBuf[i] = param_1[i];
        }
    }
    getParam.language = ZI8_LANG_ZH;
    if (isPinyin) {
        getParam.getMode = ZI8_GET_MODE_PINYIN_A;
        getParam.subLanguage = 0b001;
    } else {
        getParam.getMode = ZI8_GET_MODE_UNK_x02;
        getParam.subLanguage = 0b010;
    }
    getParam.context = 0x11;
    getParam.getOptions = 0x00;
    getParam.elements = elementBuf;
    getParam.elementCount = i;
    getParam.currentWord = ZI8_NULL;
    getParam.wordCharCount = 0;
    getParam.candidates = candidateBuf;
    getParam.maxCandidates = 1;
    getParam.firstCandidate = 0;
    if (_Zi8CheckCandidates(&getParam, ZI_WORK) != 0) {
        spellingOk = ZI8_TRUE;
    }

RETURN:
    return spellingOk;
}
