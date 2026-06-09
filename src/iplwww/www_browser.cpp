#include "iplwww/www_browser.h"

#include "iplwww/www_arcreader.h"
#include "iplwww/www_print.h"
#include "iplwww/www_surface.h"
#include "iplwww/www_trasition.h"
#include "iplwww/www_window.h"

#include "system/iplController.h"

#include <new>

WWWSurfaceInitFn WWWSurfaceInit;
void* WWWSurfaceNewScreen;
void* WWWSurfaceDeleteScreen;
void* WWWSurfaceResize;
void* WWWSurfaceShutdown;
WWWSurfaceSetFlushCallbackFn WWWSurfaceSetFlushCallback;
void* WWWSurfaceInvalidate;
WWWSurfaceUpdateScreenFn WWWSurfaceUpdateScreen;
void* WWWSurfaceLockArea;
void* WWWSurfaceUnlockArea;
WWWSurfaceMouseEvtFn WWWSurfaceMouseEvt;
void* WWWSurfaceWheelEvt;
WWWSurfaceKeyboardEvtFn WWWSurfaceKeyboardEvt;
WWWSurfaceAddFontFn WWWSurfaceAddFont;
WWWCreateBrowserFn WWWCreateBrowser;
WWWSimpleBrowserFn WWWTerminateBrowser;
WWWSimpleBrowserFn WWWRunSlice;
WWWCreateBrowserWindowFn WWWCreateBrowserWindow;
WWWCloseBrowserWindowFn WWWCloseBrowserWindow;
void* WWWSetBrowserWindowTransparent;
void* WWWGetBrowserWindowRect;
WWWSetBrowserWindowRectFn WWWSetBrowserWindowRect;
WWWBasicWindowFn WWWRaiseBrowserWindow;
WWWBasicWindowFn WWWLowerBrowserWindow;
WWWBasicWindowFn WWWShowBrowserWindow;
WWWBasicWindowFn WWWHideBrowserWindow;
WWWCommitImeFn WWWCommitIme;
WWWUpdateImeFn WWWUpdateIme;
void* WWWPostUrl;
WWWOpenUrlFn WWWOpenUrl;
void* WWWGetHistoryCount;
WWWBasicWindowFn WWWNextPage;
WWWBasicWindowFn WWWPrevPage;
void* WWWMoveInHistory;
void* WWWStop;
void* WWWReload;
void* WWWReflow;
void* WWWSearch;
void* WWWResetSearch;
WWWBasicWindowFn WWWSetFocus;
void* WWWLoseFocus;
void* WWWHistory;
void* WWWClearHistory;
void* WWWGetTrueZoom;
void* WWWSetTrueZoom;
void* WWWGetZoom;
void* WWWSetZoom;
void* WWWGetSecurityMode;
void* WWWGetScroll;
void* WWWSetScroll;
WWWSetRenderingModeFn WWWSetRenderingMode;
void* WWWGetRenderingMode;
WWWSetImageModeFn WWWSetImageMode;
void* WWWCreateCertificateManager;
void* WWWCloseCertificateManager;
void* WWWGetNumberOfCertificates;
void* WWWSetLanguageEncoding;
void* WWWGetDocumentIcon;
void* WWWGetDocumentIconUrl;
void* WWWClearCookies;
void* WWWGetDocumentSize;
void* WWWSetIntPref;
void* WWWGetIntPref;
void* WWWSetStringPref;
void* WWWGetStringPref;
void* WWWCommitPrefs;
void* WWWSetFocusColors;
void* WWWSetScrollbarColors;
void* WWWSetScrollbarSize;
void* WWWSetWidgetColors;
void* WWWSetDisabledWidgetColors;
void* WWWSetButtonWidgetColors;
void* WWWSetUastringExtension;
void* WWWMarkNextItemInDirection;
void* WWWResetNavigation;
void* WWWClearHighlight;
void* WWWSetHighlight;
void* WWWGetActiveLinkType;
WWWGetBrowserAllocationFunctionsFn WWWGetBrowserAllocationFunctions;
void* WWWShutdownBrowserAllocationFunctions;
WWWSetAllocationFunctionsFn WWWSetAllocationFunctions;
void* WWWHTTPCreateHttpLib;
void* WWWHTTPTerminateHttpLib;
void* WWWHTTPSessionRunSlice;
void* WWWHTTPInitSession;
void* WWWHTTPDeleteSession;
void* WWWHTTPSetSessionHeader;
void* WWWHTTPRemoveSessionHeader;
void* WWWHTTPRemoveAllSessionHeaders;
void* WWWHTTPCreateRequest;
void* WWWHTTPDeleteRequest;
void* WWWHTTPSetRequestHeader;
void* WWWHTTPGetRequestHeader;
void* WWWHTTPRemoveRequestHeader;
void* WWWHTTPRemoveAllRequestHeaders;
void* WWWHTTPGetResponseHeader;
void* WWWHTTPGetResponseHeaders;
void* WWWHTTPIssue;
void* WWWHTTPNbActiveRequests;
void* WWWHTTPPostBodyData;
void* WWWHTTPSetAuthCredentials;
void* WWWHTTPRemoveAuthCredentials;
void* WWWHTTPSetProxy;
void* WWWHTTPRemoveProxy;
void* WWWHTTPEndLoading;
WWWAddJSPluginFn WWWAddJSPlugin;
void* WWWAddNSPlugin;
WWWProtocolWriteFn WWWProtocolWrite;
void* WWWProtocolSetMimeType;
WWWProtocolFinalizeFn WWWProtocolFinished;
WWWProtocolFinalizeFn WWWProtocolFailed;
WWWAddProtocolFn WWWAddProtocol;

const char* www::arcreader::sProtocolName = "marc";

namespace ext_ead {
    namespace www {
        namespace print {
            IPL_WWW_REPORT_REDEFINE_MESSAGE(false)
        }

        OSMutex BrowserThread::runSliceMutex_ = {};
        int BrowserThread::classInitialized_ = false;

        BOOL BrowserThread::SNotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData) {
            return SurfaceManager::Instance_->pBrowserThread->NotifyCallback_(wwwBrowser, wwwWindow, event, eventData);
        }
        BOOL BrowserThread::NotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData) {
            BrowserWindow* pWindow;
            for (int i = 0; i < ARRAY_LENGTH(pBrowserWindows); i++) {
                pWindow = (BrowserWindow*)pBrowserWindows[i];
                if (pWindow != NULL && pWindow->pWwwWindow == wwwWindow)
                    break;
            }
            if (event == 0x2c) {
                ::www::arcreader::ReadRequest((WWWProtocolData*)eventData, (::www::arcreader::ArcContainer*)this->pArcContainer);
            }
            if (pWindow != NULL) {
                pWindow->SendNotifyEvent(event, eventData);
                if (event == 7) {
                    print::IPLWWWReport(3, "  EVT_FINISHED: %d/%d %d/%d s:%d\n", eventData->data[1], eventData->data[0], eventData->data[3],
                                        eventData->data[2], eventData->data[6]);
                }
            }
            return false;
        }

        BrowserThread::BrowserThread()
            : pRaster(NULL), pOperaHeapBuf(NULL), mWidth(0), mHeight(0), pIniData(NULL), mIniLen(0), pArcContainer(NULL),
              pArcDecompressionScratch(NULL) {
            if (!classInitialized_) {
                OSInitMutex(&runSliceMutex_);
            }
            classInitialized_++;
        }
        BrowserThread::~BrowserThread() {
            classInitialized_--;
            if (!classInitialized_) {
                if (this->pRaster != NULL) {
                    Heap::freeMem1(pRaster);
                    pRaster = NULL;
                }
                if (pOperaHeapBuf != NULL) {
                    Heap::freeMem2(pOperaHeapBuf);
                    pOperaHeapBuf = NULL;
                }
                if (this->pArcContainer != NULL) {
                    Heap::freeMem1(pArcContainer);
                    Heap::freeMem1(pArcDecompressionScratch);
                }
            }
        }
        void BrowserThread::RegisterArcFile(void* arcData) {
            if (pArcContainer == NULL) {
                pArcContainer = (::www::arcreader::ArcContainer*)Heap::allocMem1(0x78, 4);
                pArcDecompressionScratch = Heap::allocMem1(0x20000, 4);
                new (pArcContainer)::www::arcreader::ArcContainer(pArcDecompressionScratch);
            }
            ((::www::arcreader::ArcContainer*)pArcContainer)->RegisterArcFile(arcData);
            return;
        }
        void BrowserThread::RegisterIniFile(void* iniData, u32 iniLen) {
            pIniData = iniData;
            mIniLen = iniLen;
        }

        void BrowserThread::CreateThread(int w, int h, void* threadStack, u32 threadStackSize, int priority) {
            mWidth = w;
            mHeight = h;
            OSInitMessageQueue(&mQueue, mQueueBuf, ARRAY_LENGTH(mQueueBuf));
            memset(pBrowserWindows, 0, 0x10);
            ut_thread::Create(threadStack, threadStackSize, priority, false);
        }
        void BrowserThread::StopThread() {
            if (!IsThreadTerminated()) {
                // TODO: What does this magic number mean?
                OSSendMessage(&mQueue, (void*)0x798adfe1, 0);
            }
        }
        bool BrowserThread::IsThreadStopped() {
            bool isStopped = IsThreadTerminated();
            if (isStopped != 0) {
                WaitForThreadExit();
            }
            return isStopped;
        }

        bool BrowserThread::CheckThreadExit_() {
            OSMessage msg = NULL;
            if (OSReceiveMessage(&mQueue, &msg, 0)) {
                print::IPLWWWReport(3, "BrowserThread:: msg received.\n");
                if ((u32)msg == 0x798adfe1)
                    return 1;
            }
            return 0;
        }
        void BrowserThread::InitSurface_() {
            u32 surfaceW, surfaceH;
            int surfaceInitRet, setFlushCbRet;
            int rasterRowSize, rasterSize;
            void* pvVar1;
            u32* rasterPtr;

            surfaceW = SurfaceManager::Instance_->mWidth;
            surfaceH = SurfaceManager::Instance_->mHeight;
            SurfaceManager::Instance_->ResolveRsoModule();

            rasterRowSize = surfaceW * sizeof(u32);
            rasterSize = rasterRowSize * surfaceH;
            rasterPtr = (u32*)Heap::allocMem1(rasterSize, 4);
            pRaster = rasterPtr;
            print::IPLWWWReport(3, "www_surface: OperaFrameBuffer: ptr:%p, size:%d\n", rasterPtr, rasterSize);

            pOperaHeapBuf = Heap::allocMem2(0x6e0000, 0x20);
            memset(pOperaHeapBuf, 0, 0x6e0000);
            print::IPLWWWReport(3, "www_surface: OperaHeapBuffer : ptr:%p \n", pOperaHeapBuf);

            (*WWWGetBrowserAllocationFunctions)(this->pOperaHeapBuf, 0x6e0000, &Heap::wwwalloc_, &Heap::wwwfree_, &Heap::wwwavail_);
            (*WWWSetAllocationFunctions)(Heap::wwwalloc_, Heap::wwwfree_, Heap::wwwavail_, Heap::wwwalloc_, Heap::wwwfree_, Heap::wwwalloc_,
                                         Heap::wwwfree_);

            print::TickTimer tt;
            tt.reset();
            surfaceInitRet = (*WWWSurfaceInit)(surfaceW, surfaceH, rasterRowSize, 0, this->pRaster);
            tt.report("WWWSurfaceInit");
            if (surfaceInitRet != 0)
                OSReport("WWWSurfaceInit %d\n", surfaceInitRet);

            tt.reset();
            setFlushCbRet = (*WWWSurfaceSetFlushCallback)(FlushCallback, 0);
            tt.report("WWWSurfaceSetFlushCallback");
            if (setFlushCbRet != 0)
                OSReport("WWWSurfaceSetFlushCallback %d\n", setFlushCbRet);
        }

        void* BrowserThread::Run() {
            print::TickTimer tt;

            InitSurface_();
            InitFonts_("/operafonts/");
            print::IPLWWWReport(3, "BrowserThread:: executed\n");

            tt.reset();

            const char* fonts[6];
            fonts[5] = "Wii NTLG PGothic";
            fonts[2] = "Wii NTLG PGothic";
            fonts[3] = "Wii NTLG PGothic";
            fonts[4] = "Wii NTLG Gothic";
            fonts[1] = "Wii NTLG PGothic";
            fonts[0] = "Wii NTLG PGothic";
            (*WWWCreateBrowser)(&pWwwBrowser, SNotifyCallback_, fonts, "/tmp/www.arc/nand");
            tt.report("WWWCreateBrowser");

            ::www::trasition::AddJsPlugin();
            ::www::wiisetting::AddJsPlugin();
            ::www::arcreader::AddProtocol();

            SurfaceManager* surface = SurfaceManager::Instance_;
            pBrowserWindows[0] = (BrowserWindow*)Heap::allocMem1(0x2cc, 4);
            new (pBrowserWindows[0]) BrowserWindow(this);
            ((BrowserWindow*)pBrowserWindows[0])->CreateWindow(mWidth, mHeight, surface->mWidth, surface->mHeight);
            Heap::reportHeap();

            while (true) {
                if (CheckThreadExit_())
                    break;
                HandleUIEvent_();
                OSLockMutex(&runSliceMutex_);

                int i = 0;
                BOOL sliceRes;
                do {
                    sliceRes = (*WWWRunSlice)(pWwwBrowser);
                    i++;
                    ((BrowserWindow*)pBrowserWindows[0])->ExecuteEvent();
                } while (sliceRes == 0);
                if (i > 10) {
                    print::IPLWWWReport(3, "+++ too many WWWRunSlice called. %d\n", i);
                }
                OSUnlockMutex(&runSliceMutex_);
                (*WWWSurfaceUpdateScreen)(0);
                (*WWWSurfaceUpdateScreen)(0);
                (*WWWSurfaceUpdateScreen)(0);

                ((BrowserWindow*)pBrowserWindows[0])->ExecuteEvent();
                ((BrowserWindow*)pBrowserWindows[0])->UpdateTexture();
                if (*(u32*)mThread.stackEnd != -0x21524542) {
                    print::IPLWWWReport(3, "This thread stack has overflowed.\n");
                }
                OSSleepMilliseconds(5);
            }
            ((BrowserWindow*)pBrowserWindows[0])->CloseWindow();
            ((BrowserWindow*)pBrowserWindows[0])->~BrowserWindow();

            Heap::freeMem1(pBrowserWindows[0]);
            pBrowserWindows[0] = NULL;

            (*WWWTerminateBrowser)(pWwwBrowser);
            return this;
        }

        void BrowserThread::SendKeyboardEvent_(u32 btnMask, u32 triggerFlag, u32 releaseFlag, WWWKeySym sym) {
            if (triggerFlag & btnMask) {
                (*WWWSurfaceKeyboardEvt)(KEY_CMD_TRIGGER, sym, 0);
            } else if (releaseFlag & btnMask) {
                (*WWWSurfaceKeyboardEvt)(KEY_CMD_RELEASE, sym, 0);
            }
        }
        WWWKeySym BrowserThread::GetKeyboardSym_(u32 input) {
            switch (input) {
                case ipl::controller::BTN_NEXT_RIGHT:
                    return KEY_SYM_NEXT_RIGHT;
                case ipl::controller::BTN_NEXT_LEFT:
                    // return KEY_SYM_NEXT_LEFT;
                    return KEY_SYM_SOMETHING;

                case ipl::controller::BTN_UP:
                    return KEY_SYM_UP;
                case ipl::controller::BTN_DOWN:
                    return KEY_SYM_DOWN;
                case ipl::controller::BTN_LEFT:
                    return KEY_SYM_LEFT;
                case ipl::controller::BTN_RIGHT:
                    return KEY_SYM_RIGHT;

                case ipl::controller::REVO_BTN_1:
                    return KEY_SYM_BTN1;
                case ipl::controller::REVO_BTN_2:
                    return KEY_SYM_BTN2;

                default:
                    return KEY_SYM_BLANK;
            }
        }

        int BrowserThread::ExecDpdEvent_(const CmdPacket& cmd) {
            bool somethingClicked = 0;

            int x, y;
            x = cmd.data.controller.irX;
            y = cmd.data.controller.irY;
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_INTERACT) {
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_TRIGGER, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_RELEASE, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
                somethingClicked = 1;
            } else if (cmd.data.controller.btnRelease & ipl::controller::BTN_INTERACT) {
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_RELEASE, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
            } else {
                (*WWWSurfaceMouseEvt)(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                if (gDpdWaitFrm >= 4 && (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_LEFT)) {
                    (*WWWSurfaceKeyboardEvt)(KEY_CMD_RELEASE, KEY_SYM_NEXT_RIGHT, 0);
                    (*WWWSurfaceKeyboardEvt)(KEY_CMD_TRIGGER, KEY_SYM_NEXT_RIGHT, 0);
                } else if (gDpdWaitFrm >= 4 && (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_RIGHT)) {
                    (*WWWSurfaceKeyboardEvt)(KEY_CMD_RELEASE, KEY_SYM_NEXT_LEFT, 0);
                    (*WWWSurfaceKeyboardEvt)(KEY_CMD_TRIGGER, KEY_SYM_NEXT_LEFT, 0);
                }
            }
            if (gEnableDpd && ++gDpdWaitFrm > 4) {
                gDpdWaitFrm = 4;
            }
            return somethingClicked;
        }
        void BrowserThread::ExecSpacialEvent_(const CmdPacket& cmd) {
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_RIGHT) {
                ((BrowserWindow*)pBrowserWindows[0])->PrevPage();
            }
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_LEFT) {
                ((BrowserWindow*)pBrowserWindows[0])->GotoHome();
            }
#define SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(CONTROLLER_CODE, CMD)                                                                               \
    SendKeyboardEvent_(CONTROLLER_CODE, (CMD).data.controller.btnTrigger, (CMD).data.controller.btnRelease, GetKeyboardSym_(CONTROLLER_CODE));
            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::BTN_UP, cmd);
            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::BTN_DOWN, cmd);
            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::BTN_LEFT, cmd);
            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::BTN_RIGHT, cmd);

            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::REVO_BTN_1, cmd);
            SEND_KEYBOARD_EVENT_FROM_CONTROLLER_CODE(ipl::controller::REVO_BTN_2, cmd);
        }
        void BrowserThread::HandleUIEvent_() {
            CmdPacket cmd;
            while (mCmdPacketQueue.TryReceiveTypedMessage(&cmd)) {
                BrowserWindow* pBrowserWindow = (BrowserWindow*)pBrowserWindows[0];
                bool something = false;
                if ((pBrowserWindow->unk_0x2c4[2] != '\0') && (pBrowserWindow->unk_0x2c4[3] != '\0')) {
                    something = true;
                }
                if (something || pBrowserWindow->unk_0x2c4[0] != '\0') {
                    continue;
                }

                int retVal = 0;
                switch (cmd.type) {
                    case 0:
                        retVal = ExecDpdEvent_(cmd);
                        break;
                    case 1:
                        ExecSpacialEvent_(cmd);
                        break;
                    case 2:
                        pBrowserWindow->SetWindowSize(cmd.data.setWindowSize.width, cmd.data.setWindowSize.height);
                        break;
                    case 3:
                        CommitImeCmdPacket(&cmd);
                        break;
                    case 4:
                        UpdateImeCmdPacket(&cmd);
                        break;
                    default:
                        print::IPLWWWReport(3, "BrowserThread::HandleUIEvent_: Unknown type: %d\n", cmd.type);
                        break;
                }
                if (retVal != 0)
                    break;
            }
        }
        void BrowserThread::SendUIEvent(CmdPacket* packet) {
            mCmdPacketQueue.SendTypedMessage(packet);
        }

        void BrowserThread::InitFonts_(const char*) {
            print::TickTimer tt;
            tt.reset();
            (*WWWSurfaceAddFont)("DirectUniversal");
            tt.report("WWWSurfaceAddFont:font1");
        }
        void* BrowserThread::GetTextureBuffer(int val, WWWRect** rectPtrOut) {
            if (pBrowserWindows[0] == NULL)
                return NULL;
            return ((BrowserWindow*)pBrowserWindows[0])->GetTextureBuffer(val, false, rectPtrOut);
        }
        void BrowserThread::FlushCallback(WWWRect*, int) {
            BOOL level;
            BrowserWindow* pBrowserWindow;

            pBrowserWindow = (BrowserWindow*)SurfaceManager::Instance_->pBrowserThread->pBrowserWindows[0];
            if ((pBrowserWindow->unk_0x2c4[0] == '\0') && (pBrowserWindow->unk_0x2c4[1] == '\0')) {
                level = OSDisableInterrupts();
                if (pBrowserWindow->unk_0x2c4[2] == '\0') {
                    if (pBrowserWindow->unk_0x2c4[4] == '\0') {
                        pBrowserWindow->unk_0x2c0 = pBrowserWindow->unk_0x2b0;
                        pBrowserWindow->unk_0x2bc = (int)(pBrowserWindow->unk_0x2b4[pBrowserWindow->unk_0x2b0] + 1) % 3;
                    }
                    pBrowserWindow->unk_0x2c4[4] = 1;
                }
                pBrowserWindow->unk_0x2c4[1] = 1;
                OSRestoreInterrupts(level);
            }
            return;
        }
        bool BrowserThread::SendEventFromWindow(ImeData* imeData) {
            if (!mImeDataQueue.SendTypedMessage(imeData)) {
                print::IPLWWWReport(3, "WARNING: Too Many Ime commands. cannot send request.\n");
                return false;
            } else {
                return true;
            }
        }
        bool BrowserThread::ReceiveWindowEvent(ImeData* imeData) {
            return mImeDataQueue.TryReceiveTypedMessage(imeData);
        }

        void BrowserThread::CreateImeData(ImeData* data, const WWWIMEData* wwwData) {
            memset(data, 0, sizeof(ImeData));
            print::IPLWWWReport(3, "WWWIMEData imeID:%p\n", wwwData->imeID);
            print::IPLWWWReport(3, "WWWIMEData text:%p\n", wwwData->text);
            print::IPLWWWReport(3, "WWWIMEData maxlength:%d\n", wwwData->maxLength);
            // @bug I think this was supposed to access a different member of
            // the struct
            print::IPLWWWReport(3, "WWWIMEData format:%p\n", wwwData->text);
            print::IPLWWWReport(3, "WWWIMEData text_string:%s\n", wwwData->text);

            if (wwwData->text) {
                data->text = (char*)Heap::allocMem2(strlen(wwwData->text) + 1, 4);
                strcpy(data->text, wwwData->text);
            } else {
                data->text = NULL;
            }

            data->imeID = wwwData->imeID;
            data->unk_0x00 = 0;
            data->unk_0x0c = wwwData->unk_0x08;
            data->unk_0x10 = wwwData->unk_0x0c;
            data->unk_0x14 = wwwData->unk_0x10;
            data->unk_0x18 = wwwData->unk_0x14;
            data->maxLength = wwwData->maxLength;
        }

        void BrowserThread::DisposeImeData(ImeData* data) {
            Heap::freeMem2(data->text);
        }

        void BrowserThread::CommitIme(ImeData* data, const char* something) {
            char* __dest;
            CmdPacket packet;

            if (something != NULL) {
                __dest = (char*)Heap::allocMem1(strlen(something) + 1, 4);
                strcpy(__dest, something);
                packet.data.commitIme.str = __dest;
            } else {
                packet.data.commitIme.str = NULL;
            }
            packet.type = 3;
            packet.data.commitIme.imeID = data->imeID;
            SendUIEvent(&packet);
        }
        void BrowserThread::CommitImeCmdPacket(const CmdPacket* packet) {
            (*WWWCommitIme)(packet->data.commitIme.imeID, packet->data.commitIme.str);
            if (packet->data.commitIme.str != NULL) {
                Heap::freeMem1(packet->data.commitIme.str);
            }
        }
        void BrowserThread::UpdateImeCmdPacket(const CmdPacket* packet) {
            (*WWWUpdateIme)(packet->data.updateIme.imeID, packet->data.updateIme.str, packet->data.updateIme.unk_0x0c);
            if (packet->data.updateIme.str != NULL) {
                Heap::freeMem1(packet->data.updateIme.str);
            }
        }

    }  // namespace www
}  // namespace ext_ead
