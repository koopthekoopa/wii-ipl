#ifndef PRIVATE_ENC_KOREAN_H
#define PRIVATE_ENC_KOREAN_H

#include <revolution/types.h>

#include <private/enc/encutility.h>
#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

extern const u16 enc_tbl_kr_mbtowc1[];
extern const u16 enc_tbl_kr_mbtowc2[];
extern const u8 enc_tbl_kr_wctomb1[];
extern const u8 enc_tbl_kr_wctomb2[];
extern const u16 enc_offset_kr1[];
extern const u16 enc_offset_kr2[];
extern const u16 enc_tbl_uhc_mbtowc[];
extern const u16 enc_offset_uhc[];

extern BOOL enc_tbl_kr_loaded;
extern BOOL enc_tbl_uhc_loaded;

DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Uhc)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Uhc)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ENC_KOREAN_H
