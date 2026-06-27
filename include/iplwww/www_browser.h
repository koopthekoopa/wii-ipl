#ifndef IPL_WWW_BROWSER
#define IPL_WWW_BROWSER

#include <revolution/os.h>
#include <revolution/types.h>

#include "iplwww/www_js.h"
#include "iplwww/www_message.h"
#include "iplwww/www_thread.h"

typedef void (*WWWAddJSPluginFn)(const char*, WWWJSCap*, JSCallbackSet**);

typedef u32 (*WWWProtocolWriteFn)(void* wwwInternal, const void* data, u32 dataSize);
typedef u32 (*WWWProtocolFinalizeFn)(void*);
typedef int (*WWWAddProtocolFn)(const char*);

typedef void (*WWWBasicWindowFn)(WWWHandlewindow*);
typedef void (*WWWSetBrowserWindowRectFn)(WWWHandlewindow*, WWWRect*);
typedef void (*WWWSetImageModeFn)(WWWHandlewindow*, GXTexFmt);
typedef void (*WWWSetRenderingModeFn)(WWWHandlewindow*, int);
typedef BOOL (*WWWCreateBrowserWindowFn)(void*, WWWHandlewindow**, int);
typedef BOOL (*WWWCloseBrowserWindowFn)(void*, WWWHandlewindow*);
typedef void (*WWWOpenUrlFn)(WWWHandlewindow*, const char*);

typedef void (*WWWGetBrowserAllocationFunctionsFn)(void* heapBuf, u32 heapBufSize, void** allocOut, void (**freeOut)(void*), int (**availOut)());
typedef void (*WWWSetAllocationFunctionsFn)(void* allocA, void (*freeA)(void*), int (*avail)(), void* allocB, void (*freeB)(void*), void* allocC,
                                            void (*freeC)(void*));

typedef int (*WWWSurfaceInitFn)(int w, int h, u32 rowSize, int, void* rasterBuf);
typedef int (*WWWSurfaceSetFlushCallbackFn)(void (*FlushCallback)(WWWRect*, int), int);
typedef void (*WWWSurfaceAddFontFn)(const char*);
typedef void (*WWWSurfaceUpdateScreenFn)(u32);
typedef void (*WWWSurfaceKeyboardEvtFn)(WWWKeyBtnCmd cmd, WWWKeySym sym, u32 unk);
typedef void (*WWWSurfaceMouseEvtFn)(WWWMouseCmd cmd, int x, int y, WWWMouseAttrib attrib, u32 unkA, u32 unkB);

typedef void (*WWWCommitImeFn)(int imeID, const char* str);
typedef void (*WWWUpdateImeFn)(int imeID, const char* str, u32 unk);

typedef BOOL (*WWWNotifyCallbackFn)(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData);
typedef void (*WWWCreateBrowserFn)(WWWHandle** browser, WWWNotifyCallbackFn notifyCallback, const char** fonts, const char* arc);
typedef BOOL (*WWWSimpleBrowserFn)(WWWHandle* browser);

extern WWWSurfaceInitFn WWWSurfaceInit;
extern void* WWWSurfaceNewScreen;
extern void* WWWSurfaceDeleteScreen;
extern void* WWWSurfaceResize;
extern void* WWWSurfaceShutdown;
extern WWWSurfaceSetFlushCallbackFn WWWSurfaceSetFlushCallback;
extern void* WWWSurfaceInvalidate;
extern WWWSurfaceUpdateScreenFn WWWSurfaceUpdateScreen;
extern void* WWWSurfaceLockArea;
extern void* WWWSurfaceUnlockArea;
extern WWWSurfaceMouseEvtFn WWWSurfaceMouseEvt;
extern void* WWWSurfaceWheelEvt;
extern WWWSurfaceKeyboardEvtFn WWWSurfaceKeyboardEvt;
extern WWWSurfaceAddFontFn WWWSurfaceAddFont;
extern WWWCreateBrowserFn WWWCreateBrowser;
extern WWWSimpleBrowserFn WWWTerminateBrowser;
extern WWWSimpleBrowserFn WWWRunSlice;
extern WWWCreateBrowserWindowFn WWWCreateBrowserWindow;
extern WWWCloseBrowserWindowFn WWWCloseBrowserWindow;
extern void* WWWSetBrowserWindowTransparent;
extern void* WWWGetBrowserWindowRect;
extern WWWSetBrowserWindowRectFn WWWSetBrowserWindowRect;
extern WWWBasicWindowFn WWWRaiseBrowserWindow;
extern WWWBasicWindowFn WWWLowerBrowserWindow;
extern WWWBasicWindowFn WWWShowBrowserWindow;
extern WWWBasicWindowFn WWWHideBrowserWindow;
extern WWWCommitImeFn WWWCommitIme;
extern WWWUpdateImeFn WWWUpdateIme;
extern void* WWWPostUrl;
extern WWWOpenUrlFn WWWOpenUrl;
extern void* WWWGetHistoryCount;
extern WWWBasicWindowFn WWWNextPage;
extern WWWBasicWindowFn WWWPrevPage;
extern void* WWWMoveInHistory;
extern void* WWWStop;
extern void* WWWReload;
extern void* WWWReflow;
extern void* WWWSearch;
extern void* WWWResetSearch;
extern WWWBasicWindowFn WWWSetFocus;
extern void* WWWLoseFocus;
extern void* WWWHistory;
extern void* WWWClearHistory;
extern void* WWWGetTrueZoom;
extern void* WWWSetTrueZoom;
extern void* WWWGetZoom;
extern void* WWWSetZoom;
extern void* WWWGetSecurityMode;
extern void* WWWGetScroll;
extern void* WWWSetScroll;
extern WWWSetRenderingModeFn WWWSetRenderingMode;
extern void* WWWGetRenderingMode;
extern WWWSetImageModeFn WWWSetImageMode;
extern void* WWWCreateCertificateManager;
extern void* WWWCloseCertificateManager;
extern void* WWWGetNumberOfCertificates;
extern void* WWWSetLanguageEncoding;
extern void* WWWGetDocumentIcon;
extern void* WWWGetDocumentIconUrl;
extern void* WWWClearCookies;
extern void* WWWGetDocumentSize;
extern void* WWWSetIntPref;
extern void* WWWGetIntPref;
extern void* WWWSetStringPref;
extern void* WWWGetStringPref;
extern void* WWWCommitPrefs;
extern void* WWWSetFocusColors;
extern void* WWWSetScrollbarColors;
extern void* WWWSetScrollbarSize;
extern void* WWWSetWidgetColors;
extern void* WWWSetDisabledWidgetColors;
extern void* WWWSetButtonWidgetColors;
extern void* WWWSetUastringExtension;
extern void* WWWMarkNextItemInDirection;
extern void* WWWResetNavigation;
extern void* WWWClearHighlight;
extern void* WWWSetHighlight;
extern void* WWWGetActiveLinkType;
extern WWWGetBrowserAllocationFunctionsFn WWWGetBrowserAllocationFunctions;
extern void* WWWShutdownBrowserAllocationFunctions;
extern WWWSetAllocationFunctionsFn WWWSetAllocationFunctions;
extern void* WWWHTTPCreateHttpLib;
extern void* WWWHTTPTerminateHttpLib;
extern void* WWWHTTPSessionRunSlice;
extern void* WWWHTTPInitSession;
extern void* WWWHTTPDeleteSession;
extern void* WWWHTTPSetSessionHeader;
extern void* WWWHTTPRemoveSessionHeader;
extern void* WWWHTTPRemoveAllSessionHeaders;
extern void* WWWHTTPCreateRequest;
extern void* WWWHTTPDeleteRequest;
extern void* WWWHTTPSetRequestHeader;
extern void* WWWHTTPGetRequestHeader;
extern void* WWWHTTPRemoveRequestHeader;
extern void* WWWHTTPRemoveAllRequestHeaders;
extern void* WWWHTTPGetResponseHeader;
extern void* WWWHTTPGetResponseHeaders;
extern void* WWWHTTPIssue;
extern void* WWWHTTPNbActiveRequests;
extern void* WWWHTTPPostBodyData;
extern void* WWWHTTPSetAuthCredentials;
extern void* WWWHTTPRemoveAuthCredentials;
extern void* WWWHTTPSetProxy;
extern void* WWWHTTPRemoveProxy;
extern void* WWWHTTPEndLoading;
extern WWWAddJSPluginFn WWWAddJSPlugin;
extern void* WWWAddNSPlugin;
extern WWWProtocolWriteFn WWWProtocolWrite;
extern void* WWWProtocolSetMimeType;
extern WWWProtocolFinalizeFn WWWProtocolFinished;
extern WWWProtocolFinalizeFn WWWProtocolFailed;
extern WWWAddProtocolFn WWWAddProtocol;

namespace ext_ead {
    namespace www {
        typedef struct ImeData {
            u32 unk_0x00;   // 0x00
            u32 imeID;      // 0x04
            char* text;     // 0x08
            u32 unk_0x0c;   // 0x0c
            u32 unk_0x10;   // 0x10
            u32 unk_0x14;   // 0x14
            u32 unk_0x18;   // 0x18
            u32 maxLength;  // 0x1c
        } ImeData;

        class BrowserThread : public ut_thread {
        public:
            struct CmdPacket {
            public:
                u32 type;
                union {
                    struct {
                        float irX;
                        float irY;
                        u32 unused;
                        u32 btnHold;
                        u32 btnTrigger;
                        u32 btnRelease;
                    } controller;  // IDs 0 and 1
                    struct {
                        int width;
                        int height;
                    } setWindowSize;  // ID 2
                    struct {
                        u32 imeID;
                        char* str;
                    } commitIme;  // ID 3
                    struct {
                        u32 imeID;
                        char* str;
                        u32 unk_0x0c;
                    } updateIme;  // ID 4
                    u32 raw[6];
                } data;
            };

            BrowserThread();

            virtual ~BrowserThread();
            virtual void* Run();

            void RegisterArcFile(void* arcData);
            void RegisterIniFile(void*, u32);
            void CreateThread(int w, int h, void* threadStack, u32 threadStackSize, int priority);
            void StopThread();
            bool IsThreadStopped();
            void SendUIEvent(CmdPacket* packet);
            void* GetTextureBuffer(int, WWWRect** rectPtrOut);
            bool SendEventFromWindow(ImeData* imeData);
            bool ReceiveWindowEvent(ImeData* imeData);

            void CreateImeData(ImeData* data, const WWWIMEData* wwwData);
            void DisposeImeData(ImeData* data);
            void CommitIme(ImeData* data, const char*);

            void CommitImeCmdPacket(const CmdPacket* data);
            void UpdateImeCmdPacket(const CmdPacket* data);

            static void FlushCallback(WWWRect*, int);

        private:
            static BOOL SNotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData);
            BOOL NotifyCallback_(WWWHandle* wwwBrowser, WWWHandlewindow* wwwWindow, WWWEvent event, WWWHandleEventData* eventData);

            bool CheckThreadExit_();
            void InitSurface_();
            void InitFonts_(const char*);

            void SendKeyboardEvent_(u32 btnMask, u32 triggerFlag, u32 releaseFlag, WWWKeySym sym);
            WWWKeySym GetKeyboardSym_(u32);

            int ExecDpdEvent_(const CmdPacket&);
            void ExecSpacialEvent_(const CmdPacket&);
            inline bool WaitForNextUIEvent_(CmdPacket*);
            void HandleUIEvent_();

            OSMessageQueue mQueue;                         // 0x32c
            OSMessage mQueueBuf[0x20];                     // 0x34c
            ut_message_cmd<CmdPacket, 8> mCmdPacketQueue;  // 0x510
            ut_message_cmd<ImeData, 8> mImeDataQueue;      // 0x510
            u32* pRaster;                                  // 0x674
            void* pOperaHeapBuf;                           // 0x678
            WWWHandle* pWwwBrowser;                        // 0x67c
        public:
            void* pBrowserWindows[4];  // 0x680
        private:
            int mWidth;                      // 0x690
            int mHeight;                     // 0x694
            void* pIniData;                  // 0x698
            u32 mIniLen;                     // 0x69c
            void* pArcContainer;             // 0x6a0
            void* pArcDecompressionScratch;  // 0x6a4

            static OSMutex runSliceMutex_;
            static int classInitialized_;
        };
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_WWW_BROWSER
