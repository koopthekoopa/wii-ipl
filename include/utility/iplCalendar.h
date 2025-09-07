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

        class Date {
            public:
                Date() : year(2000), month(1), day(1) {}
                Date(int myYear, int myMonth, int myDay) : year(myYear), month(myMonth), day(myDay) {}
                Date(const OSCalendarTime& cal) : year(cal.year), month(cal.mon), day(cal.mday) {}

                void    getMaxDate()    { year = 2035; month = 12; day = 31; }
                void    getMinDate()    { year = 2000; month = 1;  day = 1;  }

            private:
                int year;   // 0x00
                int month;  // 0x04
                int day;    // 0x08
        };
    }
}

#endif // IPL_UTILITY_CALENDAR_H
