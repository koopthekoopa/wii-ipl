#ifndef MSL_MATH_H
#define MSL_MATH_H

#include <internal/math_api.h>

#ifdef __cplusplus
extern "C" {
#endif

#define M_E         2.71828182845904523536

#define M_LOG2E     1.44269504088896340736
#define M_LOG10E    0.434294481903251827651

#define M_LN10      2.30258509299404568402
#define M_LN2       0.693147180559945309417

#define M_PI        3.14159265358979323846
#define M_PI_2      1.57079632679489661923
#define M_PI_4      0.785398163397448309616
#define M_1_PI      0.318309886183790671538
#define M_2_PI      0.636619772367581343076

#define M_2_SQRTPI  1.12837916709551257390
#define M_SQRT1_2   0.707106781186547524401
#define M_SQRT2     1.41421356237309504880

typedef struct div_t {
    int quot;
    int rem;
} div_t;

extern int __float_nan[];
extern int __float_huge[];
extern int __double_huge[];

#define FP_NAN 1
#define FP_INFINITE 2
#define FP_ZERO 3
#define FP_NORMAL 4
#define FP_SUBNORMAL 5

#define HUGE_VALF   (*(float*) __float_huge )
#define INFINITY    (*(float*) __float_huge )
#define NAN         (*(float*) __float_nan  )
#define HUGE_VAL    (*(double*)__double_huge)

#define isnormal(x) (fpclassify(x) == FP_NORMAL)
#define iszero(x)   (fpclassify(x) == FP_ZERO)
#define isnan(x)    (fpclassify(x) == FP_NAN)
#define isinf(x)    (fpclassify(x) == FP_INFINITE)
#define isfinite(x) (fpclassify(x) >  FP_INFINITE)

// TODO: This inline loves regswapping. Stop it from doing that.
/*
inline int abs(int x) {
#ifdef __MWERKS__
    return __abs(x);
#endif // __MWERKS__
}
*/

#define abs __abs
long int        labs(long n);
inline double   fabs(double x) {
#ifdef __MWERKS__
    return __fabs(x);
#endif // __MWERKS__
}
inline float    fabsf(float x) { return fabs(x); }

double          fmax(double x, double y);
inline float    fmaxf(float x, float y) { return fmax(x, y); }

double          fmin(double x, double y);
inline float    fminf(float x, float y) { return fmin(x, y); }

div_t           div(int numer, int denom);

double          scalbn(double x, int exp);
inline float    scalbnf(float x, int exp) { return scalbn(x, exp); }

double          asin(double x);
inline float    asinf(float x) { return asin(x); }

double          sin(double x);
inline float    sinf(float x) { return sin(x); }

double          acos(double x);
inline float    acosf(float x) { return acos(x); }

double          cos(double x);
inline float    cosf(float x) { return cos(x); }

double          atan(double x);
inline float    atanf(float x) { return atan(x); }

double          atan2(double x, double y);
inline float    atan2f(float x, float y) { return atan2(x, y); }

double          tan(double x);
inline float    tanf(float x) { return tan(x); }

double          exp(double x);
inline float    expf(float x) { return exp(x); }

double          fmod(double x, double y);
inline float    fmodf(float x, float y) { return fmod(x, y); }

double          log(double x);
inline float    logf(float x) { return log(x); }

double          pow(double x, double y);
inline float    powf(float x, float y) { return pow(x, y); }

double          sqrt(double x);
inline float    sqrtf(float x) { return sqrt(x); }

double          ceil(double x);
inline float    ceilf(float x) { return ceil(x); }

double          copysign(double x, double y);
inline float    copysignf(float x, float y) { return copysign(x, y); }

double          frexp(double x, int* eptr);
inline float    frexpf(float x, int* eptr) { return frexpf(x, eptr); }

double          ldexp(double x, int n);
inline float    ldexpf(float x, int n) { return ldexp(x, n); }

double          floor(double x);

#ifdef __cplusplus
}
#endif

#endif // MSL_MATH_H
