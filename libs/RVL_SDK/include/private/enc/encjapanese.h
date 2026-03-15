#ifndef PRIVATE_ENC_JAPANESE_H
#define PRIVATE_ENC_JAPANESE_H

#include <revolution/types.h>

#include <private/enc/encutility.h>
#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef ENCMBState ENCJISState;
enum {
    ENC_JIS_STATE_INVALID,  // Malformed escape sequence

    /* Different character sets are switched between using ISO/IEC 2022 escape
     * sequences. There is a list of character sets that have been registered
     * with ISO for these escape sequences, and each is given its own sequences
     * to switch to them.
     *
     * N.B. d/d is the high and low nibbles of a byte, each in decimal, so 14/09
     * is the byte 0xe9.
     *
     * https://en.wikipedia.org/wiki/ISO/IEC_2022#Character_set_designations
     */

    // GZD4 [ESC 02/08 F]
    ENC_JIS_STATE_US_ASCII,           // [ESC 02/08 04/02] (Initial state)
    ENC_JIS_STATE_JIS_C6220_1969_RO,  // [ESC 02/08 04/10]
    ENC_JIS_STATE_JIS_C6220_1969_JP,  // [ESC 02/08 04/09]

    // GZDM4 [ESC 02/04 02/08 F] (See note)
    ENC_JIS_STATE_JIS_X_0208_1978,  // [ESC 02/04 04/00]
    ENC_JIS_STATE_JIS_X_0208_1983,  // [ESC 02/04 04/02]
    ENC_JIS_STATE_JIS_X_0212_1990,  // [ESC 02/04 04/04] (See note)

    /* NOTE: For GZDM4, the normal escape sequence is [ESC 02/04 02/08 F].
     * However, for backwards compatibility with earlier standards that already
     * registered character sets at [ESC 02/04 F], this form is permitted, but
     * only when F is 04/00, 04/01, or 04/02. Note that JIS X 0208:1978 and
     * JIS X 0208:1983 are two of these exceptions, but that JIS X 0212:1990 is
     * *not*. (The last one, 04/01, is GB-2312-80.) It can only be switched to
     * via [ESC 02/04 02/08 04/04]. Why handling for this incorrect escape
     * sequence is included, I do not know. (Perhaps someone saw the other
     * states using only 3 byte sequences and extrapolated that to this one?)
     */

    /* ? Checked for in ENCGetNextCharacterWidth, but never used elsewhere.
     * Apparently it's a DBCS. But which one?
     */
    ENC_JIS_STATE_7,
};

extern const u16 enc_tbl_jp_mbtowc[];
extern const u8 enc_tbl_jp_wctomb[];
extern const u16 enc_offset_jp[];

extern BOOL enc_tbl_jp_loaded;

DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(Sjis)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(Sjis)
DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(Jis, u8, Sjis, u8)
DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(Sjis, u8, Jis, u8)
DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16_WITH_MB_STATE(Jis)
DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16_WITH_MB_STATE(Jis)

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_ENC_JAPANESE_H
