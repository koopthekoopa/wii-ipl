#ifndef REVOLUTION_OS_TIME_H
#define REVOLUTION_OS_TIME_H

#include <revolution/types.h>

#ifdef __cplusplus
extern "C" {
#endif

s64 __OSGetSystemTime();
s64 __OSTimeToSystemTime();

#ifdef __cplusplus
}
#endif

#endif  // REVOLUTION_OS_TIME_H


