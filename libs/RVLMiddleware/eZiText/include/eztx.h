#ifndef EZI_TEXT_H
#define EZI_TEXT_H

#include <revolution/types.h>

u32     EZTXGetGlobalDataSize();

BOOL    EZTXAttachOEMDict(u8, u16*, s32*, void*);
BOOL    EZTXDetachOEMDict(u8, void*);

void    EZTXGetCandidates(u32*, void*);

#endif // EZI_TEXT_H
