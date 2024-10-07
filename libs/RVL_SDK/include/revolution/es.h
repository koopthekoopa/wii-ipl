#ifndef REVOLUTION_ESP_H
#define REVOLUTION_ESP_H

#include <revolution/types.h>
#include <private/estypes.h>

#ifdef __cplusplus
extern "C" {
#endif

ESError ES_OpenTitleContentFile(ESTitleId titleId, const ESTicketView* ticketView, u32 index);
ESError ES_SeekContentFile(s32 fd, s32 offset, u32 whence);
ESError ES_ReadContentFile(s32 fd, void* buf, u32 size);
ESError ES_CloseContentFile(s32 fd);

s32 ES_SetUid(ESTitleId titleId);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ESP_H


