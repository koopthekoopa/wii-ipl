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

        typedef struct RSOSymbolRef {
            const char* symName;
            void** symPtr;
        } RSOSymbolRef;
        static RSOSymbolRef rsoSymbolList[] = {
            {"WWWSurfaceInit", (void**)&WWWSurfaceInit},
            {"WWWSurfaceNewScreen", &WWWSurfaceNewScreen},
            {"WWWSurfaceDeleteScreen", &WWWSurfaceDeleteScreen},
            {"WWWSurfaceResize", &WWWSurfaceResize},
            {"WWWSurfaceShutdown", &WWWSurfaceShutdown},
            {"WWWSurfaceSetFlushCallback", (void**)&WWWSurfaceSetFlushCallback},
            {"WWWSurfaceInvalidate", &WWWSurfaceInvalidate},
            {"WWWSurfaceUpdateScreen", (void**)&WWWSurfaceUpdateScreen},
            {"WWWSurfaceLockArea", &WWWSurfaceLockArea},
            {"WWWSurfaceUnlockArea", &WWWSurfaceUnlockArea},
            {"WWWSurfaceMouseEvt", (void**)&WWWSurfaceMouseEvt},
            {"WWWSurfaceWheelEvt", &WWWSurfaceWheelEvt},
            {"WWWSurfaceKeyboardEvt", (void**)&WWWSurfaceKeyboardEvt},
            {"WWWSurfaceAddFont", (void**)&WWWSurfaceAddFont},
            {"WWWCreateBrowser", (void**)&WWWCreateBrowser},
            {"WWWTerminateBrowser", (void**)&WWWTerminateBrowser},
            {"WWWRunSlice", (void**)&WWWRunSlice},
            {"WWWCreateBrowserWindow", (void**)&WWWCreateBrowserWindow},
            {"WWWCloseBrowserWindow", (void**)&WWWCloseBrowserWindow},
            {"WWWSetBrowserWindowTransparent", &WWWSetBrowserWindowTransparent},
            {"WWWGetBrowserWindowRect", &WWWGetBrowserWindowRect},
            {"WWWSetBrowserWindowRect", (void**)&WWWSetBrowserWindowRect},
            {"WWWRaiseBrowserWindow", (void**)&WWWRaiseBrowserWindow},
            {"WWWLowerBrowserWindow", (void**)&WWWLowerBrowserWindow},
            {"WWWShowBrowserWindow", (void**)&WWWShowBrowserWindow},
            {"WWWHideBrowserWindow", (void**)&WWWHideBrowserWindow},
            {"WWWCommitIme", (void**)&WWWCommitIme},
            {"WWWUpdateIme", (void**)&WWWUpdateIme},
            {"WWWPostUrl", &WWWPostUrl},
            {"WWWOpenUrl", (void**)&WWWOpenUrl},
            {"WWWGetHistoryCount", &WWWGetHistoryCount},
            {"WWWNextPage", (void**)&WWWNextPage},
            {"WWWPrevPage", (void**)&WWWPrevPage},
            {"WWWMoveInHistory", &WWWMoveInHistory},
            {"WWWStop", &WWWStop},
            {"WWWReload", &WWWReload},
            {"WWWReflow", &WWWReflow},
            {"WWWSearch", &WWWSearch},
            {"WWWResetSearch", &WWWResetSearch},
            {"WWWSetFocus", (void**)&WWWSetFocus},
            {"WWWLoseFocus", &WWWLoseFocus},
            {"WWWHistory", &WWWHistory},
            {"WWWClearHistory", &WWWClearHistory},
            {"WWWGetTrueZoom", &WWWGetTrueZoom},
            {"WWWSetTrueZoom", &WWWSetTrueZoom},
            {"WWWGetZoom", &WWWGetZoom},
            {"WWWSetZoom", &WWWSetZoom},
            {"WWWGetSecurityMode", &WWWGetSecurityMode},
            {"WWWGetScroll", &WWWGetScroll},
            {"WWWSetScroll", &WWWSetScroll},
            {"WWWSetRenderingMode", (void**)&WWWSetRenderingMode},
            {"WWWGetRenderingMode", &WWWGetRenderingMode},
            {"WWWSetImageMode", (void**)&WWWSetImageMode},
            {"WWWCreateCertificateManager", &WWWCreateCertificateManager},
            {"WWWCloseCertificateManager", &WWWCloseCertificateManager},
            {"WWWGetNumberOfCertificates", &WWWGetNumberOfCertificates},
            {"WWWSetLanguageEncoding", &WWWSetLanguageEncoding},
            {"WWWGetDocumentIcon", &WWWGetDocumentIcon},
            {"WWWGetDocumentIconUrl", &WWWGetDocumentIconUrl},
            {"WWWClearCookies", &WWWClearCookies},
            {"WWWGetDocumentSize", &WWWGetDocumentSize},
            {"WWWSetIntPref", &WWWSetIntPref},
            {"WWWGetIntPref", &WWWGetIntPref},
            {"WWWSetStringPref", &WWWSetStringPref},
            {"WWWGetStringPref", &WWWGetStringPref},
            {"WWWCommitPrefs", &WWWCommitPrefs},
            {"WWWSetFocusColors", &WWWSetFocusColors},
            {"WWWSetScrollbarColors", &WWWSetScrollbarColors},
            {"WWWSetScrollbarSize", &WWWSetScrollbarSize},
            {"WWWSetWidgetColors", &WWWSetWidgetColors},
            {"WWWSetDisabledWidgetColors", &WWWSetDisabledWidgetColors},
            {"WWWSetButtonWidgetColors", &WWWSetButtonWidgetColors},
            {"WWWSetUastringExtension", &WWWSetUastringExtension},
            {"WWWMarkNextItemInDirection", &WWWMarkNextItemInDirection},
            {"WWWResetNavigation", &WWWResetNavigation},
            {"WWWClearHighlight", &WWWClearHighlight},
            {"WWWSetHighlight", &WWWSetHighlight},
            {"WWWGetActiveLinkType", &WWWGetActiveLinkType},
            {"WWWGetBrowserAllocationFunctions", (void**)&WWWGetBrowserAllocationFunctions},
            {"WWWShutdownBrowserAllocationFunctions", (void**)&WWWShutdownBrowserAllocationFunctions},
            {"WWWSetAllocationFunctions", (void**)&WWWSetAllocationFunctions},
            {"WWWHTTPCreateHttpLib", &WWWHTTPCreateHttpLib},
            {"WWWHTTPTerminateHttpLib", &WWWHTTPTerminateHttpLib},
            {"WWWHTTPSessionRunSlice", &WWWHTTPSessionRunSlice},
            {"WWWHTTPInitSession", &WWWHTTPInitSession},
            {"WWWHTTPDeleteSession", &WWWHTTPDeleteSession},
            {"WWWHTTPSetSessionHeader", &WWWHTTPSetSessionHeader},
            {"WWWHTTPRemoveSessionHeader", &WWWHTTPRemoveSessionHeader},
            {"WWWHTTPRemoveAllSessionHeaders", &WWWHTTPRemoveAllSessionHeaders},
            {"WWWHTTPCreateRequest", &WWWHTTPCreateRequest},
            {"WWWHTTPDeleteRequest", &WWWHTTPDeleteRequest},
            {"WWWHTTPSetRequestHeader", &WWWHTTPSetRequestHeader},
            {"WWWHTTPGetRequestHeader", &WWWHTTPGetRequestHeader},
            {"WWWHTTPRemoveRequestHeader", &WWWHTTPRemoveRequestHeader},
            {"WWWHTTPRemoveAllRequestHeaders", &WWWHTTPRemoveAllRequestHeaders},
            {"WWWHTTPGetResponseHeader", &WWWHTTPGetResponseHeader},
            {"WWWHTTPGetResponseHeaders", &WWWHTTPGetResponseHeaders},
            {"WWWHTTPIssue", &WWWHTTPIssue},
            {"WWWHTTPNbActiveRequests", &WWWHTTPNbActiveRequests},
            {"WWWHTTPPostBodyData", &WWWHTTPPostBodyData},
            {"WWWHTTPSetAuthCredentials", &WWWHTTPSetAuthCredentials},
            {"WWWHTTPRemoveAuthCredentials", &WWWHTTPRemoveAuthCredentials},
            {"WWWHTTPSetProxy", &WWWHTTPSetProxy},
            {"WWWHTTPRemoveProxy", &WWWHTTPRemoveProxy},
            {"WWWHTTPEndLoading", &WWWHTTPEndLoading},
            {"WWWAddJSPlugin", (void**)&WWWAddJSPlugin},
            {"WWWAddNSPlugin", &WWWAddNSPlugin},
            {"WWWProtocolWrite", (void**)&WWWProtocolWrite},
            {"WWWProtocolSetMimeType", &WWWProtocolSetMimeType},
            {"WWWProtocolFinished", (void**)&WWWProtocolFinished},
            {"WWWProtocolFailed", (void**)&WWWProtocolFailed},
            {"WWWAddProtocol", (void**)&WWWAddProtocol},
        };

    }  // namespace www

}  // namespace ext_ead

namespace {
    void unresolved_www() {
        OSReport("\nError: call www unlinked function.\n");
    }
}  // namespace
#endif  // IPL_WWW_SURFACE
