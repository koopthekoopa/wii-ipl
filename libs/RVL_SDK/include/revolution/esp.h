#ifndef REVOLUTION_ESP_H
#define REVOLUTION_ESP_H

#include <revolution/types.h>

#include <private/es/types.h>

#ifdef __cplusplus
extern "C" {
#endif

ESError ESP_InitLib();
ESError ESP_CloseLib();

ESError ESP_LaunchTitle(ESTitleId titleId, ESTicketView* ticket);

s32     ESP_OpenContentFile(u32 index);
ESError ESP_ReadContentFile(s32 fd, void* buffer, u32 size);
ESError ESP_SeekContentFile(s32 fd, s32 offset, u32 whence);
ESError ESP_CloseContentFile(int fd);

ESError ESP_ListTitleContentsOnCard(ESTitleId titleId, ESContentId* contentIds, u32* numContents);

ESError ESP_GetTicketViews(ESTitleId titleId,  ESTicketView* ticketViewList, u32* numTicketViews);

ESError ESP_DiGetTicketView(void* ticket, ESTicketView* ticketView);

ESError ESP_DiGetTmd(ESTitleMeta* tmd, u32* tmdSize);
ESError ESP_GetTmdView(ESTitleId titleId, ESTmdView* tmdView, u32* tmdSize);

ESError ESP_GetDataDir(ESTitleId titleId, char* dataDir);
ESError ESP_GetTitleId(ESTitleId* titleId);

ESError ESP_GetConsumption(ESTicketId ticketId, ESLpEntry* limitEntries, u32* numEntries);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ESP_H
