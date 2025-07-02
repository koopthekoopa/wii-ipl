#ifndef MSL_INTERNAL_MATH_API_H
#define MSL_INTERNAL_MATH_API_H

#ifdef __cplusplus
extern "C" {
#endif

int __signbitd(double x);

int __fpclassifyf(float x);
int __fpclassifyd(double x);

#define fpclassify(x)   \
  (sizeof(x) == sizeof(float) ? __fpclassifyf((float)(x)) : __fpclassifyd((double)(x)))

#ifdef __cplusplus
}
#endif

#endif // MSL_INTERNAL_MATH_API_H
