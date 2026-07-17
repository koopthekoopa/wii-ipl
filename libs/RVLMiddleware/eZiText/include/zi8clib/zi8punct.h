#ifndef ZI8_CLIB_PUNCT_H
#define ZI8_CLIB_PUNCT_H

#include <zi8clib/zitypes.h>

typedef struct {
    ziU8 unk_0x00;      // 0x00
    ziU8 unk_0x01;      // 0x01
    ziU8 unk_0x02;      // 0x02
    ziU8 unk_0x03;      // 0x03 - Maybe exists
    ziWChar* unk_0x04;  // 0x04
    ziU8 unk_0x08;      // 0x08 - Maybe exists
    ziU8 unk_0x09;      // 0x09 - Maybe exists
    ziU8 unk_0x0A;      // 0x0A - Maybe exists
    ziU8 unk_0x0B;      // 0x0B - Maybe exists
    ziS32 unk_0x0C;     // 0x0C
    ziU16 unk_0x10;     // 0x10
    ziU8 unk_0x12;      // 0x12
    ziU8 unk_0x13;      // 0x13
    ziU8 unk_0x14;      // 0x14
    ziU8 unk_0x15;      // 0x15
    ziU8 unk_0x16;      // 0x16
    ziU8 unk_0x17;      // 0x17 - Maybe exists
} ziGetCandidatesParam;

ziS32 Zi8Punctuation(ziGetParam* param_1, ziGetCandidatesParam* param_2);

#endif  // ZI8_CLIB_PUNCT_H
