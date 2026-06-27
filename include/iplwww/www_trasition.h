#ifndef IPL_WWW_TRASITION_H
#define IPL_WWW_TRASITION_H

#include <decomp.h>

#include <revolution.h>

#include "iplwww/www_js.h"
#include "iplwww/www_wiisetting.h"

#include "iplwww/www_browser.h"

namespace www {
    namespace trasition {
        // typedef struct ScrollState {
        //     u8 unk_0x00[0x28];
        //     ext_ead::www::BrowserThread* unk_0x28;
        //     u32 unk_0x2c;
        //     u32 unk_0x30;
        //     u32 unk_0x34;
        //     u32 unk_0x38;
        // } ScrollState;

        enum ScrollState {
            SCROLL_RESET = 0,
            SCROLL_LEFT = 1,
            SCROLL_RIGHT = 2,
        };

        static WWWJSCap cap;

        static JSCallbackSet* opera_callbacks;
        static ScrollState ScrollState_;

        bool allow_access(const char*, const char*, int);
        void AddJsPlugin();

        int globalGetter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
        int ObjectConstructor_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);
        int Getter_(WWWJSPluginObj*, const char*, WWWJSPluginValue*);
        int LeftScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);
        int RightScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*);

        ScrollState GetScrollState();
        void ResetScrollState();
    }  // namespace trasition
}  // namespace www

#endif  // IPL_WWW_TRASITION_H
