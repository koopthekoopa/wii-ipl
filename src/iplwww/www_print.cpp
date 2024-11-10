#include "iplwww/www_print.h"

#include "config.h"

#include <stdio.h>

namespace ext_ead {
    namespace www {
        namespace print {
            #define WWW_REPORT_LENGTH   1022
            
            /**
             * @note Address: 0x8136E894
             * @note Size: 0x68
             * @note Was stubbed out for release
             */
            void IPLWWWReport(int type, const char* format, ...) {
                va_list args;
                
                va_start(args, format);
#ifdef ENABLE_IPL_WWW_REPORT
                IPLWWWVReport(type, format, args);
#endif // ENABLE_IPL_WWW_REPORT
                va_end(args);
            }
            
            /**
             * @note Address: 0x8136E8FC
             * @note Size: 0x4
             * @note Was stubbed out for release
             */
            void IPLWWWVReport(int type, const char* format, va_list args) {
#ifdef ENABLE_IPL_WWW_REPORT
                char str[WWW_REPORT_LENGTH + 2];

                vsnprintf(str, WWW_REPORT_LENGTH, format, args);

                str[WWW_REPORT_LENGTH + 1] = str[WWW_REPORT_LENGTH] = 0;

                OSReport("[%s] %s", Message, str);
#endif // ENABLE_IPL_WWW_REPORT
            }
        }
    }
}


