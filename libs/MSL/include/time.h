#ifndef MSL_TIME_H
#define MSL_TIME_H

#include <stddef.h>

#include <internal/tm_struct.h>

#ifdef __cplusplus
extern "C" {
#endif

clock_t clock();

time_t  mktime(tm* timePtr);
tm*     localtime(const time_t* sourceTime);

size_t  strftime(char* strDest, size_t maxsize, const char* format, const tm* timeptr);

#ifdef __cplusplus
}
#endif

#endif // MSL_TIME_H
