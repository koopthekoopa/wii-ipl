#ifndef REVOEX_NET_DIGEST_H
#define REVOEX_NET_DIGEST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16 NETCalcCRC16(const void* pData, s32 size);
u32 NETCalcCRC32(const void* pData, s32 size);

typedef struct NETMD5Context {
    union {
        struct {
            u32 a;
            u32 b;
            u32 c;
            u32 d;
        };
        u32 state[4];
    };
    u64 length;
    union {
        u32 buffer32[16];
        u8 buffer8[64];
    };
} NETMD5Context;

#define NET_MD5_DIGEST_SIZE 16

void NETMD5Init(NETMD5Context* context);
void NETMD5Update(NETMD5Context* context, const void* input, u32 length);
void NETMD5GetDigest(NETMD5Context* context, void* digest);

static void NETCalcMD5(void* digest, const void* input, u32 length) {
    NETMD5Context context;

    NETMD5Init(&context);
    NETMD5Update(&context, input, length);
    NETMD5GetDigest(&context, digest);
}

#ifdef __cplusplus
}
#endif

#endif // REVOEX_NET_DIGEST_H


