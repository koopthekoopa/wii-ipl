#ifndef EZI_TEXT_H
#define EZI_TEXT_H

#include <revolution/types.h>

enum {
    EZTX_LANG_ENGLISH_USA,
    EZTX_LANG_ENGLISH_UK,
    EZTX_LANG_FRENCH_EUROPE,
    EZTX_LANG_GERMAN,
    EZTX_LANG_ITALIAN,
    EZTX_LANG_SPANISH_EUROPE,
    EZTX_LANG_SPANISH_AMERICAN,
    EZTX_LANG_FRENCH_CANADA,
    EZTX_LANG_DUTCH,
    EZTX_LANG_9,
    EZTX_LANG_MAX,
};

typedef struct EZTXStaticTable {
    u32     unk_0x00;
    u8*     dictData;   // 0x00
} EZTXStaticTable;

u32     EZTXGetGlobalDataSize();

BOOL    EZTXAttachOEMDict(u8, u16*, s32*, void*);
BOOL    EZTXDetachOEMDict(u8, void*);

void    EZTXGetCandidates(u32*, void*);

#endif // EZI_TEXT_H
