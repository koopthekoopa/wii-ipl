#include "iplwww/www_trasition.h"

#include <string.h>

namespace www {
    namespace trasition {
        bool allow_access(const char*, const char*, int) {
            return true;
        }

        static const char* globalNames[2] = {"wiiTrasition", NULL};

        void AddJsPlugin() {
            cap.name = globalNames;
            cap.unk_0x04 = NULL;
            cap.getter = &globalGetter_;
            cap.unk_0x0C = NULL;
            cap.unk_0x10 = NULL;
            cap.unk_0x14 = NULL;
            cap.unk_0x18 = NULL;
            cap.allowAccess = allow_access;
            WWWAddJSPlugin("wiiTrasition.dll", &cap, &opera_callbacks);
            ScrollState_ = SCROLL_RESET;
            OSReport("WWW_TRASITION: AddJSPlugin()\n");
            return;
        }

        int globalGetter_(WWWJSPluginObj* obj, const char* str, WWWJSPluginValue* val) {
            WWWJSPluginValueData data;

            if (strcmp(str, "wiiTrasition") == 0) {
                OSReport("WWW_TRASITION: call globalGetter_()\n");
                if (opera_callbacks->globalGet(obj, 0, 0, 0, ObjectConstructor_, "", 0, &data) < 0) {
                    // is this WWWError or it's own thing?
                    return 10;
                } else {
                    val->ty = 0;
                    val->data.jsObj = data.jsObj;
                    return 7;
                }
            } else {
                return 8;
            }
        }

        int ObjectConstructor_(WWWJSPluginObj* objA, WWWJSPluginObj* objB, int valInt, WWWJSPluginValue* valA, WWWJSPluginValue* valB) {
            WWWJSPluginValueData data;

            if (valInt != 0) {
                return 19;
            }
            if (opera_callbacks->construct(objB, Getter_, 0, 0, &data) < 0) {
                return 18;
            }

            valB->ty = 0;
            valB->data.jsObj = data.jsObj;
            *(u32*)data.jsObj = 0;

            return 16;
        }

        int Getter_(WWWJSPluginObj* obj, const char* str, WWWJSPluginValue* val) {
            void* objLeft;
            void* objRight;

            if (strcmp(str, "LeftScroll") == 0) {
                if (opera_callbacks->globalGet(obj, 0, 0, LeftScroll_, LeftScroll_, "", 0, (WWWJSPluginValueData*)&objLeft) < 0) {
                    return 10;
                }

                val->ty = 0;
                val->data.jsObj = objLeft;
                return 7;
            }
            if (strcmp(str, "RightScroll") == 0) {
                if (opera_callbacks->globalGet(obj, 0, 0, RightScroll_, RightScroll_, "", 0, (WWWJSPluginValueData*)&objRight) < 0) {
                    return 10;
                }

                val->ty = 0;
                val->data.jsObj = objRight;
                return 7;
            }
            return 8;
        }

        int LeftScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*) {
            ext_ead::www::print::IPLWWWReport(ext_ead::www::print::WWW_DEBUG, "Left Scroll Set!!\n");
            ScrollState_ = SCROLL_LEFT;
            return 17;
        }

        int RightScroll_(WWWJSPluginObj*, WWWJSPluginObj*, int, WWWJSPluginValue*, WWWJSPluginValue*) {
            ext_ead::www::print::IPLWWWReport(ext_ead::www::print::WWW_DEBUG, "Right Scroll Set.!!\n");
            ScrollState_ = SCROLL_RIGHT;
            return 17;
        }

        ScrollState GetScrollState() {
            return ScrollState_;
        }

        void ResetScrollState() {
            ScrollState_ = SCROLL_RESET;
        }
    }  // namespace trasition
}  // namespace www
