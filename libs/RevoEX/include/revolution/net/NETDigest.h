#ifndef REVOEX_NET_DIGEST_H
#define REVOEX_NET_DIGEST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u32 NETCalcCRC32(const void* pData, s32 size);

#ifdef __cplusplus
}
#endif

#endif // REVOEX_NET_DIGEST_H


