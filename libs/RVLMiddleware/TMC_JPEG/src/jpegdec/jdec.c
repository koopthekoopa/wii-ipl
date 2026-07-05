#include <tmc_jpeg_internal.h>

s32 TMCJPEGDEC_Decompscan(TMCJpegDecWork* work) {
    s32 r = TMCJPEGDEC_scanstart(work);
    return r < 0 ? r : (work->mScanCount == 1) ? 0 : r;
}

s32 TMCJPEGDEC_Setsize(TMCJpegDecWork* work) {
    TMCCJPEGDecState* state = work->mpState;

    switch (state->mScaleFactor) {
    case 1:
        work->mBlockSize = 0x40;
        work->mBlockSizeMul = 0x40;
        work->mIdctPtr = TMCJPEGDEC_IdctBlock_Lumi;
        work->mIdctLumiPtr = TMCJPEGDEC_IdctBlock_Col;
        work->mDecodePtr = TMCJPEGDEC_decode_iquant;
        work->mIdctMode = 8;
        break;
    case 2:
        work->mBlockSize = 0x19;
        work->mBlockSizeMul = 0x6C;
        work->mIdctPtr = TMCJPEGDEC_IdctBlock4x4;
        work->mIdctLumiPtr = TMCJPEGDEC_IdctBlock4x4_Col;
        work->mDecodePtr = TMCJPEGDEC_decode_iquant_rc;
        work->mIdctMode = 4;
        break;
    case 4:
        work->mBlockSize = 0x05;
        work->mBlockSizeMul = 0x24;
        work->mIdctPtr = TMCJPEGDEC_IdctBlock2x2;
        work->mIdctLumiPtr = TMCJPEGDEC_IdctBlock2x2_Col;
        work->mDecodePtr = TMCJPEGDEC_decode_iquant_rc;
        work->mIdctMode = 2;
        break;
    case 8:
        work->mBlockSize = 0x01;
        work->mBlockSizeMul = 0x00;
        work->mIdctPtr = TMCJPEGDEC_IdctBlock1x1;
        work->mIdctLumiPtr = TMCJPEGDEC_IdctBlock1x1_Col;
        work->mDecodePtr = TMCJPEGDEC_decode_iquant_rc;
        work->mIdctMode = 1;
        break;
    default:
        return TMCC_ERROR_FORMAT;
    }

    state->mComponentState = work->mComponentCount;
    state->mResult = work->unk_0x1804;
    state->mMaxX = work->mMCUYCount;
    state->mMaxY = work->mMCUXCount2;

    state->mStepX = (state->mScaleFactor + work->mMCUXCount - 1) / state->mScaleFactor;
    state->mStepY = (state->mScaleFactor + work->mMCUXRem - 1) / state->mScaleFactor;
    state->mJpegWidth = ((s32)(work->mFrameWidth + state->mScaleFactor) - 1) / state->mScaleFactor;
    state->mJpegHeight = (state->mScaleFactor + work->mFrameHeight - 1) / state->mScaleFactor;
    state->mStepXExt = (state->mScaleFactor + work->unk_0x1808 - 1) / state->mScaleFactor;
    state->mStepYExt = (state->mScaleFactor + work->unk_0x1809 - 1) / state->mScaleFactor;

    state->mDataSizeX = (state->mStepXExt != 0) ? (state->mMaxX - 1) * state->mStepX : (state->mMaxX + 1) * state->mStepX;
    state->mDataSizeY = (state->mStepYExt != 0) ? (state->mMaxY - 1) * state->mStepY : (state->mMaxY + 1) * state->mStepY;

    switch (work->mComponentCount) {
    case 4:
        state->mOutputWidth = state->mJpegWidth;
        state->mOutputHeight = state->mJpegHeight;
        break;
    case 1:
        state->mOutputWidth = (state->mJpegWidth + 1) / 2;
        state->mOutputHeight = state->mJpegHeight;
        break;
    case 2:
        state->mOutputWidth = (state->mJpegWidth + 1) / 2;
        state->mOutputHeight = (state->mJpegHeight + 1) / 2;
        break;
    case 0:
        state->mOutputWidth = (state->mJpegWidth + 3) / 4;
        state->mOutputHeight = state->mJpegHeight;
        break;
    case 3:
        state->mOutputWidth = state->mJpegWidth;
        state->mOutputHeight = (state->mJpegHeight + 1) / 2;
        break;
    case 5:
        break;
    default:
        return TMCC_ERROR_FORMAT;
    }

    return 0;
}

s32 TMCJPEGDEC_HeaderAnalyze(TMCJpegDecWork* work) {
    s32 r = TMCJPEGDEC_imagestart(work);
    if (r < 0)
        return r;
    if (work->mFrameWidth == 0)
        return TMCC_ERROR_HEADER;

    work->mMCUCount = work->mMCUXCount * work->mMCUYCount;
    work->mMCURemCount = work->mMCUXRem * work->mMCUXCount2;
    return r;
}
