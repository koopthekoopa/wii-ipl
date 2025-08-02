#ifndef REVOLUTION_NET_MISC_H
#define REVOLUTION_NET_MISC_H

#include <revolution/types.h>
#include <revolution/os/OSTime.h>

#ifdef __cplusplus
extern "C" {
#endif

BOOL    NETGetUniversalCalendar(OSCalendarTime* time);

#ifdef __cplusplus
}
#endif

#endif // REVOLUTION_NET_MISC_H
