#ifndef MSL_MATH_H
#define MSL_MATH_H

#ifdef __cplusplus
extern "C" {
#endif

#define M_PI 3.141592653589793f

int abs(int x);
double fabs(double x);

double sin(double x);
double cos(double x);
double tan(double x);

inline float sinf(float x) {
    return sin(x);
}
inline float cosf(float x) {
    return cos(x);
}
inline float tanf(float x) {
    return tan(x);
}

#ifdef __cplusplus
}
#endif

#endif // MSL_MATH_H
