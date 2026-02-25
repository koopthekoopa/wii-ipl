#include <revolution/enc.h>
#include <private/enc.h>

// WARNING: No double-evaluation protection
#define SWAP_ENDIAN_16(x)            (((x) >> 8) & 0x00ff) | (((x) << 8) & 0xff00)

// Unicode

#define UTF_IS_DEFINED_CODEPOINT(x) ((x) <= 0x10FFFF)
#define UTF_IS_2_BYTES_IN_UTF8(x)   ((x) <    0x0800)
#define UTF_IS_3_BYTES_IN_UTF8(x)   ((x) <=   0xFFFF)

// UTF-8

#define UTF8_BOM_LEN                3
#define UTF8_BOM_0                  0xEF
#define UTF8_BOM_1                  0xBB
#define UTF8_BOM_2                  0xBF

#define UTF8_IS_CONT(x)             ((unsigned)((x) & 0xC0) == 0x80)
#define UTF8_IS_INITIAL_2(x)        ((unsigned)((x) & 0xE0) == 0xC0)
#define UTF8_IS_INITIAL_3(x)        ((unsigned)((x) & 0xF0) == 0xE0)
#define UTF8_IS_INITIAL_4(x)        ((unsigned)((x) & 0xF8) == 0xF0)

#define UTF8_GET_INITIAL_2(x)       ((x) & 0x1F)
#define UTF8_GET_INITIAL_3(x)       ((x) & 0x0F)
#define UTF8_GET_INITIAL_4(x)       ((x) & 0x07)
#define UTF8_GET_CONT(x)            ((x) & 0x3F)

#define UTF8_MAKE_INITIAL_2(x)      (0xC0 + ( (x) >>  6                    ))
#define UTF8_MAKE_INITIAL_3(x)      (0xE0 + ( (x) >> 12                    ))
#define UTF8_MAKE_INITIAL_4(x)      (0xF0 + ( (x) >> 18                    ))
#define UTF8_MAKE_CONT(x, offset_)  (0x80 + (((x) >>  6 * (offset_)) & 0x3F))

#define UTF8_CHECK_BOM(stream_, limit_, limited_, cnt_) \
    if ((limit_) >= UTF8_BOM_LEN || !(limited_)) {      \
        const u8* bom = *(stream_);                     \
        if (*bom == UTF8_BOM_0) {                       \
            ++bom;                                      \
                                                        \
            if (*bom == UTF8_BOM_1) {                   \
                ++bom;                                  \
                                                        \
                if (*bom == UTF8_BOM_2) {               \
                    *(stream_) = bom + 1;               \
                    *(cnt_) += UTF8_BOM_LEN;            \
                }                                       \
            }                                           \
        }                                               \
    }

// UTF-16

#define UTF16_BOM_LEN                    1
#define UTF16_BE_BOM                    0xFEFF
#define UTF16_LE_BOM                    0xFFFE

#define UTF16_IS_SURROGATE(x)           ((unsigned)((x) & 0xF800) == 0xD800)

#define UTF16_GET_HIGH_SURROGATE(x)     (((x) - 0xD7C0) << 10)
#define UTF16_GET_LOW_SURROGATE(x)      ( (x) & 0x03EF       )

#define UTF16_MAKE_HIGH_SURROGATE(x)    (0xD7C0 + ((x) >> 10))
#define UTF16_MAKE_LOW_SURROGATE(x)     (0xDC00 + ((x) & 0x3FF))

// UTF-32

#define UTF32_BOM_LEN                    1
#define UTF32_BE_BOM                    0x0000FEFF
#define UTF32_LE_BOM                    0xFFFE0000

#define UTF32_CHECK_BOM(stream_, srcSize_, limit_, limited_, cnt_, dstSize_)    \
    if ((limit_) > 0 || !(limited_)) {                                          \
        if (**(stream_) == UTF32_BE_BOM) {                                      \
            ++*(cnt_);                                                          \
            ++*(stream_);                                                       \
        }                                                                       \
        else if (**(stream_) == UTF32_LE_BOM) {                                 \
            if (dstSize_) {                                                     \
                *(dstSize_) = 0;                                                \
            }                                                                   \
                                                                                \
            *(srcSize_) = 0;                                                    \
            return ENC_ERR_INVALID_FORMAT;                                      \
        }                                                                       \
    }

static u32 ENCiConvertUtf8To32(const u8* src, int length);
static void ENCiConvertUtf32To8(u8* dst, int length, u32 src);
static u32 ENCiConvertUtf16To32(const u16* src, int length);
static void ENCiConvertUtf32To16(u16* dst, int length, u32 src);
static u8 ENCiGetBase64Value(u8 c);

static u8 base64_array[128] = {
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3E, 0xFF, 0xFF, 0xFF, 0x3F, 
    0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
    0xFF, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 
    0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
    0xFF, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 
    0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
};

DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(Ascii)
DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(Ascii)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf32, u32, Utf16, u16)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf16, u16, Utf32, u32)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf32, u32, Utf8, u8)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf8, u8, Utf32, u32)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf16, u16, Utf8, u8)
DEFINE_PUBLIC_ENC_TRAMPOLINE(Utf8, u8, Utf16, u16)
DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE(Utf16, u16, Utf16, u16)
DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_GIVEN_MB_STATE_VIA(Utf16LE, u16, Utf16, Utf16BE, u16, Utf16, ENC_UTF16_STATE_LITTLE_ENDIAN)
DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_GIVEN_MB_STATE(Utf7, u8, Utf16, u16, ENC_UTF7_STATE_INITIAL)

ENCResult ENCSetUnicodeBOM(u16* dst, s32 dstSize) {
    return ENCSetUnicodeBOM16(dst, dstSize);
}

ENCResult ENCSetUnicodeBOM32(u32* dst, s32 dstSize) {
    ENCiRegisterVersion();

    if (dst == NULL || dstSize < UTF32_BOM_LEN) {
        return ENC_ERR_NO_BUF_LEFT;
    }

    *dst = UTF32_BE_BOM;

    return ENC_OK;
}

ENCResult ENCSetUnicodeBOM16(u16* dst, s32 dstSize) {
    ENCiRegisterVersion();

    if (dst == NULL || dstSize < UTF16_BOM_LEN) {
        return ENC_ERR_NO_BUF_LEFT;
    }

    *dst = UTF16_BE_BOM;

    return ENC_OK;
}

ENCResult ENCSetUnicodeBOM8(u8* dst, s32 dstSize) {
    ENCiRegisterVersion();

    if (dst == NULL || dstSize < UTF8_BOM_LEN) {
        return ENC_ERR_NO_BUF_LEFT;
    }

    *dst++ = 0xFE; // ERRATUM: The correct byte is 0xEF, not 0xFE
    *dst++ = UTF8_BOM_1;
    *dst = UTF8_BOM_2;

    // I hope they fix it in a later version! (i doubt)

    return ENC_OK;
}


ENCResult ENCiConvertStringUnicodeToAscii(u8* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF16_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u16 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (IS_ASCII(cur)) {
            WRITE_CHAR(cur, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
        else {
            UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_MAP_RULE);
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringAsciiToUnicode(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (!IS_ASCII(*src)) {
            UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
        }
        else {
            WRITE_CHAR(*src, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf32ToUtf16(u16* dst, s32* dstSize, const u32* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF32_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u32 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (cur > 0xFFFF) {
            if (!UTF_IS_DEFINED_CODEPOINT(cur)) {
                UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
            }
            
            if (dstValid) {
                if (dstLimit - dstCnt < 2) {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
                }
                
                ENCiConvertUtf32To16(dst, 2, cur);
                dst++;
            }
            
            dstCnt++;
        }
        else if (UTF16_IS_SURROGATE(cur)) {
            UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
        }
        else {
            if (dstValid) {
                *dst = cur;
            }
        }

        INCREMENT_STREAMS(&dst, &dstCnt, dstValid, &src, &srcCnt);
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf16ToUtf32(u32* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF16_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u16 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (!UTF16_IS_SURROGATE(cur)) {
            if (dstValid)
                *dst = cur;
        }
        else {
            if (srcLimit - srcCnt < 2 && srcLimited) {
                break;
            }

            if (dstValid) {
                *dst = ENCiConvertUtf16To32(src, 2);
            }

            src++;
            srcCnt++;
        }

        INCREMENT_STREAMS(&dst, &dstCnt, dstValid, &src, &srcCnt);
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf32ToUtf8(u8* dst, s32* dstSize, const u32* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF32_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u32 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src,
                                &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (IS_ASCII(cur)) {
            if (dstValid) {
                *dst = cur;
            }
        }
        else {
            s32 dstMbLen = 0;

            if (UTF16_IS_SURROGATE(cur) || !UTF_IS_DEFINED_CODEPOINT(cur)) {
                UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
            }

            if (UTF_IS_2_BYTES_IN_UTF8(cur)) {
                dstMbLen = 2;
            }
            else if (UTF_IS_3_BYTES_IN_UTF8(cur)) {
                dstMbLen = 3;
            }
            else {
                dstMbLen = 4;
            }

            if (dstValid) {
                if (dstLimit - dstCnt < dstMbLen) {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
                }

                ENCiConvertUtf32To8(dst, dstMbLen, cur);
                dst += dstMbLen - 1;
            }

            dstCnt += dstMbLen - 1;
        }

        INCREMENT_STREAMS(&dst, &dstCnt, dstValid, &src, &srcCnt);
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf8ToUtf32(u32* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF8_CHECK_BOM(&src, srcLimit, srcLimited, &srcCnt);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u8 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        {
            u32 c32;

            UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

            if (IS_ASCII(cur)) {
                c32 = cur;
            }
            else {
                s32 srcMbLen = 0;

                if (UTF8_IS_INITIAL_2(cur)) {
                    srcMbLen = 2;
                }
                else if (UTF8_IS_INITIAL_3(cur)) {
                    srcMbLen = 3;
                }
                else if (UTF8_IS_INITIAL_4(cur)) {
                    srcMbLen = 4;
                }
                else {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
                }
                
                if (srcLimit - srcCnt < srcMbLen && srcLimited) {
                    break;
                }
                
                c32 = ENCiConvertUtf8To32(src, srcMbLen);
                if (!c32) {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
                }

                src += srcMbLen - 1;
                srcCnt += srcMbLen - 1;
            }

            WRITE_CHAR(c32, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf16ToUtf8(u8* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF16_CHECK_BOM(&src, srcSize, srcLimit, srcLimited, &srcCnt, dstSize);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u16 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (IS_ASCII(cur)) {
            WRITE_CHAR(cur, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
        else {
            s32 dstMbLen = 0;
            s32 srcMbLen = 0;

            if (UTF_IS_2_BYTES_IN_UTF8(cur)) {
                dstMbLen = 1;
                srcMbLen = 2;
            }
            else if (!UTF16_IS_SURROGATE(cur)) {
                dstMbLen = 1;
                srcMbLen = 3;
            }
            else {
                dstMbLen = 2;
                srcMbLen = 4;
            }

            if (srcLimit - srcCnt < dstMbLen && srcLimited) {
                break;
            }

            if (dstValid) {
                if (dstLimit - dstCnt < srcMbLen) {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
                }

                {
                    u32 c32 = ENCiConvertUtf16To32(src, dstMbLen);
                    ENCiConvertUtf32To8(dst, srcMbLen, c32); // NOLINT (it's not)
                }

                dst += srcMbLen;
            }

            src += dstMbLen;
            srcCnt += dstMbLen;
            dstCnt += srcMbLen;
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf8ToUtf16(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    UTF8_CHECK_BOM(&src, srcLimit, srcLimited, &srcCnt);

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u8 cur = *src;

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

        if (IS_ASCII(cur)) {
            WRITE_CHAR(cur, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
        else {
            s32 srcMbLen = 0;
            s32 dstMbLen = 0;

            if (UTF8_IS_INITIAL_2(cur)) {
                srcMbLen = 2;
                dstMbLen = 1;
            }
            else if (UTF8_IS_INITIAL_3(cur)) {
                srcMbLen = 3;
                dstMbLen = 1;
            }
            else if (UTF8_IS_INITIAL_4(cur)) {
                srcMbLen = 4;
                dstMbLen = 2;
            }
            else {
                UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
            }

            if (srcLimit - srcCnt < srcMbLen && srcLimited) {
                break;
            }

            {
                u32 c32 = ENCiConvertUtf8To32(src, srcMbLen);

                if (!c32) {
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
                }

                if (dstValid) {
                    if (dstLimit - dstCnt < dstMbLen) {
                        UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
                    }

                    ENCiConvertUtf32To16(dst, dstMbLen, c32);
                    dst += dstMbLen;
                }
            }

            dstCnt += dstMbLen;
            src += srcMbLen;
            srcCnt += srcMbLen;
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf7ToUtf16(u16* dst, s32* dstSize, const u8* src, s32* srcSize, ENCBreakType breakType, ENCMBState* mbState) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    BOOL base64Mode = FALSE;

    u32 partialBits = 0x00000000;
    u32 partialOffset = 0;

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    if (mbState && ENC_UTF7_STATE_IS_BASE64_MODE(*mbState)) {
        base64Mode = TRUE;

        partialBits = ENC_UTF7_STATE_GET_PARTIAL_BITS(*mbState);
        partialOffset = ENC_UTF7_STATE_GET_PARTIAL_OFFSET(*mbState);
    }

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        if (base64Mode) {
            u8 cur = *src;

            if (dstCnt >= dstLimit && dstValid && cur != '-') {
                UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
            }
            
            if (cur == '-') { // shift out
                base64Mode = FALSE;

                src++;
                srcCnt++;

                continue;
            }

            {
                u32 b64 = ENCiGetBase64Value(cur);

                if (b64 > 63) { // in particular, 0xff is the error sentinel
                    UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_INVALID_FORMAT);
                }

                /* Calculations with offset subtract 6 to account for the size of
                * the base64 unit that gets shifted
                */
                partialBits |= b64 << (32 - 6 - partialOffset);
            }

            if (partialOffset < 16 - 6) {
                partialOffset += 6;
            }
            else {
                if (dstValid) {
                    /* NOTE: Doubled expressions */
                    *dst = partialBits >> 16; dst++;
                }

                partialBits <<= 16;

                partialOffset -= 16 - 6;

                dstCnt++;
            }

            src++;
            srcCnt++;
        }
        else {
            u8 cur = *src;

            if (dstCnt >= dstLimit && dstValid && cur != '+') {
                UNSAFE_THROW_AND_QUIT(&ret, ENC_ERR_NO_BUF_LEFT);
            }

            if (cur == '+') { // shift in
                base64Mode = TRUE;

                partialBits = 0x00000000;
                partialOffset = 0;

                src++;
                srcCnt++;

                continue;
            }

            UNSAFE_CHECK_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, srcLimit, srcLimited, breakType, &ret);

            WRITE_CHAR(cur, &dst, &dstCnt, dstValid, &src, &srcCnt);
        }
    }

    if (mbState) {
        if (base64Mode) {
            *mbState = ENC_UTF7_STATE_COLLECT(partialBits, partialOffset);
        }
        else {
            *mbState = ENC_UTF7_STATE_INITIAL;
        }
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

ENCResult ENCiConvertStringUtf16ToUtf16(u16* dst, s32* dstSize, const u16* src, s32* srcSize, ENCBreakType breakType, ENCMBState* mbState) {
    CREATE_STATE_VARIABLES(dstCnt, dstLimit, dstValid, srcCnt, srcLimit, srcLimited)

    BOOL littleEndian = FALSE;

    ENCResult ret;

    CHECK_PARAMETERS(&ret, dst, dstSize, &dstLimit, &dstValid, src, srcSize, &srcLimit, &srcLimited);

    // UTF16_CHECK_BOM but also manipulates state
    if (srcLimit > 0 || !srcLimited) {
        if (*src == UTF16_BE_BOM) {
            if (mbState != NULL) {
                *mbState = ENC_UTF16_STATE_BIG_ENDIAN;
            }

            srcCnt++;
            src++;
        }
        else if (*src == UTF16_LE_BOM) {
            if (mbState != NULL) {
                *mbState = ENC_UTF16_STATE_LITTLE_ENDIAN;
            }

            littleEndian = TRUE;

            srcCnt++;
            src++;
        }
        else {
            if (mbState != NULL && *mbState == ENC_UTF16_STATE_LITTLE_ENDIAN) {
                littleEndian = TRUE;
            }
        }
    }

    while (*src && (srcCnt < srcLimit || !srcLimited)) {
        u16 cur = *src;

        if (littleEndian) {
            cur = SWAP_ENDIAN_16(cur);
        }

        UNSAFE_CHECK_DST_SPACE(dstCnt, dstLimit, dstValid, &ret);

        if (breakType > ENC_BR_KEEP) {
            int srcBrkLen = 0;

            u16 cur2 = L'\0';

            // UNSAFE_CHECK_BREAK_TYPE but also potentially swaps endianness
            if (srcLimit - srcCnt > 1 || !srcLimited) {
                cur2 = src[1];

                if (littleEndian) {
                    cur2 = SWAP_ENDIAN_16(cur2);
                }
            }

            srcBrkLen = ENCiCheckBreakType(cur, cur2);

            if (srcBrkLen > 0) {
                UNSAFE_CHECK_DST_BREAK_TYPE(&dst, &dstCnt, dstLimit, dstValid, &src, &srcCnt, breakType, &ret);
            }
        }

        WRITE_CHAR(cur, &dst, &dstCnt, dstValid, &src, &srcCnt);
    }

    WRITE_BACK_SIZES(srcSize, srcCnt, dstSize, dstCnt);

    return ret;
}

static u32 ENCiConvertUtf8To32(const u8* src, int length) {
    int i;

    u32 c32;

    switch (length) {
        case 1: {
            c32 = src[0];
            break;
        }
        case 2: {
            c32 = UTF8_GET_INITIAL_2(src[0]);
            break;
        }
        case 3: {
            c32 = UTF8_GET_INITIAL_3(src[0]);
            break;
        }
        case 4: {
            c32 = UTF8_GET_INITIAL_4(src[0]);
            break;
        }
        default: {
            return L'\0';
        }
    }

    for (i = 1; i < length; i++) {
        if (!UTF8_IS_CONT(src[i])) {
            return L'\0';
        }

        c32 <<= 6;
        c32 += UTF8_GET_CONT(src[i]);
    }

    return c32;
}

static void ENCiConvertUtf32To8(u8* dst, int length, u32 src) {
    int i;

    switch (length) {
        case 1: {
            dst[0] = src;
            break;
        }
        case 2: {
            dst[0] = UTF8_MAKE_INITIAL_2(src);
            break;
        }
        case 3: {
            dst[0] = UTF8_MAKE_INITIAL_3(src);
            break;
        }
        case 4: {
            dst[0] = UTF8_MAKE_INITIAL_4(src);
            break;
        }
        default: {
            return;
        }
    }

    for (i = 1; i < length; i++) {
        dst[i] = UTF8_MAKE_CONT(src, length - i - 1);
    }
}

static u32 ENCiConvertUtf16To32(const u16* src, int length) {
    if (length == 1) {
        return *src;
    }

    if (length == 2) {
        u32 c32;

        c32 = UTF16_GET_HIGH_SURROGATE(src[0]);
        c32 += UTF16_GET_LOW_SURROGATE(src[1]);

        return c32;
    }

    return L'\0';
}

static void ENCiConvertUtf32To16(u16* dst, int length, u32 src) {
    if (length == 1) {
        *dst = src;
    }

    if (length == 2) {
        dst[0] = UTF16_MAKE_HIGH_SURROGATE(src);
        dst[1] = UTF16_MAKE_LOW_SURROGATE(src);
    }
}

static u8 ENCiGetBase64Value(u8 c) {
    if (c > 0x7F) {
        return 0xFF;
    }

    return base64_array[c];
}
