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

    if (param->mFlag1 == 0) goto mFlag2_check;
    result = -1;
    goto check_result;

mFlag2_check:
    if (param->mFlag2 == 0) goto flag_ok;
    if (param->mFlag2 == 1) goto flag_ok;
    if (param->mFlag2 == 2) goto flag_ok;
    result = -1;
    goto check_result;

flag_ok:
    state->mFlag21 = param->mFlag1;
    result = 0;
    state->mFlag20 = 1;
    state->mConverterType = param->mFlag2;

check_result:
    if (result < 0) {
        goto error_exit;
    }

    result = TMCJPEGDEC_init_ptr_buff(work, &param->mpBuf2);
    if (result < 0) {
        return result;
    }

    result = TMCJPEGDEC_imagestart(work);
    result = (result < 0) ? result : ((work->mFrameWidth == 0) ? -0x50 : ((work->mMCUCount = work->mMCUXCount * work->mMCUYCount, work->mMCURemCount = work->mMCUXRem * work->mMCUXCount2), result));
    if (result < 0) {
        goto error_exit;
    }

    result = TMCJPEGDEC_scanstart(work);
    result = (result < 0) ? result : ((work->mScanCount == 1) ? 0 : result);
    if (result < 0) {
        goto error_exit;
    }

    if (work->mScanCount != 0) {
        goto error_exit;
    }

    result = TMCJPEGDEC_Setsize(work);
    if (result >= 0) {
        switch (state->mConverterType) {
        case 0:
            result = TMCJPEGDEC_set_converterRGB565(work);
            if (result < 0) {
                goto error_exit;
            }
            break;
        case 1:
            result = TMCJPEGDEC_set_converterRGBA8(work);
            if (result < 0) {
                goto error_exit;
            }
            break;
        case 2:
            result = TMCJPEGDEC_set_converterY8U8V8(work);
            if (result < 0) {
                goto error_exit;
            }
            break;
        }

        state->mPosition = TMCJPEGDEC_get_position(work);
        return state->mResult;
    }

error_exit:
    return (result < 0) ? result : -2;
}

s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer) {
    s32 offsetY;
    TMCJpegDecWork* work;
    u16 curX;
    u16 maxX;
    u16 curY;
    u16 maxY;
    u8 stepX;
    u8 stepY;
    s32 count;
    u8 buf[0x18C];
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

    if (maxY == curY) {
        if (curX == 0) {
            s32 result;
            result = TMCJPEGDEC_imageend(work);
            if (result < 0) {
                return result;
            }
        }
    }

    state->mPosX = curX;
    state->mPosY = curY;
    state->mPosition = TMCJPEGDEC_get_position(work);
    return state->mResult - (curY * maxX) - curX;

error:
    if (work->mRestartInterval == 0) {
        goto epilogue;
    }
    if (dec_result == -0xF0) {
        goto epilogue;
    }
    state->mDecodeResult = dec_result;
    TMCJPEGDEC_err_restart(work);
epilogue:
    ;
}

s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u8 scale) {
    TMCJpegDecWork* work;
    s32 result;

    work = (TMCJpegDecWork*)state->mpWorkBuf;

    state->mFlag20 = scale;

    if (scale != 1 && scale != 2 && scale != 4 && scale != 8) {
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
