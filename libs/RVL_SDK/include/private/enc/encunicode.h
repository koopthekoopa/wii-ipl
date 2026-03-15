#ifndef PRIVATE_ENC_UNICODE_H
#define PRIVATE_ENC_UNICODE_H

#include <revolution/types.h>

#include <private/enc/encutility.h>
#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef ENCMBState ENCUTF7State;
#define ENC_UTF7_STATE_INITIAL ENC_STATE_INITIAL

/* 0xfffc0000 - Pending bits (holds up to 14, most needed for an incomplete unit)
 * 0x0003fff0 - unused
 * 0x00000008 - Shifted out to base64 mode (bit boolean)
 * 0x00000007 - Current bit offset of pending bits (starts at msb and goes right)
 */

#define ENC_UTF7_STATE_BASE64_MODE (1 << 3)

#define ENC_UTF7_STATE_IS_BASE64_MODE(mbState_) ((mbState_) & ENC_UTF7_STATE_BASE64_MODE)
#define ENC_UTF7_STATE_GET_PARTIAL_BITS(mbState_) ((mbState_) & 0xfffc0000)

/* Shift left 1 since offset is always a multiple of 2, but I'm not sure why
 * they didn't then just store it in 0x0e and have the shift state be in bit 0
 * instead,
 */
#define ENC_UTF7_STATE_GET_PARTIAL_OFFSET(mbState_) (((mbState_) & 0x00000007) << 1)

/* if we are collecting state then we are implicitly in base64 mode, so no need
 * to specify that explicitly
 */
#define ENC_UTF7_STATE_COLLECT(partialBits_, partialOffset_)                                                                                         \
    (ENC_UTF7_STATE_BASE64_MODE | ((partialBits_) & 0xfffc0000) | ((partialOffset_) >> 1 & 0x00000007l))  // ?

typedef ENCMBState ENCUTF16State;
enum { ENC_UTF16_STATE_BIG_ENDIAN, ENC_UTF16_STATE_LITTLE_ENDIAN };

DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Ascii)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Ascii)
DECLARE_PRIVATE_ENC_FUNCTION(Utf32, u32, Utf16, u16)
DECLARE_PRIVATE_ENC_FUNCTION(Utf16, u16, Utf32, u32)
DECLARE_PRIVATE_ENC_FUNCTION(Utf32, u32, Utf8, u8)
DECLARE_PRIVATE_ENC_FUNCTION(Utf8, u8, Utf32, u32)
DECLARE_PRIVATE_ENC_FUNCTION(Utf16, u16, Utf8, u8)
DECLARE_PRIVATE_ENC_FUNCTION(Utf8, u8, Utf16, u16)
DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(Utf7, u8, Utf16, u16)
DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(Utf16, u16, Utf16, u16)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ENC_UNICODE_H
