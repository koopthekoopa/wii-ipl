#include "utility/iplJpegDecoder.h"
#include "utility/iplCapture.h"
#include "utility/iplGraphics.h"
#include "system/iplSystem.h"
#include "system/odh.h"

#include <revolution/gx.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/os/OSSemaphore.h>
#include <string.h>
#include <tmc_jpeg.h>

extern volatile const u8 lbl_81694658 = 0xFF;
extern volatile const u8 lbl_81694659 = 0xFF;
extern volatile const u8 lbl_8169465A = 0xFF;
extern volatile const u8 lbl_8169465B = 0xFF;
extern const f32 lbl_8169465C = 0.0f;
extern volatile const f32 lbl_81694660 = 1.0f;
extern volatile const f32 lbl_81694664 = -100.0f;
extern volatile const f32 lbl_81694668 = 100.0f;

namespace ipl {
    namespace utility {

JpegDecoder::JpegDecoder(EGG::Heap* heap)
    : mpData(NULL), mLength(0), mReadPos(0), mpCapture(NULL),
      mInitResult(0), mStatus(0) {
    mpBuf1 = new (heap, DEFAULT_ALIGN) u8[0x1C00];
    mpBuf2 = new (heap, DEFAULT_ALIGN) u8[0x10040];

    clear();
    OSInitSemaphore(&mSemaphore, 0);
}

BOOL JpegDecoder::decodeJpg(EGG::Heap* heap, u8* buffer, u32 length) {
    BOOL result = FALSE;
    if (mStatus == 0) {
        mpData = buffer;
        mLength = length;
        mReadPos = 0;

        TMCCJPEGDecInitParam param;
        param.mFlag1 = 0;
        param.mFlag2 = 0;
        param.mpBuf1 = mpBuf1;
        param.mpBuf2 = mpBuf2;
        param.mBuf2Size = 0x10040;
        param.mDataSize = length;
        param.mpCallback = (void*)readStreamCallback;
        param.mpContext = this;

        mInitResult = TMCCJPEGDecInit(&mTMCState, &param);

        if (mInitResult > 0)
        {
            u32 jpegW = mTMCState.mJpegWidth;
            u32 jpegH = mTMCState.mJpegHeight;

            s32 scale = get_resolution(jpegW, jpegH);
            if (scale < 0) {
                clear();
                return FALSE;
            }

            if (scale > 0) {
                if (TMCCJPEGDecSetResolution(&mTMCState, (u8)scale) < 0) {
                    clear();
                    return FALSE;
                }
            }

            mTextureSize = ((mTMCState.mJpegWidth + 7) & 0xFFF8) *
                            ((mTMCState.mJpegHeight + 7) & 0xFFF8) * 2;

            mpTextureBuffer = new (heap, DEFAULT_ALIGN) u8[mTextureSize];

            if (TMCCJPEGDecodeRGB565(&mTMCState, mInitResult, mpTextureBuffer) == 0) {
                mOrientation = get_orientation();
                DCStoreRange(mpTextureBuffer, mTextureSize);

                calc_capture_size(jpegW, jpegH);

                mpCapture = new (heap, DEFAULT_ALIGN) Capture(heap, 0, 0, mCaptureSizeW,
                                                               mCaptureSizeH, GX_TF_RGB565);

                mStatus = 1;
                result = TRUE;
            }
            else {
                delete[] mpTextureBuffer;
                mpTextureBuffer = NULL;
                clear();
                return FALSE;
            }
        }
    }
    return result;
}

BOOL JpegDecoder::encodeOdh(EGG::Heap* heap, u8* buffer, u32 length) {
    u32 size = mpCapture->getCaptureWidth() * mpCapture->getCaptureHeight() * 3;
    u8* work = new (heap, DEFAULT_ALIGN) u8[size];
    if (work == NULL) {
        return FALSE;
    }

    u32 w = mpCapture->getCaptureWidth();
    u32 h = mpCapture->getCaptureHeight();
    s32 ret = ODHEncodeRGB565(mpCapture->getTexBuffer(), buffer, w, h,
                               length, 100, work);
    delete[] work;
    return ret;
}

void JpegDecoder::makeRawData() {
    if (mStatus != 1) {
        return;
    }

    f32 savedViewport[6];
    GXGetViewportv(savedViewport);

    f32 vpX = lbl_8169465C;
    f32 vpY = lbl_8169465C;
    f32 vpW = mCaptureSizeW;
    f32 vpFar = lbl_81694660;
    f32 vpH = mCaptureSizeH;
    f32 vpNear = lbl_8169465C;
    GXSetViewport(vpX, vpY, vpW, vpH, vpNear, vpFar);

    f32 projRect[4];
    projRect[0] = lbl_8169465C;
    projRect[1] = lbl_8169465C;
    projRect[2] = lbl_8169465C;
    projRect[3] = lbl_8169465C;
    ipl::System::getProjectionRect4x3((nw4r::ut::Rect*)projRect);

    Mtx44 projMtx;
    f32 w = mCaptureSizeW;
    f32 h = mCaptureSizeH;

    C_MTXOrtho(projMtx,
               0.f, h,
               lbl_8169465C, w,
               lbl_81694664, lbl_81694668);
    GXSetProjection(projMtx, GX_ORTHOGRAPHIC);

    Graphics::calcOrthoCamera();
    Graphics::setCamera(0);

    GXTexObj texObj;
    GXInitTexObj(&texObj, mpTextureBuffer,
                 mTMCState.mJpegWidth, mTMCState.mJpegHeight,
                 GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);

    f32 destH = mCaptureSizeH;
    f32 destW = mCaptureSizeW;

    int drawOri = 0;

    GXColor col;
    f32 destRect[4];

    col.r = *(volatile u8*)&lbl_81694658;
    destRect[0] = lbl_8169465C;
    col.g = *(volatile u8*)&lbl_81694659;
    destRect[1] = lbl_8169465C;
    col.b = *(volatile u8*)&lbl_8169465A;
    col.a = *(volatile u8*)&lbl_8169465B;
    destRect[2] = destW;
    destRect[3] = destH;

    int orient = mOrientation + col.a - col.a;

    switch (orient) {
    case 1:
        drawOri = 1;
        break;
    case 2:
        drawOri = 2;
        break;
    default:
        break;
    }

    Graphics::drawTexture(*(nw4r::ut::Rect*)destRect, texObj,
                          col, 1,
                          (Graphics::Orientation)drawOri);

    mpCapture->capture(TRUE);

    col.b = 0;
    col.g = 0;
    col.r = 0;

    Graphics::drawPolygon(*(nw4r::ut::Rect*)destRect, col);

    delete[] mpTextureBuffer;
    mpTextureBuffer = NULL;
    mTextureSize = 0;
    mStatus = 2;

    GXSetViewport(savedViewport[0], savedViewport[1], savedViewport[2],
                  savedViewport[3], savedViewport[4], savedViewport[5]);

    OSSignalSemaphore(&mSemaphore);
}

BOOL JpegDecoder::waitCaptured() {
    OSWaitSemaphore(&mSemaphore);
    return mStatus - 2 == 0;
}

void JpegDecoder::clear() {
    mStatus = 0;
    mInitResult = 0;
    mpData = NULL;
    mLength = 0;
    mReadPos = 0;
    mpTextureBuffer = NULL;
    mTextureSize = 0;
    mCaptureSizeW = 0;
    mCaptureSizeH = 0;
    memset(&mTMCState, 0, 0x6D4);

    if (mpCapture != NULL) {
        delete mpCapture;
        mpCapture = NULL;
    }

    mOrientation = 0;
}

int JpegDecoder::readStreamCallback(void* ctx, u8* buf, unsigned int size) {
    JpegDecoder* self = (JpegDecoder*)ctx;
    memcpy(buf, self->mpData + self->mReadPos, size);
    self->mReadPos += size;
    return 0;
}

int JpegDecoder::get_orientation() {
    int result = 0;

    TMCCJPEGDecInitParam param;
    param.mFlag1 = 0;
    param.mFlag2 = 0;
    param.mpBuf1 = mpBuf1;
    param.mpBuf2 = mpBuf2;
    param.mBuf2Size = 0x10040;
    param.mDataSize = mLength;
    param.mpCallback = (void*)readStreamCallback;
    param.mpContext = this;

    mReadPos = 0;

    u32 exifOffset;
    u32 exifSize;

    if (TMCCJPEGDecGetOffsetEXIF(&exifOffset, &exifSize, &param) == 0) {
        param.mFlag1 = 0;
        param.mFlag2 = 0;
        param.mpBuf1 = mpBuf1;
        param.mpBuf2 = mpData + exifOffset;
        param.mBuf2Size = exifSize;
        param.mDataSize = mLength;
        param.mpCallback = NULL;
        param.mpContext = NULL;

        TMCCJPEGDecExifInfo exifInfo;
        if (TMCCJPEGDecGetInfoEXIF(&exifInfo, &param) == 0) {
            switch (exifInfo.mOrientation) {
            case 7:
                break;
            case 6:
                result = 1;
                break;
            case 8:
                result = 2;
                break;
            }
        }
    }

    return result;
}

int JpegDecoder::get_resolution(int w, int h) {
    int scaleW = 0;
    int scaleH = 0;

    if (w > 0x1900) {
        return -1;
    }

    if (w > 0xC80) {
        scaleW = 8;
    } else if (w > 0x640) {
        scaleW = 4;
    } else if (w > 0x320) {
        scaleW = 2;
    }

    if (h > 0x12C0) {
        return -1;
    }

    if (h > 0x960) {
        scaleH = 8;
    } else if (h > 0x4B0) {
        scaleH = 4;
    } else if (h > 0x258) {
        scaleH = 2;
    }

    if (scaleW > scaleH) {
        return scaleW;
    }
    return scaleH;
}

void JpegDecoder::calc_capture_size(int w, int h) {
    int tmp;
    switch (mOrientation) {
    case 1:
        tmp = h;
        h = w;
        w = tmp;
        break;
    case 2:
        tmp = h;
        h = w;
        w = tmp;
    default:
        break;
    }

    if (w > 0x200) {
        mCaptureSizeH = h * 0x200 / w;
        mCaptureSizeW = 0x200;
        if (mCaptureSizeH > 0x1C8) {
            int oldH = mCaptureSizeH;
            mCaptureSizeW = mCaptureSizeW * 0x1C8 / oldH;
            mCaptureSizeH = 0x1C8;
        }
    } else if (h > 0x1C8) {
        int scaledW = w * 0x1C8;
        scaledW /= h;
        mCaptureSizeH = 0x1C8;
        mCaptureSizeW = scaledW;
        if (mCaptureSizeW > 0x200) {
            int oldW = mCaptureSizeW;
            mCaptureSizeH = mCaptureSizeH * 0x200 / oldW;
            mCaptureSizeW = 0x200;
        }
    } else {
        mCaptureSizeW = w;
        mCaptureSizeH = h;
    }

    mCaptureSizeW = (mCaptureSizeW + 7) & ~7;
    mCaptureSizeH = (mCaptureSizeH + 7) & ~7;
}

    }  // namespace utility
}  // namespace ipl
