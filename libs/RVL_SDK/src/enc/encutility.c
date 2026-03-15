#include <private/enc.h>
#include <revolution/enc.h>

#include <revolution/os.h>
#include <revolution/verdefs.h>

#include <string.h>

static BOOL encRegistered = FALSE;

SDKDefineVersion(ENC, "Apr 20 2010", "11:21:34");

void ENCiRegisterVersion() {
    if (!encRegistered) {
        OSRegisterVersion(__ENCVersion);

        encRegistered = TRUE;
    }
}

ENCResult ENCiCheckParameters(BOOL dstValid, s32* dstSizeIn, s32* dstSizeOut, BOOL* dstValidOut, BOOL srcValid, s32* srcSizeIn, s32* srcSizeOut,
                              BOOL* srcLimitedOut) {
    ENCResult ret = ENC_OK;

    ENCiRegisterVersion();

    if (srcSizeIn) {
        *srcSizeOut = *srcSizeIn;
    } else {
        *srcSizeOut = ENC_SRC_UNLIMITED;
    }

    if (dstSizeIn) {
        *dstSizeOut = *dstSizeIn;
    } else {
        *dstSizeOut = ENC_DST_INVALID;

        ret = ENC_ERR_INVALID_PARAM;
    }

    if (!srcValid) {
        ret = ENC_ERR_INVALID_PARAM;
    }

    if (!dstValid) {
        *dstValidOut = FALSE;

        *dstSizeOut = ENC_DST_INVALID;
    }

    if (*srcSizeOut < 0) {  // ENC_SRC_UNLIMITED
        *srcLimitedOut = FALSE;
    }

    if (ret != ENC_OK) {
        *dstSizeIn = 0;
        *srcSizeIn = 0;
    }

    return ret;
}

int ENCiCheckBreakType(unsigned a, unsigned b) {
    if (a == '\n') {
        return sizeof("\n") - 1;
    } else if (a == '\r') {
        if (b == '\n') {
            return sizeof("\r\n") - 1;
        } else {
            return sizeof("\r") - 1;
        }
    }

    return sizeof("") - 1;
}

int ENCiWriteBreakType(void* stream, int width, ENCBreakType breakType, BOOL valid) {
    if (valid) {
        memset(stream, '\0', width - 1);

        switch (breakType) {
            case ENC_BR_CRLF: {
                *((u8*)stream + width - 1) = '\r';
                memset((u8*)stream + width, '\0', width - 1);
                *((u8*)stream + width * 2 - 1) = '\n';

                return sizeof("\r\n") - 1;
            }
            case ENC_BR_CR: {
                *((u8*)stream + width - 1) = '\r';

                return sizeof("\r") - 1;
            }
            case ENC_BR_LF: {
                *((u8*)stream + width - 1) = '\n';

                return sizeof("\n") - 1;
            }
            default: {
                break;
            }
        }
    } else {
        switch (breakType) {
            case ENC_BR_CRLF: {
                return sizeof("\r\n") - 1;
            }
            case ENC_BR_CR: {
                return sizeof("\r") - 1;
            }
            case ENC_BR_LF: {
                return sizeof("\n") - 1;
            }
            default: {
                break;
            }
        }
    }

    return sizeof("") - 1;
}
