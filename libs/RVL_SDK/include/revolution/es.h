#ifndef REVOLUTION_ES_H
#define REVOLUTION_ES_H

#include <revolution/types.h>
#include <private/estypes.h>

#ifdef __cplusplus
extern "C" {
#endif

s32     ES_OpenTitleContentFile(ESTitleId titleId, const ESTicketView* ticketView, u32 index); // Open content file from title.
ESError ES_SeekContentFile(s32 fd, s32 offset, u32 whence); // Seek from an open content file.
ESError ES_ReadContentFile(s32 fd, void* buf, u32 size); // Read from an open content file.
ESError ES_CloseContentFile(s32 fd); // Close an open content file.

ESError ES_SetUid(ESTitleId titleId); // (For System Menu only)

BOOL    ES_VerifyCK2(); // Check for "Common Key 2" (The Korean Key)

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_ES_H


