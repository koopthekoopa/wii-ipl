#ifndef RVL_SDK_ENC_UTILITY_H
#define RVL_SDK_ENC_UTILITY_H

#include <revolution/types.h>

#include <revolution/enc.h>

#ifdef __cplusplus
extern "C" {
#endif

// Internal declarations

// NOLINTBEGIN(bugprone-macro-parentheses) (Type specifiers cannot be parenthesized.)
#define DECLARE_PRIVATE_ENC_FUNCTION(srcEnc_, srcChar_, dstEnc_, dstChar_)                                                                           \
    ENCResult ENCiConvertString##srcEnc_##To##dstEnc_(dstChar_* dst, s32* dstSize, srcChar_ const* src, s32* srcSize, ENCBreakType breakType);

#define DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(srcEnc_, srcChar_, dstEnc_, dstChar_)                                                             \
    ENCResult ENCiConvertString##srcEnc_##To##dstEnc_(dstChar_* dst, s32* dstSize, srcChar_ const* src, s32* srcSize, ENCBreakType breakType,        \
                                                      ENCMBState* mbState);

#define DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16(srcEnc_) DECLARE_PRIVATE_ENC_FUNCTION(srcEnc_, u8, Unicode, u16)
#define DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16(dstEnc_) DECLARE_PRIVATE_ENC_FUNCTION(Unicode, u16, dstEnc_, u8)

#define DECLARE_PRIVATE_ENC_FUNCTION_TO_UTF16_WITH_MB_STATE(srcEnc_) DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(srcEnc_, u8, Unicode, u16)
#define DECLARE_PRIVATE_ENC_FUNCTION_FROM_UTF16_WITH_MB_STATE(dstEnc_) DECLARE_PRIVATE_ENC_FUNCTION_WITH_MB_STATE(Unicode, u16, dstEnc_, u8)

// Trampolines

// NOLINTBEGIN(bugprone-macro-parentheses)
#define DEFINE_PUBLIC_ENC_TRAMPOLINE_VIA(srcEnc_, srcChar_, srcVia_, dstEnc_, dstChar_, dstVia_)                                                     \
    ENCResult ENCConvertString##srcEnc_##To##dstEnc_(dstChar_* dst, s32* dstSize, srcChar_ const* src, s32* srcSize) {                               \
        return ENCiConvertString##srcVia_##To##dstVia_(dst, dstSize, src, srcSize, ENC_BR_KEEP);                                                     \
    }

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_VIA(srcEnc_, srcChar_, srcVia_, dstEnc_, dstChar_, dstVia_)                                       \
    ENCResult ENCConvertString##srcEnc_##To##dstEnc_(dstChar_* dst, s32* dstSize, srcChar_ const* src, s32* srcSize) {                               \
        return ENCiConvertString##srcVia_##To##dstVia_(dst, dstSize, src, srcSize, ENC_BR_KEEP, NULL);                                               \
    }

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_GIVEN_MB_STATE_VIA(srcEnc_, srcChar_, srcVia_, dstEnc_, dstChar_, dstVia_, mbState_)                       \
    ENCResult ENCConvertString##srcEnc_##To##dstEnc_(dstChar_* dst, s32* dstSize, srcChar_ const* src, s32* srcSize) {                               \
        ENCMBState mbState = (mbState_);                                                                                                             \
                                                                                                                                                     \
        return ENCiConvertString##srcVia_##To##dstVia_(dst, dstSize, src, srcSize, ENC_BR_KEEP, &mbState);                                           \
    }
// NOLINTEND(bugprone-macro-parentheses)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE(srcEnc_, srcChar_, dstEnc_, dstChar_)                                                                           \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_VIA(srcEnc_, srcChar_, srcEnc_, dstEnc_, dstChar_, dstEnc_)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE(srcEnc_, srcChar_, dstEnc_, dstChar_)                                                             \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_VIA(srcEnc_, srcChar_, srcEnc_, dstEnc_, dstChar_, dstEnc_)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_GIVEN_MB_STATE(srcEnc_, srcChar_, dstEnc_, dstChar_, mbState_)                                             \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_GIVEN_MB_STATE_VIA(srcEnc_, srcChar_, srcEnc_, dstEnc_, dstChar_, dstEnc_, mbState_)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_FROM_UTF16(dstEnc_) DEFINE_PUBLIC_ENC_TRAMPOLINE_VIA(Unicode, u16, Unicode, dstEnc_, u8, dstEnc_)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16_VIA(srcEnc_, srcVia_) DEFINE_PUBLIC_ENC_TRAMPOLINE_VIA(srcEnc_, u8, srcVia_, Unicode, u16, Unicode)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_TO_UTF16(srcEnc_) DEFINE_PUBLIC_ENC_TRAMPOLINE_VIA(srcEnc_, u8, srcEnc_, Unicode, u16, Unicode)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_FROM_UTF16(dstEnc_)                                                                               \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_VIA(Unicode, u16, Unicode, dstEnc_, u8, dstEnc_)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_TO_UTF16_VIA(srcEnc_, srcVia_)                                                                    \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_VIA(srcEnc_, u8, srcVia_, Unicode, u16, Unicode)

#define DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_TO_UTF16(srcEnc_)                                                                                 \
    DEFINE_PUBLIC_ENC_TRAMPOLINE_WITH_MB_STATE_VIA(srcEnc_, u8, srcEnc_, Unicode, u16, Unicode)

// General

// NOTE: Unsafe for use within single-statement clauses
/* But it shouldn't really be there anyways. It should only be at the beginning
 * of a conversion function to declare some variables
 */
// NOTE: Not to be confused with multibyte state, which is different.
#define CREATE_STATE_VARIABLES(dstCnt_, dstLimit_, dstValid_, srcCnt_, srcLimit_, srcLimited_)                                                       \
    s32(srcCnt_) = 0;                                                                                                                                \
    s32(dstCnt_) = 0;                                                                                                                                \
                                                                                                                                                     \
    s32(srcLimit_) = ENC_SRC_UNLIMITED;                                                                                                              \
    s32(dstLimit_) = ENC_DST_INVALID;                                                                                                                \
                                                                                                                                                     \
    BOOL(dstValid_) = TRUE;                                                                                                                          \
    BOOL(srcLimited_) = TRUE;

#define CHECK_PARAMETERS(ret_, dstStream_, dstSize_, dstLimit_, dstValid_, srcStream_, srcSize_, srcLimit_, srcLimited_)                             \
    do {                                                                                                                                             \
        *(ret_) = ENCiCheckParameters((dstStream_) != NULL, dstSize_, dstLimit_, dstValid_, (srcStream_) != NULL, srcSize_, srcLimit_, srcLimited_); \
                                                                                                                                                     \
        if (*(ret_) != ENC_OK)                                                                                                                       \
            return *(ret_);                                                                                                                          \
    } while (0)

// TODO: better name?
// WARNING: Unsafe for use within nested loop constructs, single-statement clauses
#define UNSAFE_THROW_AND_QUIT(ret_, err_)                                                                                                            \
    {                                                                                                                                                \
        *(ret_) = (err_);                                                                                                                            \
        break;                                                                                                                                       \
    }

// WARNING: Unsafe for use within nested loop constructs, single-statement clauses
#define UNSAFE_CHECK_DST_SPACE(cnt_, limit_, valid_, ret_)                                                                                           \
    if ((cnt_) >= (limit_) && (valid_)) {                                                                                                            \
        UNSAFE_THROW_AND_QUIT(ret_, ENC_ERR_NO_BUF_LEFT);                                                                                            \
    }

// WARNING: Unsafe for use within nested loop constructs, single-statement clauses
#define UNSAFE_CHECK_BREAK_TYPE(dstStream_, dstCnt_, dstLimit_, dstValid_, srcStream_, srcCnt_, srcLimit_, srcLimited_, breakType_, ret_)            \
    if ((breakType_) > ENC_BR_KEEP) {                                                                                                                \
        int srcBrkLen = ENCiCheckBreakType((*(srcStream_))[0], (srcLimit_) - *(srcCnt_) > 1 || !(srcLimited_) ? (*(srcStream_))[1] : 0x00);          \
                                                                                                                                                     \
        if (srcBrkLen > 0) {                                                                                                                         \
            UNSAFE_CHECK_DST_BREAK_TYPE(dstStream_, dstCnt_, dstLimit_, dstValid_, srcStream_, srcCnt_, breakType_, ret_);                           \
        }                                                                                                                                            \
    }

// WARNING: Unsafe for use within nested loop constructs, single-statement clauses
#define UNSAFE_CHECK_DST_BREAK_TYPE(dstStream_, dstCnt_, dstLimit_, dstValid_, srcStream_, srcCnt_, breakType_, ret_)                                \
    { /* limit scope of dstBrkLen */                                                                                                                 \
        int dstBrkLen = ENCiWriteBreakType(*(dstStream_), sizeof(**(dstStream_)), breakType_, dstValid_);                                            \
                                                                                                                                                     \
        if ((dstLimit_) - *(dstCnt_) < dstBrkLen && (dstValid_)) {                                                                                   \
            UNSAFE_THROW_AND_QUIT(ret_, ENC_ERR_NO_BUF_LEFT);                                                                                        \
        }                                                                                                                                            \
                                                                                                                                                     \
        *(srcStream_) += srcBrkLen;                                                                                                                  \
        *(srcCnt_) += srcBrkLen;                                                                                                                     \
        *(dstCnt_) += dstBrkLen;                                                                                                                     \
                                                                                                                                                     \
        if (dstValid_)                                                                                                                               \
            *(dstStream_) += dstBrkLen;                                                                                                              \
                                                                                                                                                     \
        continue;                                                                                                                                    \
    }

#define WRITE_CHAR(char_, dstStream_, dstCnt_, dstValid_, srcStream_, srcCnt_)                                                                       \
    do {                                                                                                                                             \
        if (dstValid_) {                                                                                                                             \
            **(dstStream_) = (char_);                                                                                                                \
            ++*(dstStream_);                                                                                                                         \
        }                                                                                                                                            \
                                                                                                                                                     \
        ++*(dstCnt_);                                                                                                                                \
        ++*(srcStream_);                                                                                                                             \
        ++*(srcCnt_);                                                                                                                                \
    } while (0)

#define INCREMENT_STREAMS(dstStream_, dstCnt_, dstValid_, srcStream_, srcCnt_)                                                                       \
    do {                                                                                                                                             \
        if (dstValid_) {                                                                                                                             \
            /* *(dstStream_) = (char_); */ /* Doesn't happen here */                                                                                 \
            ++*(dstStream_);                                                                                                                         \
        }                                                                                                                                            \
                                                                                                                                                     \
        ++*(dstCnt_);                                                                                                                                \
        ++*(srcStream_);                                                                                                                             \
        ++*(srcCnt_);                                                                                                                                \
    } while (0)

#define WRITE_BACK_SIZES(srcSize_, srcCnt_, dstSize_, dstCnt_)                                                                                       \
    do {                                                                                                                                             \
        if (srcSize_)                                                                                                                                \
            *(srcSize_) = (srcCnt_);                                                                                                                 \
                                                                                                                                                     \
        if (dstSize_)                                                                                                                                \
            *(dstSize_) = (dstCnt_);                                                                                                                 \
    } while (0)

// WARNING: Unsafe for use within nested loop constructs, single-statement clauses
#define UNSAFE_WRITE_MULTI_BYTE_CHAR(mb_, dstStream_, dstCnt_, dstLimit_, dstValid_, srcStream_, srcCnt_, ret_)                                      \
    { /* limit scope of b1 and b2 */                                                                                                                 \
        u8 b1 = (mb_)[0];                                                                                                                            \
        u8 b2 = (mb_)[1];                                                                                                                            \
                                                                                                                                                     \
        if (!b1) {                                                                                                                                   \
            UNSAFE_THROW_AND_QUIT(ret_, ENC_ERR_NO_MAP_RULE);                                                                                        \
        }                                                                                                                                            \
                                                                                                                                                     \
        if (!b2) {                                                                                                                                   \
            if (dstValid_) {                                                                                                                         \
                /* NOTE: Doubled expressions */                                                                                                      \
                **(dstStream_) = b1;                                                                                                                 \
                ++*(dstStream_);                                                                                                                     \
            }                                                                                                                                        \
        } else {                                                                                                                                     \
            if (dstValid_) {                                                                                                                         \
                if ((dstLimit_) - *(dstCnt_) < 2) {                                                                                                  \
                    UNSAFE_THROW_AND_QUIT(ret_, ENC_ERR_NO_BUF_LEFT);                                                                                \
                }                                                                                                                                    \
                                                                                                                                                     \
                /* NOTE: Doubled expressions */                                                                                                      \
                **(dstStream_) = b1;                                                                                                                 \
                ++*(dstStream_);                                                                                                                     \
                **(dstStream_) = b2;                                                                                                                 \
                ++*(dstStream_);                                                                                                                     \
                                                                                                                                                     \
                ++*(dstCnt_);                                                                                                                        \
            } else {                                                                                                                                 \
                ++*(dstCnt_);                                                                                                                        \
            }                                                                                                                                        \
        }                                                                                                                                            \
                                                                                                                                                     \
        ++*(dstCnt_);                                                                                                                                \
        ++*(srcStream_);                                                                                                                             \
        ++*(srcCnt_);                                                                                                                                \
    }

// ASCII

#define IS_ASCII(x) ((x) < 0x80)

// UTF-16

#define UTF16_BE_BOM 0xFEFF
#define UTF16_LE_BOM 0xFFFE

#define UTF16_CHECK_BOM(stream_, srcSize_, limit_, limited_, cnt_, dstSize_)                                                                         \
    do {                                                                                                                                             \
        if ((limit_) > 0 || !(limited_)) {                                                                                                           \
            if (**(stream_) == UTF16_BE_BOM) {                                                                                                       \
                ++*(cnt_);                                                                                                                           \
                ++*(stream_);                                                                                                                        \
            } else if (**(stream_) == UTF16_LE_BOM) {                                                                                                \
                if (dstSize_)                                                                                                                        \
                    *(dstSize_) = 0;                                                                                                                 \
                                                                                                                                                     \
                *(srcSize_) = 0;                                                                                                                     \
                return ENC_ERR_INVALID_FORMAT;                                                                                                       \
            }                                                                                                                                        \
        }                                                                                                                                            \
    } while (0)

void ENCiRegisterVersion(void);
ENCResult ENCiCheckParameters(BOOL dstValid, s32* dstSizeIn, s32* dstSizeOut, BOOL* dstValidOut, BOOL srcValid, s32* srcSizeIn, s32* srcSizeOut,
                              BOOL* srcLimitedOut);
int ENCiCheckBreakType(unsigned a, unsigned b);
int ENCiWriteBreakType(void* stream, int width, ENCBreakType breakType, BOOL valid);

#ifdef __cplusplus
}
#endif

#endif  // RVL_SDK_ENC_UTILITY_H
