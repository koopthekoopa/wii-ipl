#ifndef NWC24_TYPES_H
#define NWC24_TYPES_H

#include <revolution/types.h>

typedef enum NWC24MIMEType {
    NWC24_TEXT_PLAIN                = 0x00010000,
    NWC24_TEXT_HTML                 = 0x00010001,

    NWC24_IMAGE_JPEG                = 0x00020000,
    NWC24_X_WII_PICTURE             = 0x00020001,

    NWC24_APPLICATION_OCTET_STREAM  = 0x00030000,
    NWC24_X_WII_MSGBOARD            = 0x00030001,
    NWC24_X_WII_MINIDATA            = 0x00030002,

    NWC24_MULTIPART_MIXED           = 0x000F0000,
    NWC24_MULTIPART_ALTERNATIVE     = 0x000F0001,
    NWC24_MULTIPART_RELATED         = 0x000F0002
} NWC24MIMEType;

typedef enum NWC24Charset {
    NWC24_EUC_JP            = 0x00020002,
    NWC24_EUC_US            = 0x00030002,
    NWC24_ISO_2022_JP       = 0x00020000,
    NWC24_ISO_8859_1        = 0x00080001,
    NWC24_ISO_8859_10       = 0x0008000A,
    NWC24_ISO_8859_15       = 0x0008000F,
    NWC24_ISO_8859_2        = 0x00080002,
    NWC24_ISO_8859_3        = 0x00080003,
    NWC24_ISO_8859_5        = 0x00080005,
    NWC24_ISO_8859_7        = 0x00080007,
    NWC24_ISO_8859_9        = 0x00080009,
    NWC24_SHIFT_JIS         = 0x00020001,
    NWC24_US_ASCII          = 0x00000000,
    NWC24_UTF_16BE          = 0x00010010,
    NWC24_UTF_32BE          = 0x00010020,
    NWC24_UTF_8             = 0x00010008,
    NWC24_WINDOWS_1252      = 0x000F1252,
    NWC24_GB_2312           = 0x000B2312,
    NWC24_CHARSET_UNKNOWN   = 0xFFFFFFFF
} NWC24Charset;

typedef enum NWC24Encoding {
    NWC24_ENC_7BIT = 0,
    NWC24_ENC_8BIT,
    NWC24_ENC_BASE64,
    NWC24_ENC_QUOTED_PRINTABLE,
    NWC24_MAX_ENCODINGS
} NWC24Encoding;

typedef u64     NWC24UserId;
typedef char    NWC24UserMailAddr[256];

#endif  // NWC24_TYPES_H
