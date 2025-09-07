#ifndef IPL_UTILITY_CALENDAR_H
#define IPL_UTILITY_CALENDAR_H

#include <revolution/os/OSTime.h>

#include <cstring>

namespace ipl {
    namespace utility {
        class Date {
            public:
                Date() : year(2000), month(1), day(1) {}
                Date(int myYear, int myMonth, int myDay) : year(myYear), month(myMonth), day(myDay) {}
                Date(const OSCalendarTime& cal) : year(cal.year), month(cal.mon), day(cal.mday) {}

                void    getMaxDate()    { year = 2035; month = 12; day = 31; }
                void    getMinDate()    { year = 2000; month = 1;  day = 1;  }

                int year;   // 0x00
                int month;  // 0x04
                int day;    // 0x08
        };

        class Calendar {
            public:
                static void setCalendarTime(OSCalendarTime* newCalendar);

                static void getTomorrow(const Date& src, Date* dest) {
                    *dest = src;
                    int days = getDays(dest->year, dest->month);
                    dest->day++;
                    if (dest->day > days) {
                        dest->month++;
                        if (dest->month > 12) {
                            dest->month = 1;
                            dest->year++;
                        }
                        dest->day = 1;
                    }
                }
                static void getYesterday(const Date& src, Date* dest) {
                    *dest = src;
                    dest->day--;
                    if (dest->day <= 0) {
                        dest->month--;
                        if (dest->month <= 0) {
                            dest->month = 12;
                            dest->year--;
                        }
                        dest->day = getDays(dest->year, dest->month);
                    }
                }

                static int getDays(int year, int month) NO_INLINE {
                    u16 days[] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
                    BOOL check = year % 4 == 0 && year % 100 != 0 || year % 400 == 0 ? TRUE : FALSE;
                    if (check) {
                        days[1] = 29;
                    }
                    return days[month-1];
                }

                static int getWeek(const Date& date) {
                    int month, year, day;
                    month = date.month;
                    day = date.day;
                    year = date.year;
                    if (month <= 2) {
                        year--;
                        month += 12;
                    }
                    return (day + (((month * 13) + 8) / 5) + ((year / 400) + ((year + (year / 4)) - (year / 100)))) % 7;
                }

                static int getWeek(int year, int month, int day) {
                    if (month <= 2) {
                        year--;
                        month += 12;
                    }
                    return (day + (((month * 13) + 8) / 5) + ((year / 400) + ((year + (year / 4)) - (year / 100)))) % 7;
                }

                static void getNextMonth(const Date& src, Date* dest) {
                    *dest = src;
                    dest->month++;
                    if (dest->month > 12) {
                        dest->month = 1;
                        dest->year++;
                    }
                    dest->day = 1;
                }

                static void getLastMonth(const Date& src, Date* dest) {
                    *dest = src;
                    dest->month--;
                    if (dest->month <= 0) {
                        dest->month--;
                        if (dest->month <= 0) {
                            dest->month = 12;
                            dest->year--;
                        }
                    }
                    dest->day = getDays(dest->year, dest->month);
                }
        };
    }
}

#endif // IPL_UTILITY_CALENDAR_H
