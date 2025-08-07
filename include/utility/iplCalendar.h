#ifndef IPL_UTILITY_CALENDAR_H
#define IPL_UTILITY_CALENDAR_H

#include <revolution/os/OSTime.h>

#include <cstring>

namespace ipl {
    namespace utility {
        class Calendar {
            public:
                static void setCalendarTime(OSCalendarTime* newCalendar);
        };
    }
}

#endif // IPL_UTILITY_CALENDAR_H
