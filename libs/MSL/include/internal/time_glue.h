#ifndef MSL_INTERNAL_TIME_GLUE_H
#define MSL_INTERNAL_TIME_GLUE_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

int __isdst(void);
long __get_time(void);
int __to_gm_time(long*);
clock_t __get_clock(void);

void __msl_time2tm(unsigned long timep, struct tm* tm);

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_TIME_GLUE_H
