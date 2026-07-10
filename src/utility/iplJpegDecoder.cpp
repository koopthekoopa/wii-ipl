#include "utility/iplJpegDecoder.h"
#include "system/iplSystem.h"
#include "system/odh.h"
#include "utility/iplCapture.h"
#include "utility/iplGraphics.h"

#include <revolution/gx.h>
#include <revolution/gx/GXEnum.h>
#include <revolution/os/OSSemaphore.h>
#include <tmc_jpeg.h>

namespace ipl {
    namespace utility {
        JpegDecoder::JpegDecoder(EGG::Heap* heap) : mpData(NULL), mLength(0), mReadPos(0), mpCapture(NULL), mInitResult(0), mStatus(STATUS_IDLE) {
            mpBuf1 = reinterpret_cast<TMCCJPEGDecWork*>(new (heap, DEFAULT_ALIGN) u8[TMCC_JPEG_DEC_WORK_SIZE]);
            mpBuf2 = new (heap, DEFAULT_ALIGN) u8[0x10040];

            clear();
            OSInitSemaphore(&mSemaphore, 0);
        }

        BOOL JpegDecoder::decodeJpg(EGG::Heap* heap, u8* buffer, u32 length) {
            BOOL result = FALSE;
            if (mStatus == STATUS_IDLE) {
                mpData = buffer;
                mLength = length;
                mReadPos = 0;

                TMCCJPEGDecInitParam param;
                param.unk_0x24 = 0;
                param.unk_0x2C = 0;
                param.pBuf1 = mpBuf1;
                param.pBuf2 = mpBuf2;
                param.buf2Size = 0x10040;
                param.dataSize = length;
                param.pCallback = readStreamCallback;
                param.pContext = this;

                mInitResult = TMCCJPEGDecInit(&mTMCState, &param);

                if (mInitResult > 0) {
                    u32 jpegW = mTMCState.jpegWidth;
                    u32 jpegH = mTMCState.jpegHeight;

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

                    mTextureSize = ((mTMCState.jpegWidth + 7) & 0xFFF8) * ((mTMCState.jpegHeight + 7) & 0xFFF8) * 2;

                    mpTextureBuffer = new (heap, DEFAULT_ALIGN) u8[mTextureSize];

                    if (TMCCJPEGDecodeRGB565(&mTMCState, mInitResult, mpTextureBuffer) == 0) {
                        mOrientation = get_orientation();
                        DCStoreRange(mpTextureBuffer, mTextureSize);

                        calc_capture_size(jpegW, jpegH);

                        mpCapture = new (heap, DEFAULT_ALIGN) Capture(heap, 0, 0, mCaptureWidth, mCaptureHeight, GX_TF_RGB565);

                        mStatus = STATUS_DECODED;
                        result = TRUE;
                    } else {
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
            s32 ret = ODHEncodeRGB565(mpCapture->getTexBuffer(), buffer, w, h, length, 100, work);
            delete[] work;
            return ret;
        }

        void JpegDecoder::makeRawData() {
            if (mStatus != STATUS_DECODED) {
                return;
            }

            f32 savedViewport[6];
            GXGetViewportv(savedViewport);

            f32 vpX = 0.0f;
            f32 vpY = 0.0f;
            f32 vpW = mCaptureWidth;
            f32 vpFar = 1.0f;
            f32 vpH = mCaptureHeight;
            f32 vpNear = 0.0f;
            GXSetViewport(vpX, vpY, vpW, vpH, vpNear, vpFar);

            f32 projRect[4];
            projRect[0] = 0.0f;
            projRect[1] = 0.0f;
            projRect[2] = 0.0f;
            projRect[3] = 0.0f;
            ipl::System::getProjectionRect4x3((nw4r::ut::Rect*)projRect);

            Mtx44 projMtx;
            f32 w = mCaptureWidth;
            f32 h = mCaptureHeight;

            C_MTXOrtho(projMtx, 0.f, h, 0.0f, w, -100.0f, 100.0f);
            GXSetProjection(projMtx, GX_ORTHOGRAPHIC);

            Graphics::calcOrthoCamera();
            Graphics::setCamera(0);

            GXTexObj texObj;
            GXInitTexObj(&texObj, mpTextureBuffer, mTMCState.jpegWidth, mTMCState.jpegHeight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);

            Graphics::Orientation drawOri = Graphics::ORI_NONE;

            GXColor col = {255, 255, 255, 255};
            nw4r::ut::Rect destRect(0.0f, 0.0f, mCaptureWidth, mCaptureHeight);

            int orient = (int)mOrientation + col.a - col.a;

            switch (orient) {
                case 1: {
                    drawOri = Graphics::ORI_90CW;
                    break;
                }
                case 2: {
                    drawOri = Graphics::ORI_90CCW;
                    break;
                }
                default: {
                    break;
                }
            }

            Graphics::drawTexture(destRect, texObj, col, 1, drawOri);

            mpCapture->capture(TRUE);

            col.b = 0;
            col.g = 0;
            col.r = 0;

            Graphics::drawPolygon(destRect, col);

            delete[] mpTextureBuffer;
            mpTextureBuffer = NULL;
            mTextureSize = 0;
            mStatus = STATUS_CAPTURED;

            GXSetViewport(savedViewport[0], savedViewport[1], savedViewport[2], savedViewport[3], savedViewport[4], savedViewport[5]);
            OSSignalSemaphore(&mSemaphore);
        }

        BOOL JpegDecoder::waitCaptured() {
            OSWaitSemaphore(&mSemaphore);
            return mStatus == STATUS_CAPTURED;
        }

        void JpegDecoder::clear() {
            mStatus = STATUS_IDLE;

            mInitResult = 0;

            mpData = NULL;
            mLength = 0;

            mReadPos = 0;

            mpTextureBuffer = NULL;
            mTextureSize = 0;

            mCaptureWidth = 0;
            mCaptureHeight = 0;

            memset(&mTMCState, 0, sizeof(mTMCState));

            if (mpCapture != NULL) {
                delete mpCapture;
                mpCapture = NULL;
            }

            mOrientation = Graphics::ORI_NONE;
        }

        s32 JpegDecoder::readStreamCallback(void* ctx, u8* buf, unsigned int size) {
            JpegDecoder* self = (JpegDecoder*)ctx;
            memcpy(buf, self->mpData + self->mReadPos, size);
            self->mReadPos += size;
            return 0;
        }

        Graphics::Orientation JpegDecoder::get_orientation() {
            Graphics::Orientation ori = Graphics::ORI_NONE;

            TMCCJPEGDecInitParam param;
            param.unk_0x24 = 0;
            param.unk_0x2C = 0;
            param.pBuf1 = mpBuf1;
            param.pBuf2 = mpBuf2;
            param.buf2Size = 0x10040;
            param.dataSize = mLength;
            param.pCallback = readStreamCallback;
            param.pContext = this;

            mReadPos = 0;

            u32 exifOffset;
            u32 exifSize;

            if (TMCCJPEGDecGetOffsetEXIF(&exifOffset, &exifSize, &param) == 0) {
                param.unk_0x24 = 0;
                param.unk_0x2C = 0;
                param.pBuf1 = mpBuf1;
                param.pBuf2 = mpData + exifOffset;
                param.buf2Size = exifSize;
                param.dataSize = mLength;
                param.pCallback = NULL;
                param.pContext = NULL;

                TMCCJPEGDecExifInfo exifInfo;
                if (TMCCJPEGDecGetInfoEXIF(&exifInfo, &param) == 0) {
                    switch (exifInfo.exifData.orientation) {
                        case 7: {
                            break;
                        }
                        case 6: {
                            ori = Graphics::ORI_90CW;
                            break;
                        }
                        case 8: {
                            ori = Graphics::ORI_90CCW;
                            break;
                        }
                    }
                }
            }

            return ori;
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
                case 1: {
                    tmp = h;
                    h = w;
                    w = tmp;
                    break;
                }
                case 2: {
                    tmp = h;
                    h = w;
                    w = tmp;
                }
                default: {
                    break;
                }
            }

            if (w > 0x200) {
                mCaptureHeight = h * 0x200 / w;
                mCaptureWidth = 0x200;
                if (mCaptureHeight > 0x1C8) {
                    int oldH = mCaptureHeight;
                    mCaptureWidth = mCaptureWidth * 0x1C8 / oldH;
                    mCaptureHeight = 0x1C8;
                }
            } else if (h > 0x1C8) {
                int scaledW = w * 0x1C8;
                scaledW /= h;
                mCaptureHeight = 0x1C8;
                mCaptureWidth = scaledW;
                if (mCaptureWidth > 0x200) {
                    int oldW = mCaptureWidth;
                    mCaptureHeight = mCaptureHeight * 0x200 / oldW;
                    mCaptureWidth = 0x200;
                }
            } else {
                mCaptureWidth = w;
                mCaptureHeight = h;
            }

            mCaptureWidth = (mCaptureWidth + 7) & ~7;
            mCaptureHeight = (mCaptureHeight + 7) & ~7;
        }

    }  // namespace utility
}  // namespace ipl
