#ifndef TV_REMOTE_CONTROL_H
#define TV_REMOTE_CONTROL_H

#include <revolution.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

BOOL    TVRCInit(void* pRsrc);
BOOL    TVRCSetModelType(int makerID, int typeNo, void* pFileData, int length);
void    TVRCSetRepeatTimeout(u32 value);
BOOL    TVRCSendStopAsync();
BOOL    TVRCIsActive();
BOOL    TVRCIsValidCommand(int cmd);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // TV_REMOTE_CONTROL_H


