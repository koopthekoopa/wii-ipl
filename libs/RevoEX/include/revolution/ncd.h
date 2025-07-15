#ifndef REVOLUTION_NCD_H
#define REVOLUTION_NCD_H

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

#include <revolution/ncd/NCDTypes.h>

s32 NCDSetIpConfig(NCDIpConfig* ipConfig);
s32 NCDSetIfConfig(NCDIfConfig* ifConfig);

s32 NCDGetLinkStatus();

s32 NCDGetWirelessMacAddress(u8* macAddr);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // REVOLUTION_NCD_H
