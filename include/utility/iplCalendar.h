#ifndef IPL_UTILITY_CALENDAR_H
#define IPL_UTILITY_CALENDAR_H

#include <revolution/os/OSTime.h>

#include <revolution/cdb/CDBDate.h>

#include <cstring>

namespace ipl {
    namespace utility {
        class Date {
            public:
                typedef enum {
                    NO_INIT = 0,
                } HackF;

                // Stupid fucking hack.
                Date(HackF flag) { }

                Date() : year(MIN_YEAR), month(MIN_MONTH), day(MIN_DAY) {}
                Date(int myYear, int myMonth, int myDay) : year(myYear), month(myMonth), day(myDay) {}
                Date(const OSCalendarTime& cal) : year(cal.year), month(cal.mon+1), day(cal.mday) {}
                Date(const Date& date) : year(date.year), month(date.month), day(date.day) {}

                static Date getMaxDate()        { utility::Date date(MAX_YEAR, MAX_MONTH, MAX_DAY); return date; }
                static Date getMinDate()        { utility::Date date(MIN_YEAR, MIN_MONTH, MIN_DAY); return date; }

                CDBDate cdbDateBegin()          { return CDBMakeCDBDate(year, month-1, day, 0, 0, 0); }
                CDBDate cdbDateEnd()            { return CDBMakeCDBDate(year, month-1, day, 23, 59, 59); }

                bool operator==(const Date& rhs) const {
                    return year == rhs.year && month == rhs.month && day == rhs.day;
                }

                bool operator>(const Date& rhs) const {
                    bool result = false;
                    if (year > rhs.year) {
                        result = true;
                    }
                    else if (year == rhs.year) {
                        if (month > rhs.month) {
                            result = true;
                        }
                        else if (month == rhs.month) {
                            if (day > rhs.day) {
                                result = true;
                            }
                        }
                    }

                    return result;
                }

                bool operator<(const Date& rhs) const {
                    bool result = false;
                    if (year < rhs.year) {
                        result = true;
                    }
                    else if (year == rhs.year) {
                        if (month < rhs.month) {
                            result = true;
                        }
                        else if (month == rhs.month) {
                            if (day < rhs.day) {
                                result = true;
                            }
                        }
                    }

                    return result;
                }

                bool operator!=(const Date& rhs) const NO_INLINE {
                    return year != rhs.year || month != rhs.month || day != rhs.day;
                }

                int year;   // 0x00
                int month;  // 0x04
                int day;    // 0x08
        };

        class MinDate : public Date {
            public:
                MinDate() { getMinDate(); }
        };

        class MaxDate : public Date {
            public:
                MaxDate() { getMaxDate(); }
        };

        class Calendar {
            public:
                static void setCalendarTime(OSCalendarTime* newCalendar);

                static void getTomorrow(const Date& src, Date* dest) NO_INLINE {
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
                static void getYesterday(const Date& src, Date* dest) NO_INLINE {
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

                static int getWeek(const Date& date) NO_INLINE {
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

                static int getWeek(int year, int month, int day) NO_INLINE {
                    if (month <= 2) {
                        year--;
                        month += MAX_MONTH;
                    }
                    return (day + (((month * 13) + 8) / 5) + ((year / 400) + ((year + (year / 4)) - (year / 100)))) % 7;
                }

                static void getNextMonth(const Date& src, Date* dest) NO_INLINE {
                    *dest = src;
                    dest->month++;
                    if (dest->month > MAX_MONTH) {
                        dest->month = MIN_MONTH;
                        dest->year++;
                    }
                    dest->day = MIN_DAY;
                }

                static void getLastMonth(const Date& src, Date* dest) NO_INLINE {
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
