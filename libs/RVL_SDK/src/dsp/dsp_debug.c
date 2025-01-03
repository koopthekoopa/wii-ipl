#include "config.h"

#include <revolution/os.h>

#include <stdarg.h>

// Stubbed for release
void __DSP_debug_printf(const char* format, ...) {
#ifdef ENABLE_DSP_REPORT
    va_list list;
    va_start(list, format);
    OSVReport(format, list);
    va_end(list);
#endif
}


