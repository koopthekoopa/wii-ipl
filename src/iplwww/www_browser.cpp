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

        // TODO: What does this magic number mean?
        static const u32 MSG_MAGIC = 0x798ADFE1;

        OSMutex BrowserThread::runSliceMutex_ = {};
        int BrowserThread::classInitialized_ = false;

        BOOL BrowserThread::SNotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData) {
            return SurfaceManager::GetInstance()->GetBrowserThread()->NotifyCallback_(wwwBrowser, wwwWindow, event, eventData);
        }

        BOOL BrowserThread::NotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData) {
            BrowserWindow* pWindow;
            for (int i = 0; i < ARRAY_LENGTH(mpBrowserWindows); i++) {
                pWindow = (BrowserWindow*)mpBrowserWindows[i];
                if (pWindow != NULL && pWindow->GetHandleWindow() == wwwWindow) {
                    break;
                }
            }
            if (event == WWW_EVT_PROTOCOL_LOADING_START) {
                ::www::arcreader::ReadRequest((WWWProtocolData*)eventData, mpArcContainer);
            }
            if (pWindow != NULL) {
                pWindow->SendNotifyEvent(event, eventData);
                if (event == WWW_EVT_LOADING_FINISHED) {
                    print::IPLWWWReport(print::WWW_DEBUG, "  EVT_FINISHED: %d/%d %d/%d s:%d\n", eventData->data[1], eventData->data[0],
                                        eventData->data[3], eventData->data[2], eventData->data[6]);
                }
            }
            return false;
        }

        BrowserThread::BrowserThread()
            : mpRaster(NULL), mpOperaHeapBuf(NULL), mWidth(0), mHeight(0), mpIniData(NULL), mIniLen(0), mpArcContainer(NULL),
              mpArcDecmpScratch(NULL) {
            if (!classInitialized_) {
                OSInitMutex(&runSliceMutex_);
            }
            classInitialized_++;
        }

        BrowserThread::~BrowserThread() {
            classInitialized_--;
            if (!classInitialized_) {
                if (mpRaster != NULL) {
                    Heap::freeMem1(mpRaster);
                    mpRaster = NULL;
                }
                if (mpOperaHeapBuf != NULL) {
                    Heap::freeMem2(mpOperaHeapBuf);
                    mpOperaHeapBuf = NULL;
                }
                if (mpArcContainer != NULL) {
                    Heap::freeMem1(mpArcContainer);
                    Heap::freeMem1(mpArcDecmpScratch);
                }
            }
        }

        void BrowserThread::RegisterArcFile(void* arcData) {
            if (mpArcContainer == NULL) {
                mpArcContainer = (::www::arcreader::ArcContainer*)Heap::allocMem1(sizeof(::www::arcreader::ArcContainer), 4);
                mpArcDecmpScratch = Heap::allocMem1(0x20000, 4);
                new (mpArcContainer)::www::arcreader::ArcContainer(mpArcDecmpScratch);
            }
            mpArcContainer->RegisterArcFile(arcData);
            return;
        }

        void BrowserThread::RegisterIniFile(void* iniData, u32 iniLen) {
            mpIniData = iniData;
            mIniLen = iniLen;
        }

        void BrowserThread::CreateThread(int w, int h, void* threadStack, u32 threadStackSize, int priority) {
            mWidth = w;
            mHeight = h;
            OSInitMessageQueue(&mQueue, mQueueBuf, ARRAY_LENGTH(mQueueBuf));
            memset(mpBrowserWindows, 0, sizeof(mpBrowserWindows));
            ut_thread::Create(threadStack, threadStackSize, priority, false);
        }

        void BrowserThread::StopThread() {
            if (!IsThreadTerminated()) {
                OSSendMessage(&mQueue, (void*)MSG_MAGIC, 0);
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
                print::IPLWWWReport(print::WWW_DEBUG, "BrowserThread:: msg received.\n");
                if ((u32)msg == MSG_MAGIC) {
                    return true;
                }
            }
            return false;
        }

        void BrowserThread::InitSurface_() {
            u32 surfaceW, surfaceH;
            int surfaceInitRet, setFlushCbRet;
            int rasterRowSize, rasterSize;
            u32* rasterPtr;

            surfaceW = SurfaceManager::GetInstance()->GetWidth();
            surfaceH = SurfaceManager::GetInstance()->GetHeight();
            SurfaceManager::GetInstance()->ResolveRsoModule();

            rasterRowSize = surfaceW * sizeof(u32);
            rasterSize = rasterRowSize * surfaceH;
            rasterPtr = (u32*)Heap::allocMem1(rasterSize, 4);
            mpRaster = rasterPtr;
            print::IPLWWWReport(print::WWW_DEBUG, "www_surface: OperaFrameBuffer: ptr:%p, size:%d\n", rasterPtr, rasterSize);

            mpOperaHeapBuf = Heap::allocMem2(0x6E0000, 0x20);
            memset(mpOperaHeapBuf, 0, 0x6E0000);
            print::IPLWWWReport(print::WWW_DEBUG, "www_surface: OperaHeapBuffer : ptr:%p \n", mpOperaHeapBuf);

            WWWGetBrowserAllocationFunctions(mpOperaHeapBuf, 0x6E0000, &Heap::wwwalloc_, &Heap::wwwfree_, &Heap::wwwavail_);
            WWWSetAllocationFunctions(Heap::wwwalloc_, Heap::wwwfree_, Heap::wwwavail_, Heap::wwwalloc_, Heap::wwwfree_, Heap::wwwalloc_,
                                      Heap::wwwfree_);

            print::TickTimer tt;
            tt.reset();
            surfaceInitRet = WWWSurfaceInit(surfaceW, surfaceH, rasterRowSize, 0, mpRaster);
            tt.report("WWWSurfaceInit");
            if (surfaceInitRet != WWW_ERROR_OK) {
                OSReport("WWWSurfaceInit %d\n", surfaceInitRet);
            }

            tt.reset();
            setFlushCbRet = WWWSurfaceSetFlushCallback(FlushCallback, 0);
            tt.report("WWWSurfaceSetFlushCallback");
            if (setFlushCbRet != WWW_ERROR_OK) {
                OSReport("WWWSurfaceSetFlushCallback %d\n", setFlushCbRet);
            }
        }

        void* BrowserThread::Run() {
            print::TickTimer tt;

            InitSurface_();
            InitFonts_("/operafonts/");
            print::IPLWWWReport(print::WWW_DEBUG, "BrowserThread:: executed\n");

            tt.reset();

            const char* fonts[6];
            fonts[5] = "Wii NTLG PGothic";
            fonts[2] = "Wii NTLG PGothic";
            fonts[3] = "Wii NTLG PGothic";
            fonts[4] = "Wii NTLG Gothic";
            fonts[1] = "Wii NTLG PGothic";
            fonts[0] = "Wii NTLG PGothic";
            WWWCreateBrowser(&mpBrowserHandle, SNotifyCallback_, fonts, "/tmp/www.arc/nand");
            tt.report("WWWCreateBrowser");

            ::www::trasition::AddJsPlugin();
            ::www::wiisetting::AddJsPlugin();
            ::www::arcreader::AddProtocol();

            SurfaceManager* surface = SurfaceManager::GetInstance();
            mpBrowserWindows[0] = (BrowserWindow*)Heap::allocMem1(sizeof(BrowserWindow), 4);
            new (mpBrowserWindows[0]) BrowserWindow(this);
            ((BrowserWindow*)mpBrowserWindows[0])->CreateWindow(mWidth, mHeight, surface->GetWidth(), surface->GetHeight());
            Heap::reportHeap();

            while (true) {
                if (CheckThreadExit_()) {
                    break;
                }
                HandleUIEvent_();
                OSLockMutex(&runSliceMutex_);

                int i = 0;
                BOOL sliceRes;
                do {
                    sliceRes = WWWRunSlice(mpBrowserHandle);
                    i++;
                    ((BrowserWindow*)mpBrowserWindows[0])->ExecuteEvent();
                } while (sliceRes == 0);
                if (i > 10) {
                    print::IPLWWWReport(print::WWW_DEBUG, "+++ too many WWWRunSlice called. %d\n", i);
                }
                OSUnlockMutex(&runSliceMutex_);
                WWWSurfaceUpdateScreen(0);
                WWWSurfaceUpdateScreen(0);
                WWWSurfaceUpdateScreen(0);

                ((BrowserWindow*)mpBrowserWindows[0])->ExecuteEvent();
                ((BrowserWindow*)mpBrowserWindows[0])->UpdateTexture();

                if (*(u32*)mThread.stackEnd != 0xDEADBABE) {
                    print::IPLWWWReport(print::WWW_DEBUG, "This thread stack has overflowed.\n");
                }
                OSSleepMilliseconds(5);
            }
            ((BrowserWindow*)mpBrowserWindows[0])->CloseWindow();
            ((BrowserWindow*)mpBrowserWindows[0])->~BrowserWindow();

            Heap::freeMem1(mpBrowserWindows[0]);
            mpBrowserWindows[0] = NULL;

            WWWTerminateBrowser(mpBrowserHandle);
            return this;
        }

        void BrowserThread::SendKeyboardEvent_(u32 btnMask, u32 triggerFlag, u32 releaseFlag, WWWKeySym sym) {
            if (triggerFlag & btnMask) {
                WWWSurfaceKeyboardEvt(KEY_CMD_TRIGGER, sym, 0);
            } else if (releaseFlag & btnMask) {
                WWWSurfaceKeyboardEvt(KEY_CMD_RELEASE, sym, 0);
            }
        }

        WWWKeySym BrowserThread::GetKeyboardSym_(u32 input) {
            switch (input) {
                case ipl::controller::BTN_NEXT_RIGHT: {
                    return KEY_SYM_NEXT_RIGHT;
                }
                case ipl::controller::BTN_NEXT_LEFT: {
                    // return KEY_SYM_NEXT_LEFT;
                    return KEY_SYM_SOMETHING;
                }
                case ipl::controller::BTN_UP: {
                    return KEY_SYM_UP;
                }
                case ipl::controller::BTN_DOWN: {
                    return KEY_SYM_DOWN;
                }
                case ipl::controller::BTN_LEFT: {
                    return KEY_SYM_LEFT;
                }
                case ipl::controller::BTN_RIGHT: {
                    return KEY_SYM_RIGHT;
                }
                case ipl::controller::REVO_BTN_1: {
                    return KEY_SYM_BTN1;
                }
                case ipl::controller::REVO_BTN_2: {
                    return KEY_SYM_BTN2;
                }
                default: {
                    return KEY_SYM_BLANK;
                }
            }
        }

        int BrowserThread::ExecDpdEvent_(const CmdPacket& cmd) {
            bool somethingClicked = 0;

            int x, y;
            x = cmd.data.controller.irX;
            y = cmd.data.controller.irY;
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_INTERACT) {
                WWWSurfaceMouseEvt(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                WWWSurfaceMouseEvt(MOUSE_CMD_TRIGGER, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
                WWWSurfaceMouseEvt(MOUSE_CMD_RELEASE, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
                somethingClicked = 1;
            } else if (cmd.data.controller.btnRelease & ipl::controller::BTN_INTERACT) {
                WWWSurfaceMouseEvt(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                WWWSurfaceMouseEvt(MOUSE_CMD_RELEASE, x, y, MOUSE_ATTRIB_BUTTON, 1, 0);
            } else {
                WWWSurfaceMouseEvt(MOUSE_CMD_MOVE, x, y, MOUSE_ATTRIB_POSITION, 0, 0);
                if (gDpdWaitFrm >= 4 && (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_LEFT)) {
                    WWWSurfaceKeyboardEvt(KEY_CMD_RELEASE, KEY_SYM_NEXT_RIGHT, 0);
                    WWWSurfaceKeyboardEvt(KEY_CMD_TRIGGER, KEY_SYM_NEXT_RIGHT, 0);
                } else if (gDpdWaitFrm >= 4 && (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_RIGHT)) {
                    WWWSurfaceKeyboardEvt(KEY_CMD_RELEASE, KEY_SYM_NEXT_LEFT, 0);
                    WWWSurfaceKeyboardEvt(KEY_CMD_TRIGGER, KEY_SYM_NEXT_LEFT, 0);
                }
            }

            if (gEnableDpd && ++gDpdWaitFrm > 4) {
                gDpdWaitFrm = 4;
            }

            return somethingClicked;
        }

        void BrowserThread::ExecSpacialEvent_(const CmdPacket& cmd) {
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_RIGHT) {
                ((BrowserWindow*)mpBrowserWindows[0])->PrevPage();
            }
            if (cmd.data.controller.btnTrigger & ipl::controller::BTN_NEXT_LEFT) {
                ((BrowserWindow*)mpBrowserWindows[0])->GotoHome();
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
                BrowserWindow* pBrowserWindow = (BrowserWindow*)mpBrowserWindows[0];
                bool something = false;
                if ((pBrowserWindow->unk_0x2C4[2] != '\0') && (pBrowserWindow->unk_0x2C4[3] != '\0')) {
                    something = true;
                }
                if (something || pBrowserWindow->unk_0x2C4[0] != '\0') {
                    continue;
                }

                int retVal = 0;
                switch (cmd.type) {
                    case 0: {
                        retVal = ExecDpdEvent_(cmd);
                        break;
                    }
                    case 1: {
                        ExecSpacialEvent_(cmd);
                        break;
                    }
                    case 2: {
                        pBrowserWindow->SetWindowSize(cmd.data.setWindowSize.width, cmd.data.setWindowSize.height);
                        break;
                    }
                    case 3: {
                        CommitImeCmdPacket(&cmd);
                        break;
                    }
                    case 4: {
                        UpdateImeCmdPacket(&cmd);
                        break;
                    }
                    default: {
                        print::IPLWWWReport(print::WWW_DEBUG, "BrowserThread::HandleUIEvent_: Unknown type: %d\n", cmd.type);
                        break;
                    }
                }
                if (retVal != 0) {
                    break;
                }
            }
        }

        void BrowserThread::SendUIEvent(CmdPacket* packet) {
            mCmdPacketQueue.SendTypedMessage(packet);
        }

        void BrowserThread::InitFonts_(const char* unk) {
            print::TickTimer tt;
            tt.reset();
            WWWSurfaceAddFont("DirectUniversal");
            tt.report("WWWSurfaceAddFont:font1");
        }

        void* BrowserThread::GetTextureBuffer(int val, WWWRect** rectPtrOut) {
            if (mpBrowserWindows[0] == NULL) {
                return NULL;
            }
            return ((BrowserWindow*)mpBrowserWindows[0])->GetTextureBuffer(val, false, rectPtrOut);
        }

        void BrowserThread::FlushCallback(WWWRect* rect, int unk) {
            BOOL level;
            BrowserWindow* pBrowserWindow;

            pBrowserWindow = (BrowserWindow*)SurfaceManager::GetInstance()->GetBrowserThread()->mpBrowserWindows[0];
            if ((pBrowserWindow->unk_0x2C4[0] == '\0') && (pBrowserWindow->unk_0x2C4[1] == '\0')) {
                level = OSDisableInterrupts();
                if (pBrowserWindow->unk_0x2C4[2] == '\0') {
                    if (pBrowserWindow->unk_0x2C4[4] == '\0') {
                        pBrowserWindow->unk_0x2C0 = pBrowserWindow->unk_0x2B0;
                        pBrowserWindow->unk_0x2BC = (int)(pBrowserWindow->unk_0x2B4[pBrowserWindow->unk_0x2B0] + 1) % 3;
                    }
                    pBrowserWindow->unk_0x2C4[4] = 1;
                }
                pBrowserWindow->unk_0x2C4[1] = 1;
                OSRestoreInterrupts(level);
            }
            return;
        }

        bool BrowserThread::SendEventFromWindow(ImeData* imeData) {
            if (!mImeDataQueue.SendTypedMessage(imeData)) {
                print::IPLWWWReport(print::WWW_DEBUG, "WARNING: Too Many Ime commands. cannot send request.\n");
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
            print::IPLWWWReport(print::WWW_DEBUG, "WWWIMEData imeID:%p\n", wwwData->imeID);
            print::IPLWWWReport(print::WWW_DEBUG, "WWWIMEData text:%p\n", wwwData->text);
            print::IPLWWWReport(print::WWW_DEBUG, "WWWIMEData maxlength:%d\n", wwwData->maxLength);
            // @bug I think this was supposed to access a different member of
            // the struct
            print::IPLWWWReport(print::WWW_DEBUG, "WWWIMEData format:%p\n", wwwData->text);
            print::IPLWWWReport(print::WWW_DEBUG, "WWWIMEData text_string:%s\n", wwwData->text);

            if (wwwData->text) {
                data->text = (char*)Heap::allocMem2(strlen(wwwData->text) + 1, 4);
                strcpy(data->text, wwwData->text);
            } else {
                data->text = NULL;
            }

            data->imeID = wwwData->imeID;
            data->unk_0x00 = 0;
            data->unk_0x0C = wwwData->unk_0x08;
            data->unk_0x10 = wwwData->unk_0x0C;
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
            WWWCommitIme(packet->data.commitIme.imeID, packet->data.commitIme.str);
            if (packet->data.commitIme.str != NULL) {
                Heap::freeMem1(packet->data.commitIme.str);
            }
        }

        void BrowserThread::UpdateImeCmdPacket(const CmdPacket* packet) {
            WWWUpdateIme(packet->data.updateIme.imeID, packet->data.updateIme.str, packet->data.updateIme.unk_0x0C);
            if (packet->data.updateIme.str != NULL) {
                Heap::freeMem1(packet->data.updateIme.str);
            }
        }

    }  // namespace www
}  // namespace ext_ead
