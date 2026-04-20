#include "system/rvl_dec.h"

#define SZS_SIGNATURE 0x0059617A /* 'Yaz */
#define ASH_SIGNATURE 0x00415348 /* 'ASH' */
#define ASR_SIGNATURE 0x00415352 /* 'ASR' */

int Rvl_decode(u8* out, u8* in) {
#ifdef TARGET_RVL
    // Original ASM Implementation

    register u8* dataIn = in;

    // clang-format off
#ifdef __MWERKS__
    asm volatile {
        // Get magic
        lwz     r5, 0(dataIn)
        lis     r6, SZS_SIGNATURE@h
        srwi    r5, r5, 8

        // Check is it's SZS with the magic 'Yaz'
        ori     r6, r6, SZS_SIGNATURE@l
        cmpl    r5, r6
        beq     Rvl_decode_szs

        // Check is it's ASH with the magic 'ASH'
        lis     r6, ASH_SIGNATURE@h
        ori     r6, r6, ASH_SIGNATURE@l
        cmpl    r5, r6
        beq     Rvl_decode_ash

        // Check is it's ASR with the magic 'ASR'
        lis     r6, ASR_SIGNATURE@h
        ori     r6, r6, ASR_SIGNATURE@l
        cmpl    r5, r6
        beq     Rvl_decode_asr
    };
#endif // __MWERKS__
    // clang-format on

    // Otherwise
    return 0;
#else
    // Custom C Implementation

    // Get magic
    u32 magic = Rvl_decode_get_magic(in);
    switch (magic) {
        // Check is it's SZS with the magic 'Yaz'
        case SZS_SIGNATURE: {
            return Rvl_decode_szs(out, in);
        }
        // Check is it's ASH with the magic 'ASH'
        case ASH_SIGNATURE: {
            return Rvl_decode_ash(out, in);
        }
        // Check is it's ASR with the magic 'ASR'
        case ASR_SIGNATURE: {
            return Rvl_decode_asr(out, in);
        }
        // Otherwise
        default: {
            return 0;
        }
    }
#endif  // TARGET_RVL
}

int Rvl_decode_szs(u8* out, u8* in) {
    u32 size = Rvl_decode_szs_size(in);
    u32 groupByte = 0;
    u8* src = in + 0x10;
    u8* dst = out;
    u8 codeByte;
    u32 flags;
    u8 b0;
    u8 b1;
    u32 dist;
    u32 copyLen;
    u8* ref;

    while (1) {
        flags = groupByte >> 1;
        if (flags == 0) {
            codeByte = *src++;
            flags = 0x80;
        }
        groupByte = flags;

        if (groupByte & codeByte) {
            *dst++ = *src++;
            size--;
            if (size == 0)
                break;
        } else {
            b0 = *src++;
            b1 = *src++;
            copyLen = b0 >> 4;
            if (copyLen == 0) {
                copyLen = *src++ + 0x10;
            }
            dist = ((b0 & 0xF) << 8) | b1;
            copyLen += 2;
            size -= copyLen;
            ref = dst - dist - 1;
            while (copyLen--) {
                *dst++ = *ref++;
            }
            if (size <= 0)
                break;
        }
    }

    return (int)size;
}
int Rvl_decode_ash(u8* out, u8* in) {
    return 0;
}
int Rvl_decode_asr(u8* out, u8* in) {
    return 0;
}
