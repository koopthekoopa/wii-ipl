#ifndef PRIVATE_ES_H
#define PRIVATE_ES_H

#include <revolution/types.h>
#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

s32     ES_OpenTitleContentFile(ESTitleId titleId, const ESTicketView* ticketView, u32 index);
s32     ES_OpenContentFile(s32 idx);
ESError ES_SeekContentFile(s32 fd, s32 offset, u32 whence);
ESError ES_ReadContentFile(s32 fd, void* buf, u32 size);
ESError ES_CloseContentFile(s32 fd);

ESError ES_SetUid(ESTitleId titleId); // (For System Menu only)

ESError ES_ListTitlesOnCard(ESTitleId* titleIds, u32* numTitles);

ESError ES_GetTicketViews(ESTitleId titleId, ESTicketView* ticketView, u32* ticketCount);

BOOL    ES_VerifyCK2(); // Check for "Common Key 2" (The Korean Key)

#ifdef __cplusplus
}
#endif

#endif // PRIVATE_ES_H
