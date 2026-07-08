#include "iplwww/www_window.h"

#include "iplwww/www_browser.h"
#include "iplwww/www_print.h"
#include "iplwww/www_surface.h"

#include <string.h>

namespace ext_ead {
    namespace www {
        namespace window {
            IPL_WWW_REPORT_REDEFINE_MESSAGE(true);
        }

        BrowserWindow::BrowserWindow(BrowserThread* thread) : mpWwwWindow(NULL), mpBrowserThread(thread) {
            unk_0x2B0 = 0;
            mRenderingMode = 6;

            unk_0x2C4[0] = 0;
            unk_0x2C4[1] = 0;
            unk_0x2C4[2] = 0;
            unk_0x2C4[3] = 0;
            unk_0x2C4[4] = 0;
            unk_0x2C4[5] = 0;

            int i, j;
            for (i = 0; i < (int)ARRAY_LENGTH(mTexBufArr); i++) {
                for (j = 0; j < (int)ARRAY_LENGTH(mTexBufArr[0]); j++) {
                    mTexBufArr[i][j] = NULL;
                }
                unk_0x2B4[i] = NULL;
            }

            unk_0x2BC = 0;
            unk_0x2C0 = 0;

            struct {
                int v0, v1;
            } unused = {0, 0};
        }

        BrowserWindow::~BrowserWindow() {
            CloseWindow();
        }

        WWWHandlewindow* BrowserWindow::CreateWindow(int w, int h, int texW, int texH) {
            mWidth = w;
            mHeight = h;

            WWWRect rect = {0, 0, 0, 0};
            rect.w = mWidth;
            rect.h = mHeight;

            for (int i = 0; i < (int)ARRAY_LENGTH(mTexBufArr); i++) {
                for (int j = 0; j < (int)ARRAY_LENGTH(mTexBufArr[0]); j++) {
                    mTexDisplayRects[i][j] = rect;

                    u32 texBufSize = GXGetTexBufferSize(texW, texH, GX_TF_RGB565, 0, 0);
                    mTexBufArr[i][j] = Heap::allocMem2(texBufSize, 32);

                    memset(mTexBufArr[i][j], 0, texBufSize);
                    DCStoreRange(mTexBufArr[i][j], texBufSize);

                    print::IPLWWWReport(print::WWW_DEBUG, " TextureBuffer_ %d:%d ptr:%p\n", j, i, mTexBufArr[i][j]);
                }
            }

            if (WWWCreateBrowserWindow(mpBrowserThread->GetHandle(), &mpWwwWindow, 0)) {
                print::IPLWWWReport(print::WWW_WARNING, "INFO: cannot create browser window\n");
                return NULL;
            } else {
                WWWRect rect = {0, 0, 0, 0};
                rect.w = mWidth;
                rect.h = mHeight;

                WWWSetBrowserWindowRect(mpWwwWindow, &rect);

                WWWSetImageMode(mpWwwWindow, GX_TF_RGB565);
                WWWSetRenderingMode(mpWwwWindow, mRenderingMode);

                WWWShowBrowserWindow(mpWwwWindow);
                WWWRaiseBrowserWindow(mpWwwWindow);

                WWWSetFocus(mpWwwWindow);

                GotoHome();
                return mpWwwWindow;
            }
        }

        void BrowserWindow::CloseWindow() {
            WWWCloseBrowserWindow(mpBrowserThread->GetHandle(), mpWwwWindow);
            mpWwwWindow = NULL;

            int i;
            for (i = 0; i < (int)ARRAY_LENGTH(mTexBufArr); i++) {
                for (int j = 0; j < (int)ARRAY_LENGTH(mTexBufArr[0]); j++) {
                    void* currTexBuf = mTexBufArr[i][j];
                    if (currTexBuf != NULL) {
                        Heap::freeMem2(currTexBuf);
                        mTexBufArr[i][j] = 0;
                    }
                }
            }
        }

        void BrowserWindow::PrevPage() {
            WWWPrevPage(mpWwwWindow);
        }

        void BrowserWindow::GotoHome() {
            if (SurfaceManager::GetInstance()->GetArcPath() != NULL) {
                WWWOpenUrl(mpWwwWindow, SurfaceManager::GetInstance()->GetArcPath());
            } else {
                WWWOpenUrl(mpWwwWindow, "file:dvd/html/startup.html");
            }
        }

        void BrowserWindow::SendNotifyEvent(WWWEvent event, WWWHandleEventData* dataHandle) {
            ExecWwwEvent_(event, dataHandle);
        }

        void BrowserWindow::ExecuteEvent() {
            HandleNotifyEvent_();
        }

        void BrowserWindow::UpdateTexture() {
            if (unk_0x2C4[0] == 0 && unk_0x2C4[1] != 0) {
                print::IPLWWWReport(print::WWW_DEBUG, "   XXX BrowserWindow::CopyToTextureBuffer\n");
                TileBlit_();
                unk_0x2C4[1] = 0;
            }
        }

        void BrowserWindow::ExecWwwEvent_(int eventCode, WWWHandleEventData* dataHandle) {
            switch (eventCode) {
                case WWW_EVT_URL_CHANGE: {
                    if (unk_0x2C4[2] == '\0') {
                        unk_0x2C0 = (unk_0x2B0 + 1) % 2;
                        unk_0x2BC = unk_0x2B4[unk_0x2C0];
                    }
                    unk_0x2C4[4] = 1;
                    unk_0x2C4[2] = 1;
                    unk_0x2C4[0] = 1;
                    break;
                }
                case WWW_EVT_LOADING_START: {
                    if (unk_0x2C4[2] == '\0') {
                        if (unk_0x2C4[4] == '\0') {
                            unk_0x2C0 = unk_0x2B0;
                            unk_0x2BC = (int)(unk_0x2B4[unk_0x2B0] + 1) % 3;
                        }
                        unk_0x2C4[4] = 1;
                        unk_0x2C4[0] = 1;
                        print::IPLWWWReport(2, " LoadinStart: %d\n", unk_0x2B4[unk_0x2B0]);
                    }
                    break;
                }
                case WWW_EVT_LOADING_FINISHED: {
                    BOOL level = OSDisableInterrupts();
                    if (unk_0x2C4[0] != '\0') {
                        unk_0x2C4[0] = 0;
                        unk_0x2C4[1] = 1;
                    }
                    OSRestoreInterrupts(level);
                    break;
                }
                case WWW_EVT_IMECREATE: {
                    ImeData data;
                    mpBrowserThread->CreateImeData(&data, (WWWIMEData*)dataHandle);
                    mpBrowserThread->SendEventFromWindow(&data);
                    break;
                }
            }
            ReportEventId_(eventCode, dataHandle);
        }

        void BrowserWindow::HandleNotifyEvent_() {
            bool received;
            BOOL level;

            OSMessage msg;
            WindowCmd* pCmd;

            WindowCmd cmd;

            // goto TRY_RECEIVE;
            while (mMessage.TryReceiveTypedMessage(&cmd)) {
                if ((cmd.eventCode & 0xf0000000) == 0x10000000) {
                    ExecWwwEvent_(cmd.eventCode & 0xFFFFFFf, cmd.pHandleEventData);
                }
            };
        }

        void BrowserWindow::TileBlit_() {
            typedef u32 SubRow[4];
            if (unk_0x2C4[0] != '\0') {
                return;
            }

            u32 srcBlockAdvance;
            u32 srcRowAdvance;
            void* rasterSrc;
            u16* blockRowDst;

            srcRowAdvance = SurfaceManager::GetInstance()->GetWidth() * sizeof(u32);

            rasterSrc = mpBrowserThread->GetRaster();
            blockRowDst = (u16*)GetTextureBuffer(0, TRUE, NULL);

            srcBlockAdvance = srcRowAdvance * sizeof(u32);
            for (int blockY = 0; blockY < mHeight; blockY += 4) {
                u16* blockDst = blockRowDst;
                SubRow* blockRowA = (SubRow*)rasterSrc;
                SubRow* blockRowB = (SubRow*)((u8*)rasterSrc + srcRowAdvance);
                SubRow* blockRowC = (SubRow*)((u8*)blockRowB + srcRowAdvance);
                SubRow* blockRowD = (SubRow*)((u8*)blockRowC + srcRowAdvance);

                for (int blockX = 0; blockX < mWidth; blockX += 4) {
                    blockDst[0] = convertToRGB565((*blockRowA)[0]);
                    blockDst[1] = convertToRGB565((*blockRowA)[1]);
                    blockDst[2] = convertToRGB565((*blockRowA)[2]);
                    blockDst[3] = convertToRGB565((*blockRowA++)[3]);

                    blockDst[4] = convertToRGB565((*blockRowB)[0]);
                    blockDst[5] = convertToRGB565((*blockRowB)[1]);
                    blockDst[6] = convertToRGB565((*blockRowB)[2]);
                    blockDst[7] = convertToRGB565((*blockRowB++)[3]);

                    blockDst[8] = convertToRGB565((*blockRowC)[0]);
                    blockDst[9] = convertToRGB565((*blockRowC)[1]);
                    blockDst[10] = convertToRGB565((*blockRowC)[2]);
                    blockDst[11] = convertToRGB565((*blockRowC++)[3]);

                    blockDst[12] = convertToRGB565((*blockRowD)[0]);
                    blockDst[13] = convertToRGB565((*blockRowD)[1]);
                    blockDst[14] = convertToRGB565((*blockRowD)[2]);
                    blockDst[15] = convertToRGB565((*blockRowD++)[3]);

                    blockDst += 16;
                }
                rasterSrc = (u8*)rasterSrc + srcBlockAdvance;
                blockRowDst += mWidth * 4;
            }

            WWWRect* newRect;
            DCStoreRange(GetTextureBuffer(0, true, &newRect), mWidth * mHeight * 2);

            WWWRect rect = {0, 0, 0, 0};
            rect.w = mWidth;
            rect.h = mHeight;

            *newRect = rect;

            BOOL level = OSDisableInterrupts();
            if (unk_0x2C4[2] != '\0') {
                unk_0x2C4[2] = 0;
                unk_0x2C4[3] = 1;
            }

            unk_0x2C4[4] = 0;
            unk_0x2B0 = unk_0x2C0;
            unk_0x2B4[unk_0x2C0] = unk_0x2BC;
            unk_0x2C4[5] = 1;

            OSRestoreInterrupts(level);
        }

        u16 BrowserWindow::convertToRGB565(u32 argb) {
            union {
                u32 argb;
                struct {
                    u8 a;
                    u8 r;
                    u8 g;
                    u8 b;
                };
            } bytes;
            bytes.argb = argb;

            u32 r = (bytes.r >> 3) & 0x1F;
            u32 g = (bytes.g >> 2) & 0x3F;
            u32 b = (bytes.b >> 3) & 0x1F;
            return (r << 11) | (g << 5) | b;
        }

        void BrowserWindow::ReportEventId_(int eventCode, void* somePtr) {
            switch (eventCode) {
                case WWW_EVT_CURSOR_CHANGE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_CURSOR_CHANGE\n");
                    break;
                }
                case WWW_EVT_WINDOW_CLOSE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_WINDOW_CLOSE\n");
                    break;
                }
                case WWW_EVT_WINDOW_NEW: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_WINDOW_NEW\n");
                    break;
                }
                case WWW_EVT_WINDOW_REQUEST: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_WINDOW_REQUEST\n");
                    break;
                }
                case WWW_EVT_AUTHENTICATION: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_AUTHENTICATION\n");
                    break;
                }
                case WWW_EVT_URL_CHANGE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_URL_CHANGE\n");
                    break;
                }
                case WWW_EVT_LOADING_START: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LOADING_START\n");
                    break;
                }
                case WWW_EVT_LOADING_FINISHED: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LOADING_FINISHED\n");
                    break;
                }
                case WWW_EVT_LOADING_PROGRESS: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LOADING_PROGRESS\n");
                    break;
                }
                case WWW_EVT_UPLOADING_START: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_UPLOADING_START\n");
                    break;
                }
                case WWW_EVT_UPLOADING_FINISHED: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_UPLOADING_FINISHED\n");
                    break;
                }
                case WWW_EVT_DOCUMENT_TITLE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_DOCUMENT_TITLE\n");
                    break;
                }
                case WWW_EVT_DOCUMENT_SIZE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_DOCUMENT_SIZE\n");
                    break;
                }
                case WWW_EVT_DOCUMENT_ICON: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_DOCUMENT_ICON\n");
                    break;
                }
                case WWW_EVT_LINK_CLICKED: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LINK_CLICKED\n");
                    break;
                }
                case WWW_EVT_SECURITY_MODE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_SECURITY_MODE\n");
                    break;
                }
                case WWW_EVT_LINK_NAVIGATED: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LINK_NAVIGATED\n");
                    break;
                }
                case WWW_EVT_LINK_HOVER: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_LINK_HOVER %p\n", somePtr);
                    break;
                }
                case WWW_EVT_UNKNOWN_PROTOCOL: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_UNKNOWN_PROTOCOL\n");
                    break;
                }
                case WWW_EVT_DOWNLOAD: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_DOWNLOAD\n");
                    break;
                }
                case WWW_EVT_ERROR: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_ERROR\n");
                    break;
                }
                case WWW_EVT_IMECREATE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_IMECREATE\n");
                    break;
                }
                case WWW_EVT_IMEMOVE: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_IMEMOVE\n");
                    break;
                }
                case WWW_EVT_IMECANCEL: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_IMECANCEL\n");
                    break;
                }
                case WWW_EVT_ASYNC_DIALOG: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_ASYNC_DIALOG\n");
                    break;
                }
                case WWW_EVT_BLOCKING_DIALOG: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_BLOCKING_DIALOG\n");
                    break;
                }
                case WWW_EVT_OUT_OF_MEMORY: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_OUT_OF_MEMORY\n");
                    break;
                }
                case WWW_EVT_SOFT_OUT_OF_MEMORY: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_SOFT_OUT_OF_MEMORY\n");
                    break;
                }
                case WWW_EVT_PROTOCOL_LOADING_START: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_PROTOCOL_LOADING_START\n");
                    break;
                }
                case WWW_EVT_EXISTS_HISTORY: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_EXISTS_HISTORY\n");
                    break;
                }
                case WWW_EVT_EXTERNAL_ACTION: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_EXTERNAL_ACTION\n");
                    break;
                }
                case WWW_EVT_SCREEN_INVALID: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_SCREEN_INVALID\n");
                    break;
                }
                case WWW_EVT_FILTERED_URL: {
                    print::IPLWWWReport(print::WWW_EVENT, "WWW_EVT_FILTERED_URL\n");
                    break;
                }
                default: {
                    print::IPLWWWReport(print::WWW_EVENT, "RecvNotifyEvent: %d\n", eventCode);
                    break;
                }
                case WWW_EVT_UNKNOWN_19: {
                    break;
                }
            }
        }

        void* BrowserWindow::GetTextureBuffer(int a, bool b, WWWRect** rectPtrOut) {
            u32 i;
            u32 j;
            if (!b && unk_0x2C4[5] == 0)
                return NULL;
            if (unk_0x2C4[4] != 0 && b) {
                i = unk_0x2C0;
                j = unk_0x2BC;
            } else {
                i = (unk_0x2B0 + 2 - a) % 2;
                j = unk_0x2B4[i];
            }
            if (rectPtrOut != NULL) {
                *rectPtrOut = &mTexDisplayRects[i][j];
            }
            return mTexBufArr[i][j];
        }

        void BrowserWindow::SetWindowSize(int w, int h) {
            mWidth = w;
            mHeight = h;

            WWWRect rect = {0, 0, 0, 0};

            rect.w = mWidth;
            rect.h = mHeight;
            WWWSetBrowserWindowRect(mpWwwWindow, &rect);
        }

    }  // namespace www
}  // namespace ext_ead
