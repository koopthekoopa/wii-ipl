#ifndef IPL_WWW_PRINT_H
#define IPL_WWW_PRINT_H

#include <revolution.h>

#include <cstdarg>

namespace ext_ead {
    namespace www {
        namespace print {
            void IPLWWWReport(int type, const char* format, ...);
            void IPLWWWVReport(int type, const char* format, va_list args);

            enum {
                WWW_TICK_TIMER = 0,
                WWW_WARNING,
                WWW_INFO,
                WWW_DEBUG,
                WWW_EVENT,
                WWW_REPORT,  // ?
            };

            class TickTimer {
            public:
                TickTimer() : start(OSGetTick()) {}
                inline void reset() { start = OSGetTick(); }

                void report(const char* fmt, ...) {
                    end = OSGetTick();

                    va_list vlist;
                    va_start(vlist, fmt);
                    IPLWWWVReport(WWW_TICK_TIMER, fmt, vlist);
                    va_end(vlist);

                    IPLWWWReport(WWW_REPORT, " : %d[ms]\n", OSTicksToMilliseconds(end - start));
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

            // TODO: sort out this messy match hack
#define IPL_WWW_REPORT_REDEFINE_MESSAGE(RESPECT_STRIP)                                                                                               \
    char MSG_TICK_TIMER_TAG[12] = "[TickTimer]";                                                                                                     \
    char MSG_WARNING_TAG[10] = "[Warning]";                                                                                                          \
    char MSG_EVENT_TAG[10] = "[[Event]]";                                                                                                            \
    const char* Message[] = {                                                                                                                        \
        RESPECT_STRIP ? NULL : MSG_TICK_TIMER_TAG, RESPECT_STRIP ? NULL : MSG_WARNING_TAG, RESPECT_STRIP ? NULL : "[Info]",                          \
        RESPECT_STRIP ? NULL : "[Debug]",          RESPECT_STRIP ? "" : MSG_EVENT_TAG,     RESPECT_STRIP ? NULL : "",                                \
    };
        }  // namespace print
    }  // namespace www
}  // namespace ext_ead

#endif  // IPL_WWW_PRINT_H
