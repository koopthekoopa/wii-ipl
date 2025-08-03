#ifndef REVOLUTION_NCD_H
#define REVOLUTION_NCD_H

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#include <revolution/os/OSTime.h>

#include <revolution/ncd/NCDTypes.h>

NCDErr  NCDReadConfig(NCDConfig* config);
NCDErr  NCDWriteConfig(const NCDConfig* config);

NCDErr  NCDSetIpConfig(NCDIpConfig* ipConfig);
NCDErr  NCDSetIfConfig(NCDIfConfig* ifConfig);

NCDErr  NCDGetCurrentIpConfig(NCDIpConfig* ipConfig);

NCDErr  NCDGetLinkStatus();
BOOL    NCDIsInterfaceDecided();

NCDErr  NCDGetWirelessMacAddress(u8* macAddr);

NCDErr  NCDLockWirelessDriver();
NCDErr  NCDUnlockWirelessDriver(s32 id);

s32     NCDRestoreConfig();

void    NCDSleep(OSTime tick);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_NCD_H
