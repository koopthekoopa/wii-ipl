#include <math.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

#include <internal/arith.h>
#include <internal/locale.h>
#include <internal/time_glue.h>

// Number of seconds between 1970 and Feb 7, 2036 (6:28:16 UTC)
#define DIFF_SEC_1970_2036 2085978496

#define TM_YEAR_BASE       1900
#define HOURS_PER_HALF_DAY 12
#define DAYS_PER_WEEK      7
#define SECS_PER_MIN       60
#define SECS_PER_HOUR      3600
#define SECS_PER_DAY       86400

char extracted_name[32] = {0};
char asctime_result[26] = {0};
tm gmtime_tm = {0};
tm localtime_tm = {0};

static void extractName(char* dst, const char* names, int target) {
    const char* p = names;
    int i = 0;
    const char* q;

    while (i <= target) {
        q = strchr(p, '|');
        if (i == target) {
            if (q == NULL) {
                strcpy(dst, p);
            } else {
                int len = q - p;
                strncpy(dst, p, len);
                dst[len] = 0;
            }
            break;
        }
        p = q + 1;
        i++;
    }
}

extern const short __msl_month_to_days[] = {
    0, 31, 59, 90, 120, 151, 181,
    212, 243, 273, 304, 334, 365,
    0, 31, 60, 91, 121, 152, 182,
    213, 244, 274, 305, 335, 366
};

char* asctime(const tm* t) {
    char* result = asctime_result;

    if (t == NULL) {
        strcpy(result, "xxx xxx xx xx:xx:xx xxxx\n");
    } else {
        char day[4];
        char mon[4];
        extractName(day, _current_locale.time_cmpt_ptr->Day_Names, t->tm_wday);
        extractName(mon, _current_locale.time_cmpt_ptr->MonthNames, t->tm_mon);
        sprintf(result, "%s %s%3d %.2d:%.2d:%.2d %d\n", day, mon, t->tm_mday, t->tm_hour, t->tm_min, t->tm_sec, t->tm_year + 1900);
    }
    return result;
}

char* ctime(const time_t* t) {
    char day[4];
    char mon[4];
    tm* tm = localtime(t);

    extractName(day, _current_locale.time_cmpt_ptr->Day_Names, tm->tm_wday);
    extractName(mon, _current_locale.time_cmpt_ptr->MonthNames, tm->tm_mon);
    sprintf(asctime_result, "%.3s %.3s %2d %.2d:%.2d:%.2d %4d\n", day, mon, tm->tm_mday, tm->tm_hour, tm->tm_min, tm->tm_sec, tm->tm_year + 1900);
    return asctime_result;
}

tm* gmtime(const time_t* t) {
    __msl_time2tm(*t, &gmtime_tm);
    gmtime_tm.tm_isdst = 0;
    return &gmtime_tm;
}

const unsigned short iso8601NewYearTbl[] = {2, 3, 4, 29, 30, 31, 1};
const int defaultTm[] = {0, 0, 0, 1, 0, 0, 1, 0, -1};

static int leap_days(int year, int month) {
    div_t d4;
    ldiv_t d1000;
    ldiv_t d899;
    int leap;
    int result;

    d4 = div(year, 4);
    result = d4.quot;
    result -= div(year, 100).quot;

    if (year < 100) {
        d899 = __msl_div(year + 899, 1000);
        result += d899.quot;
    } else {
        d1000 = __msl_div(year - 100, 1000);
        result = result + d1000.quot + 1;
    }

    leap = 0;
    if (__msl_mod(year, 4) == 0) {
        if (__msl_mod(year, 100) != 0 || __msl_mod(year, 400) == 100) {
            leap = 1;
        }
    }

    if (leap) {
        if (year < 0) {
            if (month > 1) {
                result += 1;
            }
        } else {
            if (month <= 1) {
                result -= 1;
            }
        }
    }

    return result;
}

void __msl_time2tm(unsigned long timep, tm* tm) {
    int year;
    int t;
    int leap;
    int month;
    unsigned long days;
    unsigned long rem;

    rem = timep - DIFF_SEC_1970_2036;

    if (tm == NULL) {
        return;
    }

    tm->tm_isdst = __isdst();

    days = rem / 86400;
    rem = rem - days * 86400;

    tm->tm_wday = (days + 1) % 7;

    year = 0;
    for (;;) {
        leap = 0;
        if (__msl_mod(year, 4) == 0) {
            t = 0;
            if (__msl_mod(year, 100) != 0 || __msl_mod(year, 400) == 100) {
                t = 1;
            }
            if (t) {
                leap = 1;
            }
        }

        if (days < 365 + (leap != 0)) {
            break;
        }
        days -= 365 + (leap != 0);
        year++;
    }

    tm->tm_year = year;
    tm->tm_yday = days;

    month = 0;
    leap = 0;
    if (__msl_mod(year, 4) == 0) {
        if (__msl_mod(year, 100) != 0 || __msl_mod(year, 400) == 100) {
            leap = 1;
        }
    }

    for (;;) {
        const short* p = (const short*)((const char*)__msl_month_to_days + leap * 26);
        if (days < p[month + 1]) {
            days -= p[month];
            break;
        }
        month++;
    }

    tm->tm_mon = month;
    tm->tm_mday = days + 1;

    tm->tm_hour = rem / 3600;
    rem -= tm->tm_hour * 3600;
    tm->tm_min = rem / 60;
    tm->tm_sec = rem - tm->tm_min * 60;
}

static int normalizeTimeUnit(int* src, long divisor, int* dst) {
    ldiv_t d = __msl_div(*src, divisor);
    *src = d.rem;
    return __msl_add(dst, d.quot);
}

static int __tm2time(tm* tm, time_t* timep) {
    if (tm == NULL || timep == NULL) {
        return 0;
    }

    tm->tm_mday -= 1;

    do {
        if (!normalizeTimeUnit(&tm->tm_sec, 60, &tm->tm_min) ||
            !normalizeTimeUnit(&tm->tm_min, 60, &tm->tm_hour) ||
            !normalizeTimeUnit(&tm->tm_hour, 24, &tm->tm_mday) ||
            !normalizeTimeUnit(&tm->tm_mon, 12, &tm->tm_year)) {
            break;
        }

        {
            long day = tm->tm_year;
            long result;
            long total;

            if (!__msl_lmul(&day, 365)) {
                break;
            }
            if (!__msl_ladd(&day, leap_days(tm->tm_year, tm->tm_mon))) {
                break;
            }
            if (!__msl_ladd(&day, __msl_month_to_days[tm->tm_mon])) {
                break;
            }
            if (!__msl_ladd(&day, tm->tm_mday)) {
                break;
            }

            if (day < 0 || day > 0xC22Eu) {
                break;
            }

            result = tm->tm_hour * 3600 + tm->tm_min * 60 + tm->tm_sec;
            total = day * 86400;
            if (result > 0xFFFFFFFF - total) {
                break;
            }

            result += total;
            *timep = result + DIFF_SEC_1970_2036;
            __msl_time2tm(result + DIFF_SEC_1970_2036, tm);
            return 1;
        }
    } while (0);

    return 0;
}

clock_t clock() {
    return __get_clock();
}

time_t mktime(tm* timeptr) {
    tm temp;
    time_t result;

    temp = *timeptr;
    if (!__tm2time(&temp, &result)) {
        return -1;
    }

    *timeptr = temp;
    return result;
}

tm* localtime(const time_t* sourceTime) {
    time_t t;

    if (sourceTime == NULL) {
        localtime_tm.tm_sec = 0;
        localtime_tm.tm_min = 0;
        localtime_tm.tm_hour = 0;
        localtime_tm.tm_mday = 1;
        localtime_tm.tm_mon = 0;
        localtime_tm.tm_year = 0;
        localtime_tm.tm_wday = 1;
        localtime_tm.tm_yday = 0;
        localtime_tm.tm_isdst = -1;
        localtime_tm.tm_isdst = __isdst();
        return &localtime_tm;
    }

    t = *sourceTime;
    __msl_time2tm(t, &localtime_tm);
    localtime_tm.tm_isdst = __isdst();
    return &localtime_tm;
}

static int emit(char* str, int len, size_t* size, const char* format, ...) {
    va_list ap;

    va_start(ap, format);

    if (len > *size) {
        va_end(ap);
        return 0;
    }

    *size -= len;
    return vsprintf(str, format, ap);
}

time_t __MSL_ISO8601NewYear(int year) {
    short dayTbl[8];
    tm tm;
    struct tm t;
    struct tm t2;
    time_t time;
    time_t result;
    const unsigned short* p = iso8601NewYearTbl;
    short* d = dayTbl;
    int i;

    for (i = 0; i < 7; i++) {
        *d++ = (short)*p++;
    }

    tm.tm_sec = 0;
    tm.tm_min = 0;
    tm.tm_hour = 0;
    tm.tm_mon = 0;
    tm.tm_isdst = -1;
    tm.tm_mday = 0;
    tm.tm_wday = 7;
    tm.tm_year = year;

    while (tm.tm_wday != 0 && tm.tm_mday <= 7) {
        tm.tm_mday += 1;
        t = tm;
        if (__tm2time(&t, &time)) {
            tm = t;
        }
    }

    tm.tm_mday = dayTbl[tm.tm_mday - 1];
    if (tm.tm_mday >= 29) {
        tm.tm_mon = 11;
        tm.tm_year -= 1;
    }

    t2 = tm;
    if (__tm2time(&t2, &result)) {
        return result;
    }
    return -1;
}

int __MSL_ISO8601Week(const tm* tm, int* result) {
    struct NY {
        int year;
        time_t t;
    } ny0, ny1, ny2;
    struct tm t;
    struct tm t3;
    time_t time;
    time_t tval;
    const struct NY* sel;
    double diff;

    t = *tm;

    ny0.year = tm->tm_year - 1;
    ny0.t = __MSL_ISO8601NewYear(tm->tm_year - 1);
    ny1.year = tm->tm_year;
    ny1.t = __MSL_ISO8601NewYear(tm->tm_year);
    ny2.year = tm->tm_year + 1;
    ny2.t = __MSL_ISO8601NewYear(tm->tm_year + 1);

    t3 = t;
    tval = (__tm2time(&t3, &time)) ? time : -1;

    if (ny0.t <= tval && tval < ny1.t) {
        sel = &ny0;
    } else if (ny1.t <= tval && tval < ny2.t) {
        sel = &ny1;
    } else {
        sel = &ny2;
    }

    *result = sel->year;

    if (tval >= sel->t) {
        diff = (double)(tval - sel->t);
    } else {
        diff = -(double)(sel->t - tval);
    }

    return (int)(diff / SECS_PER_DAY / DAYS_PER_WEEK) + 1;
}

size_t strftime(char* strDest, size_t maxSize, const char* format, const tm* timePtr) {
    size_t totalWritten;
    tm tmCopy;
    tm defaultTime;
    tm tmBuf;
    tm localTm;
    tm gmTm;
    char nameBuf[32];
    size_t remaining;
    int isoWeek;
    time_t convertedTime;
    time_t now;
    time_t localSeconds;
    time_t gmSeconds;
    time_t localSecs;
    time_t gmSecs;
    tm* gmPtr;
    const char* pct;
    char convChar;
    int written;
    const tm* defaultTmPtr;
    struct __locale* locale;

    defaultTmPtr = (const tm*)defaultTm;
    locale = &_current_locale;
    defaultTime = *defaultTmPtr;
    remaining = maxSize - 1;
    if (remaining == 0) {
        return 0;
    }
    tmCopy = defaultTime;
    if (timePtr != NULL) {
        tmCopy = *timePtr;
        tmBuf = tmCopy;
        if (!__tm2time(&tmBuf, &convertedTime)) {
            localSecs = -1;
        } else {
            tmCopy = tmBuf;
            localSecs = convertedTime;
        }
        if (localSecs == -1) {
            tmCopy = defaultTime;
        }
    }

    totalWritten = 0;

    while (*format != '\0') {
        pct = strchr(format, '%');
        if (pct == NULL) {
            size_t len = strlen(format);
            if (len == 0) {
                break;
            }
            if (len <= remaining) {
                memcpy(strDest, format, len);
                totalWritten += len;
                strDest += len;
                remaining -= len;
                break;
            }
            return 0;
        }

        {
            size_t len = pct - format;
            if (len != 0) {
                if (len <= remaining) {
                    memcpy(strDest, format, len);
                    totalWritten += len;
                    strDest += len;
                    remaining -= len;
                } else {
                    return 0;
                }
            }
        }

        format = pct;
        if (format[1] == 'E' || format[1] == 'O') {
            format += 1;
        }
        convChar = (unsigned char)format[1];

        switch (convChar) {
            case 'a': {
                int i = 0;
                const char* namePtr = locale->time_cmpt_ptr->Day_Names;
                int target = tmCopy.tm_wday * 2;
                const char* sep;
                int len;

                while (i <= target) {
                    sep = strchr(namePtr, '|');
                    if (i == target) {
                        if (sep == NULL) {
                            strcpy(extracted_name, namePtr);
                        } else {
                            len = sep - namePtr;
                            strncpy(extracted_name, namePtr, len);
                            extracted_name[len] = 0;
                        }
                        break;
                    }
                    namePtr = sep + 1;
                    i++;
                }

                strcpy(nameBuf, extracted_name);
                len = strlen(nameBuf);
                written = emit(strDest, len, &remaining, "%s", nameBuf);
                break;
            }
            case 'A': {
                int target = tmCopy.tm_wday * 2 + 1;
                const char* namePtr = locale->time_cmpt_ptr->Day_Names;
                int i = 0;
                const char* sep;
                int len;

                while (i <= target) {
                    sep = strchr(namePtr, '|');
                    if (i == target) {
                        if (sep == NULL) {
                            strcpy(extracted_name, namePtr);
                        } else {
                            len = sep - namePtr;
                            strncpy(extracted_name, namePtr, len);
                            extracted_name[len] = 0;
                        }
                        break;
                    }
                    namePtr = sep + 1;
                    i++;
                }

                strcpy(nameBuf, extracted_name);
                len = strlen(nameBuf);
                written = emit(strDest, len, &remaining, "%s", nameBuf);
                break;
            }
            case 'b':
            case 'h': {
                int target = tmCopy.tm_mon * 2;
                const char* namePtr = locale->time_cmpt_ptr->MonthNames;
                int i = 0;
                const char* sep;
                int len;

                while (i <= target) {
                    sep = strchr(namePtr, '|');
                    if (i == target) {
                        if (sep == NULL) {
                            strcpy(extracted_name, namePtr);
                        } else {
                            len = sep - namePtr;
                            strncpy(extracted_name, namePtr, len);
                            extracted_name[len] = 0;
                        }
                        break;
                    }
                    namePtr = sep + 1;
                    i++;
                }

                written = emit(strDest, 3, &remaining, "%.3s", extracted_name);
                break;
            }
            case 'B': {
                int target = tmCopy.tm_mon * 2 + 1;
                const char* namePtr = locale->time_cmpt_ptr->MonthNames;
                int i = 0;
                const char* sep;
                int len;

                while (i <= target) {
                    sep = strchr(namePtr, '|');
                    if (i == target) {
                        if (sep == NULL) {
                            strcpy(extracted_name, namePtr);
                        } else {
                            len = sep - namePtr;
                            strncpy(extracted_name, namePtr, len);
                            extracted_name[len] = 0;
                        }
                        break;
                    }
                    namePtr = sep + 1;
                    i++;
                }

                strcpy(nameBuf, extracted_name);
                len = strlen(nameBuf);
                written = emit(strDest, len, &remaining, "%s", nameBuf);
                break;
            }
            case 'c': {
                written = strftime(strDest, remaining + 1, locale->time_cmpt_ptr->DateTime_Format, &tmCopy);
                remaining -= written;
                break;
            }
            case 'd': {
                written = emit(strDest, 2, &remaining, "%.2d", tmCopy.tm_mday);
                break;
            }
            case 'D': {
                written = strftime(strDest, remaining + 1, "%m/%d/%y", &tmCopy);
                break;
            }
            case 'e': {
                written = emit(strDest, 2, &remaining, "%2d", tmCopy.tm_mday);
                break;
            }
            case 'F': {
                written = emit(strDest, 10, &remaining, "%.4d-%.2d-%.2d", tmCopy.tm_year + TM_YEAR_BASE, tmCopy.tm_mon + 1, tmCopy.tm_mday);
                break;
            }
            case 'g': {
                __MSL_ISO8601Week(timePtr, &isoWeek);
                written = emit(strDest, 2, &remaining, "%.2d", isoWeek % 100);
                break;
            }
            case 'G': {
                __MSL_ISO8601Week(timePtr, &isoWeek);
                written = emit(strDest, 4, &remaining, "%.4d", isoWeek + TM_YEAR_BASE);
                break;
            }
            case 'H': {
                written = emit(strDest, 2, &remaining, "%.2d", tmCopy.tm_hour);
                break;
            }
            case 'I': {
                int hour = tmCopy.tm_hour % HOURS_PER_HALF_DAY;
                int hour12 = (hour == 0) ? HOURS_PER_HALF_DAY : hour;
                const char* fmt = "%.2d";
                written = emit(strDest, 2, &remaining, fmt, hour12);
                break;
            }
            case 'j': {
                written = emit(strDest, 3, &remaining, "%.3d", tmCopy.tm_yday + 1);
                break;
            }
            case 'm': {
                written = emit(strDest, 2, &remaining, "%.2d", tmCopy.tm_mon + 1);
                break;
            }
            case 'M': {
                written = emit(strDest, 2, &remaining, "%.2d", tmCopy.tm_min);
                break;
            }
            case 'n': {
                written = emit(strDest, 2, &remaining, "\n");
                break;
            }
            case 'p': {
                const char* namePtr = locale->time_cmpt_ptr->am_pm;
                const char* sep;
                int i = 0;
                int target = (tmCopy.tm_hour >= HOURS_PER_HALF_DAY);
                int len;

                while (i <= target) {
                    sep = strchr(namePtr, '|');
                    if (i == target) {
                        if (sep == NULL) {
                            strcpy(extracted_name, namePtr);
                        } else {
                            len = sep - namePtr;
                            strncpy(extracted_name, namePtr, len);
                            extracted_name[len] = 0;
                        }
                        break;
                    }
                    namePtr = sep + 1;
                    i++;
                }

                len = strlen(extracted_name);
                written = emit(strDest, len, &remaining, "%s", extracted_name);
                break;
            }
            case 'r': {
                written = strftime(strDest, remaining + 1, locale->time_cmpt_ptr->Twelve_hr_format, &tmCopy);
                remaining -= written;
                break;
            }
            case 'R': {
                written = strftime(strDest, remaining + 1, "%H:%M", &tmCopy);
                remaining -= written;
                break;
            }
            case 'S': {
                written = emit(strDest, 2, &remaining, "%.2d", tmCopy.tm_sec);
                break;
            }
            case 't': {
                written = emit(strDest, 2, &remaining, "\t");
                break;
            }
            case 'T': {
                written = strftime(strDest, remaining + 1, "%H:%M:%S", &tmCopy);
                remaining -= written;
                break;
            }
            case 'u': {
                if (tmCopy.tm_wday == 0) {
                    written = emit(strDest, 1, &remaining, "7");
                } else {
                    written = emit(strDest, 1, &remaining, "%.1d", tmCopy.tm_wday);
                }
                break;
            }
            case 'U': {
                int yday = tmCopy.tm_yday;
                int weekDays = yday - __msl_mod(tmCopy.tm_wday, DAYS_PER_WEEK);
                int weekNum = (weekDays < 0) ? 0 : weekDays / DAYS_PER_WEEK + 1;
                written = emit(strDest, 2, &remaining, "%.2d", weekNum);
                break;
            }
            case 'V': {
                int weekNum = __MSL_ISO8601Week(timePtr, &isoWeek);
                written = emit(strDest, 2, &remaining, "%.2d", weekNum);
                break;
            }
            case 'w': {
                written = emit(strDest, 1, &remaining, "%.1d", tmCopy.tm_wday);
                break;
            }
            case 'W': {
                int yday = tmCopy.tm_yday;
                int weekDays = yday - __msl_mod(tmCopy.tm_wday - 1, DAYS_PER_WEEK);
                int weekNum = (weekDays < 0) ? 0 : weekDays / DAYS_PER_WEEK + 1;
                written = emit(strDest, 2, &remaining, "%.2d", weekNum);
                break;
            }
            case 'x': {
                written = strftime(strDest, remaining + 1, locale->time_cmpt_ptr->Date_Format, &tmCopy);
                remaining -= written;
                break;
            }
            case 'X': {
                written = strftime(strDest, remaining + 1, locale->time_cmpt_ptr->Time_Format, &tmCopy);
                remaining -= written;
                break;
            }
            case 'C':
            case 'y': {
                int year = tmCopy.tm_year % 100;
                written = emit(strDest, 2, &remaining, "%.2d", year);
                break;
            }
            case 'Y': {
                written = emit(strDest, 4, &remaining, "%.4d", tmCopy.tm_year + TM_YEAR_BASE);
                break;
            }
            case 'z': {
                time_t currentTime;
                double diffSeconds;
                double diffMinutes;
                double hoursOffset;
                int minutesOffset;

                now = __get_time();
                currentTime = now;
                if (__to_gm_time(&now) == 0) {
                    gmPtr = NULL;
                } else {
                    __msl_time2tm(now, &gmtime_tm);
                    gmtime_tm.tm_isdst = 0;
                    gmPtr = &gmtime_tm;
                }

                if (gmPtr == NULL) {
                    written = emit(strDest, 4, &remaining, "0000");
                } else {
                    __msl_time2tm(currentTime, &localtime_tm);
                    localtime_tm.tm_isdst = __isdst();
                    localTm = localtime_tm;
                    localSecs = (__tm2time(&localTm, &localSeconds)) ? localSeconds : -1;
                    gmTm = *gmPtr;
                    if (__tm2time(&gmTm, &gmSeconds) == 0) {
                        gmSecs = -1;
                    } else {
                        *gmPtr = gmTm;
                        gmSecs = gmSeconds;
                    }
                    if (localSecs >= gmSecs) {
                        diffSeconds = (double)(localSecs - gmSecs);
                    } else {
                        diffSeconds = -((double)(gmSecs - localSecs));
                    }
                    diffMinutes = diffSeconds / SECS_PER_MIN;
                    hoursOffset = (double)((int)diffSeconds / SECS_PER_HOUR);
                    minutesOffset = (int)(diffMinutes - SECS_PER_MIN * hoursOffset);
                    if (minutesOffset < 0) {
                        minutesOffset = -minutesOffset;
                    }
                    written = emit(strDest, 5, &remaining, "%+03.0f%02.0f", hoursOffset, (double)minutesOffset);
                }
                break;
            }
            case 'Z': {
                const char* tz = locale->time_cmpt_ptr->TimeZone;
                if (*tz == 0) {
                    written = 0;
                    *strDest = 0;
                } else {
                    size_t len = strlen(tz);
                    written = emit(strDest, len, &remaining, "%s", tz);
                }
                break;
            }
            case '%': {
                written = emit(strDest, 2, &remaining, "%%", convChar);
                break;
            }
            default: {
                written = emit(strDest, 2, &remaining, "%%%c", format[1]);
                break;
            }
        }

        if (written == 0) {
            return 0;
        }
        totalWritten += written;
        strDest += written;
        format += 2;
    }

    *strDest = 0;
    if (totalWritten > maxSize) {
        return 0;
    }
    return totalWritten;
}
