#ifndef IPL_WWW_TRASITION_H
#define IPL_WWW_TRASITION_H

#include <decomp.h>

#include <revolution.h>

#include "iplwww/www_browser.h"
#include "iplwww/www_wiisetting.h"

#include <revolution/www.h>

namespace www {
    namespace trasition {
        enum ScrollState {
            SCROLL_RESET = 0,
            SCROLL_LEFT,
            SCROLL_RIGHT,
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
