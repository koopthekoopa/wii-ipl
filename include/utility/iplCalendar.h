#ifndef IPL_UTILITY_CALENDAR_H
#define IPL_UTILITY_CALENDAR_H

#include <revolution/os/OSTime.h>

#include <revolution/cdb/CDBDate.h>

#include <cstring>

namespace ipl {
    namespace utility {
        class Date {
            public:
                Date() : year(MIN_YEAR), month(MIN_MONTH), day(MIN_DAY) {}
                Date(int myYear, int myMonth, int myDay) : year(myYear), month(myMonth), day(myDay) {}
                Date(const OSCalendarTime& cal) : year(cal.year), month(cal.mon), day(cal.mday) {}
                Date(const Date& date) : year(date.year), month(date.month), day(date.day) {}

                void    getMaxDate()            { year = MAX_YEAR; month = MAX_MONTH; day = MAX_DAY; }
                void    getMinDate()            { year = MIN_YEAR; month = MIN_MONTH; day = MIN_DAY; }

                CDBDate cdbDateBegin()          { return CDBMakeCDBDate(year, month-1, day, 0, 0, 0); }
                CDBDate cdbDateEnd()            { return CDBMakeCDBDate(year, month-1, day, 23, 59, 59); }

                bool    operator==(const Date& rhs) const { return year == rhs.year && month == rhs.month && day == rhs.day; }

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
                        if (dest->month > MAX_MONTH) {
                            dest->month = MIN_MONTH;
                            dest->year++;
                        }
                        dest->day = MIN_DAY;
                    }
                }
                static void getYesterday(const Date& src, Date* dest) {
                    *dest = src;
                    dest->day--;
                    if (dest->day <= 0) {
                        dest->month--;
                        if (dest->month <= 0) {
                            dest->month = MAX_MONTH;
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
                        month += MAX_MONTH;
                    }
                    return (day + (((month * 13) + 8) / 5) + ((year / 400) + ((year + (year / 4)) - (year / 100)))) % 7;
                }

                static int getWeek(int year, int month, int day) {
                    if (month <= 2) {
                        year--;
                        month += MAX_MONTH;
                    }
                    return (day + (((month * 13) + 8) / 5) + ((year / 400) + ((year + (year / 4)) - (year / 100)))) % 7;
                }

                static void getNextMonth(const Date& src, Date* dest) {
                    *dest = src;
                    dest->month++;
                    if (dest->month > MAX_MONTH) {
                        dest->month = MIN_MONTH;
                        dest->year++;
                    }
                    dest->day = MIN_DAY;
                }

                static void getLastMonth(const Date& src, Date* dest) {
                    *dest = src;
                    dest->month--;
                    if (dest->month <= 0) {
                        dest->month--;
                        if (dest->month <= 0) {
                            dest->month = MAX_MONTH;
                            dest->year--;
                        }
                    }
                    dest->day = getDays(dest->year, dest->month);
                }
        };
    }
}

#endif // IPL_UTILITY_CALENDAR_H
