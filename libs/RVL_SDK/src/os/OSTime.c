#include <revolution/os.h>
#include <private/os.h>

#include <private/exi.h>

#define MICROSEC_MAX    1000
#define MILLISEC_MAX    1000
#define MONTH_MAX       12
#define WEEK_DAY_MAX    7
#define YEAR_DAY_MAX    365

#define SECS_IN_MIN     60
#define SECS_IN_HOUR    (SECS_IN_MIN * 60)
#define SECS_IN_DAY     (SECS_IN_HOUR * 24)
#define SECS_IN_YEAR    (SECS_IN_DAY * 365)

static int YearDays[MONTH_MAX]      = {0,   31,  59,  90,  120, 151, 181, 212, 243, 273, 304, 334};
static int LeapYearDays[MONTH_MAX]  = {0,   31,  60,  91,  121, 152, 182, 213, 244, 274, 305, 335};

asm OSTime OSGetTime() {
#ifdef __MWERKS__
    nofralloc

loop:
    mftbu   r3
    mftb    r4
    mftbu   r5

    cmpw    r3, r5
    bne     loop

    blr
#endif // __MWERKS__
}

asm OSTick OSGetTick() {
#ifdef __MWERKS__
    nofralloc

    mftb    r3

    blr
#endif // __MWERKS__
}

asm static void __SetTime(OSTime time) {
#ifdef __MWERKS__
    nofralloc

    li      r5, 0
    mttbl   r5
    mttbu   r3
    mttbl   r4

    blr
#endif // __MWERKS__
}

void __OSSetTime(OSTime time) {
    OSTime* systemTime = &__OSSystemTime;
    BOOL    enabled = OSDisableInterrupts();

    *systemTime += OSGetTime() - time;
    __SetTime(time);
    EXIProbeReset();
    OSRestoreInterrupts(enabled);
}

OSTime __OSGetSystemTime() {
    OSTime* systemTime = &__OSSystemTime;
    BOOL    enabled = OSDisableInterrupts();

    OSTime  result = OSGetTime() + *systemTime;
    OSRestoreInterrupts(enabled);
    return result;
}

OSTime __OSTimeToSystemTime(OSTime time) {
    OSTime* systemTime = &__OSSystemTime;
    BOOL    enabled = OSDisableInterrupts();

    OSTime  result = *systemTime + time;
    OSRestoreInterrupts(enabled);
    return result;
}

static BOOL IsLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
}

static int GetYearDays(int year, int mon) {
    int* md = (IsLeapYear(year)) ? LeapYearDays : YearDays;
    return md[mon];
}

static int GetLeapDays(int year) {
    if (year < 1) {
        return 0;
    }
    return (year + 3) / 4 - (year - 1) / 100 + (year - 1) / 400; 
}

static void GetDates(s32 days, OSCalendarTime *pTime) NO_INLINE {
    int year, dayCount, month;
    int* monthArr;

    pTime->wday = (days + 6) % 7;

    for (year = days / YEAR_DAY_MAX; days < (dayCount = GetLeapDays(year) + YEAR_DAY_MAX * year); --year);

    days -= dayCount;
    pTime->year = year;
    pTime->yday = days;

    monthArr = IsLeapYear(year) ? LeapYearDays : YearDays;

    for (month = MONTH_MAX; days < monthArr[--month];) {}

    pTime->mon = month;
    pTime->mday = days - monthArr[month] + 1;
}

void OSTicksToCalendarTime(OSTime ticks, OSCalendarTime *pTime) {
    int     numDays;
    int     numSecs;
    OSTime  ticksAfter;

    ticksAfter = ticks % OSSecondsToTicks(1);

    if (ticksAfter < 0) {
        ticksAfter += OSSecondsToTicks(1);
    }

    pTime->usec = (OSTicksToMicroseconds(ticksAfter) % MICROSEC_MAX);
    pTime->msec = (OSTicksToMilliseconds(ticksAfter) % MILLISEC_MAX);

    ticks -= ticksAfter;

    numDays = (OSTicksToSeconds(ticks) / SECS_IN_DAY + 0xB2575);
    numSecs = (OSTicksToSeconds(ticks) % SECS_IN_DAY);

    if (numSecs < 0) {
        numDays -= 1;
        numSecs += SECS_IN_DAY;
    }

    GetDates(numDays, pTime);
    pTime->hour = numSecs / SECS_IN_MIN / SECS_IN_MIN;
    pTime->min = (numSecs / SECS_IN_MIN) % SECS_IN_MIN;
    pTime->sec = numSecs % SECS_IN_MIN;
}

OSTime OSCalendarTimeToTicks(OSCalendarTime* pTime) {
    OSTime  secs;
    int     ov_mon;
    int     mon;
    int     year;

    ov_mon = pTime->mon / MONTH_MAX;
    mon = pTime->mon - (ov_mon * MONTH_MAX);

    if (mon < 0) {
        mon += MONTH_MAX;
        ov_mon--;
    }

    year = pTime->year + ov_mon;

    secs = (OSTime)SECS_IN_YEAR * year +
           (OSTime)SECS_IN_DAY * (GetLeapDays(year) + GetYearDays(year, mon) + pTime->mday - 1) +
           (OSTime)SECS_IN_HOUR * pTime->hour +
           (OSTime)SECS_IN_MIN * pTime->min +
           pTime->sec - (OSTime)0xEB1E1BF80;

    return OSSecondsToTicks(secs) + OSMillisecondsToTicks((OSTime)pTime->msec) + OSMicrosecondsToTicks((OSTime)pTime->usec);
}
