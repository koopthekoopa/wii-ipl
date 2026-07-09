#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_Decompscan(TMCCJPEGDecWork* work) {
    s32 r = TMCJPEGDEC_scanstart(work);
    return r < 0 ? r : (work->scanCount == 1) ? 0 : r;
}

s32 TMCJPEGDEC_Setsize(TMCCJPEGDecWork* work) {
    TMCCJPEGDecState* state = work->pState;

    switch (state->scaleFactor) {
        case 1: {
            work->blockSize = 0x40;
            work->blockSizeMul = 0x40;
            work->idctPtr = TMCJPEGDEC_IdctBlock_Lumi;
            work->idctLumiPtr = TMCJPEGDEC_IdctBlock_Col;
            work->decodePtr = TMCJPEGDEC_decode_iquant;
            work->idctMode = 8;
            break;
        }
        case 2: {
            work->blockSize = 0x19;
            work->blockSizeMul = 0x6C;
            work->idctPtr = TMCJPEGDEC_IdctBlock4x4;
            work->idctLumiPtr = TMCJPEGDEC_IdctBlock4x4_Col;
            work->decodePtr = TMCJPEGDEC_decode_iquant_rc;
            work->idctMode = 4;
            break;
        }
        case 4: {
            work->blockSize = 0x05;
            work->blockSizeMul = 0x24;
            work->idctPtr = TMCJPEGDEC_IdctBlock2x2;
            work->idctLumiPtr = TMCJPEGDEC_IdctBlock2x2_Col;
            work->decodePtr = TMCJPEGDEC_decode_iquant_rc;
            work->idctMode = 2;
            break;
        }
        case 8: {
            work->blockSize = 0x01;
            work->blockSizeMul = 0x00;
            work->idctPtr = TMCJPEGDEC_IdctBlock1x1;
            work->idctLumiPtr = TMCJPEGDEC_IdctBlock1x1_Col;
            work->decodePtr = TMCJPEGDEC_decode_iquant_rc;
            work->idctMode = 1;
            break;
        }
        default: {
            return TMCC_ERROR_FORMAT;
        }
    }

    state->componentCount = work->componentCount;
    state->result = work->unk_0x1804;
    state->maxX = work->mcuYCount;
    state->maxY = work->mcuXCount2;

    state->stepX = (state->scaleFactor + work->mcuXCount - 1) / state->scaleFactor;
    state->stepY = (state->scaleFactor + work->mcuXRem - 1) / state->scaleFactor;
    state->jpegWidth = ((s32)(work->frameWidth + state->scaleFactor) - 1) / state->scaleFactor;
    state->jpegHeight = (state->scaleFactor + work->frameHeight - 1) / state->scaleFactor;
    state->stepXExt = (state->scaleFactor + work->unk_0x1808 - 1) / state->scaleFactor;
    state->stepYExt = (state->scaleFactor + work->unk_0x1809 - 1) / state->scaleFactor;

    state->dataSizeX = (state->stepXExt != 0) ? (state->maxX - 1) * state->stepX : (state->maxX + 1) * state->stepX;
    state->dataSizeY = (state->stepYExt != 0) ? (state->maxY - 1) * state->stepY : (state->maxY + 1) * state->stepY;

    switch (work->componentCount) {
        case 4: {
            state->outputWidth = state->jpegWidth;
            state->outputHeight = state->jpegHeight;
            break;
        }
        case 1: {
            state->outputWidth = (state->jpegWidth + 1) / 2;
            state->outputHeight = state->jpegHeight;
            break;
        }
        case 2: {
            state->outputWidth = (state->jpegWidth + 1) / 2;
            state->outputHeight = (state->jpegHeight + 1) / 2;
            break;
        }
        case 0: {
            state->outputWidth = (state->jpegWidth + 3) / 4;
            state->outputHeight = state->jpegHeight;
            break;
        }
        case 3: {
            state->outputWidth = state->jpegWidth;
            state->outputHeight = (state->jpegHeight + 1) / 2;
            break;
        }
        case 5: {
            break;
        }
        default: {
            return TMCC_ERROR_FORMAT;
        }
    }

    return 0;
}

s32 TMCJPEGDEC_HeaderAnalyze(TMCCJPEGDecWork* work) {
    s32 r = TMCJPEGDEC_imagestart(work);
    if (r < 0) {
        return r;
    }
    if (work->frameWidth == 0) {
        return TMCC_ERROR_HEADER;
    }

    work->mcuCount = work->mcuXCount * work->mcuYCount;
    work->mcuRemCount = work->mcuXRem * work->mcuXCount2;
    return r;
}
