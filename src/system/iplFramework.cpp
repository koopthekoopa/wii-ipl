#include "system/iplFramework.h"

#include <revolution/sc.h>

namespace ipl {
    #define DELTA_60    1.0f /* Delta for NTSC, MPAL and PAL60 */
    #define DELTA_50    1.2f /* Delta for PAL50 */

    // NTSC Interlaced
    static GXRenderModeObj sRMO_Ntsc_640x456IntDf = {
        VI_TVMODE_NTSC_INT,
        640,
        456,
        456,
        25,
        12,
        670,
        456,
        VI_XFBMODE_DF,
        GX_FALSE,
        GX_FALSE,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        7, 7,
        12, 12, 12,
        7, 7,
    };

    // NTSC Progressive
    static GXRenderModeObj sRMO_Ntsc_640x456Prog = {
        VI_TVMODE_NTSC_PROG,
        640,
        456,
        456,
        25,
        12,
        670,
        456,
        VI_XFBMODE_SF,
        GX_FALSE,
        GX_FALSE,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        0, 0,
        21, 22, 21,
        0, 0,
    };

    // PAL50 Progressive
    static GXRenderModeObj sRMO_Pal50_640x456IntDf = {
        VI_TVMODE_PAL_INT,
        640,
        456,
        542,
        27,
        16,
        666,
        542,
        VI_XFBMODE_DF,
        GX_FALSE,
        GX_FALSE,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        7, 7,
        12, 12, 12,
        7, 7,
    };

    // PAL60 Interlaced
    static GXRenderModeObj sRMO_Pal60_640x456IntDf = {
        VI_TVMODE_EURGB60_INT,
        640,
        456,
        456,
        25,
        12,
        670,
        456,
        VI_XFBMODE_DF,
        GX_FALSE,
        GX_FALSE,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        7, 7,
        12, 12, 12,
        7, 7,
    };

    // PAL60 Progressive
    static GXRenderModeObj sRMO_Pal60_640x456Prog = {
        VI_TVMODE_EURGB60_PROG,
        640,
        456,
        456,
        25,
        12,
        670,
        456,
        VI_XFBMODE_SF,
        GX_FALSE,
        GX_FALSE,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        6, 6, 6, 6, 6, 6,
        0, 0,
        21, 22, 21,
        0, 0,
    };

    Framework::Framework(EGG::Heap* heap) {
        mpRMode = NULL;

        VIInit();

        init_vi();
        init_xfb(heap);
    }

    inline void Framework::flip_xfb() {
        mCurXfb = !mCurXfb;
    }

    void Framework::beginFrame() {
        flip_xfb();
    }

    void Framework::beginRender() {
        GXInvalidateTexAll();
    }

    void Framework::endRender() {
        GXColor clrColor = {0x00, 0x00, 0x00, 0x00};
        GXSetCopyClear(clrColor, 0xFFFFFF);

        GXSetZMode(GX_TRUE, GX_ALWAYS, GX_TRUE);

        GXSetAlphaUpdate(GX_TRUE);
        GXSetColorUpdate(GX_TRUE);

        GXCopyDisp(mpXfb[mCurXfb], GX_TRUE);

        GXFlush();
    }

    void Framework::endFrame() {
        GXDrawDone();

        VISetNextFrameBuffer(mpXfb[mCurXfb]);
        VIFlush();
        VIWaitForRetrace();
    }

    void Framework::resetRenderMode() {
        reset_render_mode();
        
        VIFlush(); {
            GXSetDispCopySrc(0, 0, mpRMode->fbWidth, mpRMode->efbHeight);
            f32 yScaleFactor = GXGetYScaleFactor(mpRMode->efbHeight, mpRMode->xfbHeight);
            u32 height       = GXSetDispCopyYScale(yScaleFactor);
            GXSetDispCopyDst(mpRMode->fbWidth, height);
        }

        // XFB[0]
        flip_xfb();
        GXInvalidateTexAll();
        endRender();
        endFrame();

        // XFB[1]
        flip_xfb();
        GXInvalidateTexAll();
        endRender();
        endFrame();
    }

    void Framework::reset_render_mode() {
        u32 wideScreen = SCGetAspectRatio();
        u32 progressive = SCGetProgressiveMode();
        u32 pal60 = SCGetEuRgb60Mode();

        mWideScreen = wideScreen;
        mDelta = DELTA_60;

        switch (VIGetTvFormat()) {
            // NTSC Progressive and Interlaced
            case VI_MPAL:
            case VI_NTSC: {
                if (VIGetDTVStatus() == TRUE && progressive == TRUE) {
                    mpRMode = &sRMO_Ntsc_640x456Prog;
                }
                else {
                    mpRMode = &sRMO_Ntsc_640x456IntDf;
                }
                if (wideScreen == TRUE) {
                    mpRMode->viWidth = 686;
                }
                else {
                    mpRMode->viWidth = 670;
                }
                mpRMode->viXOrigin = (VI_MAX_WIDTH_NTSC - mpRMode->viWidth) / 2;
                break;
            }
            case VI_PAL:
            case VI_EURGB60: {
                // PAL60 Progressive
                if (VIGetDTVStatus() == TRUE && progressive == TRUE) {
                    mpRMode = &sRMO_Pal60_640x456Prog;
                    if (wideScreen == TRUE) {
                        sRMO_Pal60_640x456Prog.viWidth = 686;
                    }
                    else {
                        sRMO_Pal60_640x456Prog.viWidth = 670;
                    }
                    mpRMode->viXOrigin = (VI_MAX_WIDTH_EURGB60 - mpRMode->viWidth) / 2;
                }
                // PAL60 Interlaced
                else if (pal60 == TRUE) {
                    mpRMode = &sRMO_Pal60_640x456IntDf;
                    if (wideScreen == TRUE) {
                        sRMO_Pal60_640x456IntDf.viWidth = 686;
                    }
                    else {
                        sRMO_Pal60_640x456IntDf.viWidth = 670;
                    }
                    mpRMode->viXOrigin = (VI_MAX_WIDTH_EURGB60 - mpRMode->viWidth) / 2;
                }
                // PAL50 Interlaced
                else {
                    mpRMode = &sRMO_Pal50_640x456IntDf;
                    if (wideScreen == TRUE) {
                        sRMO_Pal50_640x456IntDf.viWidth = 682;
                    }
                    else {
                        sRMO_Pal50_640x456IntDf.viWidth = 666;
                    }
                    mpRMode->viXOrigin = (VI_MAX_WIDTH_PAL - mpRMode->viWidth) / 2;
                    mDelta = DELTA_50;
                }
                break;
            }
        }
        VIConfigure(mpRMode);
    }

    void Framework::init_vi() {
        VISetBlack(TRUE);

        reset_render_mode();

        VISetTrapFilter(TRUE);
        VISetTrapFilter(FALSE);

        // Screen burn in reduction
        VIEnableDimming(FALSE);
        VIEnableDimming((BOOL)SCGetScreenSaverMode());
        
        VIFlush(); {
            GXSetDispCopySrc(0, 0, mpRMode->fbWidth, mpRMode->efbHeight);
            f32 yScaleFactor = GXGetYScaleFactor(mpRMode->efbHeight, mpRMode->xfbHeight);
            u32 height       = GXSetDispCopyYScale(yScaleFactor);
            GXSetDispCopyDst(mpRMode->fbWidth, height);
        }

        // Wait for VI to be ready
        VIWaitForRetrace();
        VIWaitForRetrace();
    }

    void Framework::init_xfb(EGG::Heap* heap) {
        u32 xfbSize = VIPadFrameBufferWidth(mpRMode->fbWidth) * mpRMode->xfbHeight * VI_DISPLAY_PIX_SZ;
        
        for (int i = 0; i < 2; i++) {
            mpXfb[i] = new(heap, BUFFER_HEAP) u8[xfbSize];
        }

        mCurXfb = 0;
    }
}
