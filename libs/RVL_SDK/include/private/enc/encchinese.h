#ifndef PRIVATE_ENC_CHINESE_H
#define PRIVATE_ENC_CHINESE_H

#include <revolution/types.h>

#include <private/enc/encutility.h>
#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

extern const u16 enc_tbl_cn_mbtowc[];
extern const u8 enc_tbl_cn_wctomb[];
extern const u16 enc_offset_cn[];
extern const u16 enc_tbl_cnex_mbtowc[];

extern BOOL enc_tbl_cn_loaded;

DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Gb2312)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Gb2312)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ENC_CHINESE_H
