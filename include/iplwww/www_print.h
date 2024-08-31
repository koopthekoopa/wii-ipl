#ifndef IPL_WWW_PRINT_H
#define IPL_WWW_PRINT_H

#include <revolution.h>

#include <stdarg.h>

namespace ext_ead {
    namespace www {
        namespace print {
            void IPLWWWReport(int type, const char* format, ...);
            void IPLWWWVReport(int type, const char* format,  __va_list_struct* args);
        }
    }
}

#endif // IPL_WWW_PRINT_H

