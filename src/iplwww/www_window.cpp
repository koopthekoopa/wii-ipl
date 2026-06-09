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
        BrowserWindow::BrowserWindow(BrowserThread* thread) : pWwwWindow(NULL), pThread(thread) {
            unk_0x2b0 = 0;
            mRenderingMode = 6;

            unk_0x2c4[0] = 0;
            unk_0x2c4[1] = 0;
            unk_0x2c4[2] = 0;
            unk_0x2c4[3] = 0;
            unk_0x2c4[4] = 0;
            unk_0x2c4[5] = 0;

            int i, j;
            for (i = 0; i < 2; i++) {
                for (j = 0; j < 3; j++) {
                    mTexBufArr[i][j] = NULL;
                }
                unk_0x2b4[i] = NULL;
            }

            unk_0x2bc = 0;
            unk_0x2c0 = 0;
        }
        BrowserWindow::~BrowserWindow() {
            CloseWindow();
        }

        WWWHandlewindow* BrowserWindow::CreateWindow(int w, int h, int texW, int texH) {
            mWidth = w;
            mHeight = h;

            WWWRect rect;
            rect.x = 0;
            rect.y = 0;
            rect.w = 0;
            rect.h = 0;
            rect.w = mWidth;
            rect.h = mHeight;

            for (int i = 0; i < 2; i++) {
                for (int j = 0; j < 3; j++) {
                    mTexDisplayRects[i][j] = rect;
                    u32 texBufSize = GXGetTexBufferSize(texW, texH, GX_TF_RGB565, 0, 0);
                    mTexBufArr[i][j] = Heap::allocMem2(texBufSize, 0x20);
                    memset(mTexBufArr[i][j], 0, texBufSize);
                    DCStoreRange(mTexBufArr[i][j], texBufSize);
                    print::IPLWWWReport(3, " TextureBuffer_ %d:%d ptr:%p\n", j, i, mTexBufArr[i][j]);
                }
            }
            if ((*WWWCreateBrowserWindow)(*(void**)((u8*)pThread + 0x67c), &pWwwWindow, 0)) {
                print::IPLWWWReport(1, "INFO: cannot create browser window\n");
                return NULL;
            } else {
                WWWRect rect;
                rect.x = 0;
                rect.y = 0;
                rect.w = 0;
                rect.h = 0;
                rect.w = mWidth;
                rect.h = mHeight;
                (*WWWSetBrowserWindowRect)(pWwwWindow, &rect);
                (*WWWSetImageMode)(pWwwWindow, GX_TF_RGB565);
                (*WWWSetRenderingMode)(pWwwWindow, mRenderingMode);
                (*WWWShowBrowserWindow)(pWwwWindow);
                (*WWWRaiseBrowserWindow)(pWwwWindow);
                (*WWWSetFocus)(pWwwWindow);
                GotoHome();
                return pWwwWindow;
            }
        }
        void BrowserWindow::CloseWindow() {
            (*WWWCloseBrowserWindow)(*(void**)((u8*)pThread + 0x67c), pWwwWindow);
            pWwwWindow = NULL;

            int i;
            for (i = 0; i < 2; i++) {
                for (int j = 0; j < 3; j++) {
                    void* currTexBuf = mTexBufArr[i][j];
                    if (currTexBuf != NULL) {
                        Heap::freeMem2(currTexBuf);
                        mTexBufArr[i][j] = 0;
                    }
                }
            }
        }

        void BrowserWindow::PrevPage() {
            (*WWWPrevPage)(pWwwWindow);
        }
        void BrowserWindow::GotoHome() {
            if (SurfaceManager::Instance_->pArcPath != NULL) {
                (*WWWOpenUrl)(pWwwWindow, SurfaceManager::Instance_->pArcPath);
            } else {
                (*WWWOpenUrl)(pWwwWindow, "file:dvd/html/startup.html");
            }
        }

        void BrowserWindow::SendNotifyEvent(WWWEvent event, WWWHandleEventData* dataHandle) {
            ExecWwwEvent_(event, dataHandle);
        }
        void BrowserWindow::ExecuteEvent() {
            HandleNotifyEvent_();
        }
        void BrowserWindow::UpdateTexture() {
            if (unk_0x2c4[0] == 0 && unk_0x2c4[1] != 0) {
                print::IPLWWWReport(3, "   XXX BrowserWindow::CopyToTextureBuffer\n");
                TileBlit_();
                unk_0x2c4[1] = 0;
            }
        }
        void BrowserWindow::ExecWwwEvent_(int eventCode, WWWHandleEventData* dataHandle) {
            switch (eventCode) {
                case 5:
                    if (unk_0x2c4[2] == '\0') {
                        unk_0x2c0 = (unk_0x2b0 + 1) % 2;
                        unk_0x2bc = unk_0x2b4[unk_0x2c0];
                    }
                    unk_0x2c4[4] = 1;
                    unk_0x2c4[2] = 1;
                    unk_0x2c4[0] = 1;
                    break;
                case 6:
                    if (unk_0x2c4[2] == '\0') {
                        if (unk_0x2c4[4] == '\0') {
                            unk_0x2c0 = unk_0x2b0;
                            unk_0x2bc = (int)(unk_0x2b4[unk_0x2b0] + 1) % 3;
                        }
                        unk_0x2c4[4] = 1;
                        unk_0x2c4[0] = 1;
                        print::IPLWWWReport(2, " LoadinStart: %d\n", unk_0x2b4[unk_0x2b0]);
                    }
                    break;
                case 7: {
                    BOOL level = OSDisableInterrupts();
                    if (unk_0x2c4[0] != '\0') {
                        unk_0x2c4[0] = 0;
                        unk_0x2c4[1] = 1;
                    }
                    OSRestoreInterrupts(level);
                    break;
                }
                case 0x1e:
                    ImeData data;
                    pThread->CreateImeData(&data, (WWWIMEData*)dataHandle);
                    pThread->SendEventFromWindow(&data);
                    break;
            }
            ReportEventId_(eventCode, dataHandle);
            return;
        }

        void BrowserWindow::HandleNotifyEvent_() {
            bool received;
            BOOL level;

            OSMessage msg;
            WindowCmd* pCmd;

            WindowCmd cmd;

            // goto TRY_RECEIVE;
            while (mMessage.TryReceiveTypedMessage(&cmd)) {
                if ((cmd.mEventCode & 0xf0000000) == 0x10000000) {
                    ExecWwwEvent_(cmd.mEventCode & 0xfffffff, cmd.pHandleEventData);
                }
            };
        }

        void BrowserWindow::TileBlit_() {
            typedef u32 SubRow[4];
            if (unk_0x2c4[0] != '\0')
                return;

            u32 srcBlockAdvance;
            u32 srcRowAdvance;
            void* rasterSrc;
            u16* blockRowDst;

            srcRowAdvance = SurfaceManager::Instance_->mWidth * sizeof(u32);

            rasterSrc = *(void**)((u8*)pThread + 0x674);
            blockRowDst = (u16*)GetTextureBuffer(0, TRUE, NULL);

            srcBlockAdvance = srcRowAdvance * sizeof(u32);
            for (int blockY = 0; blockY < mHeight; blockY += 4) {
                u16* blockDst = blockRowDst;
                SubRow* blockRowA = (SubRow*)rasterSrc;
                SubRow* blockRowB = (SubRow*)((u8*)rasterSrc + srcRowAdvance);
                SubRow* blockRowC = (SubRow*)((u8*)blockRowB + srcRowAdvance);
                SubRow* blockRowD = (SubRow*)((u8*)blockRowC + srcRowAdvance);

                for (int blockX = 0; blockX < mWidth; blockX += 4) {
                    blockDst[0x0] = convertToRGB565((*blockRowA)[0]);
                    blockDst[0x1] = convertToRGB565((*blockRowA)[1]);
                    blockDst[0x2] = convertToRGB565((*blockRowA)[2]);
                    blockDst[0x3] = convertToRGB565((*blockRowA++)[3]);

                    blockDst[0x4] = convertToRGB565((*blockRowB)[0]);
                    blockDst[0x5] = convertToRGB565((*blockRowB)[1]);
                    blockDst[0x6] = convertToRGB565((*blockRowB)[2]);
                    blockDst[0x7] = convertToRGB565((*blockRowB++)[3]);

                    blockDst[0x8] = convertToRGB565((*blockRowC)[0]);
                    blockDst[0x9] = convertToRGB565((*blockRowC)[1]);
                    blockDst[0xa] = convertToRGB565((*blockRowC)[2]);
                    blockDst[0xb] = convertToRGB565((*blockRowC++)[3]);

                    blockDst[0xc] = convertToRGB565((*blockRowD)[0]);
                    blockDst[0xd] = convertToRGB565((*blockRowD)[1]);
                    blockDst[0xe] = convertToRGB565((*blockRowD)[2]);
                    blockDst[0xf] = convertToRGB565((*blockRowD++)[3]);

                    blockDst += 0x10;
                }
                rasterSrc = (u8*)rasterSrc + srcBlockAdvance;
                blockRowDst += mWidth * 4;
            }

            WWWRect* newRect;
            WWWRect rect;
            DCStoreRange(GetTextureBuffer(0, true, &newRect), mWidth * mHeight * 2);
            rect.x = 0;
            rect.y = 0;
            rect.w = 0;
            rect.h = 0;
            rect.w = mWidth;
            rect.h = mHeight;
            *newRect = rect;

            BOOL level = OSDisableInterrupts();
            if (unk_0x2c4[2] != '\0') {
                unk_0x2c4[2] = 0;
                unk_0x2c4[3] = 1;
            }

            unk_0x2c4[4] = 0;
            unk_0x2b0 = unk_0x2c0;
            unk_0x2b4[unk_0x2c0] = unk_0x2bc;
            unk_0x2c4[5] = 1;
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

            u32 r = (bytes.r >> 3) & 0x1f;
            u32 g = (bytes.g >> 2) & 0x3f;
            u32 b = (bytes.b >> 3) & 0x1f;
            return (r << 11) | (g << 5) | b;
        }

        void BrowserWindow::ReportEventId_(int eventCode, void* somePtr) {
            switch (eventCode) {
                case WWW_EVT_CURSOR_CHANGE:
                    print::IPLWWWReport(4, "WWW_EVT_CURSOR_CHANGE\n");
                    return;
                case WWW_EVT_WINDOW_CLOSE:
                    print::IPLWWWReport(4, "WWW_EVT_WINDOW_CLOSE\n");
                    return;
                case WWW_EVT_WINDOW_NEW:
                    print::IPLWWWReport(4, "WWW_EVT_WINDOW_NEW\n");
                    return;
                case WWW_EVT_WINDOW_REQUEST:
                    print::IPLWWWReport(4, "WWW_EVT_WINDOW_REQUEST\n");
                    return;
                case WWW_EVT_AUTHENTICATION:
                    print::IPLWWWReport(4, "WWW_EVT_AUTHENTICATION\n");
                    return;
                case WWW_EVT_URL_CHANGE:
                    print::IPLWWWReport(4, "WWW_EVT_URL_CHANGE\n");
                    return;
                case WWW_EVT_LOADING_START:
                    print::IPLWWWReport(4, "WWW_EVT_LOADING_START\n");
                    return;
                case WWW_EVT_LOADING_FINISHED:
                    print::IPLWWWReport(4, "WWW_EVT_LOADING_FINISHED\n");
                    return;
                case WWW_EVT_LOADING_PROGRESS:
                    print::IPLWWWReport(4, "WWW_EVT_LOADING_PROGRESS\n");
                    return;
                case WWW_EVT_UPLOADING_START:
                    print::IPLWWWReport(4, "WWW_EVT_UPLOADING_START\n");
                    return;
                case WWW_EVT_UPLOADING_FINISHED:
                    print::IPLWWWReport(4, "WWW_EVT_UPLOADING_FINISHED\n");
                    return;
                case WWW_EVT_DOCUMENT_TITLE:
                    print::IPLWWWReport(4, "WWW_EVT_DOCUMENT_TITLE\n");
                    return;
                case WWW_EVT_DOCUMENT_SIZE:
                    print::IPLWWWReport(4, "WWW_EVT_DOCUMENT_SIZE\n");
                    return;
                case WWW_EVT_DOCUMENT_ICON:
                    print::IPLWWWReport(4, "WWW_EVT_DOCUMENT_ICON\n");
                    return;
                case WWW_EVT_LINK_CLICKED:
                    print::IPLWWWReport(4, "WWW_EVT_LINK_CLICKED\n");
                    return;
                case WWW_EVT_SECURITY_MODE:
                    print::IPLWWWReport(4, "WWW_EVT_SECURITY_MODE\n");
                    return;
                case WWW_EVT_LINK_NAVIGATED:
                    print::IPLWWWReport(4, "WWW_EVT_LINK_NAVIGATED\n");
                    return;
                case WWW_EVT_LINK_HOVER:
                    // @bug this should include a format argument but it doesn't
                    print::IPLWWWReport(4, "WWW_EVT_LINK_HOVER %p\n", somePtr);
                    return;
                case WWW_EVT_UNKNOWN_PROTOCOL:
                    print::IPLWWWReport(4, "WWW_EVT_UNKNOWN_PROTOCOL\n");
                    return;
                case WWW_EVT_DOWNLOAD:
                    print::IPLWWWReport(4, "WWW_EVT_DOWNLOAD\n");
                    return;
                case WWW_EVT_ERROR:
                    print::IPLWWWReport(4, "WWW_EVT_ERROR\n");
                    return;
                case WWW_EVT_IMECREATE:
                    print::IPLWWWReport(4, "WWW_EVT_IMECREATE\n");
                    return;
                case WWW_EVT_IMEMOVE:
                    print::IPLWWWReport(4, "WWW_EVT_IMEMOVE\n");
                    return;
                case WWW_EVT_IMECANCEL:
                    print::IPLWWWReport(4, "WWW_EVT_IMECANCEL\n");
                    return;
                case WWW_EVT_ASYNC_DIALOG:
                    print::IPLWWWReport(4, "WWW_EVT_ASYNC_DIALOG\n");
                    return;
                case WWW_EVT_BLOCKING_DIALOG:
                    print::IPLWWWReport(4, "WWW_EVT_BLOCKING_DIALOG\n");
                    return;
                case WWW_EVT_OUT_OF_MEMORY:
                    print::IPLWWWReport(4, "WWW_EVT_OUT_OF_MEMORY\n");
                    return;
                case WWW_EVT_SOFT_OUT_OF_MEMORY:
                    print::IPLWWWReport(4, "WWW_EVT_SOFT_OUT_OF_MEMORY\n");
                    return;
                case WWW_EVT_PROTOCOL_LOADING_START:
                    print::IPLWWWReport(4, "WWW_EVT_PROTOCOL_LOADING_START\n");
                    return;
                case WWW_EVT_EXISTS_HISTORY:
                    print::IPLWWWReport(4, "WWW_EVT_EXISTS_HISTORY\n");
                    return;
                case WWW_EVT_EXTERNAL_ACTION:
                    print::IPLWWWReport(4, "WWW_EVT_EXTERNAL_ACTION\n");
                    return;
                case WWW_EVT_SCREEN_INVALID:
                    print::IPLWWWReport(4, "WWW_EVT_SCREEN_INVALID\n");
                    return;
                case WWW_EVT_FILTERED_URL:
                    print::IPLWWWReport(4, "WWW_EVT_FILTERED_URL\n");
                    return;
                default:
                    print::IPLWWWReport(4, "RecvNotifyEvent: %d\n", eventCode);
                    return;
                case WWW_EVT_UNK_0x13:
                    return;
            }
            return;
        }

        void* BrowserWindow::GetTextureBuffer(int a, bool b, WWWRect** rectPtrOut) {
            u32 i;
            u32 j;
            if (!b && unk_0x2c4[5] == 0)
                return NULL;
            if (unk_0x2c4[4] != 0 && b) {
                i = unk_0x2c0;
                j = unk_0x2bc;
            } else {
                i = (unk_0x2b0 + 2 - a) % 2;
                j = unk_0x2b4[i];
            }
            if (rectPtrOut != NULL) {
                *rectPtrOut = &mTexDisplayRects[i][j];
            }
            return this->mTexBufArr[i][j];
        }

        void BrowserWindow::SetWindowSize(int w, int h) {
            WWWRect rect;

            mWidth = w;
            mHeight = h;

            rect.x = 0;
            rect.y = 0;
            rect.w = 0;
            rect.h = 0;

            rect.w = mWidth;
            rect.h = mHeight;
            (*WWWSetBrowserWindowRect)(pWwwWindow, &rect);
        }

    }  // namespace www
}  // namespace ext_ead
