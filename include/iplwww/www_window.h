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
            void* GetTextureBuffer(int, bool, WWWRect**);
            void SetWindowSize(int, int);

        private:
            void ExecWwwEvent_(int eventCode, WWWHandleEventData* dataHandle);
            void HandleNotifyEvent_();
            void TileBlit_();
            u16 convertToRGB565(u32 argb);
            void ReportEventId_(int eventCode, void*);

            struct WindowCmd {
            public:
                // u32 unk_0x00;
                u32 mEventCode;
                WWWHandleEventData* pHandleEventData;
            };
            u16 mWidth;                      // 0x004
            u16 mHeight;                     // 0x006
            BrowserThread* pThread;          // 0x008
            void* mTexBufArr[2][3];          // 0x00C
            WWWRect mTexDisplayRects[2][3];  // 0x024
        public:
            WWWHandlewindow* pWwwWindow;  // 0x084
        private:
            ut_message_cmd<ext_ead::www::BrowserWindow::WindowCmd, 32> mMessage;  // 0x088
            u32 mRenderingMode;                                                   // 0x2ac
        public:
            int unk_0x2b0;     // 0x2b0
            u32 unk_0x2b4[2];  // 0x2b4
            u32 unk_0x2bc;     // 0x2bc
            u32 unk_0x2c0;     // 0x2c0
            u8 unk_0x2c4[6];   // 0x2c4
            // u8[]
        };
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_WWW_WINDOW
