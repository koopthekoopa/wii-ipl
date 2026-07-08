#ifndef REVOLUTION_WWW_OPERA_API_H
#define REVOLUTION_WWW_OPERA_API_H

#include <revolution/www_types.h>

#include <revolution/gx/GXEnum.h>

#ifdef __cplusplus
extern "C" {
#endif  // __cplusplus

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

/* TODO */

#ifdef __cplusplus
}
#endif  // __cplusplus

#endif  // REVOLUTION_WWW_OPERA_API_H
