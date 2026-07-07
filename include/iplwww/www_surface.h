#ifndef IPL_WWW_SURFACE
#define IPL_WWW_SURFACE

#include <revolution/mem/expHeap.h>
#include <revolution/os.h>
#include <revolution/rso.h>
#include <revolution/types.h>

#include "iplwww/www_browser.h"

namespace ext_ead {
    namespace www {
        namespace Heap {
            void* allocMem1(u32 size, int align);
            void freeMem1(void* block);

            void* allocMem2(u32 size, int align);
            void freeMem2(void* block);

            void reportHeap();
            void reportLeaHeap();

            inline void init(void* mem1Buf, u32 mem1BufSize, void* mem2Buf, u32 mem2BufSize);
            inline void destroy();

            extern MEMiHeapHead* hMem1;
            extern MEMiHeapHead* hMem2;
            extern void* wwwalloc_;
            extern void (*wwwfree_)(void*);
            extern int (*wwwavail_)();

            extern u32 hFreeSize1;
            extern u32 hFreeSize2;
        }  // namespace Heap

        class SurfaceManager {
        public:
            static void CreateManager(int rectW0, int rectH0, int rectW1, int rectH1, void* mem1Buf, u32 mem1BufSize, void* mem2Buf, u32 mem2BufSize,
                                      void* libBuf, const char* param_10);
            static void DisposeManager();

            static void RegisterArcFile(void* fileBuf);
            static void RegisterIniFile(void* fileBuf, u32 fileLen);
            static void RegisterFontFile(int fontIdx, void* fileBuf, u32 fileLen);
            static void StartThread();

            void ResolveRsoModule();
            void UnresolveRsoModule();

            void InitInstance_(int, int, int, int);
            void StopThreadAsync();
            bool IsThreadStopped();
            void DisposeInstance_();

            static SurfaceManager* Instance_;

        private:
            SurfaceManager();
            virtual ~SurfaceManager();

        public:
            u32 mWidth;   // 0x04
            u32 mHeight;  // 0x08
        private:
            u32 unk_0x0c;    // 0x0c
            OSMutex mMutex;  // 0x10
        public:
            BrowserThread* pBrowserThread;  // 0x28
        private:
            void* pOperaThreadStack;  // 0x2c
            void* pBss;               // 0x30
            void* pLibBuf;            // 0x34
        public:
            char* pArcPath;  // 0x38
        };

        static RSOExportFuncTable rsoSymbolList[] = {
            {"WWWSurfaceInit", (u32*)&WWWSurfaceInit},
            {"WWWSurfaceNewScreen", (u32*)&WWWSurfaceNewScreen},
            {"WWWSurfaceDeleteScreen", (u32*)&WWWSurfaceDeleteScreen},
            {"WWWSurfaceResize", (u32*)&WWWSurfaceResize},
            {"WWWSurfaceShutdown", (u32*)&WWWSurfaceShutdown},
            {"WWWSurfaceSetFlushCallback", (u32*)&WWWSurfaceSetFlushCallback},
            {"WWWSurfaceInvalidate", (u32*)&WWWSurfaceInvalidate},
            {"WWWSurfaceUpdateScreen", (u32*)&WWWSurfaceUpdateScreen},
            {"WWWSurfaceLockArea", (u32*)&WWWSurfaceLockArea},
            {"WWWSurfaceUnlockArea", (u32*)&WWWSurfaceUnlockArea},
            {"WWWSurfaceMouseEvt", (u32*)&WWWSurfaceMouseEvt},
            {"WWWSurfaceWheelEvt", (u32*)&WWWSurfaceWheelEvt},
            {"WWWSurfaceKeyboardEvt", (u32*)&WWWSurfaceKeyboardEvt},
            {"WWWSurfaceAddFont", (u32*)&WWWSurfaceAddFont},
            {"WWWCreateBrowser", (u32*)&WWWCreateBrowser},
            {"WWWTerminateBrowser", (u32*)&WWWTerminateBrowser},
            {"WWWRunSlice", (u32*)&WWWRunSlice},
            {"WWWCreateBrowserWindow", (u32*)&WWWCreateBrowserWindow},
            {"WWWCloseBrowserWindow", (u32*)&WWWCloseBrowserWindow},
            {"WWWSetBrowserWindowTransparent", (u32*)&WWWSetBrowserWindowTransparent},
            {"WWWGetBrowserWindowRect", (u32*)&WWWGetBrowserWindowRect},
            {"WWWSetBrowserWindowRect", (u32*)&WWWSetBrowserWindowRect},
            {"WWWRaiseBrowserWindow", (u32*)&WWWRaiseBrowserWindow},
            {"WWWLowerBrowserWindow", (u32*)&WWWLowerBrowserWindow},
            {"WWWShowBrowserWindow", (u32*)&WWWShowBrowserWindow},
            {"WWWHideBrowserWindow", (u32*)&WWWHideBrowserWindow},
            {"WWWCommitIme", (u32*)&WWWCommitIme},
            {"WWWUpdateIme", (u32*)&WWWUpdateIme},
            {"WWWPostUrl", (u32*)&WWWPostUrl},
            {"WWWOpenUrl", (u32*)&WWWOpenUrl},
            {"WWWGetHistoryCount", (u32*)&WWWGetHistoryCount},
            {"WWWNextPage", (u32*)&WWWNextPage},
            {"WWWPrevPage", (u32*)&WWWPrevPage},
            {"WWWMoveInHistory", (u32*)&WWWMoveInHistory},
            {"WWWStop", (u32*)&WWWStop},
            {"WWWReload", (u32*)&WWWReload},
            {"WWWReflow", (u32*)&WWWReflow},
            {"WWWSearch", (u32*)&WWWSearch},
            {"WWWResetSearch", (u32*)&WWWResetSearch},
            {"WWWSetFocus", (u32*)&WWWSetFocus},
            {"WWWLoseFocus", (u32*)&WWWLoseFocus},
            {"WWWHistory", (u32*)&WWWHistory},
            {"WWWClearHistory", (u32*)&WWWClearHistory},
            {"WWWGetTrueZoom", (u32*)&WWWGetTrueZoom},
            {"WWWSetTrueZoom", (u32*)&WWWSetTrueZoom},
            {"WWWGetZoom", (u32*)&WWWGetZoom},
            {"WWWSetZoom", (u32*)&WWWSetZoom},
            {"WWWGetSecurityMode", (u32*)&WWWGetSecurityMode},
            {"WWWGetScroll", (u32*)&WWWGetScroll},
            {"WWWSetScroll", (u32*)&WWWSetScroll},
            {"WWWSetRenderingMode", (u32*)&WWWSetRenderingMode},
            {"WWWGetRenderingMode", (u32*)&WWWGetRenderingMode},
            {"WWWSetImageMode", (u32*)&WWWSetImageMode},
            {"WWWCreateCertificateManager", (u32*)&WWWCreateCertificateManager},
            {"WWWCloseCertificateManager", (u32*)&WWWCloseCertificateManager},
            {"WWWGetNumberOfCertificates", (u32*)&WWWGetNumberOfCertificates},
            {"WWWSetLanguageEncoding", (u32*)&WWWSetLanguageEncoding},
            {"WWWGetDocumentIcon", (u32*)&WWWGetDocumentIcon},
            {"WWWGetDocumentIconUrl", (u32*)&WWWGetDocumentIconUrl},
            {"WWWClearCookies", (u32*)&WWWClearCookies},
            {"WWWGetDocumentSize", (u32*)&WWWGetDocumentSize},
            {"WWWSetIntPref", (u32*)&WWWSetIntPref},
            {"WWWGetIntPref", (u32*)&WWWGetIntPref},
            {"WWWSetStringPref", (u32*)&WWWSetStringPref},
            {"WWWGetStringPref", (u32*)&WWWGetStringPref},
            {"WWWCommitPrefs", (u32*)&WWWCommitPrefs},
            {"WWWSetFocusColors", (u32*)&WWWSetFocusColors},
            {"WWWSetScrollbarColors", (u32*)&WWWSetScrollbarColors},
            {"WWWSetScrollbarSize", (u32*)&WWWSetScrollbarSize},
            {"WWWSetWidgetColors", (u32*)&WWWSetWidgetColors},
            {"WWWSetDisabledWidgetColors", (u32*)&WWWSetDisabledWidgetColors},
            {"WWWSetButtonWidgetColors", (u32*)&WWWSetButtonWidgetColors},
            {"WWWSetUastringExtension", (u32*)&WWWSetUastringExtension},
            {"WWWMarkNextItemInDirection", (u32*)&WWWMarkNextItemInDirection},
            {"WWWResetNavigation", (u32*)&WWWResetNavigation},
            {"WWWClearHighlight", (u32*)&WWWClearHighlight},
            {"WWWSetHighlight", (u32*)&WWWSetHighlight},
            {"WWWGetActiveLinkType", (u32*)&WWWGetActiveLinkType},
            {"WWWGetBrowserAllocationFunctions", (u32*)&WWWGetBrowserAllocationFunctions},
            {"WWWShutdownBrowserAllocationFunctions", (u32*)&WWWShutdownBrowserAllocationFunctions},
            {"WWWSetAllocationFunctions", (u32*)&WWWSetAllocationFunctions},
            {"WWWHTTPCreateHttpLib", (u32*)&WWWHTTPCreateHttpLib},
            {"WWWHTTPTerminateHttpLib", (u32*)&WWWHTTPTerminateHttpLib},
            {"WWWHTTPSessionRunSlice", (u32*)&WWWHTTPSessionRunSlice},
            {"WWWHTTPInitSession", (u32*)&WWWHTTPInitSession},
            {"WWWHTTPDeleteSession", (u32*)&WWWHTTPDeleteSession},
            {"WWWHTTPSetSessionHeader", (u32*)&WWWHTTPSetSessionHeader},
            {"WWWHTTPRemoveSessionHeader", (u32*)&WWWHTTPRemoveSessionHeader},
            {"WWWHTTPRemoveAllSessionHeaders", (u32*)&WWWHTTPRemoveAllSessionHeaders},
            {"WWWHTTPCreateRequest", (u32*)&WWWHTTPCreateRequest},
            {"WWWHTTPDeleteRequest", (u32*)&WWWHTTPDeleteRequest},
            {"WWWHTTPSetRequestHeader", (u32*)&WWWHTTPSetRequestHeader},
            {"WWWHTTPGetRequestHeader", (u32*)&WWWHTTPGetRequestHeader},
            {"WWWHTTPRemoveRequestHeader", (u32*)&WWWHTTPRemoveRequestHeader},
            {"WWWHTTPRemoveAllRequestHeaders", (u32*)&WWWHTTPRemoveAllRequestHeaders},
            {"WWWHTTPGetResponseHeader", (u32*)&WWWHTTPGetResponseHeader},
            {"WWWHTTPGetResponseHeaders", (u32*)&WWWHTTPGetResponseHeaders},
            {"WWWHTTPIssue", (u32*)&WWWHTTPIssue},
            {"WWWHTTPNbActiveRequests", (u32*)&WWWHTTPNbActiveRequests},
            {"WWWHTTPPostBodyData", (u32*)&WWWHTTPPostBodyData},
            {"WWWHTTPSetAuthCredentials", (u32*)&WWWHTTPSetAuthCredentials},
            {"WWWHTTPRemoveAuthCredentials", (u32*)&WWWHTTPRemoveAuthCredentials},
            {"WWWHTTPSetProxy", (u32*)&WWWHTTPSetProxy},
            {"WWWHTTPRemoveProxy", (u32*)&WWWHTTPRemoveProxy},
            {"WWWHTTPEndLoading", (u32*)&WWWHTTPEndLoading},
            {"WWWAddJSPlugin", (u32*)&WWWAddJSPlugin},
            {"WWWAddNSPlugin", (u32*)&WWWAddNSPlugin},
            {"WWWProtocolWrite", (u32*)&WWWProtocolWrite},
            {"WWWProtocolSetMimeType", (u32*)&WWWProtocolSetMimeType},
            {"WWWProtocolFinished", (u32*)&WWWProtocolFinished},
            {"WWWProtocolFailed", (u32*)&WWWProtocolFailed},
            {"WWWAddProtocol", (u32*)&WWWAddProtocol},
        };

    }  // namespace www

}  // namespace ext_ead

namespace {
    void unresolved_www() {
        OSReport("\nError: call www unlinked function.\n");
    }
}  // namespace
#endif  // IPL_WWW_SURFACE
