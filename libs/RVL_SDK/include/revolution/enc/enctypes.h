#ifndef REVOLUTION_ENC_TYPES_H
#define REVOLUTION_ENC_TYPES_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ENC_DST_INVALID (-1)
#define ENC_SRC_UNLIMITED (-1)

#define ENC_CHECK_ENCODING_NOT_FOUND (-1)
#define ENC_CHECK_ENCODING_MAX_NUM 24

typedef enum ENCResult {
    ENC_OK = 0,
    ENC_ERR_NO_BUF_LEFT = -1,
    ENC_ERR_NO_MAP_RULE = -2,
    ENC_ERR_INVALID_PARAM = -3,
    ENC_ERR_INVALID_FORMAT = -4,
    ENC_ERR_UNKNOWN_ENCODING = -5,
    ENC_ERR_UNSUPPORTED = -6,

    ENC_ERR_NOT_LOADED = -7,
} ENCResult;

typedef enum ENCEncoding {
    ENC_ENCODING_NONE,

    // Can convert from "internal encoding" (UTF-16BE)
    ENC_ENCODING_US_ASCII,
    ENC_ENCODING_UTF_8,
    ENC_ENCODING_UTF_16BE,
    ENC_ENCODING_UTF_32BE,
    ENC_ENCODING_ISO_8859_1,
    ENC_ENCODING_ISO_8859_2,
    ENC_ENCODING_ISO_8859_3,
    ENC_ENCODING_ISO_8859_7,
    ENC_ENCODING_ISO_8859_10,
    ENC_ENCODING_ISO_8859_15,
    ENC_ENCODING_ISO_2022_JP,
    ENC_ENCODING_SHIFT_JIS,
    ENC_ENCODING_WINDOWS_1252,

    ENC_ENCODING_EUC_KR,
    ENC_ENCODING_GB2312,

    // Cannot convert from "internal encoding"
    ENC_ENCODING_UTF_7,
    ENC_ENCODING_UTF_16,
    ENC_ENCODING_UTF_16LE,
    ENC_ENCODING_WINDOWS_1250,
    ENC_ENCODING_WINDOWS_1253,
    ENC_ENCODING_MACINTOSH,
    ENC_ENCODING_X_MAC_GREEK,
    ENC_ENCODING_X_MAC_CE,
    ENC_ENCODING_IBM850,
    ENC_ENCODING_IBM852,

    ENC_MAX_ENCODING

        /* Likely ERRATUM: ENC_MAX_ENCODING (or whatever the original was called)
         * was very likely set to 24 instead of 26, judging from the bounds checks
         * in the encconvert.c functions (x <= 0 || x >= 24). This is most apparent
         * in ENCGetNextCharacterWidth, where there is one case in the switch block
         * that cannot be reached because of the bounds check: ENC_ENCODING_IBM850
         * (25). Judging from the placement of the next two cases,
         * ENC_ENCODING_EUC_KR (14) and ENC_ENCODING_GB2312 (15), these two
         * encodings may have been added after the rest, and ENC_MAX_ENCODING was
         * not updated accordingly. They were most likely put in the middle of the
         * enum because that is the end of the list of encodings that you are able
         * to convert to from the internal encoding.
         *
         * Also, the bounds check is supposed to be > 24, not >= 24.
         */
        ,
    ENC_BAD_MAX_ENCODING = 24,
} ENCEncoding;

typedef enum ENCBreakType {
    ENC_BR_KEEP,
    ENC_BR_CRLF,
    ENC_BR_CR,
    ENC_BR_LF,
    // Hey do you think anyone uses \n\r? Or maybe ^_? What about \u0085
} ENCBreakType;

typedef s32 ENCMBState;
#define ENC_STATE_INITIAL 0

typedef struct ENCContext {
    ENCEncoding encoding;  // 0x00
    ENCBreakType brtype;   // 0x04
    ENCMBState state;      // 0x08
    u16 nomap;             // 0x0C
    u16 invalid;           // 0x0E
} ENCContext;

#define ENC_INTERNAL_CHAR_WIDTH sizeof(u16)

#define ENC_ENCODING_COUNT 23
#define ENC_ENCODING_NAME_LENGTH 16

#define ENC_CHECK_NOT_FOUND -1

#define ENC_ALT_STOP 0x0000
#define ENC_ALT_SKIP 0xFFFF

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_ENC_TYPES_H
