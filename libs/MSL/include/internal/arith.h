#ifndef MSL_INTERNAL_ARITH_H
#define MSL_INTERNAL_ARITH_H

#include <math.h>

#ifdef __cplusplus
extern "C" {
#endif

int __msl_add(int*, int);
int __msl_ladd(long*, long);
int __msl_lmul(long*, long);
ldiv_t __msl_div(long, long);
int __msl_mod(int, int);

#ifdef __cplusplus
}
#endif

#endif  // MSL_INTERNAL_ARITH_H
