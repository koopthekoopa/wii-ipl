#ifndef REVOLUTION_ESP_H
#define REVOLUTION_ESP_H

#include <revolution/types.h>
#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

s32 ESP_InitLib();
s32 ESP_CloseLib();

s32 ESP_GetTmdView(ESTitleId titleId, ESTmdView* tmdView, u32* tmdCount);
s32 ESP_GetTicketViews(ESTitleId titleId, ESTicketView* ticketView, u32* ticketCount);

s32 ESP_GetTitleId(ESTitleId* titleId);

s32 ESP_LaunchTitle(ESTitleId titleId, ESTicketView* ticketView);

s32 ESP_ListTitleContentsOnCard(ESTitleId titleId, ESContentId* cIds, u32* cntCount);

s32 ESP_GetConsumption(ESTicketId ticket, ESLpEntry* lpEntry, u32* entries);

s32 ESP_DiGetTicketView(const void*, ESTicketView*);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ESP_H
