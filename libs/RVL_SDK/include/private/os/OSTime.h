#ifndef PRIVATE_OS_TIME_H
#define PRIVATE_OS_TIME_H

#include <revolution/os.h>

#ifdef __cplusplus
extern "C" {
#endif

void    __OSSetTime(OSTime time);
OSTime  __OSGetSystemTime();
OSTime  __OSTimeToSystemTime(OSTime time);

#ifdef __cplusplus
}
#endif

#endif  // PRIVATE_OS_TIME_H
