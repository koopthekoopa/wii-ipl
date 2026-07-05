#include <tmc_jpeg_internal.h>
#include <string.h>

s32 TMCCJPEGDecInit(TMCCJPEGDecState* state, TMCCJPEGDecInitParam* param) {
    s32 result;
    TMCJpegDecWork* work;

    work = param->mpBuf1;
    if (work == NULL) {
        return -1;
    }

    memset(state, 0, sizeof(TMCCJPEGDecState));
    memset(work, 0, sizeof(TMCJpegDecWork));
    work->mpState = state;
    state->mpWorkBuf = work;

    if (param->mFlag1 != 0) {
        result = -1;
    }
    else if (param->mFlag2 != 0 && param->mFlag2 != 1 && param->mFlag2 != 2) {
        result = -1;
    }
    else {
        state->unk_0x21 = param->mFlag1;
        result = 0;
        state->mScaleFactor = 1;
        state->mConverterType = param->mFlag2;
    }

    if (result < 0) {
        goto error;
    }

    result = TMCJPEGDEC_init_ptr_buff(work, &param->mpBuf2);
    if (result < 0) {
        return result;
    }

    result = TMCJPEGDEC_imagestart(work);
    result = (result < 0) ? result : ((work->mFrameWidth == 0) ? TMCC_ERROR_HEADER :
        ((work->mMCUCount = work->mMCUXCount * work->mMCUYCount,
            work->mMCURemCount = work->mMCUXRem * work->mMCUXCount2), result));
    if (result < 0) {
        goto error;
    }

    result = TMCJPEGDEC_scanstart(work);
    result = (result < 0) ? result : ((work->mScanCount == 1) ? 0 : result);
    if (result < 0) {
        goto error;
    }

    if (work->mScanCount != 0) {
        goto error;
    }

    result = TMCJPEGDEC_Setsize(work);
    if (result >= 0) {
        switch (state->mConverterType) {
        case 0:
            result = TMCJPEGDEC_set_converterRGB565(work);
            if (result < 0) {
                goto error;
            }
            break;
        case 1:
            result = TMCJPEGDEC_set_converterRGBA8(work);
            if (result < 0) {
                goto error;
            }
            break;
        case 2:
            result = TMCJPEGDEC_set_converterY8U8V8(work);
            if (result < 0) {
                goto error;
            }
            break;
        }

        state->mPosition = TMCJPEGDEC_get_position(work);
        return state->mResult;
    }

error:
    return (result < 0) ? result : -2;
}

s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer) {
    u8 buf[0x17C];
    u32 offsetY;
    TMCJpegDecWork* work;
    u16 curX;
    u16 maxX;
    u16 curY;
    u16 maxY;
    u8 stepX;
    u8 stepY;
    s32 count;
    s32 dec_result;

    work = state->mpWorkBuf;
    if (work == NULL) {
        return -1;
    }

    if (state->mConverterType != 0) {
        return -4;
    }

    state->mpTexBuffer = texBuffer;

    count = 0;
    curX = state->mPosX;
    curY = state->mPosY;
    maxX = state->mMaxX;
    maxY = state->mMaxY;
    stepX = state->mStepX;
    stepY = state->mStepY;

    while (curY < maxY && count < initResult) {
        offsetY = curY * stepY;

        while (curX < maxX && count < initResult) {
            dec_result = TMCJPEGDEC_decompmcu(curX * stepX, offsetY, work, buf);
            if (dec_result < 0) goto error;
            curX++;
            count++;
        }

        if (maxX == curX) {
            curX = 0;
            curY++;
        }
    }

    if (maxY == curY && curX == 0) {
        s32 result = TMCJPEGDEC_imageend(work);
        if (result < 0) {
            return result;
        }
    }

    state->mPosX = curX;
    state->mPosY = curY;
    state->mPosition = TMCJPEGDEC_get_position(work);
    return state->mResult - (curY * maxX) - curX;

error:
    if (work->mRestartInterval != 0 && dec_result != TMCC_ERROR_USER_CALLBACK) {
        state->mDecodeResult = dec_result;
        TMCJPEGDEC_err_restart(work);
    }
}

s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u32 scale) {
    TMCJpegDecWork* work;
    s32 result;
    u8 s;

    s = (u8)scale;
    work = state->mpWorkBuf;
    state->mScaleFactor = scale;
    if (s != 1 && s != 2 && s != 4 && s != 8) {
        return -1;
    }

    result = TMCJPEGDEC_Setsize(work);
    if (result < 0) {
        return result;
    }

    switch (state->mConverterType) {
    case 0:
        result = TMCJPEGDEC_set_converterRGB565(work);
        if (result < 0) {
            return result;
        }
        break;
    case 1:
        result = TMCJPEGDEC_set_converterRGBA8(work);
        if (result < 0) {
            return result;
        }
        break;
    case 2:
        result = TMCJPEGDEC_set_converterY8U8V8(work);
        if (result < 0) {
            return result;
        }
        break;
    }

    return 0;
}
