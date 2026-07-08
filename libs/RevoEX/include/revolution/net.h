#ifndef REVOLUTION_NET_H
#define REVOLUTION_NET_H

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

#include <revolution/net/NETDigest.h>
#include <revolution/net/NETMisc.h>

int NETGetWirelessMacAddress(void* data);

int NETGetStartupErrorCode(int);
int NETGetStartupErrorCodeEx(int, int);

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // REVOLUTION_SO_EX_H
