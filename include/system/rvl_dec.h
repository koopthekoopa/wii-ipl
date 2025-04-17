#ifndef RVL_DECODER_H
#define RVL_DECODER_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

int Rvl_decode(u8* out, u8* in);
int Rvl_decode_szs(u8* out, u8* in);
int Rvl_decode_ash(u8* out, u8* in);
int Rvl_decode_asr(u8* out, u8* in);

static int Rvl_decode_get_magic(u8* in) {
    return *(u32*)&in[0] >> 8;
}

static int Rvl_decode_szs_size(const u8* in) {
    return (in[4] << 24) | (in[5] << 16) | (in[6] << 8) | in[7];
}

/* This is likely for ASR files as well. */
static int Rvl_decode_ash_size(const u8* in) {
    return (in[5] << 16) | (in[6] << 8) | in[7];
}

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // RVL_DECODER_H
