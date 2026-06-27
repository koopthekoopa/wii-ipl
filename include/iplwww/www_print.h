#ifndef IPL_WWW_PRINT_H
#define IPL_WWW_PRINT_H

#include <revolution.h>

#include <stdarg.h>

namespace ext_ead {
    namespace www {
        namespace print {
            void IPLWWWReport(int type, const char* format, ...);
            void IPLWWWVReport(int type, const char* format, va_list args);

            class TickTimer {
            public:
                TickTimer() : start(OSGetTick()) {}
                inline void reset() { start = OSGetTick(); }

                void report(const char* fmt, ...) {
                    end = OSGetTick();

                    va_list vlist;
                    va_start(vlist, fmt);
                    IPLWWWVReport(0, fmt, vlist);
                    va_end(vlist);

                    IPLWWWReport(5, " : %d[ms]\n", OSTicksToMilliseconds(end - start));
                }

            private:
                u32 start;
                u32 end;
            };

            // maybe this was defined in the header?
            // static char* Message[] = {
            //     "[TickTimer]", "[Warning]", "[Info]", "[Debug]", "[[Event]]", NULL,
            // };
            extern const char* Message[6];

#define IPL_WWW_REPORT_REDEFINE_MESSAGE(RESPECT_STRIP)                                                                                               \
    char MSG_TICK_TIMER_TAG[12] = "[TickTimer]";                                                                                                     \
    char MSG_WARNING_TAG[10] = "[Warning]";                                                                                                          \
    char MSG_EVENT_TAG[10] = "[[Event]]";                                                                                                            \
    const char* Message[] = {                                                                                                                        \
        MSG_TICK_TIMER_TAG, MSG_WARNING_TAG,           RESPECT_STRIP ? NULL : "[Info]", RESPECT_STRIP ? NULL : "[Debug]",                            \
        MSG_EVENT_TAG,      RESPECT_STRIP ? NULL : "",                                                                                               \
    };
        }  // namespace print
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_WWW_PRINT_H
