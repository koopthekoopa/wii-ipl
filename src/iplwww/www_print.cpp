#include <config.h>

#include <revolution.h>

#include <stdarg.h>

namespace ext_ead {
    namespace www {
        namespace print {
            /**
             * @note Address: 0x8136E894
             * @note Size: 0x68
             * @note Was stubbed out for release
             */
            void IPLWWWReport(int type, const char* format, ...) {
                va_list args;
                
                va_start(args, format);
                // stub
                va_end(args);
            }
            
            /**
             * @note Address: 0x8136E8FC
             * @note Size: 0x4
             * @note Was stubbed out for release
             */
            void IPLWWWVReport(int type, const char* format,  __va_list_struct* args) {
                // stub
            }
        }
    }
}


