#include <string.h>
#include <tmc_jpeg_internal.h>

s32 TMCCJPEGDecInit(TMCCJPEGDecState* state, TMCCJPEGDecInitParam* param) {
    s32 result;
    TMCCJPEGDecWork* work;

    work = param->pBuf1;
    if (work == NULL) {
        return -1;
    }

    memset(state, 0, sizeof(TMCCJPEGDecState));
    memset(work, 0, sizeof(TMCCJPEGDecWork));
    work->pState = state;
    state->pWorkBuf = work;

    if (param->unk_0x24 != 0) {
        result = -1;
    } else if (param->unk_0x2C != 0 && param->unk_0x2C != 1 && param->unk_0x2C != 2) {
        result = -1;
    } else {
        state->unk_0x21 = param->unk_0x24;
        result = 0;
        state->scaleFactor = 1;
        state->converterType = param->unk_0x2C;
    }

    if (result < 0) {
        goto error;
    }

    result = TMCJPEGDEC_init_ptr_buff(work, &param->pBuf2);
    if (result < 0) {
        return result;
    }

    result = TMCJPEGDEC_imagestart(work);
    result = (result < 0) ?
                 result :
                 ((work->frameWidth == 0) ?
                      TMCC_ERROR_HEADER :
                      ((work->mcuCount = work->mcuXCount * work->mcuYCount, work->mcuRemCount = work->mcuXRem * work->mcuXCount2), result));
    if (result < 0) {
        goto error;
    }

    result = TMCJPEGDEC_scanstart(work);
    result = (result < 0) ? result : ((work->scanCount == 1) ? 0 : result);
    if (result < 0) {
        goto error;
    }

    if (work->scanCount != 0) {
        goto error;
    }

    result = TMCJPEGDEC_Setsize(work);
    if (result >= 0) {
        switch (state->converterType) {
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

        state->position = TMCJPEGDEC_get_position(work);
        return state->result;
    }

error:
    return (result < 0) ? result : -2;
}

s32 TMCCJPEGDecodeRGB565(TMCCJPEGDecState* state, s32 initResult, void* texBuffer) {
    u8 buf[0x17C];
    u32 offsetY;
    TMCCJPEGDecWork* work;
    u16 curX;
    u16 maxX;
    u16 curY;
    u16 maxY;
    u8 stepX;
    u8 stepY;
    s32 count;
    s32 dec_result;

    work = state->pWorkBuf;
    if (work == NULL) {
        return -1;
    }

    if (state->converterType != 0) {
        return -4;
    }

    state->pTexBuffer = texBuffer;

    count = 0;
    curX = state->posX;
    curY = state->posY;
    maxX = state->maxX;
    maxY = state->maxY;
    stepX = state->stepX;
    stepY = state->stepY;

    while (curY < maxY && count < initResult) {
        offsetY = curY * stepY;

        while (curX < maxX && count < initResult) {
            dec_result = TMCJPEGDEC_decompmcu(curX * stepX, offsetY, work, buf);
            if (dec_result < 0) {
                goto error;
            }
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

    state->posX = curX;
    state->posY = curY;
    state->position = TMCJPEGDEC_get_position(work);
    return state->result - (curY * maxX) - curX;

error:
    if (work->restartInterval != 0 && dec_result != TMCC_ERROR_USER_CALLBACK) {
        state->decodeResult = dec_result;
        TMCJPEGDEC_err_restart(work);
    }
}

s32 TMCCJPEGDecSetResolution(TMCCJPEGDecState* state, u32 scale) {
    TMCCJPEGDecWork* work;
    s32 result;
    u8 s;

    s = (u8)scale;
    work = state->pWorkBuf;
    state->scaleFactor = scale;
    if (s != 1 && s != 2 && s != 4 && s != 8) {
        return -1;
    }

    result = TMCJPEGDEC_Setsize(work);
    if (result < 0) {
        return result;
    }

    switch (state->converterType) {
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
