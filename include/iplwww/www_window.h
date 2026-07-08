#ifndef IPL_WWW_WINDOW
#define IPL_WWW_WINDOW

#include <revolution/gx.h>
#include <revolution/types.h>

#include "iplwww/www_browser.h"
#include "iplwww/www_message.h"

namespace ext_ead {
    namespace www {
        class BrowserWindow {
        public:
            BrowserWindow(BrowserThread* thread);
            virtual ~BrowserWindow();

            WWWHandlewindow* CreateWindow(int w, int h, int texW, int texH);
            void CloseWindow();

            void PrevPage();
            void GotoHome();

            void SendNotifyEvent(WWWEvent event, WWWHandleEventData* dataHandle);
            void ExecuteEvent();
            void UpdateTexture();
            void* GetTextureBuffer(int a, bool b, WWWRect** rectPtrOut);
            void SetWindowSize(int w, int h);

            WWWHandlewindow* GetHandleWindow() { return mpWwwWindow; };

        private:
            void ExecWwwEvent_(int eventCode, WWWHandleEventData* dataHandle);
            void HandleNotifyEvent_();
            void TileBlit_();
            u16 convertToRGB565(u32 argb);
            void ReportEventId_(int eventCode, void*);

            struct WindowCmd {
                u32 eventCode;                         // 0x00
                WWWHandleEventData* pHandleEventData;  // 0x04
            };

            u16 mWidth;   // 0x04
            u16 mHeight;  // 0x06

            BrowserThread* mpBrowserThread;  // 0x08

            void* mTexBufArr[2][3];          // 0x0C
            WWWRect mTexDisplayRects[2][3];  // 0x24

            WWWHandlewindow* mpWwwWindow;  // 0x84

        private:
            ut_message_cmd<ext_ead::www::BrowserWindow::WindowCmd, 32> mMessage;  // 0x88
            u32 mRenderingMode;                                                   // 0x2AC

        public:
            int unk_0x2B0;     // 0x2B0
            u32 unk_0x2B4[2];  // 0x2B4
            u32 unk_0x2BC;     // 0x2BC
            u32 unk_0x2C0;     // 0x2C0
            u8 unk_0x2C4[6];   // 0x2C4
        };
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_WWW_WINDOW
