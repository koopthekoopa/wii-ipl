#ifndef REVOLUTION_NET_MISC_H
#define REVOLUTION_NET_MISC_H

#include <revolution/os/OSTime.h>
#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL NETGetUniversalCalendar(OSCalendarTime* time);

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_NET_MISC_H
