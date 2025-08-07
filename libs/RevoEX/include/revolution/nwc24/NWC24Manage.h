#ifndef REVOLUTION_NWC24_MANAGE_H
#define REVOLUTION_NWC24_MANAGE_H

#include <revolution/types.h>

#include <revolution/nwc24/NWC24Err.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL        NWC24IsMsgLibOpened();
BOOL        NWC24IsMsgLibOpenedByTool();
BOOL        NWC24IsMsgLibOpenBlocking();

#define NWC24_LIB_WORK_SIZE 0x4000

NWC24Err    NWC24OpenLib(void* work);
NWC24Err    NWC24OpenMsgLib(void* work);
NWC24Err    NWC24CloseLib();
NWC24Err    NWC24CloseMsgLib();

NWC24Err    NWC24BlockOpenMsgLib(BOOL block);

NWC24Err    NWC24Check(u32 usage);
s32         NWC24GetErrorCode();

NWC24Err    NWC24InitFiles(void* work, BOOL force);
NWC24Err    NWC24InitFilesIndividually(void* work, BOOL forceConfig, BOOL forceMBox, BOOL forceFriendList, BOOL forceDlTask);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NWC24_MANAGE_H
