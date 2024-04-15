#ifndef REVOEX_NET_NETDIGEST_H
#define REVOEX_NET_NETDIGEST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32 NETCalcCRC32(const void* data, s32 size);

#ifdef __cplusplus
}
#endif

#endif // REVOEX_NET_NETDIGEST_H


