#ifndef REVOEX_NET_DIGEST_H
#define REVOEX_NET_DIGEST_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

u16 NETCalcCRC16(const void* data, s32 size);
u32 NETCalcCRC32(const void* data, s32 size);

/* == MD5 == */

typedef struct NETMD5Context {
    union {
        struct {
            u32 a;
            u32 b;
            u32 c;
            u32 d;
        };
        u32 state[4];
    };          // 0x00
    u64 length; // 0x04
    union {
        u32 buffer32[16];
        u8  buffer8[64];
    };          // 0x0C
} NETMD5Context;

#define NET_MD5_DIGEST_SIZE 16

typedef u8 NETMD5Sum[NET_MD5_DIGEST_SIZE];

void NETMD5Init(NETMD5Context* context);
void NETMD5Update(NETMD5Context* context, const void* input, u32 length);
void NETMD5GetDigest(NETMD5Context* context, void* digest);

static void NETCalcMD5(void* digest, const void* input, u32 length) {
    NETMD5Context context;

    NETMD5Init(&context);
    NETMD5Update(&context, input, length);
    NETMD5GetDigest(&context, digest);
}

/* == SHA1 == */

typedef struct NETSHA1Context {
    u8  unk_0x00[0x60]; // 0x00
} NETSHA1Context;

#define NET_SHA1_DIGEST_SIZE    20

typedef u8 NETSHA1Sum[NET_SHA1_DIGEST_SIZE];

void NETSHA1Init(NETSHA1Context* context);
void NETSHA1Update(NETSHA1Context* context, const void* input, u32 length);
void NETSHA1GetDigest(NETSHA1Context* context, void* digest);

static void NETCalcSHA1(void* digest, const void* input, u32 length) {
    NETSHA1Context context;

    NETSHA1Init(&context);
    NETSHA1Update(&context, input, length);
    NETSHA1GetDigest(&context, digest);
}

#ifdef __cplusplus
}
#endif

#endif // REVOEX_NET_DIGEST_H
